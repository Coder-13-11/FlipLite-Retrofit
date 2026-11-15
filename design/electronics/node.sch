<?xml version='1.0' encoding='utf-8'?>
<eagle version="9.6.2">
  <drawing>
    <settings>
      <setting alwaysvectorfont="no" />
      <setting verticaltext="up" />
    </settings>
    <grid distance="0.1" unitdist="mm" unit="mm" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="mm" altunit="mm" />
    <layers>
      <layer number="1" name="Top" color="2" fill="1" visible="yes" active="yes" />
      <layer number="16" name="Bottom" color="2" fill="1" visible="yes" active="yes" />
      <layer number="17" name="Pads" color="3" fill="1" visible="yes" active="yes" />
      <layer number="18" name="Vias" color="4" fill="1" visible="yes" active="yes" />
      <layer number="19" name="Unrouted" color="5" fill="1" visible="yes" active="yes" />
      <layer number="20" name="Dimension" color="6" fill="1" visible="yes" active="yes" />
      <layer number="21" name="tPlace" color="7" fill="1" visible="yes" active="yes" />
      <layer number="22" name="bPlace" color="8" fill="1" visible="yes" active="yes" />
      <layer number="25" name="tNames" color="11" fill="1" visible="yes" active="yes" />
      <layer number="27" name="tValues" color="13" fill="1" visible="yes" active="yes" />
      <layer number="29" name="tStop" color="15" fill="1" visible="yes" active="yes" />
      <layer number="30" name="bStop" color="1" fill="1" visible="yes" active="yes" />
      <layer number="31" name="tCream" color="2" fill="1" visible="yes" active="yes" />
      <layer number="39" name="tKeepout" color="10" fill="1" visible="yes" active="yes" />
      <layer number="40" name="bKeepout" color="11" fill="1" visible="yes" active="yes" />
      <layer number="41" name="tRestrict" color="12" fill="1" visible="yes" active="yes" />
      <layer number="42" name="bRestrict" color="13" fill="1" visible="yes" active="yes" />
      <layer number="51" name="tDocu" color="7" fill="1" visible="yes" active="yes" />
      <layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes" />
      <layer number="92" name="Busses" color="3" fill="1" visible="yes" active="yes" />
      <layer number="93" name="Pins" color="4" fill="1" visible="yes" active="yes" />
      <layer number="94" name="Symbols" color="5" fill="1" visible="yes" active="yes" />
      <layer number="95" name="Names" color="6" fill="1" visible="yes" active="yes" />
      <layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes" />
      <layer number="97" name="Info" color="8" fill="1" visible="yes" active="yes" />
    </layers>
    <schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
      <libraries>
        <library name="FlipLite_Prototype">
          <packages>
            <package name="U1_PKG">
              <smd name="1" x="-1.05" y="0.8" dx="0.55" dy="0.22" layer="1" />
              <smd name="10" x="1.05" y="0.8" dx="0.55" dy="0.22" layer="1" />
              <smd name="2" x="-1.05" y="0.4" dx="0.55" dy="0.22" layer="1" />
              <smd name="9" x="1.05" y="0.4" dx="0.55" dy="0.22" layer="1" />
              <smd name="3" x="-1.05" y="0.0" dx="0.55" dy="0.22" layer="1" />
              <smd name="8" x="1.05" y="0.0" dx="0.55" dy="0.22" layer="1" />
              <smd name="4" x="-1.05" y="-0.40000000000000013" dx="0.55" dy="0.22" layer="1" />
              <smd name="7" x="1.05" y="-0.40000000000000013" dx="0.55" dy="0.22" layer="1" />
              <smd name="5" x="-1.05" y="-0.8" dx="0.55" dy="0.22" layer="1" />
              <smd name="6" x="1.05" y="-0.8" dx="0.55" dy="0.22" layer="1" />
              <smd name="11" x="0" y="0" dx="0.8" dy="1.5" layer="1" />
              <wire x1="-1.1" y1="-1.0" x2="1.1" y2="-1.0" width="0.12" layer="21" />
              <wire x1="1.1" y1="-1.0" x2="1.1" y2="1.0" width="0.12" layer="21" />
              <wire x1="1.1" y1="1.0" x2="-1.1" y2="1.0" width="0.12" layer="21" />
              <wire x1="-1.1" y1="1.0" x2="-1.1" y2="-1.0" width="0.12" layer="21" />
              <text x="-1.1" y="1.5" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="U2_PKG">
              <smd name="1" x="-1.2" y="1.0" dx="0.6" dy="0.25" layer="1" />
              <smd name="10" x="1.2" y="1.0" dx="0.6" dy="0.25" layer="1" />
              <smd name="2" x="-1.2" y="0.5" dx="0.6" dy="0.25" layer="1" />
              <smd name="9" x="1.2" y="0.5" dx="0.6" dy="0.25" layer="1" />
              <smd name="3" x="-1.2" y="0.0" dx="0.6" dy="0.25" layer="1" />
              <smd name="8" x="1.2" y="0.0" dx="0.6" dy="0.25" layer="1" />
              <smd name="4" x="-1.2" y="-0.5" dx="0.6" dy="0.25" layer="1" />
              <smd name="7" x="1.2" y="-0.5" dx="0.6" dy="0.25" layer="1" />
              <smd name="5" x="-1.2" y="-1.0" dx="0.6" dy="0.25" layer="1" />
              <smd name="6" x="1.2" y="-1.0" dx="0.6" dy="0.25" layer="1" />
              <smd name="11" x="0" y="0" dx="1.1" dy="1.6" layer="1" />
              <wire x1="-1.25" y1="-1.25" x2="1.25" y2="-1.25" width="0.12" layer="21" />
              <wire x1="1.25" y1="-1.25" x2="1.25" y2="1.25" width="0.12" layer="21" />
              <wire x1="1.25" y1="1.25" x2="-1.25" y2="1.25" width="0.12" layer="21" />
              <wire x1="-1.25" y1="1.25" x2="-1.25" y2="-1.25" width="0.12" layer="21" />
              <text x="-1.25" y="1.75" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="U3_PKG">
              <smd name="1" x="-0.7" y="0.5" dx="0.55" dy="0.28" layer="1" />
              <smd name="6" x="0.7" y="0.5" dx="0.55" dy="0.28" layer="1" />
              <smd name="2" x="-0.7" y="0.0" dx="0.55" dy="0.28" layer="1" />
              <smd name="5" x="0.7" y="0.0" dx="0.55" dy="0.28" layer="1" />
              <smd name="3" x="-0.7" y="-0.5" dx="0.55" dy="0.28" layer="1" />
              <smd name="4" x="0.7" y="-0.5" dx="0.55" dy="0.28" layer="1" />
              <wire x1="-0.8" y1="-0.6" x2="0.8" y2="-0.6" width="0.12" layer="21" />
              <wire x1="0.8" y1="-0.6" x2="0.8" y2="0.6" width="0.12" layer="21" />
              <wire x1="0.8" y1="0.6" x2="-0.8" y2="0.6" width="0.12" layer="21" />
              <wire x1="-0.8" y1="0.6" x2="-0.8" y2="-0.6" width="0.12" layer="21" />
              <text x="-0.8" y="1.1" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="U4_PKG">
              <smd name="1" x="-9" y="6.0" dx="0.9" dy="0.9" layer="1" />
              <smd name="18" x="9" y="6.0" dx="0.9" dy="0.9" layer="1" />
              <smd name="2" x="-9" y="4.5" dx="0.9" dy="0.9" layer="1" />
              <smd name="17" x="9" y="4.5" dx="0.9" dy="0.9" layer="1" />
              <smd name="3" x="-9" y="3.0" dx="0.9" dy="0.9" layer="1" />
              <smd name="16" x="9" y="3.0" dx="0.9" dy="0.9" layer="1" />
              <smd name="4" x="-9" y="1.5" dx="0.9" dy="0.9" layer="1" />
              <smd name="15" x="9" y="1.5" dx="0.9" dy="0.9" layer="1" />
              <smd name="5" x="-9" y="0.0" dx="0.9" dy="0.9" layer="1" />
              <smd name="14" x="9" y="0.0" dx="0.9" dy="0.9" layer="1" />
              <smd name="6" x="-9" y="-1.5" dx="0.9" dy="0.9" layer="1" />
              <smd name="13" x="9" y="-1.5" dx="0.9" dy="0.9" layer="1" />
              <smd name="7" x="-9" y="-3.0" dx="0.9" dy="0.9" layer="1" />
              <smd name="12" x="9" y="-3.0" dx="0.9" dy="0.9" layer="1" />
              <smd name="8" x="-9" y="-4.5" dx="0.9" dy="0.9" layer="1" />
              <smd name="11" x="9" y="-4.5" dx="0.9" dy="0.9" layer="1" />
              <smd name="9" x="-9" y="-6.0" dx="0.9" dy="0.9" layer="1" />
              <smd name="10" x="9" y="-6.0" dx="0.9" dy="0.9" layer="1" />
              <smd name="19" x="0" y="0" dx="3.5" dy="3.5" layer="1" />
              <wire x1="-9.0" y1="-10.0" x2="9.0" y2="-10.0" width="0.12" layer="21" />
              <wire x1="9.0" y1="-10.0" x2="9.0" y2="10.0" width="0.12" layer="21" />
              <wire x1="9.0" y1="10.0" x2="-9.0" y2="10.0" width="0.12" layer="21" />
              <wire x1="-9.0" y1="10.0" x2="-9.0" y2="-10.0" width="0.12" layer="21" />
              <text x="-9.0" y="10.5" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="Q1_PKG">
              <smd name="1" x="-0.95" y="-1" dx="0.6" dy="1" layer="1" />
              <smd name="2" x="0.95" y="-1" dx="0.6" dy="1" layer="1" />
              <smd name="3" x="0" y="1" dx="0.6" dy="1" layer="1" />
              <wire x1="-1.45" y1="-0.65" x2="1.45" y2="-0.65" width="0.12" layer="21" />
              <wire x1="1.45" y1="-0.65" x2="1.45" y2="0.65" width="0.12" layer="21" />
              <wire x1="1.45" y1="0.65" x2="-1.45" y2="0.65" width="0.12" layer="21" />
              <wire x1="-1.45" y1="0.65" x2="-1.45" y2="-0.65" width="0.12" layer="21" />
              <text x="-1.45" y="1.15" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="J1_PKG">
              <pad name="1" x="-1.25" y="0" drill="0.8" diameter="1.5" shape="square" />
              <pad name="2" x="1.25" y="0" drill="0.8" diameter="1.5" shape="round" />
              <wire x1="-3.5" y1="-2.5" x2="3.5" y2="-2.5" width="0.12" layer="21" />
              <wire x1="3.5" y1="-2.5" x2="3.5" y2="2.5" width="0.12" layer="21" />
              <wire x1="3.5" y1="2.5" x2="-3.5" y2="2.5" width="0.12" layer="21" />
              <wire x1="-3.5" y1="2.5" x2="-3.5" y2="-2.5" width="0.12" layer="21" />
              <text x="-3.5" y="3.0" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="J2_PKG">
              <pad name="1" x="-3.75" y="0" drill="0.8" diameter="1.5" shape="square" />
              <pad name="2" x="-1.25" y="0" drill="0.8" diameter="1.5" shape="round" />
              <pad name="3" x="1.25" y="0" drill="0.8" diameter="1.5" shape="round" />
              <pad name="4" x="3.75" y="0" drill="0.8" diameter="1.5" shape="round" />
              <wire x1="-6.0" y1="-2.5" x2="6.0" y2="-2.5" width="0.12" layer="21" />
              <wire x1="6.0" y1="-2.5" x2="6.0" y2="2.5" width="0.12" layer="21" />
              <wire x1="6.0" y1="2.5" x2="-6.0" y2="2.5" width="0.12" layer="21" />
              <wire x1="-6.0" y1="2.5" x2="-6.0" y2="-2.5" width="0.12" layer="21" />
              <text x="-6.0" y="3.0" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="J3_PKG">
              <pad name="1" x="-2.5" y="0" drill="0.8" diameter="1.5" shape="square" />
              <pad name="2" x="0.0" y="0" drill="0.8" diameter="1.5" shape="round" />
              <pad name="3" x="2.5" y="0" drill="0.8" diameter="1.5" shape="round" />
              <wire x1="-4.75" y1="-2.5" x2="4.75" y2="-2.5" width="0.12" layer="21" />
              <wire x1="4.75" y1="-2.5" x2="4.75" y2="2.5" width="0.12" layer="21" />
              <wire x1="4.75" y1="2.5" x2="-4.75" y2="2.5" width="0.12" layer="21" />
              <wire x1="-4.75" y1="2.5" x2="-4.75" y2="-2.5" width="0.12" layer="21" />
              <text x="-4.75" y="3.0" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="J4_PKG">
              <pad name="1" x="-3.0" y="0" drill="0.8" diameter="1.5" shape="square" />
              <pad name="2" x="-1.0" y="0" drill="0.8" diameter="1.5" shape="round" />
              <pad name="3" x="1.0" y="0" drill="0.8" diameter="1.5" shape="round" />
              <pad name="4" x="3.0" y="0" drill="0.8" diameter="1.5" shape="round" />
              <wire x1="-5.0" y1="-2.5" x2="5.0" y2="-2.5" width="0.12" layer="21" />
              <wire x1="5.0" y1="-2.5" x2="5.0" y2="2.5" width="0.12" layer="21" />
              <wire x1="5.0" y1="2.5" x2="-5.0" y2="2.5" width="0.12" layer="21" />
              <wire x1="-5.0" y1="2.5" x2="-5.0" y2="-2.5" width="0.12" layer="21" />
              <text x="-5.0" y="3.0" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="J5_PKG">
              <pad name="1" x="-1.0" y="0" drill="0.8" diameter="1.5" shape="square" />
              <pad name="2" x="1.0" y="0" drill="0.8" diameter="1.5" shape="round" />
              <wire x1="-3.0" y1="-2.5" x2="3.0" y2="-2.5" width="0.12" layer="21" />
              <wire x1="3.0" y1="-2.5" x2="3.0" y2="2.5" width="0.12" layer="21" />
              <wire x1="3.0" y1="2.5" x2="-3.0" y2="2.5" width="0.12" layer="21" />
              <wire x1="-3.0" y1="2.5" x2="-3.0" y2="-2.5" width="0.12" layer="21" />
              <text x="-3.0" y="3.0" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="J6_PKG">
              <smd name="1" x="-3.175" y="0" dx="1.3" dy="1.3" layer="1" />
              <smd name="2" x="-1.905" y="0" dx="1.3" dy="1.3" layer="1" />
              <smd name="3" x="-0.635" y="0" dx="1.3" dy="1.3" layer="1" />
              <smd name="4" x="0.635" y="0" dx="1.3" dy="1.3" layer="1" />
              <smd name="5" x="1.905" y="0" dx="1.3" dy="1.3" layer="1" />
              <smd name="6" x="3.175" y="0" dx="1.3" dy="1.3" layer="1" />
              <wire x1="-4.8100000000000005" y1="-2.5" x2="4.8100000000000005" y2="-2.5" width="0.12" layer="21" />
              <wire x1="4.8100000000000005" y1="-2.5" x2="4.8100000000000005" y2="2.5" width="0.12" layer="21" />
              <wire x1="4.8100000000000005" y1="2.5" x2="-4.8100000000000005" y2="2.5" width="0.12" layer="21" />
              <wire x1="-4.8100000000000005" y1="2.5" x2="-4.8100000000000005" y2="-2.5" width="0.12" layer="21" />
              <text x="-4.8100000000000005" y="3.0" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="R1_PKG">
              <smd name="1" x="-0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <smd name="2" x="0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.12" layer="21" />
              <text x="-0.8" y="0.9" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="R2_PKG">
              <smd name="1" x="-0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <smd name="2" x="0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.12" layer="21" />
              <text x="-0.8" y="0.9" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="L1_PKG">
              <smd name="1" x="-1.3" y="0" dx="1.2" dy="2.4" layer="1" />
              <smd name="2" x="1.3" y="0" dx="1.2" dy="2.4" layer="1" />
              <wire x1="-1.5" y1="-1.5" x2="1.5" y2="-1.5" width="0.12" layer="21" />
              <wire x1="1.5" y1="-1.5" x2="1.5" y2="1.5" width="0.12" layer="21" />
              <wire x1="1.5" y1="1.5" x2="-1.5" y2="1.5" width="0.12" layer="21" />
              <wire x1="-1.5" y1="1.5" x2="-1.5" y2="-1.5" width="0.12" layer="21" />
              <text x="-1.5" y="2.0" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="L2_PKG">
              <smd name="1" x="-1.3" y="0" dx="1.2" dy="2.4" layer="1" />
              <smd name="2" x="1.3" y="0" dx="1.2" dy="2.4" layer="1" />
              <wire x1="-1.5" y1="-1.5" x2="1.5" y2="-1.5" width="0.12" layer="21" />
              <wire x1="1.5" y1="-1.5" x2="1.5" y2="1.5" width="0.12" layer="21" />
              <wire x1="1.5" y1="1.5" x2="-1.5" y2="1.5" width="0.12" layer="21" />
              <wire x1="-1.5" y1="1.5" x2="-1.5" y2="-1.5" width="0.12" layer="21" />
              <text x="-1.5" y="2.0" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="R3_PKG">
              <smd name="1" x="-0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <smd name="2" x="0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.12" layer="21" />
              <text x="-0.8" y="0.9" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="R4_PKG">
              <smd name="1" x="-0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <smd name="2" x="0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.12" layer="21" />
              <text x="-0.8" y="0.9" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="R5_PKG">
              <smd name="1" x="-0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <smd name="2" x="0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.12" layer="21" />
              <text x="-0.8" y="0.9" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="R6_PKG">
              <smd name="1" x="-0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <smd name="2" x="0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.12" layer="21" />
              <text x="-0.8" y="0.9" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="R7_PKG">
              <smd name="1" x="-0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <smd name="2" x="0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.12" layer="21" />
              <text x="-0.8" y="0.9" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="R8_PKG">
              <smd name="1" x="-0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <smd name="2" x="0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.12" layer="21" />
              <text x="-0.8" y="0.9" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="R9_PKG">
              <smd name="1" x="-0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <smd name="2" x="0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.12" layer="21" />
              <text x="-0.8" y="0.9" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="R10_PKG">
              <smd name="1" x="-0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <smd name="2" x="0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.12" layer="21" />
              <text x="-0.8" y="0.9" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="R11_PKG">
              <smd name="1" x="-0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <smd name="2" x="0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.12" layer="21" />
              <text x="-0.8" y="0.9" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="R12_PKG">
              <smd name="1" x="-0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <smd name="2" x="0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.12" layer="21" />
              <text x="-0.8" y="0.9" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="R13_PKG">
              <smd name="1" x="-0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <smd name="2" x="0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.12" layer="21" />
              <text x="-0.8" y="0.9" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="R14_PKG">
              <smd name="1" x="-0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <smd name="2" x="0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.12" layer="21" />
              <text x="-0.8" y="0.9" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="R15_PKG">
              <smd name="1" x="-0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <smd name="2" x="0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.12" layer="21" />
              <text x="-0.8" y="0.9" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="R16_PKG">
              <smd name="1" x="-0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <smd name="2" x="0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.12" layer="21" />
              <text x="-0.8" y="0.9" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="R17_PKG">
              <smd name="1" x="-0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <smd name="2" x="0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.12" layer="21" />
              <text x="-0.8" y="0.9" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="C1_PKG">
              <smd name="1" x="-1" y="0" dx="1.1" dy="1.4" layer="1" />
              <smd name="2" x="1" y="0" dx="1.1" dy="1.4" layer="1" />
              <wire x1="-1.0" y1="-0.625" x2="1.0" y2="-0.625" width="0.12" layer="21" />
              <wire x1="1.0" y1="-0.625" x2="1.0" y2="0.625" width="0.12" layer="21" />
              <wire x1="1.0" y1="0.625" x2="-1.0" y2="0.625" width="0.12" layer="21" />
              <wire x1="-1.0" y1="0.625" x2="-1.0" y2="-0.625" width="0.12" layer="21" />
              <text x="-1.0" y="1.125" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="C2_PKG">
              <smd name="1" x="-1" y="0" dx="1.1" dy="1.4" layer="1" />
              <smd name="2" x="1" y="0" dx="1.1" dy="1.4" layer="1" />
              <wire x1="-1.0" y1="-0.625" x2="1.0" y2="-0.625" width="0.12" layer="21" />
              <wire x1="1.0" y1="-0.625" x2="1.0" y2="0.625" width="0.12" layer="21" />
              <wire x1="1.0" y1="0.625" x2="-1.0" y2="0.625" width="0.12" layer="21" />
              <wire x1="-1.0" y1="0.625" x2="-1.0" y2="-0.625" width="0.12" layer="21" />
              <text x="-1.0" y="1.125" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="C3_PKG">
              <smd name="1" x="-1" y="0" dx="1.1" dy="1.4" layer="1" />
              <smd name="2" x="1" y="0" dx="1.1" dy="1.4" layer="1" />
              <wire x1="-1.0" y1="-0.625" x2="1.0" y2="-0.625" width="0.12" layer="21" />
              <wire x1="1.0" y1="-0.625" x2="1.0" y2="0.625" width="0.12" layer="21" />
              <wire x1="1.0" y1="0.625" x2="-1.0" y2="0.625" width="0.12" layer="21" />
              <wire x1="-1.0" y1="0.625" x2="-1.0" y2="-0.625" width="0.12" layer="21" />
              <text x="-1.0" y="1.125" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="C4_PKG">
              <smd name="1" x="-1" y="0" dx="1.1" dy="1.4" layer="1" />
              <smd name="2" x="1" y="0" dx="1.1" dy="1.4" layer="1" />
              <wire x1="-1.0" y1="-0.625" x2="1.0" y2="-0.625" width="0.12" layer="21" />
              <wire x1="1.0" y1="-0.625" x2="1.0" y2="0.625" width="0.12" layer="21" />
              <wire x1="1.0" y1="0.625" x2="-1.0" y2="0.625" width="0.12" layer="21" />
              <wire x1="-1.0" y1="0.625" x2="-1.0" y2="-0.625" width="0.12" layer="21" />
              <text x="-1.0" y="1.125" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="C5_PKG">
              <smd name="1" x="-0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <smd name="2" x="0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.12" layer="21" />
              <text x="-0.8" y="0.9" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="C6_PKG">
              <smd name="1" x="-1" y="0" dx="1.1" dy="1.4" layer="1" />
              <smd name="2" x="1" y="0" dx="1.1" dy="1.4" layer="1" />
              <wire x1="-1.0" y1="-0.625" x2="1.0" y2="-0.625" width="0.12" layer="21" />
              <wire x1="1.0" y1="-0.625" x2="1.0" y2="0.625" width="0.12" layer="21" />
              <wire x1="1.0" y1="0.625" x2="-1.0" y2="0.625" width="0.12" layer="21" />
              <wire x1="-1.0" y1="0.625" x2="-1.0" y2="-0.625" width="0.12" layer="21" />
              <text x="-1.0" y="1.125" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="C7_PKG">
              <smd name="1" x="-1" y="0" dx="1.1" dy="1.4" layer="1" />
              <smd name="2" x="1" y="0" dx="1.1" dy="1.4" layer="1" />
              <wire x1="-1.0" y1="-0.625" x2="1.0" y2="-0.625" width="0.12" layer="21" />
              <wire x1="1.0" y1="-0.625" x2="1.0" y2="0.625" width="0.12" layer="21" />
              <wire x1="1.0" y1="0.625" x2="-1.0" y2="0.625" width="0.12" layer="21" />
              <wire x1="-1.0" y1="0.625" x2="-1.0" y2="-0.625" width="0.12" layer="21" />
              <text x="-1.0" y="1.125" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="C8_PKG">
              <smd name="1" x="-1" y="0" dx="1.1" dy="1.4" layer="1" />
              <smd name="2" x="1" y="0" dx="1.1" dy="1.4" layer="1" />
              <wire x1="-1.0" y1="-0.625" x2="1.0" y2="-0.625" width="0.12" layer="21" />
              <wire x1="1.0" y1="-0.625" x2="1.0" y2="0.625" width="0.12" layer="21" />
              <wire x1="1.0" y1="0.625" x2="-1.0" y2="0.625" width="0.12" layer="21" />
              <wire x1="-1.0" y1="0.625" x2="-1.0" y2="-0.625" width="0.12" layer="21" />
              <text x="-1.0" y="1.125" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="C9_PKG">
              <smd name="1" x="-1" y="0" dx="1.1" dy="1.4" layer="1" />
              <smd name="2" x="1" y="0" dx="1.1" dy="1.4" layer="1" />
              <wire x1="-1.0" y1="-0.625" x2="1.0" y2="-0.625" width="0.12" layer="21" />
              <wire x1="1.0" y1="-0.625" x2="1.0" y2="0.625" width="0.12" layer="21" />
              <wire x1="1.0" y1="0.625" x2="-1.0" y2="0.625" width="0.12" layer="21" />
              <wire x1="-1.0" y1="0.625" x2="-1.0" y2="-0.625" width="0.12" layer="21" />
              <text x="-1.0" y="1.125" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="C10_PKG">
              <smd name="1" x="-1" y="0" dx="1.1" dy="1.4" layer="1" />
              <smd name="2" x="1" y="0" dx="1.1" dy="1.4" layer="1" />
              <wire x1="-1.0" y1="-0.625" x2="1.0" y2="-0.625" width="0.12" layer="21" />
              <wire x1="1.0" y1="-0.625" x2="1.0" y2="0.625" width="0.12" layer="21" />
              <wire x1="1.0" y1="0.625" x2="-1.0" y2="0.625" width="0.12" layer="21" />
              <wire x1="-1.0" y1="0.625" x2="-1.0" y2="-0.625" width="0.12" layer="21" />
              <text x="-1.0" y="1.125" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="C11_PKG">
              <smd name="1" x="-0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <smd name="2" x="0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.12" layer="21" />
              <text x="-0.8" y="0.9" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="C12_PKG">
              <smd name="1" x="-1" y="0" dx="1.1" dy="1.4" layer="1" />
              <smd name="2" x="1" y="0" dx="1.1" dy="1.4" layer="1" />
              <wire x1="-1.0" y1="-0.625" x2="1.0" y2="-0.625" width="0.12" layer="21" />
              <wire x1="1.0" y1="-0.625" x2="1.0" y2="0.625" width="0.12" layer="21" />
              <wire x1="1.0" y1="0.625" x2="-1.0" y2="0.625" width="0.12" layer="21" />
              <wire x1="-1.0" y1="0.625" x2="-1.0" y2="-0.625" width="0.12" layer="21" />
              <text x="-1.0" y="1.125" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="C13_PKG">
              <smd name="1" x="-1" y="0" dx="1.1" dy="1.4" layer="1" />
              <smd name="2" x="1" y="0" dx="1.1" dy="1.4" layer="1" />
              <wire x1="-1.0" y1="-0.625" x2="1.0" y2="-0.625" width="0.12" layer="21" />
              <wire x1="1.0" y1="-0.625" x2="1.0" y2="0.625" width="0.12" layer="21" />
              <wire x1="1.0" y1="0.625" x2="-1.0" y2="0.625" width="0.12" layer="21" />
              <wire x1="-1.0" y1="0.625" x2="-1.0" y2="-0.625" width="0.12" layer="21" />
              <text x="-1.0" y="1.125" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="C14_PKG">
              <smd name="1" x="-0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <smd name="2" x="0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.12" layer="21" />
              <text x="-0.8" y="0.9" size="0.8" layer="25">&gt;NAME</text>
            </package>
            <package name="C15_PKG">
              <smd name="1" x="-0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <smd name="2" x="0.8" y="0" dx="0.9" dy="0.95" layer="1" />
              <wire x1="-0.8" y1="-0.4" x2="0.8" y2="-0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="-0.4" x2="0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="0.8" y1="0.4" x2="-0.8" y2="0.4" width="0.12" layer="21" />
              <wire x1="-0.8" y1="0.4" x2="-0.8" y2="-0.4" width="0.12" layer="21" />
              <text x="-0.8" y="0.9" size="0.8" layer="25">&gt;NAME</text>
            </package>
          </packages>
          <symbols>
            <symbol name="U1_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-27.94" width="0.254" layer="94" />
              <wire x1="20.32" y1="-27.94" x2="0" y2="-27.94" width="0.254" layer="94" />
              <wire x1="0" y1="-27.94" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_SYS" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_BAT" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <pin name="3_STAT2" x="-5.08" y="-7.62" visible="both" length="middle" direction="pas" />
              <pin name="4_CE_N" x="-5.08" y="-10.16" visible="both" length="middle" direction="pas" />
              <pin name="5_GND" x="-5.08" y="-12.7" visible="both" length="middle" direction="pas" />
              <pin name="6_TS_MR" x="-5.08" y="-15.24" visible="both" length="middle" direction="pas" />
              <pin name="7_ILIM_VSET" x="-5.08" y="-17.78" visible="both" length="middle" direction="pas" />
              <pin name="8_ISET" x="-5.08" y="-20.32" visible="both" length="middle" direction="pas" />
              <pin name="9_STAT1" x="-5.08" y="-22.86" visible="both" length="middle" direction="pas" />
              <pin name="10_IN" x="-5.08" y="-25.4" visible="both" length="middle" direction="pas" />
              <pin name="11_EP" x="-5.08" y="-27.94" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="U2_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-27.94" width="0.254" layer="94" />
              <wire x1="20.32" y1="-27.94" x2="0" y2="-27.94" width="0.254" layer="94" />
              <wire x1="0" y1="-27.94" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_VOUT" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_L2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <pin name="3_PGND" x="-5.08" y="-7.62" visible="both" length="middle" direction="pas" />
              <pin name="4_L1" x="-5.08" y="-10.16" visible="both" length="middle" direction="pas" />
              <pin name="5_VIN" x="-5.08" y="-12.7" visible="both" length="middle" direction="pas" />
              <pin name="6_EN" x="-5.08" y="-15.24" visible="both" length="middle" direction="pas" />
              <pin name="7_PS_SYNC" x="-5.08" y="-17.78" visible="both" length="middle" direction="pas" />
              <pin name="8_VINA" x="-5.08" y="-20.32" visible="both" length="middle" direction="pas" />
              <pin name="9_GND" x="-5.08" y="-22.86" visible="both" length="middle" direction="pas" />
              <pin name="10_FB" x="-5.08" y="-25.4" visible="both" length="middle" direction="pas" />
              <pin name="11_EP" x="-5.08" y="-27.94" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="U3_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-15.24" width="0.254" layer="94" />
              <wire x1="20.32" y1="-15.24" x2="0" y2="-15.24" width="0.254" layer="94" />
              <wire x1="0" y1="-15.24" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_FB" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_EN" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <pin name="3_VIN" x="-5.08" y="-7.62" visible="both" length="middle" direction="pas" />
              <pin name="4_GND" x="-5.08" y="-10.16" visible="both" length="middle" direction="pas" />
              <pin name="5_SW" x="-5.08" y="-12.7" visible="both" length="middle" direction="pas" />
              <pin name="6_VOUT" x="-5.08" y="-15.24" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="U4_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-48.26" width="0.254" layer="94" />
              <wire x1="20.32" y1="-48.26" x2="0" y2="-48.26" width="0.254" layer="94" />
              <wire x1="0" y1="-48.26" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_3V3" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_EN" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <pin name="3_IO4" x="-5.08" y="-7.62" visible="both" length="middle" direction="pas" />
              <pin name="4_IO5" x="-5.08" y="-10.16" visible="both" length="middle" direction="pas" />
              <pin name="5_IO6" x="-5.08" y="-12.7" visible="both" length="middle" direction="pas" />
              <pin name="6_IO7" x="-5.08" y="-15.24" visible="both" length="middle" direction="pas" />
              <pin name="7_IO8" x="-5.08" y="-17.78" visible="both" length="middle" direction="pas" />
              <pin name="8_IO9" x="-5.08" y="-20.32" visible="both" length="middle" direction="pas" />
              <pin name="9_GND" x="-5.08" y="-22.86" visible="both" length="middle" direction="pas" />
              <pin name="10_IO10" x="-5.08" y="-25.4" visible="both" length="middle" direction="pas" />
              <pin name="11_RXD" x="-5.08" y="-27.94" visible="both" length="middle" direction="pas" />
              <pin name="12_TXD" x="-5.08" y="-30.48" visible="both" length="middle" direction="pas" />
              <pin name="13_IO18" x="-5.08" y="-33.02" visible="both" length="middle" direction="pas" />
              <pin name="14_IO19" x="-5.08" y="-35.56" visible="both" length="middle" direction="pas" />
              <pin name="15_IO3" x="-5.08" y="-38.1" visible="both" length="middle" direction="pas" />
              <pin name="16_IO2" x="-5.08" y="-40.64" visible="both" length="middle" direction="pas" />
              <pin name="17_IO1" x="-5.08" y="-43.18" visible="both" length="middle" direction="pas" />
              <pin name="18_IO0" x="-5.08" y="-45.72" visible="both" length="middle" direction="pas" />
              <pin name="19_EP" x="-5.08" y="-48.26" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="Q1_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_G" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_S" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <pin name="3_D" x="-5.08" y="-7.62" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="J1_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_P1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_P2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="J2_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-10.16" width="0.254" layer="94" />
              <wire x1="20.32" y1="-10.16" x2="0" y2="-10.16" width="0.254" layer="94" />
              <wire x1="0" y1="-10.16" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_P1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_P2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <pin name="3_P3" x="-5.08" y="-7.62" visible="both" length="middle" direction="pas" />
              <pin name="4_P4" x="-5.08" y="-10.16" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="J3_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_P1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_P2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <pin name="3_P3" x="-5.08" y="-7.62" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="J4_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-10.16" width="0.254" layer="94" />
              <wire x1="20.32" y1="-10.16" x2="0" y2="-10.16" width="0.254" layer="94" />
              <wire x1="0" y1="-10.16" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_P1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_P2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <pin name="3_P3" x="-5.08" y="-7.62" visible="both" length="middle" direction="pas" />
              <pin name="4_P4" x="-5.08" y="-10.16" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="J5_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_P1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_P2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="J6_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-15.24" width="0.254" layer="94" />
              <wire x1="20.32" y1="-15.24" x2="0" y2="-15.24" width="0.254" layer="94" />
              <wire x1="0" y1="-15.24" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_P1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_P2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <pin name="3_P3" x="-5.08" y="-7.62" visible="both" length="middle" direction="pas" />
              <pin name="4_P4" x="-5.08" y="-10.16" visible="both" length="middle" direction="pas" />
              <pin name="5_P5" x="-5.08" y="-12.7" visible="both" length="middle" direction="pas" />
              <pin name="6_P6" x="-5.08" y="-15.24" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="R1_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="R2_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="L1_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="L2_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="R3_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="R4_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="R5_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="R6_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="R7_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="R8_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="R9_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="R10_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="R11_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="R12_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="R13_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="R14_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="R15_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="R16_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="R17_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="C1_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="C2_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="C3_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="C4_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="C5_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="C6_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="C7_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="C8_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="C9_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="C10_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="C11_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="C12_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="C13_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="C14_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
            <symbol name="C15_SYM">
              <wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94" />
              <wire x1="20.32" y1="0" x2="20.32" y2="-7.62" width="0.254" layer="94" />
              <wire x1="20.32" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94" />
              <wire x1="0" y1="-7.62" x2="0" y2="0" width="0.254" layer="94" />
              <pin name="1_1" x="-5.08" y="-2.54" visible="both" length="middle" direction="pas" />
              <pin name="2_2" x="-5.08" y="-5.08" visible="both" length="middle" direction="pas" />
              <text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
            </symbol>
          </symbols>
          <devicesets>
            <deviceset name="U1_DEV" prefix="U" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="U1_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="U1_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_SYS" pad="1" />
                    <connect gate="G$1" pin="2_BAT" pad="2" />
                    <connect gate="G$1" pin="3_STAT2" pad="3" />
                    <connect gate="G$1" pin="4_CE_N" pad="4" />
                    <connect gate="G$1" pin="5_GND" pad="5" />
                    <connect gate="G$1" pin="6_TS_MR" pad="6" />
                    <connect gate="G$1" pin="7_ILIM_VSET" pad="7" />
                    <connect gate="G$1" pin="8_ISET" pad="8" />
                    <connect gate="G$1" pin="9_STAT1" pad="9" />
                    <connect gate="G$1" pin="10_IN" pad="10" />
                    <connect gate="G$1" pin="11_EP" pad="11" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="U2_DEV" prefix="U" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="U2_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="U2_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_VOUT" pad="1" />
                    <connect gate="G$1" pin="2_L2" pad="2" />
                    <connect gate="G$1" pin="3_PGND" pad="3" />
                    <connect gate="G$1" pin="4_L1" pad="4" />
                    <connect gate="G$1" pin="5_VIN" pad="5" />
                    <connect gate="G$1" pin="6_EN" pad="6" />
                    <connect gate="G$1" pin="7_PS_SYNC" pad="7" />
                    <connect gate="G$1" pin="8_VINA" pad="8" />
                    <connect gate="G$1" pin="9_GND" pad="9" />
                    <connect gate="G$1" pin="10_FB" pad="10" />
                    <connect gate="G$1" pin="11_EP" pad="11" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="U3_DEV" prefix="U" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="U3_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="U3_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_FB" pad="1" />
                    <connect gate="G$1" pin="2_EN" pad="2" />
                    <connect gate="G$1" pin="3_VIN" pad="3" />
                    <connect gate="G$1" pin="4_GND" pad="4" />
                    <connect gate="G$1" pin="5_SW" pad="5" />
                    <connect gate="G$1" pin="6_VOUT" pad="6" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="U4_DEV" prefix="U" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="U4_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="U4_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_3V3" pad="1" />
                    <connect gate="G$1" pin="2_EN" pad="2" />
                    <connect gate="G$1" pin="3_IO4" pad="3" />
                    <connect gate="G$1" pin="4_IO5" pad="4" />
                    <connect gate="G$1" pin="5_IO6" pad="5" />
                    <connect gate="G$1" pin="6_IO7" pad="6" />
                    <connect gate="G$1" pin="7_IO8" pad="7" />
                    <connect gate="G$1" pin="8_IO9" pad="8" />
                    <connect gate="G$1" pin="9_GND" pad="9" />
                    <connect gate="G$1" pin="10_IO10" pad="10" />
                    <connect gate="G$1" pin="11_RXD" pad="11" />
                    <connect gate="G$1" pin="12_TXD" pad="12" />
                    <connect gate="G$1" pin="13_IO18" pad="13" />
                    <connect gate="G$1" pin="14_IO19" pad="14" />
                    <connect gate="G$1" pin="15_IO3" pad="15" />
                    <connect gate="G$1" pin="16_IO2" pad="16" />
                    <connect gate="G$1" pin="17_IO1" pad="17" />
                    <connect gate="G$1" pin="18_IO0" pad="18" />
                    <connect gate="G$1" pin="19_EP" pad="19" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="Q1_DEV" prefix="Q" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="Q1_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="Q1_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_G" pad="1" />
                    <connect gate="G$1" pin="2_S" pad="2" />
                    <connect gate="G$1" pin="3_D" pad="3" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="J1_DEV" prefix="J" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="J1_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="J1_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_P1" pad="1" />
                    <connect gate="G$1" pin="2_P2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="J2_DEV" prefix="J" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="J2_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="J2_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_P1" pad="1" />
                    <connect gate="G$1" pin="2_P2" pad="2" />
                    <connect gate="G$1" pin="3_P3" pad="3" />
                    <connect gate="G$1" pin="4_P4" pad="4" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="J3_DEV" prefix="J" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="J3_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="J3_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_P1" pad="1" />
                    <connect gate="G$1" pin="2_P2" pad="2" />
                    <connect gate="G$1" pin="3_P3" pad="3" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="J4_DEV" prefix="J" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="J4_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="J4_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_P1" pad="1" />
                    <connect gate="G$1" pin="2_P2" pad="2" />
                    <connect gate="G$1" pin="3_P3" pad="3" />
                    <connect gate="G$1" pin="4_P4" pad="4" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="J5_DEV" prefix="J" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="J5_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="J5_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_P1" pad="1" />
                    <connect gate="G$1" pin="2_P2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="J6_DEV" prefix="J" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="J6_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="J6_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_P1" pad="1" />
                    <connect gate="G$1" pin="2_P2" pad="2" />
                    <connect gate="G$1" pin="3_P3" pad="3" />
                    <connect gate="G$1" pin="4_P4" pad="4" />
                    <connect gate="G$1" pin="5_P5" pad="5" />
                    <connect gate="G$1" pin="6_P6" pad="6" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R1_DEV" prefix="R" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="R1_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="R1_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R2_DEV" prefix="R" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="R2_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="R2_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="L1_DEV" prefix="L" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="L1_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="L1_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="L2_DEV" prefix="L" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="L2_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="L2_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R3_DEV" prefix="R" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="R3_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="R3_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R4_DEV" prefix="R" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="R4_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="R4_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R5_DEV" prefix="R" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="R5_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="R5_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R6_DEV" prefix="R" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="R6_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="R6_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R7_DEV" prefix="R" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="R7_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="R7_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R8_DEV" prefix="R" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="R8_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="R8_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R9_DEV" prefix="R" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="R9_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="R9_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R10_DEV" prefix="R" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="R10_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="R10_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R11_DEV" prefix="R" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="R11_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="R11_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R12_DEV" prefix="R" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="R12_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="R12_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R13_DEV" prefix="R" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="R13_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="R13_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R14_DEV" prefix="R" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="R14_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="R14_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R15_DEV" prefix="R" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="R15_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="R15_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R16_DEV" prefix="R" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="R16_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="R16_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R17_DEV" prefix="R" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="R17_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="R17_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C1_DEV" prefix="C" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="C1_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="C1_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C2_DEV" prefix="C" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="C2_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="C2_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C3_DEV" prefix="C" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="C3_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="C3_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C4_DEV" prefix="C" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="C4_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="C4_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C5_DEV" prefix="C" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="C5_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="C5_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C6_DEV" prefix="C" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="C6_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="C6_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C7_DEV" prefix="C" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="C7_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="C7_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C8_DEV" prefix="C" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="C8_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="C8_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C9_DEV" prefix="C" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="C9_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="C9_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C10_DEV" prefix="C" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="C10_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="C10_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C11_DEV" prefix="C" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="C11_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="C11_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C12_DEV" prefix="C" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="C12_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="C12_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C13_DEV" prefix="C" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="C13_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="C13_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C14_DEV" prefix="C" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="C14_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="C14_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C15_DEV" prefix="C" uservalue="yes">
              <gates>
                <gate name="G$1" symbol="C15_SYM" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="C15_PKG">
                  <connects>
                    <connect gate="G$1" pin="1_1" pad="1" />
                    <connect gate="G$1" pin="2_2" pad="2" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
          </devicesets>
        </library>
      </libraries>
      <attributes />
      <variantdefs />
      <classes>
        <class number="0" name="default" width="0.25" drill="0.3" />
      </classes>
      <parts>
        <part name="U1" library="FlipLite_Prototype" deviceset="U1_DEV" device="" value="BQ25185DLHR" />
        <part name="U2" library="FlipLite_Prototype" deviceset="U2_DEV" device="" value="TPS63031DSKR" />
        <part name="U3" library="FlipLite_Prototype" deviceset="U3_DEV" device="" value="TPS61023DRLR" />
        <part name="U4" library="FlipLite_Prototype" deviceset="U4_DEV" device="" value="ESP32-C3-WROOM-02-N4" />
        <part name="Q1" library="FlipLite_Prototype" deviceset="Q1_DEV" device="" value="2N7002" />
        <part name="J1" library="FlipLite_Prototype" deviceset="J1_DEV" device="" value="B2B-XH-A input" />
        <part name="J2" library="FlipLite_Prototype" deviceset="J2_DEV" device="" value="B4B-XH-A battery+NTC" />
        <part name="J3" library="FlipLite_Prototype" deviceset="J3_DEV" device="" value="B3B-XH-A servo harness" />
        <part name="J4" library="FlipLite_Prototype" deviceset="J4_DEV" device="" value="B4B-PH-K-S dual Hall" />
        <part name="J5" library="FlipLite_Prototype" deviceset="J5_DEV" device="" value="B2B-PH-K-S optical" />
        <part name="J6" library="FlipLite_Prototype" deviceset="J6_DEV" device="" value="Factory pogo fixture" />
        <part name="R1" library="FlipLite_Prototype" deviceset="R1_DEV" device="" value="18k 1%" />
        <part name="R2" library="FlipLite_Prototype" deviceset="R2_DEV" device="" value="3.00k 1%" />
        <part name="L1" library="FlipLite_Prototype" deviceset="L1_DEV" device="" value="1.5uH Isat&gt;=1.5A" />
        <part name="L2" library="FlipLite_Prototype" deviceset="L2_DEV" device="" value="1uH Isat&gt;=5A" />
        <part name="R3" library="FlipLite_Prototype" deviceset="R3_DEV" device="" value="732k 1%" />
        <part name="R4" library="FlipLite_Prototype" deviceset="R4_DEV" device="" value="100k 1%" />
        <part name="R5" library="FlipLite_Prototype" deviceset="R5_DEV" device="" value="100k" />
        <part name="R6" library="FlipLite_Prototype" deviceset="R6_DEV" device="" value="4.7k" />
        <part name="R7" library="FlipLite_Prototype" deviceset="R7_DEV" device="" value="100k" />
        <part name="R8" library="FlipLite_Prototype" deviceset="R8_DEV" device="" value="10k" />
        <part name="R9" library="FlipLite_Prototype" deviceset="R9_DEV" device="" value="10k" />
        <part name="R10" library="FlipLite_Prototype" deviceset="R10_DEV" device="" value="10k" />
        <part name="R11" library="FlipLite_Prototype" deviceset="R11_DEV" device="" value="10k" />
        <part name="R12" library="FlipLite_Prototype" deviceset="R12_DEV" device="" value="10k" />
        <part name="R13" library="FlipLite_Prototype" deviceset="R13_DEV" device="" value="10k" />
        <part name="R14" library="FlipLite_Prototype" deviceset="R14_DEV" device="" value="470k 1%" />
        <part name="R15" library="FlipLite_Prototype" deviceset="R15_DEV" device="" value="470k 1%" />
        <part name="R16" library="FlipLite_Prototype" deviceset="R16_DEV" device="" value="22k" />
        <part name="R17" library="FlipLite_Prototype" deviceset="R17_DEV" device="" value="1k" />
        <part name="C1" library="FlipLite_Prototype" deviceset="C1_DEV" device="" value="1uF 16V" />
        <part name="C2" library="FlipLite_Prototype" deviceset="C2_DEV" device="" value="10uF 10V" />
        <part name="C3" library="FlipLite_Prototype" deviceset="C3_DEV" device="" value="1uF 10V" />
        <part name="C4" library="FlipLite_Prototype" deviceset="C4_DEV" device="" value="10uF 10V" />
        <part name="C5" library="FlipLite_Prototype" deviceset="C5_DEV" device="" value="100nF" />
        <part name="C6" library="FlipLite_Prototype" deviceset="C6_DEV" device="" value="10uF 10V" />
        <part name="C7" library="FlipLite_Prototype" deviceset="C7_DEV" device="" value="10uF 10V" />
        <part name="C8" library="FlipLite_Prototype" deviceset="C8_DEV" device="" value="10uF 10V" />
        <part name="C9" library="FlipLite_Prototype" deviceset="C9_DEV" device="" value="22uF 10V" />
        <part name="C10" library="FlipLite_Prototype" deviceset="C10_DEV" device="" value="22uF 10V" />
        <part name="C11" library="FlipLite_Prototype" deviceset="C11_DEV" device="" value="100nF" />
        <part name="C12" library="FlipLite_Prototype" deviceset="C12_DEV" device="" value="10uF 10V" />
        <part name="C13" library="FlipLite_Prototype" deviceset="C13_DEV" device="" value="1uF" />
        <part name="C14" library="FlipLite_Prototype" deviceset="C14_DEV" device="" value="100nF" />
        <part name="C15" library="FlipLite_Prototype" deviceset="C15_DEV" device="" value="100nF" />
      </parts>
      <sheets>
        <sheet>
          <plain>
            <text x="0" y="20" size="2.54" layer="97">FlipLite / power / PRELIMINARY - NOT FOR FABRICATION</text>
          </plain>
          <moduleinsts />
          <instances>
            <instance part="U1" gate="G$1" x="30" y="0" smashed="no" />
            <instance part="U2" gate="G$1" x="115" y="0" smashed="no" />
            <instance part="U3" gate="G$1" x="200" y="0" smashed="no" />
          </instances>
          <busses />
          <nets>
            <net name="SYS" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="1_SYS" />
                <wire x1="24.92" y1="-2.54" x2="14.76" y2="-2.54" width="0.1524" layer="91" />
                <label x="14.76" y="-2.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="U2" gate="G$1" pin="5_VIN" />
                <wire x1="109.92" y1="-12.7" x2="99.76" y2="-12.7" width="0.1524" layer="91" />
                <label x="99.76" y="-12.7" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="U2" gate="G$1" pin="6_EN" />
                <wire x1="109.92" y1="-15.24" x2="99.76" y2="-15.24" width="0.1524" layer="91" />
                <label x="99.76" y="-15.24" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="U2" gate="G$1" pin="8_VINA" />
                <wire x1="109.92" y1="-20.32" x2="99.76" y2="-20.32" width="0.1524" layer="91" />
                <label x="99.76" y="-20.32" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="U3" gate="G$1" pin="3_VIN" />
                <wire x1="194.92" y1="-7.62" x2="184.76" y2="-7.62" width="0.1524" layer="91" />
                <label x="184.76" y="-7.62" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="BAT" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="2_BAT" />
                <wire x1="24.92" y1="-5.08" x2="14.76" y2="-5.08" width="0.1524" layer="91" />
                <label x="14.76" y="-5.08" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="CHG_STAT2" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="3_STAT2" />
                <wire x1="24.92" y1="-7.62" x2="14.76" y2="-7.62" width="0.1524" layer="91" />
                <label x="14.76" y="-7.62" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="GND" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="4_CE_N" />
                <wire x1="24.92" y1="-10.16" x2="14.76" y2="-10.16" width="0.1524" layer="91" />
                <label x="14.76" y="-10.16" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="U1" gate="G$1" pin="5_GND" />
                <wire x1="24.92" y1="-12.7" x2="14.76" y2="-12.7" width="0.1524" layer="91" />
                <label x="14.76" y="-12.7" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="U1" gate="G$1" pin="11_EP" />
                <wire x1="24.92" y1="-27.94" x2="14.76" y2="-27.94" width="0.1524" layer="91" />
                <label x="14.76" y="-27.94" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="U2" gate="G$1" pin="3_PGND" />
                <wire x1="109.92" y1="-7.62" x2="99.76" y2="-7.62" width="0.1524" layer="91" />
                <label x="99.76" y="-7.62" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="U2" gate="G$1" pin="7_PS_SYNC" />
                <wire x1="109.92" y1="-17.78" x2="99.76" y2="-17.78" width="0.1524" layer="91" />
                <label x="99.76" y="-17.78" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="U2" gate="G$1" pin="9_GND" />
                <wire x1="109.92" y1="-22.86" x2="99.76" y2="-22.86" width="0.1524" layer="91" />
                <label x="99.76" y="-22.86" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="U2" gate="G$1" pin="11_EP" />
                <wire x1="109.92" y1="-27.94" x2="99.76" y2="-27.94" width="0.1524" layer="91" />
                <label x="99.76" y="-27.94" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="U3" gate="G$1" pin="4_GND" />
                <wire x1="194.92" y1="-10.16" x2="184.76" y2="-10.16" width="0.1524" layer="91" />
                <label x="184.76" y="-10.16" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="NTC" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="6_TS_MR" />
                <wire x1="24.92" y1="-15.24" x2="14.76" y2="-15.24" width="0.1524" layer="91" />
                <label x="14.76" y="-15.24" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="VSET" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="7_ILIM_VSET" />
                <wire x1="24.92" y1="-17.78" x2="14.76" y2="-17.78" width="0.1524" layer="91" />
                <label x="14.76" y="-17.78" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="ISET" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="8_ISET" />
                <wire x1="24.92" y1="-20.32" x2="14.76" y2="-20.32" width="0.1524" layer="91" />
                <label x="14.76" y="-20.32" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="CHG_STAT1" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="9_STAT1" />
                <wire x1="24.92" y1="-22.86" x2="14.76" y2="-22.86" width="0.1524" layer="91" />
                <label x="14.76" y="-22.86" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="VIN5" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="10_IN" />
                <wire x1="24.92" y1="-25.4" x2="14.76" y2="-25.4" width="0.1524" layer="91" />
                <label x="14.76" y="-25.4" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="3V3" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="1_VOUT" />
                <wire x1="109.92" y1="-2.54" x2="99.76" y2="-2.54" width="0.1524" layer="91" />
                <label x="99.76" y="-2.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="U2" gate="G$1" pin="10_FB" />
                <wire x1="109.92" y1="-25.4" x2="99.76" y2="-25.4" width="0.1524" layer="91" />
                <label x="99.76" y="-25.4" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="L2_BB" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="2_L2" />
                <wire x1="109.92" y1="-5.08" x2="99.76" y2="-5.08" width="0.1524" layer="91" />
                <label x="99.76" y="-5.08" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="L1_BB" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="4_L1" />
                <wire x1="109.92" y1="-10.16" x2="99.76" y2="-10.16" width="0.1524" layer="91" />
                <label x="99.76" y="-10.16" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="BOOST_FB" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="1_FB" />
                <wire x1="194.92" y1="-2.54" x2="184.76" y2="-2.54" width="0.1524" layer="91" />
                <label x="184.76" y="-2.54" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="MOTOR_EN" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="2_EN" />
                <wire x1="194.92" y1="-5.08" x2="184.76" y2="-5.08" width="0.1524" layer="91" />
                <label x="184.76" y="-5.08" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="BOOST_SW" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="5_SW" />
                <wire x1="194.92" y1="-12.7" x2="184.76" y2="-12.7" width="0.1524" layer="91" />
                <label x="184.76" y="-12.7" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="MOTOR5" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="6_VOUT" />
                <wire x1="194.92" y1="-15.24" x2="184.76" y2="-15.24" width="0.1524" layer="91" />
                <label x="184.76" y="-15.24" size="1.016" layer="95" />
              </segment>
            </net>
          </nets>
        </sheet>
        <sheet>
          <plain>
            <text x="0" y="20" size="2.54" layer="97">FlipLite / control / PRELIMINARY - NOT FOR FABRICATION</text>
          </plain>
          <moduleinsts />
          <instances>
            <instance part="U4" gate="G$1" x="30" y="0" smashed="no" />
            <instance part="Q1" gate="G$1" x="115" y="0" smashed="no" />
          </instances>
          <busses />
          <nets>
            <net name="3V3" class="0">
              <segment>
                <pinref part="U4" gate="G$1" pin="1_3V3" />
                <wire x1="24.92" y1="-2.54" x2="14.76" y2="-2.54" width="0.1524" layer="91" />
                <label x="14.76" y="-2.54" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="RESET_N" class="0">
              <segment>
                <pinref part="U4" gate="G$1" pin="2_EN" />
                <wire x1="24.92" y1="-5.08" x2="14.76" y2="-5.08" width="0.1524" layer="91" />
                <label x="14.76" y="-5.08" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="PWM_INVERTED" class="0">
              <segment>
                <pinref part="U4" gate="G$1" pin="3_IO4" />
                <wire x1="24.92" y1="-7.62" x2="14.76" y2="-7.62" width="0.1524" layer="91" />
                <label x="14.76" y="-7.62" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="Q1" gate="G$1" pin="1_G" />
                <wire x1="109.92" y1="-2.54" x2="99.76" y2="-2.54" width="0.1524" layer="91" />
                <label x="99.76" y="-2.54" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="MOTOR_EN" class="0">
              <segment>
                <pinref part="U4" gate="G$1" pin="4_IO5" />
                <wire x1="24.92" y1="-10.16" x2="14.76" y2="-10.16" width="0.1524" layer="91" />
                <label x="14.76" y="-10.16" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="HALL_OFF" class="0">
              <segment>
                <pinref part="U4" gate="G$1" pin="5_IO6" />
                <wire x1="24.92" y1="-12.7" x2="14.76" y2="-12.7" width="0.1524" layer="91" />
                <label x="14.76" y="-12.7" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="HALL_ON" class="0">
              <segment>
                <pinref part="U4" gate="G$1" pin="6_IO7" />
                <wire x1="24.92" y1="-15.24" x2="14.76" y2="-15.24" width="0.1524" layer="91" />
                <label x="14.76" y="-15.24" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="BOOT8" class="0">
              <segment>
                <pinref part="U4" gate="G$1" pin="7_IO8" />
                <wire x1="24.92" y1="-17.78" x2="14.76" y2="-17.78" width="0.1524" layer="91" />
                <label x="14.76" y="-17.78" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="BOOT9" class="0">
              <segment>
                <pinref part="U4" gate="G$1" pin="8_IO9" />
                <wire x1="24.92" y1="-20.32" x2="14.76" y2="-20.32" width="0.1524" layer="91" />
                <label x="14.76" y="-20.32" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="GND" class="0">
              <segment>
                <pinref part="U4" gate="G$1" pin="9_GND" />
                <wire x1="24.92" y1="-22.86" x2="14.76" y2="-22.86" width="0.1524" layer="91" />
                <label x="14.76" y="-22.86" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="U4" gate="G$1" pin="19_EP" />
                <wire x1="24.92" y1="-48.26" x2="14.76" y2="-48.26" width="0.1524" layer="91" />
                <label x="14.76" y="-48.26" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="Q1" gate="G$1" pin="2_S" />
                <wire x1="109.92" y1="-5.08" x2="99.76" y2="-5.08" width="0.1524" layer="91" />
                <label x="99.76" y="-5.08" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="CHG_STAT1" class="0">
              <segment>
                <pinref part="U4" gate="G$1" pin="10_IO10" />
                <wire x1="24.92" y1="-25.4" x2="14.76" y2="-25.4" width="0.1524" layer="91" />
                <label x="14.76" y="-25.4" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="UART_RX" class="0">
              <segment>
                <pinref part="U4" gate="G$1" pin="11_RXD" />
                <wire x1="24.92" y1="-27.94" x2="14.76" y2="-27.94" width="0.1524" layer="91" />
                <label x="14.76" y="-27.94" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="UART_TX" class="0">
              <segment>
                <pinref part="U4" gate="G$1" pin="12_TXD" />
                <wire x1="24.92" y1="-30.48" x2="14.76" y2="-30.48" width="0.1524" layer="91" />
                <label x="14.76" y="-30.48" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="USB_DM_NC" class="0">
              <segment>
                <pinref part="U4" gate="G$1" pin="13_IO18" />
                <wire x1="24.92" y1="-33.02" x2="14.76" y2="-33.02" width="0.1524" layer="91" />
                <label x="14.76" y="-33.02" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="USB_DP_NC" class="0">
              <segment>
                <pinref part="U4" gate="G$1" pin="14_IO19" />
                <wire x1="24.92" y1="-35.56" x2="14.76" y2="-35.56" width="0.1524" layer="91" />
                <label x="14.76" y="-35.56" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="BAT_ADC" class="0">
              <segment>
                <pinref part="U4" gate="G$1" pin="15_IO3" />
                <wire x1="24.92" y1="-38.1" x2="14.76" y2="-38.1" width="0.1524" layer="91" />
                <label x="14.76" y="-38.1" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="BOOT2" class="0">
              <segment>
                <pinref part="U4" gate="G$1" pin="16_IO2" />
                <wire x1="24.92" y1="-40.64" x2="14.76" y2="-40.64" width="0.1524" layer="91" />
                <label x="14.76" y="-40.64" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="OPT_ADC" class="0">
              <segment>
                <pinref part="U4" gate="G$1" pin="17_IO1" />
                <wire x1="24.92" y1="-43.18" x2="14.76" y2="-43.18" width="0.1524" layer="91" />
                <label x="14.76" y="-43.18" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="CHG_STAT2" class="0">
              <segment>
                <pinref part="U4" gate="G$1" pin="18_IO0" />
                <wire x1="24.92" y1="-45.72" x2="14.76" y2="-45.72" width="0.1524" layer="91" />
                <label x="14.76" y="-45.72" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="SERVO_PWM" class="0">
              <segment>
                <pinref part="Q1" gate="G$1" pin="3_D" />
                <wire x1="109.92" y1="-7.62" x2="99.76" y2="-7.62" width="0.1524" layer="91" />
                <label x="99.76" y="-7.62" size="1.016" layer="95" />
              </segment>
            </net>
          </nets>
        </sheet>
        <sheet>
          <plain>
            <text x="0" y="20" size="2.54" layer="97">FlipLite / connector / PRELIMINARY - NOT FOR FABRICATION</text>
          </plain>
          <moduleinsts />
          <instances>
            <instance part="J1" gate="G$1" x="30" y="0" smashed="no" />
            <instance part="J2" gate="G$1" x="115" y="0" smashed="no" />
            <instance part="J3" gate="G$1" x="200" y="0" smashed="no" />
            <instance part="J4" gate="G$1" x="285" y="0" smashed="no" />
            <instance part="J5" gate="G$1" x="30" y="-80" smashed="no" />
          </instances>
          <busses />
          <nets>
            <net name="VIN5" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="1_P1" />
                <wire x1="24.92" y1="-2.54" x2="14.76" y2="-2.54" width="0.1524" layer="91" />
                <label x="14.76" y="-2.54" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="GND" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="2_P2" />
                <wire x1="24.92" y1="-5.08" x2="14.76" y2="-5.08" width="0.1524" layer="91" />
                <label x="14.76" y="-5.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="J2" gate="G$1" pin="4_P4" />
                <wire x1="109.92" y1="-10.16" x2="99.76" y2="-10.16" width="0.1524" layer="91" />
                <label x="99.76" y="-10.16" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="J3" gate="G$1" pin="1_P1" />
                <wire x1="194.92" y1="-2.54" x2="184.76" y2="-2.54" width="0.1524" layer="91" />
                <label x="184.76" y="-2.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="J4" gate="G$1" pin="2_P2" />
                <wire x1="279.92" y1="-5.08" x2="269.76" y2="-5.08" width="0.1524" layer="91" />
                <label x="269.76" y="-5.08" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="BAT" class="0">
              <segment>
                <pinref part="J2" gate="G$1" pin="1_P1" />
                <wire x1="109.92" y1="-2.54" x2="99.76" y2="-2.54" width="0.1524" layer="91" />
                <label x="99.76" y="-2.54" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="NTC" class="0">
              <segment>
                <pinref part="J2" gate="G$1" pin="2_P2" />
                <wire x1="109.92" y1="-5.08" x2="99.76" y2="-5.08" width="0.1524" layer="91" />
                <label x="99.76" y="-5.08" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="BAT_KEY_NC" class="0">
              <segment>
                <pinref part="J2" gate="G$1" pin="3_P3" />
                <wire x1="109.92" y1="-7.62" x2="99.76" y2="-7.62" width="0.1524" layer="91" />
                <label x="99.76" y="-7.62" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="MOTOR5" class="0">
              <segment>
                <pinref part="J3" gate="G$1" pin="2_P2" />
                <wire x1="194.92" y1="-5.08" x2="184.76" y2="-5.08" width="0.1524" layer="91" />
                <label x="184.76" y="-5.08" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="SERVO_PWM" class="0">
              <segment>
                <pinref part="J3" gate="G$1" pin="3_P3" />
                <wire x1="194.92" y1="-7.62" x2="184.76" y2="-7.62" width="0.1524" layer="91" />
                <label x="184.76" y="-7.62" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="3V3" class="0">
              <segment>
                <pinref part="J4" gate="G$1" pin="1_P1" />
                <wire x1="279.92" y1="-2.54" x2="269.76" y2="-2.54" width="0.1524" layer="91" />
                <label x="269.76" y="-2.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="J5" gate="G$1" pin="1_P1" />
                <wire x1="24.92" y1="-82.54" x2="14.76" y2="-82.54" width="0.1524" layer="91" />
                <label x="14.76" y="-82.54" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="HALL_OFF" class="0">
              <segment>
                <pinref part="J4" gate="G$1" pin="3_P3" />
                <wire x1="279.92" y1="-7.62" x2="269.76" y2="-7.62" width="0.1524" layer="91" />
                <label x="269.76" y="-7.62" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="HALL_ON" class="0">
              <segment>
                <pinref part="J4" gate="G$1" pin="4_P4" />
                <wire x1="279.92" y1="-10.16" x2="269.76" y2="-10.16" width="0.1524" layer="91" />
                <label x="269.76" y="-10.16" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="OPT_RAW" class="0">
              <segment>
                <pinref part="J5" gate="G$1" pin="2_P2" />
                <wire x1="24.92" y1="-85.08" x2="14.76" y2="-85.08" width="0.1524" layer="91" />
                <label x="14.76" y="-85.08" size="1.016" layer="95" />
              </segment>
            </net>
          </nets>
        </sheet>
        <sheet>
          <plain>
            <text x="0" y="20" size="2.54" layer="97">FlipLite / fixture / PRELIMINARY - NOT FOR FABRICATION</text>
          </plain>
          <moduleinsts />
          <instances>
            <instance part="J6" gate="G$1" x="30" y="0" smashed="no" />
          </instances>
          <busses />
          <nets>
            <net name="GND" class="0">
              <segment>
                <pinref part="J6" gate="G$1" pin="1_P1" />
                <wire x1="24.92" y1="-2.54" x2="14.76" y2="-2.54" width="0.1524" layer="91" />
                <label x="14.76" y="-2.54" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="3V3" class="0">
              <segment>
                <pinref part="J6" gate="G$1" pin="2_P2" />
                <wire x1="24.92" y1="-5.08" x2="14.76" y2="-5.08" width="0.1524" layer="91" />
                <label x="14.76" y="-5.08" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="UART_TX" class="0">
              <segment>
                <pinref part="J6" gate="G$1" pin="3_P3" />
                <wire x1="24.92" y1="-7.62" x2="14.76" y2="-7.62" width="0.1524" layer="91" />
                <label x="14.76" y="-7.62" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="UART_RX" class="0">
              <segment>
                <pinref part="J6" gate="G$1" pin="4_P4" />
                <wire x1="24.92" y1="-10.16" x2="14.76" y2="-10.16" width="0.1524" layer="91" />
                <label x="14.76" y="-10.16" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="BOOT9" class="0">
              <segment>
                <pinref part="J6" gate="G$1" pin="5_P5" />
                <wire x1="24.92" y1="-12.7" x2="14.76" y2="-12.7" width="0.1524" layer="91" />
                <label x="14.76" y="-12.7" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="RESET_N" class="0">
              <segment>
                <pinref part="J6" gate="G$1" pin="6_P6" />
                <wire x1="24.92" y1="-15.24" x2="14.76" y2="-15.24" width="0.1524" layer="91" />
                <label x="14.76" y="-15.24" size="1.016" layer="95" />
              </segment>
            </net>
          </nets>
        </sheet>
        <sheet>
          <plain>
            <text x="0" y="20" size="2.54" layer="97">FlipLite / passive / PRELIMINARY - NOT FOR FABRICATION</text>
          </plain>
          <moduleinsts />
          <instances>
            <instance part="R1" gate="G$1" x="30" y="0" smashed="no" />
            <instance part="R2" gate="G$1" x="115" y="0" smashed="no" />
            <instance part="L1" gate="G$1" x="200" y="0" smashed="no" />
            <instance part="L2" gate="G$1" x="285" y="0" smashed="no" />
            <instance part="R3" gate="G$1" x="30" y="-80" smashed="no" />
            <instance part="R4" gate="G$1" x="115" y="-80" smashed="no" />
            <instance part="R5" gate="G$1" x="200" y="-80" smashed="no" />
            <instance part="R6" gate="G$1" x="285" y="-80" smashed="no" />
            <instance part="R7" gate="G$1" x="30" y="-160" smashed="no" />
            <instance part="R8" gate="G$1" x="115" y="-160" smashed="no" />
            <instance part="R9" gate="G$1" x="200" y="-160" smashed="no" />
            <instance part="R10" gate="G$1" x="285" y="-160" smashed="no" />
            <instance part="R11" gate="G$1" x="30" y="-240" smashed="no" />
            <instance part="R12" gate="G$1" x="115" y="-240" smashed="no" />
            <instance part="R13" gate="G$1" x="200" y="-240" smashed="no" />
            <instance part="R14" gate="G$1" x="285" y="-240" smashed="no" />
            <instance part="R15" gate="G$1" x="30" y="-320" smashed="no" />
            <instance part="R16" gate="G$1" x="115" y="-320" smashed="no" />
            <instance part="R17" gate="G$1" x="200" y="-320" smashed="no" />
            <instance part="C1" gate="G$1" x="285" y="-320" smashed="no" />
            <instance part="C2" gate="G$1" x="30" y="-400" smashed="no" />
            <instance part="C3" gate="G$1" x="115" y="-400" smashed="no" />
            <instance part="C4" gate="G$1" x="200" y="-400" smashed="no" />
            <instance part="C5" gate="G$1" x="285" y="-400" smashed="no" />
            <instance part="C6" gate="G$1" x="30" y="-480" smashed="no" />
            <instance part="C7" gate="G$1" x="115" y="-480" smashed="no" />
            <instance part="C8" gate="G$1" x="200" y="-480" smashed="no" />
            <instance part="C9" gate="G$1" x="285" y="-480" smashed="no" />
            <instance part="C10" gate="G$1" x="30" y="-560" smashed="no" />
            <instance part="C11" gate="G$1" x="115" y="-560" smashed="no" />
            <instance part="C12" gate="G$1" x="200" y="-560" smashed="no" />
            <instance part="C13" gate="G$1" x="285" y="-560" smashed="no" />
            <instance part="C14" gate="G$1" x="30" y="-640" smashed="no" />
            <instance part="C15" gate="G$1" x="115" y="-640" smashed="no" />
          </instances>
          <busses />
          <nets>
            <net name="VSET" class="0">
              <segment>
                <pinref part="R1" gate="G$1" pin="1_1" />
                <wire x1="24.92" y1="-2.54" x2="14.76" y2="-2.54" width="0.1524" layer="91" />
                <label x="14.76" y="-2.54" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="GND" class="0">
              <segment>
                <pinref part="R1" gate="G$1" pin="2_2" />
                <wire x1="24.92" y1="-5.08" x2="14.76" y2="-5.08" width="0.1524" layer="91" />
                <label x="14.76" y="-5.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="R2" gate="G$1" pin="2_2" />
                <wire x1="109.92" y1="-5.08" x2="99.76" y2="-5.08" width="0.1524" layer="91" />
                <label x="99.76" y="-5.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="R4" gate="G$1" pin="2_2" />
                <wire x1="109.92" y1="-85.08" x2="99.76" y2="-85.08" width="0.1524" layer="91" />
                <label x="99.76" y="-85.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="R5" gate="G$1" pin="2_2" />
                <wire x1="194.92" y1="-85.08" x2="184.76" y2="-85.08" width="0.1524" layer="91" />
                <label x="184.76" y="-85.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="R7" gate="G$1" pin="2_2" />
                <wire x1="24.92" y1="-165.08" x2="14.76" y2="-165.08" width="0.1524" layer="91" />
                <label x="14.76" y="-165.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="R15" gate="G$1" pin="2_2" />
                <wire x1="24.92" y1="-325.08" x2="14.76" y2="-325.08" width="0.1524" layer="91" />
                <label x="14.76" y="-325.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="R16" gate="G$1" pin="2_2" />
                <wire x1="109.92" y1="-325.08" x2="99.76" y2="-325.08" width="0.1524" layer="91" />
                <label x="99.76" y="-325.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C1" gate="G$1" pin="2_2" />
                <wire x1="279.92" y1="-325.08" x2="269.76" y2="-325.08" width="0.1524" layer="91" />
                <label x="269.76" y="-325.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C2" gate="G$1" pin="2_2" />
                <wire x1="24.92" y1="-405.08" x2="14.76" y2="-405.08" width="0.1524" layer="91" />
                <label x="14.76" y="-405.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C3" gate="G$1" pin="2_2" />
                <wire x1="109.92" y1="-405.08" x2="99.76" y2="-405.08" width="0.1524" layer="91" />
                <label x="99.76" y="-405.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C4" gate="G$1" pin="2_2" />
                <wire x1="194.92" y1="-405.08" x2="184.76" y2="-405.08" width="0.1524" layer="91" />
                <label x="184.76" y="-405.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C5" gate="G$1" pin="2_2" />
                <wire x1="279.92" y1="-405.08" x2="269.76" y2="-405.08" width="0.1524" layer="91" />
                <label x="269.76" y="-405.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C6" gate="G$1" pin="2_2" />
                <wire x1="24.92" y1="-485.08" x2="14.76" y2="-485.08" width="0.1524" layer="91" />
                <label x="14.76" y="-485.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C7" gate="G$1" pin="2_2" />
                <wire x1="109.92" y1="-485.08" x2="99.76" y2="-485.08" width="0.1524" layer="91" />
                <label x="99.76" y="-485.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C8" gate="G$1" pin="2_2" />
                <wire x1="194.92" y1="-485.08" x2="184.76" y2="-485.08" width="0.1524" layer="91" />
                <label x="184.76" y="-485.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C9" gate="G$1" pin="2_2" />
                <wire x1="279.92" y1="-485.08" x2="269.76" y2="-485.08" width="0.1524" layer="91" />
                <label x="269.76" y="-485.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C10" gate="G$1" pin="2_2" />
                <wire x1="24.92" y1="-565.08" x2="14.76" y2="-565.08" width="0.1524" layer="91" />
                <label x="14.76" y="-565.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C11" gate="G$1" pin="2_2" />
                <wire x1="109.92" y1="-565.08" x2="99.76" y2="-565.08" width="0.1524" layer="91" />
                <label x="99.76" y="-565.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C12" gate="G$1" pin="2_2" />
                <wire x1="194.92" y1="-565.08" x2="184.76" y2="-565.08" width="0.1524" layer="91" />
                <label x="184.76" y="-565.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C13" gate="G$1" pin="2_2" />
                <wire x1="279.92" y1="-565.08" x2="269.76" y2="-565.08" width="0.1524" layer="91" />
                <label x="269.76" y="-565.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C14" gate="G$1" pin="2_2" />
                <wire x1="24.92" y1="-645.08" x2="14.76" y2="-645.08" width="0.1524" layer="91" />
                <label x="14.76" y="-645.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C15" gate="G$1" pin="2_2" />
                <wire x1="109.92" y1="-645.08" x2="99.76" y2="-645.08" width="0.1524" layer="91" />
                <label x="99.76" y="-645.08" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="ISET" class="0">
              <segment>
                <pinref part="R2" gate="G$1" pin="1_1" />
                <wire x1="109.92" y1="-2.54" x2="99.76" y2="-2.54" width="0.1524" layer="91" />
                <label x="99.76" y="-2.54" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="L1_BB" class="0">
              <segment>
                <pinref part="L1" gate="G$1" pin="1_1" />
                <wire x1="194.92" y1="-2.54" x2="184.76" y2="-2.54" width="0.1524" layer="91" />
                <label x="184.76" y="-2.54" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="L2_BB" class="0">
              <segment>
                <pinref part="L1" gate="G$1" pin="2_2" />
                <wire x1="194.92" y1="-5.08" x2="184.76" y2="-5.08" width="0.1524" layer="91" />
                <label x="184.76" y="-5.08" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="SYS" class="0">
              <segment>
                <pinref part="L2" gate="G$1" pin="1_1" />
                <wire x1="279.92" y1="-2.54" x2="269.76" y2="-2.54" width="0.1524" layer="91" />
                <label x="269.76" y="-2.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C2" gate="G$1" pin="1_1" />
                <wire x1="24.92" y1="-402.54" x2="14.76" y2="-402.54" width="0.1524" layer="91" />
                <label x="14.76" y="-402.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C4" gate="G$1" pin="1_1" />
                <wire x1="194.92" y1="-402.54" x2="184.76" y2="-402.54" width="0.1524" layer="91" />
                <label x="184.76" y="-402.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C5" gate="G$1" pin="1_1" />
                <wire x1="279.92" y1="-402.54" x2="269.76" y2="-402.54" width="0.1524" layer="91" />
                <label x="269.76" y="-402.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C8" gate="G$1" pin="1_1" />
                <wire x1="194.92" y1="-482.54" x2="184.76" y2="-482.54" width="0.1524" layer="91" />
                <label x="184.76" y="-482.54" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="BOOST_SW" class="0">
              <segment>
                <pinref part="L2" gate="G$1" pin="2_2" />
                <wire x1="279.92" y1="-5.08" x2="269.76" y2="-5.08" width="0.1524" layer="91" />
                <label x="269.76" y="-5.08" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="MOTOR5" class="0">
              <segment>
                <pinref part="R3" gate="G$1" pin="1_1" />
                <wire x1="24.92" y1="-82.54" x2="14.76" y2="-82.54" width="0.1524" layer="91" />
                <label x="14.76" y="-82.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="R6" gate="G$1" pin="1_1" />
                <wire x1="279.92" y1="-82.54" x2="269.76" y2="-82.54" width="0.1524" layer="91" />
                <label x="269.76" y="-82.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C9" gate="G$1" pin="1_1" />
                <wire x1="279.92" y1="-482.54" x2="269.76" y2="-482.54" width="0.1524" layer="91" />
                <label x="269.76" y="-482.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C10" gate="G$1" pin="1_1" />
                <wire x1="24.92" y1="-562.54" x2="14.76" y2="-562.54" width="0.1524" layer="91" />
                <label x="14.76" y="-562.54" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="BOOST_FB" class="0">
              <segment>
                <pinref part="R3" gate="G$1" pin="2_2" />
                <wire x1="24.92" y1="-85.08" x2="14.76" y2="-85.08" width="0.1524" layer="91" />
                <label x="14.76" y="-85.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="R4" gate="G$1" pin="1_1" />
                <wire x1="109.92" y1="-82.54" x2="99.76" y2="-82.54" width="0.1524" layer="91" />
                <label x="99.76" y="-82.54" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="MOTOR_EN" class="0">
              <segment>
                <pinref part="R5" gate="G$1" pin="1_1" />
                <wire x1="194.92" y1="-82.54" x2="184.76" y2="-82.54" width="0.1524" layer="91" />
                <label x="184.76" y="-82.54" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="SERVO_PWM" class="0">
              <segment>
                <pinref part="R6" gate="G$1" pin="2_2" />
                <wire x1="279.92" y1="-85.08" x2="269.76" y2="-85.08" width="0.1524" layer="91" />
                <label x="269.76" y="-85.08" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="PWM_INVERTED" class="0">
              <segment>
                <pinref part="R7" gate="G$1" pin="1_1" />
                <wire x1="24.92" y1="-162.54" x2="14.76" y2="-162.54" width="0.1524" layer="91" />
                <label x="14.76" y="-162.54" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="3V3" class="0">
              <segment>
                <pinref part="R8" gate="G$1" pin="1_1" />
                <wire x1="109.92" y1="-162.54" x2="99.76" y2="-162.54" width="0.1524" layer="91" />
                <label x="99.76" y="-162.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="R9" gate="G$1" pin="1_1" />
                <wire x1="194.92" y1="-162.54" x2="184.76" y2="-162.54" width="0.1524" layer="91" />
                <label x="184.76" y="-162.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="R10" gate="G$1" pin="1_1" />
                <wire x1="279.92" y1="-162.54" x2="269.76" y2="-162.54" width="0.1524" layer="91" />
                <label x="269.76" y="-162.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="R11" gate="G$1" pin="1_1" />
                <wire x1="24.92" y1="-242.54" x2="14.76" y2="-242.54" width="0.1524" layer="91" />
                <label x="14.76" y="-242.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="R12" gate="G$1" pin="1_1" />
                <wire x1="109.92" y1="-242.54" x2="99.76" y2="-242.54" width="0.1524" layer="91" />
                <label x="99.76" y="-242.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="R13" gate="G$1" pin="1_1" />
                <wire x1="194.92" y1="-242.54" x2="184.76" y2="-242.54" width="0.1524" layer="91" />
                <label x="184.76" y="-242.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C6" gate="G$1" pin="1_1" />
                <wire x1="24.92" y1="-482.54" x2="14.76" y2="-482.54" width="0.1524" layer="91" />
                <label x="14.76" y="-482.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C7" gate="G$1" pin="1_1" />
                <wire x1="109.92" y1="-482.54" x2="99.76" y2="-482.54" width="0.1524" layer="91" />
                <label x="99.76" y="-482.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C11" gate="G$1" pin="1_1" />
                <wire x1="109.92" y1="-562.54" x2="99.76" y2="-562.54" width="0.1524" layer="91" />
                <label x="99.76" y="-562.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C12" gate="G$1" pin="1_1" />
                <wire x1="194.92" y1="-562.54" x2="184.76" y2="-562.54" width="0.1524" layer="91" />
                <label x="184.76" y="-562.54" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="RESET_N" class="0">
              <segment>
                <pinref part="R8" gate="G$1" pin="2_2" />
                <wire x1="109.92" y1="-165.08" x2="99.76" y2="-165.08" width="0.1524" layer="91" />
                <label x="99.76" y="-165.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C13" gate="G$1" pin="1_1" />
                <wire x1="279.92" y1="-562.54" x2="269.76" y2="-562.54" width="0.1524" layer="91" />
                <label x="269.76" y="-562.54" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="BOOT2" class="0">
              <segment>
                <pinref part="R9" gate="G$1" pin="2_2" />
                <wire x1="194.92" y1="-165.08" x2="184.76" y2="-165.08" width="0.1524" layer="91" />
                <label x="184.76" y="-165.08" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="BOOT8" class="0">
              <segment>
                <pinref part="R10" gate="G$1" pin="2_2" />
                <wire x1="279.92" y1="-165.08" x2="269.76" y2="-165.08" width="0.1524" layer="91" />
                <label x="269.76" y="-165.08" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="BOOT9" class="0">
              <segment>
                <pinref part="R11" gate="G$1" pin="2_2" />
                <wire x1="24.92" y1="-245.08" x2="14.76" y2="-245.08" width="0.1524" layer="91" />
                <label x="14.76" y="-245.08" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="CHG_STAT1" class="0">
              <segment>
                <pinref part="R12" gate="G$1" pin="2_2" />
                <wire x1="109.92" y1="-245.08" x2="99.76" y2="-245.08" width="0.1524" layer="91" />
                <label x="99.76" y="-245.08" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="CHG_STAT2" class="0">
              <segment>
                <pinref part="R13" gate="G$1" pin="2_2" />
                <wire x1="194.92" y1="-245.08" x2="184.76" y2="-245.08" width="0.1524" layer="91" />
                <label x="184.76" y="-245.08" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="BAT" class="0">
              <segment>
                <pinref part="R14" gate="G$1" pin="1_1" />
                <wire x1="279.92" y1="-242.54" x2="269.76" y2="-242.54" width="0.1524" layer="91" />
                <label x="269.76" y="-242.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C3" gate="G$1" pin="1_1" />
                <wire x1="109.92" y1="-402.54" x2="99.76" y2="-402.54" width="0.1524" layer="91" />
                <label x="99.76" y="-402.54" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="BAT_ADC" class="0">
              <segment>
                <pinref part="R14" gate="G$1" pin="2_2" />
                <wire x1="279.92" y1="-245.08" x2="269.76" y2="-245.08" width="0.1524" layer="91" />
                <label x="269.76" y="-245.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="R15" gate="G$1" pin="1_1" />
                <wire x1="24.92" y1="-322.54" x2="14.76" y2="-322.54" width="0.1524" layer="91" />
                <label x="14.76" y="-322.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C14" gate="G$1" pin="1_1" />
                <wire x1="24.92" y1="-642.54" x2="14.76" y2="-642.54" width="0.1524" layer="91" />
                <label x="14.76" y="-642.54" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="OPT_RAW" class="0">
              <segment>
                <pinref part="R16" gate="G$1" pin="1_1" />
                <wire x1="109.92" y1="-322.54" x2="99.76" y2="-322.54" width="0.1524" layer="91" />
                <label x="99.76" y="-322.54" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="R17" gate="G$1" pin="1_1" />
                <wire x1="194.92" y1="-322.54" x2="184.76" y2="-322.54" width="0.1524" layer="91" />
                <label x="184.76" y="-322.54" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="OPT_ADC" class="0">
              <segment>
                <pinref part="R17" gate="G$1" pin="2_2" />
                <wire x1="194.92" y1="-325.08" x2="184.76" y2="-325.08" width="0.1524" layer="91" />
                <label x="184.76" y="-325.08" size="1.016" layer="95" />
              </segment>
              <segment>
                <pinref part="C15" gate="G$1" pin="1_1" />
                <wire x1="109.92" y1="-642.54" x2="99.76" y2="-642.54" width="0.1524" layer="91" />
                <label x="99.76" y="-642.54" size="1.016" layer="95" />
              </segment>
            </net>
            <net name="VIN5" class="0">
              <segment>
                <pinref part="C1" gate="G$1" pin="1_1" />
                <wire x1="279.92" y1="-322.54" x2="269.76" y2="-322.54" width="0.1524" layer="91" />
                <label x="269.76" y="-322.54" size="1.016" layer="95" />
              </segment>
            </net>
          </nets>
        </sheet>
      </sheets>
      <errors />
    </schematic>
  </drawing>
</eagle>