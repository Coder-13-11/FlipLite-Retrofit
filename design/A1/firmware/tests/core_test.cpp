#include <cassert>
#include <iostream>
#if __has_include("control.hpp")
#include "control.hpp"
int main(){
 using namespace flip;
 Core n(Kind::Fan); n.arm(true); n.observe(State::Off,0); n.observe(State::On,100);
 assert(n.deadline()==720100); assert(n.command(1,State::On,200)==Result::Confirmed);assert(n.deadline()==720100);
 assert(n.tick(720100)==Action::Off); assert(n.tick(720200)==Action::None); n.verify(State::Off,720900);assert(n.state()==State::Off);
 Core t(Kind::Tube);t.arm(true);assert(t.command(1,State::On,0)==Result::Unknown);
 t.observe(State::Off,10);assert(t.command(2,State::On,20)==Result::Started);assert(t.takeAction()==Action::Press);
 assert(t.command(2,State::On,30)==Result::Duplicate);assert(t.command(3,State::Off,40)==Result::Busy);
 t.verify(State::Off,1000);assert(t.fault()==Fault::VerifyFailed);assert(t.command(4,State::On,1100)==Result::Faulted);
 Core u(Kind::Fan);u.arm(true);u.observe(State::Off,0);u.observe(State::On,1);u.observe(State::Unknown,700000);u.tick(720001);
 assert(u.fault()==Fault::Feedback);u.observe(State::On,720002);u.ack();assert(u.tick(720003)==Action::Off);
 Core low(Kind::Fan);low.arm(true);low.observe(State::Off,0);low.observe(State::On,1);low.battery(false);low.tick(720001);assert(low.fault()==Fault::LowBattery);
 Core late(Kind::Tube);late.arm(true);late.observe(State::Off,0);late.command(1,State::On,1);late.verify(State::On,6000);assert(late.fault()==Fault::Timeout);
 Core safe(Kind::Tube);safe.observe(State::Off,0);assert(safe.command(1,State::On,1)==Result::Disarmed);
 assert(hall(true,false)==State::Off);assert(hall(false,true)==State::On);assert(hall(false,false)==State::Unknown);assert(hall(true,true)==State::Unknown);
 assert(optical(300,500,2000)==State::Off);assert(optical(2500,500,2000)==State::On);assert(optical(1500,500,2000)==State::Unknown);
 assert(optical(300,2000,500)==State::Unknown);
 Freshness f;f.issue(42,100);assert(f.accept(42,200));assert(!f.accept(41,200));assert(!f.accept(42,5100));
 Core boot(Kind::Fan);boot.arm(true);boot.observe(State::On,5);assert(boot.fault()==Fault::TimingUncertain);assert(boot.deadline()==720005);
 Core boundary(Kind::Fan);boundary.arm(true);boundary.observe(State::Off,4294967000ULL);boundary.observe(State::On,4294967100ULL);assert(boundary.tick(4295687100ULL)==Action::Off);
 Core early(Kind::Fan);early.arm(true);early.observe(State::Off,0);early.observe(State::On,1);early.observe(State::Off,2);assert(early.deadline()==0);early.observe(State::On,3);assert(early.deadline()==720003);
 std::cout<<"C++ control and freshness assertions passed\n";
}
#else
int main(){std::cerr<<"control.hpp missing\n";return 1;}
#endif
