"""Hardware-independent executable behavior specification; NOT flashable firmware.
Caller supplies debounced, fresh observations and monotonic seconds. An action
return requests ONE bounded motion plus retract/park, never a retry loop.
"""
from math import isfinite
STATES={'off','on','unknown'}
def hall_state(off_active,on_active):
    if off_active==on_active:return 'unknown'
    return 'off' if off_active else 'on'
def optical_state(value,off_max,on_min):
    if not all(isfinite(x) for x in [value,off_max,on_min]) or off_max>=on_min:return 'unknown'
    return 'off' if value<=off_max else ('on' if value>=on_min else 'unknown')
class Node:
    def __init__(self,kind,duration=720):
        if kind not in ('fan','tube','toggle'):raise ValueError('invalid kind')
        if not 1<=duration<=86400:raise ValueError('invalid timer duration')
        self.kind=kind;self.duration=duration;self.state='unknown';self.last_confirmed=None
        self.deadline=None;self.fault=None;self.pending=None;self.seen=set();self.low_battery=False
    def observe(self,state,now):
        if state not in STATES:raise ValueError('invalid observation')
        self.state=state
        if state=='unknown':return
        previous=self.last_confirmed;self.last_confirmed=state
        if self.kind=='fan':
            if state=='off':self.deadline=None
            elif previous=='off':self.deadline=now+self.duration
            elif previous is None:
                # Documented reset policy, never claims an original deadline survived.
                self.deadline=now+self.duration;self.fault='timing_uncertain'
    def _start(self,target,now):
        self.pending=(target,now+5)
        return 'press_once' if self.kind=='tube' else 'move_'+target
    def command(self,command_id,target,now):
        if target not in ('on','off'):raise ValueError('invalid target')
        if command_id in self.seen:return 'duplicate'
        self.seen.add(command_id)
        if self.pending:return 'busy'
        if self.low_battery:return 'low_battery'
        if self.fault and self.fault!='timing_uncertain':return 'fault'
        if self.state=='unknown':return 'unknown'
        if self.state==target:return 'confirmed'
        return self._start(target,now)
    def tick(self,now):
        if self.pending:
            if now>=self.pending[1]:self.pending=None;self.fault='verification_timeout'
            return None
        if self.kind=='fan' and self.deadline is not None and now>=self.deadline:
            if self.low_battery:self.fault='automatic_off_unavailable';return None
            if self.state=='unknown':self.fault='feedback_unknown';return None
            if self.fault not in (None,'timing_uncertain'):return None
            if self.state=='on':
                self.deadline=None
                return self._start('off',now)
        return None
    def verify(self,state,now):
        if self.pending is None:return
        target,expires=self.pending;self.pending=None;self.observe(state,now)
        if now>=expires:self.fault='verification_timeout';return
        if state!=target:self.fault='verification_failed'
    def acknowledge_fault(self):
        # Explicit human acknowledgement after inspecting jam/sensor; never retry by itself.
        if self.pending is None and self.state!='unknown':self.fault=None
