"""Build an assembly envelope from the same preliminary placement data."""
from pathlib import Path
import json,sys
D=Path(__file__).resolve().parent
sys.path.insert(0,str(D.parent/'cad'))
import build as cad
import cadquery as cq
p=json.loads((D/'netlist.json').read_text())
board=cad.box(50,38,1.6,(25,19,0))
board=cad.holes(board,[(3,3),(47,3),(3,35),(47,35)],2.4)
items=[('pcb',board,(.06,.27,.23))]
for part in p['parts']:
 x,y=part['xy'];w,h,z=part['body'];ref=part['ref']
 color=(.7,.75,.76) if ref=='U4' else ((.88,.88,.81) if part['group']=='connector' else (.15,.18,.19))
 items.append((ref,cad.box(w,h,z,(x,y,1.65)),color))
 for num,(px,py,pw,ph) in part['pads'].items():
  items.append((ref+'_pad'+num,cad.box(pw,ph,.05,(x+px,y+py,1.6)),(.77,.64,.34)))
a=cq.Assembly(name='FlipLite_node_placement')
for name,obj,color in items:a.add(obj,name=name,color=cq.Color(*color))
a.export(str(D/'node-envelope.step'))
cad.render('pcb-3d-preview',items,'Node PCB · assembly envelope','Unrouted 50 × 38 mm board • generic component bodies • connector and RF clearances need review')
