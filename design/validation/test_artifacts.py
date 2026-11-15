from pathlib import Path
import json
p=Path(__file__).resolve().parents[1]
def test_cad_outputs():
    expected=['wall_bracket','servo_carriage','wall_arm','inline_cradle','inline_bridge','inline_finger','wall_fit_coupon','inline_fit_coupon','optical_hood','electronics_tray','electronics_lid']
    for name in expected:
        assert (p/'cad'/f'{name}.step').exists(), f'missing STEP {name}'
        assert (p/'cad'/f'{name}.stl').exists(), f'missing STL {name}'
    data=json.loads((p/'validation/geometry.json').read_text())
    assert all(x['valid'] and x['watertight'] and x['volume_mm3']>0 and x['solids']==1 for x in data)
    assert json.loads((p/'cad/parameters.json').read_text())['wall_screw_spacing']==60

def test_electronics_connectivity():
    import xml.etree.ElementTree as ET
    for ext in ['sch','brd']:
        assert (p/'electronics'/f'node.{ext}').exists(), f'missing {ext}'
        ET.parse(p/'electronics'/f'node.{ext}')
    d=json.loads((p/'electronics/netlist.json').read_text())
    parts={x['ref']:x for x in d['parts']}
    assert parts['U1']['nets']['10']=='VIN5'
    assert parts['U1']['nets']['2']=='BAT'
    assert parts['U1']['nets']['1']=='SYS'
    assert parts['U3']['nets']['2']=='MOTOR_EN'
    assert parts['Q1']['nets']['1']=='PWM_INVERTED'
    assert parts['J3']['nets']['2']=='MOTOR5'
    for part in d['parts']:
        assert set(part['pins'])==set(part['nets'])
        assert set(part['pins'])==set(part['pads'])

def test_battery_harness_uses_three_amp_connector_and_distinct_keying():
    d=json.loads((p/'electronics/netlist.json').read_text());parts={x['ref']:x for x in d['parts']}
    assert parts['J2']['value'].startswith('B4B-XH'), 'PH battery connector is only 2 A; design pulse requirement is 3 A'
    assert parts['J2']['nets']=={'1':'BAT','2':'NTC','3':'BAT_KEY_NC','4':'GND'}

def test_board_mounting_drills_clear_copper_pads():
    d=json.loads((p/'electronics/netlist.json').read_text())
    for part in d['parts']:
        x,y=part['xy']
        for pad,(dx,dy,w,h) in part['pads'].items():
            for hx,hy in [(3,3),(47,3),(3,35),(47,35)]:
                dist=(max(abs(x+dx-hx)-w/2,0)**2+max(abs(y+dy-hy)-h/2,0)**2)**.5
                assert dist>=1.4, f'{part["ref"]}.{pad} intersects mounting-hole clearance'

def test_inline_joint_has_closed_holes_and_wall_margin():
    import cadquery as cq,math
    shape=cq.importers.importStep(str(p/'cad/inline_bridge.step')).val()
    for x in [-28,-20]:
        assert not shape.isInside(cq.Vector(x,-3,1.5)), 'attachment bore missing'
        for i in range(16):
            a=i*math.pi/8
            assert shape.isInside(cq.Vector(x+2.5*math.cos(a),-3+2.5*math.sin(a),1.5)), 'insufficient closed annulus'

def test_pod_height_clears_connector_stack():
    rows=json.loads((p/'validation/geometry.json').read_text())
    tray=next(x for x in rows if x['part']=='electronics_tray')
    assert tray['bounds_mm'][2]>=30, 'allow 6 standoff + 1.6 PCB + 9.8 connector + cable bend'
