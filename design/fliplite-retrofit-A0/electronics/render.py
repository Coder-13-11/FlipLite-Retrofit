from pathlib import Path
import json,os
os.environ.setdefault('MPLCONFIGDIR','/tmp/fliplite-mpl')
import matplotlib;matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle,Circle,FancyBboxPatch
D=Path(__file__).resolve().parent;data=json.loads((D/'netlist.json').read_text())
fig,ax=plt.subplots(figsize=(12,9),facecolor='#edf2ef');ax.set_facecolor('#edf2ef')
ax.add_patch(FancyBboxPatch((0,0),50,38,boxstyle='round,pad=0,rounding_size=1.5',facecolor='#123f3b',edgecolor='#102c2c',linewidth=2))
ax.add_patch(Rectangle((4,33),20,5,color='#cfa458',alpha=.35));ax.text(14,36,'ANTENNA / NO COPPER',ha='center',fontsize=7,color='#ffe2ab')
for x,y in [(3,3),(47,3),(3,35),(47,35)]:ax.add_patch(Circle((x,y),1.2,color='#edf2ef'))
for p in data['parts']:
 x,y=p['xy'];w,h,z=p['body'];ref=p['ref'];color='#cbd3cf' if ref=='U4' else ('#e8e6d6' if p['group']=='connector' else '#252b2e')
 for pad,(px,py,dx,dy) in p['pads'].items():ax.add_patch(Rectangle((x+px-dx/2,y+py-dy/2),dx,dy,facecolor='#d4b46e',edgecolor='#dbc58b',linewidth=.2))
 ax.add_patch(Rectangle((x-w/2,y-h/2),w,h,facecolor=color,edgecolor='#5d7170',linewidth=.4))
 if ref=='U4':
  ax.text(x,y+1,'ESP32-C3',ha='center',color='#253d3e',fontsize=12,weight='bold');ax.text(x,y-1,'WROOM-02',ha='center',color='#253d3e',fontsize=9)
 else:ax.text(x,y+h/2+.3,ref,color='#e9eeec',ha='center',va='bottom',fontsize=6)
ax.text(25,1,'FLIPLITE  A0  /  PLACEMENT ONLY',color='#edf2ef',ha='center',fontsize=8)
ax.set_xlim(-4,54);ax.set_ylim(-4,43);ax.set_aspect('equal');ax.axis('off')
fig.text(.08,.94,'FLIPLITE / FACTORY-ASSEMBLED NODE CONCEPT',color='#247b77',weight='bold',fontsize=11)
fig.text(.08,.89,'One board. Plug-in connections.',fontsize=27,weight='bold',color='#203238')
fig.text(.08,.055,'50 × 38 mm • 45 components • unrouted placement • footprints and circuitry not released for fabrication',fontsize=10,color='#4e6164')
fig.savefig(D.parent/'previews/pcb-preview.png',dpi=160);plt.close(fig)
# Readable schematic page generated from the same named connectivity (not a decorative block diagram).
groups=[('Power path & rails',['U1','U2','U3','L1','L2','R1','R2','R3','R4']),('Controller & interfaces',['U4','Q1','J1','J2','J3','J4','J5','J6'])]
for title,refs in groups:
 fig=plt.figure(figsize=(16,12),facecolor='white')
 fig.text(.04,.96,'FLIPLITE / '+title,fontsize=20,weight='bold',color='#173e3e')
 fig.text(.04,.93,'Named-net schematic view. Full editable connectivity, passives and decoupling: node.sch / netlist.json',fontsize=10)
 for i,ref in enumerate(refs):
  p=next(x for x in data['parts'] if x['ref']==ref);col=i%3;row=i//3
  ax=fig.add_axes([.04+col*.32,.65-row*.28,.29,.23]);ax.axis('off')
  ax.text(0,1,ref+'  '+p['value'],fontsize=10,weight='bold',color='#176b67')
  lines=[f'{num:>2}  {p["pins"][num]:<13} → {net}' for num,net in p['nets'].items()]
  ax.text(0,.89,'\n'.join(lines),fontsize=8,fontfamily='monospace',va='top',linespacing=1.28)
 fig.text(.04,.025,'PRELIMINARY / NOT ERC CHECKED / NOT FOR FABRICATION',fontsize=10,color='#ac502c')
 fig.savefig(D.parent/'previews'/('schematic-power.png' if refs[0]=='U1' else 'schematic-control.png'),dpi=140);plt.close(fig)
