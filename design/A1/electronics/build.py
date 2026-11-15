"""Generate editable EAGLE XML circuit and UNROUTED placement board.
Custom footprints are preliminary and MUST be checked against vendor land patterns.
No Gerber or fabrication release is produced. Python standard library only.
"""
from pathlib import Path
import xml.etree.ElementTree as E
import copy,json,csv,math
D=Path(__file__).resolve().parent
parts=[]
def add(ref,value,pins,nets,xy,body,pads,source,group='control'):
    parts.append(dict(ref=ref,value=value,pins={str(k):v for k,v in pins.items()},nets={str(k):v for k,v in nets.items()},xy=xy,body=body,pads={str(k):v for k,v in pads.items()},source=source,group=group))
def dual(n,pitch,x,dx,dy,ep=None):
    d={}
    for i in range(n//2):
        d[str(i+1)]=[-x,(n/2-1)*pitch/2-i*pitch,dx,dy]
        d[str(n-i)]=[x,(n/2-1)*pitch/2-i*pitch,dx,dy]
    if ep: d[str(n+1)]=[0,0,*ep]
    return d
src=lambda name:'https://www.ti.com/lit/ds/symlink/'+name+'.pdf'
add('U1','BQ25185DLHR',{1:'SYS',2:'BAT',3:'STAT2',4:'CE_N',5:'GND',6:'TS_MR',7:'ILIM_VSET',8:'ISET',9:'STAT1',10:'IN',11:'EP'},
    {1:'SYS',2:'BAT',3:'CHG_STAT2',4:'GND',5:'GND',6:'NTC',7:'VSET',8:'ISET',9:'CHG_STAT1',10:'VIN5',11:'GND'},[35,26],[2.2,2,.8],dual(10,.4,1.05,.55,.22,(.8,1.5)),src('bq25185'),'power')
add('U2','TPS63031DSKR',{1:'VOUT',2:'L2',3:'PGND',4:'L1',5:'VIN',6:'EN',7:'PS_SYNC',8:'VINA',9:'GND',10:'FB',11:'EP'},
    {1:'3V3',2:'L2_BB',3:'GND',4:'L1_BB',5:'SYS',6:'SYS',7:'GND',8:'SYS',9:'GND',10:'3V3',11:'GND'},[24,17],[2.5,2.5,1],dual(10,.5,1.2,.6,.25,(1.1,1.6)),src('tps63031'),'power')
add('U3','TPS61023DRLR',{1:'FB',2:'EN',3:'VIN',4:'GND',5:'SW',6:'VOUT'},
    {1:'BOOST_FB',2:'MOTOR_EN',3:'SYS',4:'GND',5:'BOOST_SW',6:'MOTOR5'},[35,15],[1.6,1.2,.6],dual(6,.5,.7,.55,.28),src('tps61023'),'power')
pins=['3V3','EN','IO4','IO5','IO6','IO7','IO8','IO9','GND','IO10','RXD','TXD','IO18','IO19','IO3','IO2','IO1','IO0','EP']
nets=['3V3','RESET_N','PWM_INVERTED','MOTOR_EN','HALL_OFF','HALL_ON','BOOT8','BOOT9','GND','CHG_STAT1','UART_RX','UART_TX','USB_DM_NC','USB_DP_NC','BAT_ADC','BOOT2','OPT_ADC','CHG_STAT2','GND']
add('U4','ESP32-C3-WROOM-02-N4',dict(enumerate(pins,1)),dict(enumerate(nets,1)),[14,29],[18,20,3.2],dual(18,1.5,9,.9,.9,(3.5,3.5)),'https://www.espressif.com/sites/default/files/documentation/esp32-c3-wroom-02_datasheet_en.pdf')
add('Q1','2N7002',{1:'G',2:'S',3:'D'},{1:'PWM_INVERTED',2:'GND',3:'SERVO_PWM'},[43,15],[2.9,1.3,1],{'1':[-.95,-1,.6,1],'2':[.95,-1,.6,1],'3':[0,1,.6,1]},'https://www.nexperia.com/product/2N7002')
def conn(ref,value,nets,xy,pitch=2,group='connector'):
    n=len(nets); pads={str(i+1):[(i-(n-1)/2)*pitch,0,1.3,1.3] for i in range(n)}
    add(ref,value,{i+1:f'P{i+1}' for i in range(n)},dict(enumerate(nets,1)),xy,[n*pitch+2,5,9.8 if pitch==2.5 else 8],pads,'https://www.jst-mfg.com/product/index.php?series='+('277' if pitch==2.5 else '199'),group)
# USB input uses a factory assembled USB-C panel dongle to 2-pin JST-PH.
# Dongle must include independent 5.1k CC1/CC2 Rd; it is not a second charger.
conn('J1','B2B-XH-A input',['VIN5','GND'],[45,30],2.5)
conn('J2','B4B-XH-A battery+NTC',['BAT','NTC','BAT_KEY_NC','GND'],[30,34],2.5)
conn('J3','B3B-XH-A servo harness',['GND','MOTOR5','SERVO_PWM'],[44,24],2.5)
conn('J4','B4B-PH-K-S dual Hall',['3V3','GND','HALL_OFF','HALL_ON'],[11,4])
conn('J5','B2B-PH-K-S optical',['3V3','OPT_RAW'],[21,4])
conn('J6','Factory pogo fixture',['GND','3V3','UART_TX','UART_RX','BOOT9','RESET_N'],[36,5],1.27,'fixture')
idx=0
def passive(ref,val,net1,net2,xy=None,size='0603',source=None):
    global idx
    if xy is None:
        xy=[4+(idx%11)*4.1,10+(idx//11)*3.4];idx+=1
    pads={'1':[-.8,0,.9,.95],'2':[.8,0,.9,.95]}; body=[1.6,.8,.7]
    if size=='L': pads={'1':[-1.3,0,1.2,2.4],'2':[1.3,0,1.2,2.4]};body=[3,3,1.5]
    if size=='0805': pads={'1':[-1,0,1.1,1.4],'2':[1,0,1.1,1.4]};body=[2,1.25,.9]
    add(ref,val,{1:'1',2:'2'},{1:net1,2:net2},xy,body,pads,source or 'https://www.yageo.com/en/Product','passive')
passive('R1','18k 1%','VSET','GND',[30,26])
passive('R2','3.00k 1%','ISET','GND',[31,29])
passive('L1','1.5uH Isat>=1.5A','L1_BB','L2_BB',[24,21],'L','https://www.coilcraft.com/en-us/products/power/shielded-inductors/molded-inductor/xfl/xfl3012/')
passive('L2','1uH Isat>=5A','SYS','BOOST_SW',[35,19],'L','https://www.coilcraft.com/en-us/products/power/shielded-inductors/molded-inductor/xfl/xfl4020/')
passive('R3','732k 1%','MOTOR5','BOOST_FB',[39,12])
passive('R4','100k 1%','BOOST_FB','GND',[35,12])
passive('R5','100k','MOTOR_EN','GND',[31,12])
passive('R6','4.7k','MOTOR5','SERVO_PWM',[44,19])
passive('R7','100k','PWM_INVERTED','GND',[44,12])
for r,net,xy in [('R8','RESET_N',[4,16]),('R9','BOOT2',[8,16]),('R10','BOOT8',[12,16]),('R11','BOOT9',[16,16]),('R12','CHG_STAT1',[20,13.5]),('R13','CHG_STAT2',[20,10])]: passive(r,'10k','3V3',net,xy)
passive('R14','470k 1%','BAT','BAT_ADC',[4,13])
passive('R15','470k 1%','BAT_ADC','GND',[8,13])
passive('R16','22k','OPT_RAW','GND',[16,10])
passive('R17','1k','OPT_RAW','OPT_ADC',[12,10])
# Bulk capacitors need derated effective capacitance reviewed against converter guidance.
capdata=[('C1','1uF 16V','VIN5',[38,29]),('C2','10uF 10V','SYS',[38,26]),('C3','1uF 10V','BAT',[34,30]),('C4','10uF 10V','SYS',[28,21]),('C5','100nF','SYS',[27,17]),('C6','10uF 10V','3V3',[24,13]),('C7','10uF 10V','3V3',[24,10]),('C8','10uF 10V','SYS',[31,19]),('C9','22uF 10V','MOTOR5',[39,19]),('C10','22uF 10V','MOTOR5',[36.5,22.5]),('C11','100nF','3V3',[4,17.8]),('C12','10uF 10V','3V3',[8,17.8]),('C13','1uF','RESET_N',[12,13]),('C14','100nF','BAT_ADC',[4,10]),('C15','100nF','OPT_ADC',[8,10])]
for r,v,n,xy in capdata: passive(r,v,n,'GND',xy,'0805' if 'uF' in v else '0603')
# Pins left unused explicitly remain unique NC nets, not tied to one another.
(D/'netlist.json').write_text(json.dumps({'status':'PRELIMINARY_UNROUTED_NOT_FOR_FABRICATION','board_mm':[50,38],'parts':parts},indent=2))

def el(parent,tag,**attrs): return E.SubElement(parent,tag,{k:str(v) for k,v in attrs.items()})
def text(parent,value,x,y,size,layer):
    e=el(parent,'text',x=x,y=y,size=size,layer=layer);e.text=value;return e
layers={1:'Top',16:'Bottom',17:'Pads',18:'Vias',19:'Unrouted',20:'Dimension',21:'tPlace',22:'bPlace',25:'tNames',27:'tValues',29:'tStop',30:'bStop',31:'tCream',39:'tKeepout',40:'bKeepout',41:'tRestrict',42:'bRestrict',51:'tDocu',91:'Nets',92:'Busses',93:'Pins',94:'Symbols',95:'Names',96:'Values',97:'Info'}
def base(kind):
    root=E.Element('eagle',version='9.6.2');drawing=el(root,'drawing')
    settings=el(drawing,'settings');el(settings,'setting',alwaysvectorfont='no');el(settings,'setting',verticaltext='up')
    el(drawing,'grid',distance='0.1',unitdist='mm',unit='mm',style='lines',multiple=1,display='no',altdistance=.01,altunitdist='mm',altunit='mm')
    ls=el(drawing,'layers')
    for n,name in layers.items():el(ls,'layer',number=n,name=name,color=n%15+1,fill=1,visible='yes',active='yes')
    return root,el(drawing,kind)
def library(parent):
    lib=el(parent,'library',name='FlipLite_Prototype');pkgs=el(lib,'packages');syms=el(lib,'symbols');sets=el(lib,'devicesets')
    for p in parts:
        pkg=el(pkgs,'package',name=p['ref']+'_PKG')
        for num,(x,y,dx,dy) in p['pads'].items():
            if p['group']=='connector': el(pkg,'pad',name=num,x=x,y=y,drill=.8,diameter=1.5,shape='square' if num=='1' else 'round')
            else: el(pkg,'smd',name=num,x=x,y=y,dx=dx,dy=dy,layer=1)
        w,h,_=p['body']; pts=[(-w/2,-h/2),(w/2,-h/2),(w/2,h/2),(-w/2,h/2)]
        for a,b in zip(pts,pts[1:]+pts[:1]):el(pkg,'wire',x1=a[0],y1=a[1],x2=b[0],y2=b[1],width=.12,layer=21)
        text(pkg,'>NAME',-w/2,h/2+.5,.8,25)
        sym=el(syms,'symbol',name=p['ref']+'_SYM');height=max(7.62,len(p['pins'])*2.54)
        for a,b in [((0,0),(20.32,0)),((20.32,0),(20.32,-height)),((20.32,-height),(0,-height)),((0,-height),(0,0))]:el(sym,'wire',x1=a[0],y1=a[1],x2=b[0],y2=b[1],width=.254,layer=94)
        for i,(num,name) in enumerate(p['pins'].items()):el(sym,'pin',name=num+'_'+name,x=-5.08,y=-2.54*(i+1),visible='both',length='middle',direction='pas')
        text(sym,'>NAME',0,2.54,1.778,95);text(sym,'>VALUE',0,5.08,1.27,96)
        ds=el(sets,'deviceset',name=p['ref']+'_DEV',prefix=p['ref'][0],uservalue='yes');g=el(ds,'gates');el(g,'gate',name='G$1',symbol=p['ref']+'_SYM',x=0,y=0)
        dev=el(el(ds,'devices'),'device',name='',package=p['ref']+'_PKG');connect=el(dev,'connects')
        for num,name in p['pins'].items():el(connect,'connect',gate='G$1',pin=num+'_'+name,pad=num)
        el(el(dev,'technologies'),'technology',name='')
    return lib
root,sch=base('schematic');sch.set('xreflabel','%F%N/%S.%C%R');sch.set('xrefpart','/%S.%C%R')
library(el(sch,'libraries'));el(sch,'attributes');el(sch,'variantdefs');classes=el(sch,'classes');el(classes,'class',number=0,name='default',width=.25,drill=.3)
ps=el(sch,'parts')
for p in parts:el(ps,'part',name=p['ref'],library='FlipLite_Prototype',deviceset=p['ref']+'_DEV',device='',value=p['value'])
sheets=el(sch,'sheets')
# One readable functional sheet per group; labels create real net connectivity.
for group in ['power','control','connector','fixture','passive']:
    sheet=el(sheets,'sheet');plain=el(sheet,'plain');text(plain,'FlipLite / '+group+' / PRELIMINARY - NOT FOR FABRICATION',0,20,2.54,97)
    el(sheet,'moduleinsts');inst=el(sheet,'instances');el(sheet,'busses');netsel=el(sheet,'nets');netels={}
    pp=[p for p in parts if p['group']==group]
    for i,p in enumerate(pp):
        x=(i%4)*85+30;y=-(i//4)*80
        el(inst,'instance',part=p['ref'],gate='G$1',x=x,y=y,smashed='no')
        for j,(num,name) in enumerate(p['pins'].items()):
            net=p['nets'][num]
            if net not in netels:netels[net]=el(netsel,'net',name=net,**{'class':0})
            seg=el(netels[net],'segment');el(seg,'pinref',part=p['ref'],gate='G$1',pin=num+'_'+name)
            yy=y-2.54*(j+1)
            el(seg,'wire',x1=x-5.08,y1=yy,x2=x-15.24,y2=yy,width=.1524,layer=91)
            el(seg,'label',x=x-15.24,y=yy,size=1.016,layer=95)
el(sch,'errors')
E.indent(root);E.ElementTree(root).write(D/'node.sch',encoding='utf-8',xml_declaration=True)
root,brd=base('board');plain=el(brd,'plain')
for a,b in [((0,0),(50,0)),((50,0),(50,38)),((50,38),(0,38)),((0,38),(0,0))]:el(plain,'wire',x1=a[0],y1=a[1],x2=b[0],y2=b[1],width=0,layer=20)
for x,y in [(3,3),(47,3),(3,35),(47,35)]:el(plain,'hole',x=x,y=y,drill=2.4)
text(plain,'FLIPLITE  A0',25,36,1,21);text(plain,'UNROUTED - DO NOT FAB',1,1,.8,21)
# Antenna region, all copper excluded. Full vendor 3D clearance still needs review.
for layer in [41,42]:el(plain,'rectangle',x1=4,y1=33,x2=24,y2=38,layer=layer)
library(el(brd,'libraries'));el(brd,'attributes');el(brd,'variantdefs');c=el(brd,'classes');el(c,'class',number=0,name='default',width=.25,drill=.3)
dr=el(brd,'designrules',name='PRELIMINARY');el(dr,'description',language='en').text='Unrouted placement study. Not electrically validated.'
for n,v in [('mdWireWire','0.2mm'),('mdWirePad','0.2mm'),('mdPadPad','0.2mm'),('msWidth','0.2mm'),('msDrill','0.3mm')]:el(dr,'param',name=n,value=v)
el(brd,'autorouter');elements=el(brd,'elements')
for p in parts:el(elements,'element',name=p['ref'],library='FlipLite_Prototype',package=p['ref']+'_PKG',value=p['value'],x=p['xy'][0],y=p['xy'][1])
sigs=el(brd,'signals');sn={}
for p in parts:
    for num,n in p['nets'].items():
        if n not in sn:sn[n]=el(sigs,'signal',name=n)
        el(sn[n],'contactref',element=p['ref'],pad=num)
el(brd,'errors');E.indent(root);E.ElementTree(root).write(D/'node.brd',encoding='utf-8',xml_declaration=True)
with (D/'component-bom.csv').open('w') as f:
    w=csv.writer(f);w.writerow(['Reference','Value_or_candidate','Quantity_per_node','Source','Release_status'])
    for p in parts:w.writerow([p['ref'],p['value'],1,p['source'],'engineering candidate; footprint/MPN/availability not released'])
with (D/'placement-review.csv').open('w') as f:
    w=csv.writer(f);w.writerow(['Ref','X_mm','Y_mm','Rotation','Side','Status'])
    for p in parts:w.writerow([p['ref'],*p['xy'],0,'top','NOT a released CPL'])
print(f'Wrote {len(parts)} parts, {len(sn)} named nets, zero routed traces; native EAGLE XML.')
