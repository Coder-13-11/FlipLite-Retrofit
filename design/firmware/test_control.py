import unittest
try:
    from control import Node, optical_state, hall_state
except ImportError:
    Node=None
class ControlTests(unittest.TestCase):
    def setUp(self): self.assertIsNotNone(Node,'control implementation missing')
    def test_manual_on_starts_local_twelve_minutes(self):
        n=Node('fan');n.observe('off',0);n.observe('on',10)
        self.assertEqual(n.deadline,730);self.assertIsNone(n.tick(729));self.assertEqual(n.tick(730),'move_off')
        self.assertIsNone(n.tick(731));n.verify('off',732);self.assertIsNone(n.deadline)
    def test_repeated_on_does_not_restart(self):
        n=Node('fan');n.observe('off',0);n.observe('on',1)
        self.assertEqual(n.command('a','on',50),'confirmed');self.assertEqual(n.deadline,721)
    def test_manual_off_cancels_fresh_on_restarts(self):
        n=Node('fan');n.observe('off',0);n.observe('on',1);n.observe('off',20)
        self.assertIsNone(n.deadline);n.observe('on',30);self.assertEqual(n.deadline,750)
    def test_unknown_tube_never_presses(self):
        n=Node('tube');self.assertEqual(n.command('a','on',0),'unknown');self.assertIsNone(n.pending)
    def test_duplicate_command_after_manual_toggle_does_not_press_again(self):
        n=Node('tube');n.observe('off',0);self.assertEqual(n.command('a','on',1),'press_once')
        self.assertEqual(n.command('a','on',2),'duplicate');n.verify('on',3);n.observe('off',4)
        self.assertEqual(n.command('a','on',5),'duplicate')
    def test_no_retry_after_verification_failure(self):
        n=Node('tube');n.observe('off',0);n.command('a','on',1);n.verify('off',3)
        self.assertEqual(n.fault,'verification_failed');self.assertEqual(n.command('b','on',4),'fault')
    def test_low_battery_rejects_motor_and_flags_unavailable_off(self):
        n=Node('fan');n.observe('off',0);n.observe('on',1);n.low_battery=True
        self.assertIsNone(n.tick(721));self.assertEqual(n.fault,'automatic_off_unavailable')
        self.assertEqual(n.command('a','on',722),'low_battery')
    def test_boot_on_timer_is_explicitly_uncertain(self):
        n=Node('fan');n.observe('on',100)
        self.assertEqual(n.fault,'timing_uncertain');self.assertEqual(n.deadline,820)
    def test_unknown_does_not_erase_existing_deadline(self):
        n=Node('fan');n.observe('off',0);n.observe('on',1);n.observe('unknown',10)
        self.assertEqual(n.deadline,721);self.assertIsNone(n.tick(721));self.assertEqual(n.fault,'feedback_unknown')
    def test_busy_blocks_second_command(self):
        n=Node('tube');n.observe('off',0);n.command('a','on',1)
        self.assertEqual(n.command('b','off',2),'busy')
    def test_watchdog_verification_timeout_latches_fault(self):
        n=Node('tube');n.observe('off',0);n.command('a','on',1)
        self.assertIsNone(n.tick(6));self.assertEqual(n.fault,'verification_timeout')
    def test_hall_invalid_pair(self):
        self.assertEqual(hall_state(True,False),'off');self.assertEqual(hall_state(False,True),'on')
        self.assertEqual(hall_state(False,False),'unknown');self.assertEqual(hall_state(True,True),'unknown')
    def test_optical_ambiguous_band_and_invalid_calibration(self):
        self.assertEqual(optical_state(.1,.2,.8),'off');self.assertEqual(optical_state(.9,.2,.8),'on')
        self.assertEqual(optical_state(.5,.2,.8),'unknown');self.assertEqual(optical_state(.5,.8,.2),'unknown')
    def test_fault_recovery_preserves_expired_fan_deadline(self):
        n=Node('fan');n.observe('off',0);n.observe('on',1);n.observe('unknown',700);n.tick(721)
        n.observe('on',722);n.acknowledge_fault()
        self.assertEqual(n.tick(723),'move_off')
    def test_late_verification_cannot_report_success(self):
        n=Node('tube');n.observe('off',0);n.command('a','on',1);n.verify('on',7)
        self.assertEqual(n.fault,'verification_timeout')
if __name__=='__main__':unittest.main()
