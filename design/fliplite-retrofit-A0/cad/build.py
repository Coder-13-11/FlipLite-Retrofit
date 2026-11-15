"""FlipLite parametric mechanical prototype. Units mm. Run from any directory.
Edit parameters.json then run this file. Vendor servo/horn and switch reference
bodies are envelopes, not measured CAD. No splines are printed: use vendor horn.
"""
from pathlib import Path
import json, math, os
os.environ.setdefault('MPLCONFIGDIR', '/tmp/fliplite-mpl')
import cadquery as cq
import trimesh
import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d.art3d import Poly3DCollection
D=Path(__file__).resolve().parent; O=D.parent
P=json.loads((D/'parameters.json').read_text())
parts={}
def box(x,y,z,at=(0,0,0)):
    return cq.Workplane('XY').box(x,y,z,centered=(True,True,False)).translate(at)
def cylinder(r,h,at=(0,0,0)):
    return cq.Workplane('XY').circle(r).extrude(h).translate(at)
def slot(length,diam,h,at=(0,0,0),angle=0):
    return cq.Workplane('XY').slot2D(length,diam,angle).extrude(h).translate(at)
def holes(shape,points,diam,z=-1,h=100):
    for x,y in points: shape=shape.cut(cylinder(diam/2,h,(x,y,z)))
    return shape
s=P['wall_screw_spacing']; sx=P['wall_servo_x']
# Open C-shaped bracket: central faceplate and moving lever remain accessible.
a=box(12,s+18,3,(-38,0,0))
for y in [-s/2,s/2]:
    a=a.union(box(44,12,3,(-19,y,0)))
    a=a.cut(slot(8,3.5,6,(0,y,-1),90))
# Two mounting rails carry replaceable servo carriage.
for y in [-18,18]:
    a=a.union(box(25,8,17,(-30,y,3)))
    a=a.cut(slot(14,3.3,25,(-30,y,-1)))
parts['wall_bracket']=a
# Removable shelf, servo drops through opening; ears retained by screws.
a=box(34,45,3)
a=a.cut(box(P['servo_body_length']+.8,P['servo_body_width']+.8,6,(0,0,-1)))
a=holes(a,[(0,-18),(0,18)],3.3)
a=holes(a,[(-P['servo_ear_pitch_ASSUMED']/2,0),(P['servo_ear_pitch_ASSUMED']/2,0)],2.2)
parts['servo_carriage']=a
# Arm screws to supplied horn; central bore clears servo screw, not a spline.
a=box(P['wall_arm_length'],8,3,(P['wall_arm_length']/2-3,0,0)).union(cylinder(6,3))
a=holes(a,[(0,0),(7,0)],2.2)
a=a.union(cylinder(3.5,21,(P['wall_arm_length']-1,0,-18)))
parts['wall_arm']=a
L=P['inline_length']+2*P['clearance']; W=P['inline_width']+2*P['clearance']; H=P['inline_depth_ASSUMED']; t=P['wall']
# Open topped U-cradle. End stops relieved for cable; side pillars take bridge screws.
a=box(L+2*t,W+2*t,3)
for x in [-(L+t)/2,(L+t)/2]:
    a=a.union(box(t,W+2*t,10,(x,0,3)))
    a=a.cut(box(2*t+2,9,12,(x,0,5)))
for y in [-(W+t)/2,(W+t)/2]:
    a=a.union(box(L,t,8,(0,y,3)))
# External pillars at one end leave the central button open for fingers.
for y in [-W/2-5,W/2+5]:
    a=a.union(box(12,10,H+10,(18,y,0)))
    a=holes(a,[(18,y)],3.3)
parts['inline_cradle']=a
# Open perimeter bridge: a central window preserves manual button access.
a=box(L+2*t,W+20,3).cut(box(26,24,6,(0,0,-1)))
a=holes(a,[(18,-W/2-5),(18,W/2+5)],3.3)
# Angle bracket lands on left rim; two through-bolts share exact coordinates.
a=holes(a,[(-28,-3),(-20,-3)],3.3)
parts['inline_bridge']=a
# Offset cam finger: install servo horizontally using angle mount below.
a=box(26,8,3,(10,0,0)).union(cylinder(6,3))
a=holes(a,[(0,0),(7,0)],2.2)
a=a.union(cylinder(4,5,(20,0,0)))
parts['inline_finger']=a
# L-angle lets the servo shaft rotate in a vertical plane for the inward press.
a=box(36,18,3)
a=a.union(box(36,3,32,(0,7.5,0)))
# Opening through upright wall, with ear holes along X.
a=a.cut(box(23.3,10,13,(0,7.5,12)))
for x in [-13.75,13.75]:
    cut=cq.Workplane('XZ').center(x,18.5).circle(1.1).extrude(20,both=True)
    a=a.cut(cut)
a=holes(a,[(-4,-3),(4,-3)],3.3)
parts['inline_servo_angle']=a
# Coupons are inexpensive, non-loadbearing fit checks.
a=box(14,s+14,1.6)
a=holes(a,[(0,-s/2),(0,s/2)],3.5)
parts['wall_fit_coupon']=a
a=box(L+2*t,W+2*t,2).cut(box(L,W,4,(0,0,-1)))
parts['inline_fit_coupon']=a
# Cable gauge comb: 4, 5, 6, 7, 8 mm channels, not a clamp.
a=box(64,16,2)
for x,d in zip([-24,-12,0,12,24],[4,5,6,7,8]):
    a=a.cut(cylinder(d/2,4,(x,4,-1))).cut(box(d,6,4,(x,8,-1)))
parts['cable_coupon']=a
# Optical hood: 5mm cylindrical sensor at rear, light-facing aperture at top.
a=cylinder(6.5,18).cut(cylinder(4,20,(0,0,3))).cut(cylinder(1.65,5,(0,0,-1)))
a=a.union(box(22,13,2)).cut(cylinder(1.65,4,(0,0,-1)))
a=holes(a,[(-8.5,0),(8.5,0)],2.2)
parts['optical_hood']=a
# Standalone electronics pod; attachment location is a physical-fit decision.
bx=P['board_length']; by=P['board_width']
a=box(bx+6,by+6,30).cut(box(bx+1,by+1,30,(0,0,2.4)))
# Open cable slots avoid claiming connector alignment before PCB routing.
a=a.cut(box(16,8,23,(0,-by/2-2,8))).cut(box(18,8,23,(0,by/2+2,8)))
for x in [-bx/2+3,bx/2-3]:
    for y in [-by/2+3,by/2-3]:
        a=a.union(cylinder(3,6,(x,y,0)))
        a=a.cut(cylinder(1.1,8,(x,y,0)))
parts['electronics_tray']=a
a=box(bx+6,by+6,2)
a=holes(a,[(x,y) for x in [-bx/2+3,bx/2-3] for y in [-by/2+3,by/2-3]],2.4)
parts['electronics_lid']=a
report=[]
for name,shape in parts.items():
    cq.exporters.export(shape,str(D/f'{name}.step'))
    cq.exporters.export(shape,str(D/f'{name}.stl'),tolerance=.08,angularTolerance=.15)
    mesh=trimesh.load_mesh(D/f'{name}.stl')
    report.append(dict(part=name,valid=shape.val().isValid(),solids=len(shape.solids().vals()),watertight=bool(mesh.is_watertight),volume_mm3=round(shape.val().Volume(),2),bounds_mm=np.round(mesh.extents,2).tolist()))
(O/'validation/geometry.json').write_text(json.dumps(report,indent=2))
# Native assembly export preserves part names and colors.
def assembly(name,items):
    ass=cq.Assembly(name=name)
    for label,obj,color in items: ass.add(obj,name=label,color=cq.Color(*color))
    ass.export(str(D/f'{name}.step'))
    return items
teal=(.04,.55,.54); dark=(.12,.17,.23); orange=(.97,.54,.20); pale=(.82,.85,.86)
plate=box(P['wall_plate_width'],P['wall_plate_height'],3,(0,0,-3)).edges('|Z').fillet(4)
lever=box(9,23,8,(0,0,5)).rotate((0,0,5),(1,0,5),-20)
wallitems=assembly('wall_assembly',[
 ('reference_plate',plate,pale),('reference_lever',lever,orange),
 ('bracket',parts['wall_bracket'],teal),('carriage',parts['servo_carriage'].translate((sx,0,20)),teal),
 ('servo_envelope',box(22.5,12.1,22.4,(sx,0,3)),dark),
 ('arm_parked',parts['wall_arm'].rotate((0,0,0),(0,0,1),150).translate((sx,0,27)),orange)])
# Exploded arrangement follows mounting interface coordinates.
inlineitems=assembly('inline_assembly',[
 ('cradle',parts['inline_cradle'],teal),
 ('reference_switch',box(55,23,H,(0,0,3)),pale),
 ('reference_button',box(15,10,2,(0,0,H+3)),orange),
 ('bridge_exploded',parts['inline_bridge'].translate((0,0,H+18)),teal),
 ('angle_mount_exploded',parts['inline_servo_angle'].translate((-24,0,H+28)),teal),
 ('servo_envelope',box(22.5,22.4,12.1,(-24,17,H+40)),dark),
 ('finger_exploded',parts['inline_finger'].rotate((0,0,0),(1,0,0),90).translate((-24,3,H+46.5)),orange)])

def render(name,items,title,subtitle):
    # Orthographic CPU z-buffer: per-pixel depth avoids painter-sort artifacts
    # when large plate/PCB triangles overlap smaller elevated components.
    az=math.radians(-65); elev=math.radians(52)
    view=np.array([math.cos(elev)*math.cos(az),math.cos(elev)*math.sin(az),math.sin(elev)])
    right=np.array([-math.sin(az),math.cos(az),0]); up=np.cross(view,right)
    triangles=[];colors=[]
    for label,obj,color in items:
        vv,ff=obj.val().tessellate(.12)
        vv=np.array([[v.x,v.y,v.z] for v in vv]); tri=vv[np.array(ff)]
        normals=np.cross(tri[:,1]-tri[:,0],tri[:,2]-tri[:,0]);normals/=np.maximum(np.linalg.norm(normals,axis=1)[:,None],1e-12)
        shade=.68+.32*np.abs(normals@np.array([.3,-.4,.866]))
        triangles.extend(np.stack([tri@right,tri@up,tri@view],axis=2))
        colors.extend(np.clip(np.array(color)[None,:]*shade[:,None],0,1))
    triangles=np.array(triangles); v=triangles.reshape(-1,3);lo=v.min(0);hi=v.max(0)
    width,height=1300,960; scale=min((width-120)/(hi[0]-lo[0]),(height-100)/(hi[1]-lo[1]))
    triangles[:,:,0]=(triangles[:,:,0]-(lo[0]+hi[0])/2)*scale+width/2
    triangles[:,:,1]=height/2-(triangles[:,:,1]-(lo[1]+hi[1])/2)*scale
    rgb=np.zeros((height,width,3))+np.array([238,242,241])/255;depth=np.full((height,width),-np.inf)
    for t,color in zip(triangles,colors):
        x0=max(0,int(np.floor(t[:,0].min())));x1=min(width-1,int(np.ceil(t[:,0].max())))
        y0=max(0,int(np.floor(t[:,1].min())));y1=min(height-1,int(np.ceil(t[:,1].max())))
        if x1<x0 or y1<y0:continue
        x,y=np.meshgrid(np.arange(x0,x1+1)+.5,np.arange(y0,y1+1)+.5)
        denom=(t[1,1]-t[2,1])*(t[0,0]-t[2,0])+(t[2,0]-t[1,0])*(t[0,1]-t[2,1])
        if abs(denom)<1e-10:continue
        aa=((t[1,1]-t[2,1])*(x-t[2,0])+(t[2,0]-t[1,0])*(y-t[2,1]))/denom
        bb=((t[2,1]-t[0,1])*(x-t[2,0])+(t[0,0]-t[2,0])*(y-t[2,1]))/denom
        cc=1-aa-bb;zz=aa*t[0,2]+bb*t[1,2]+cc*t[2,2]
        patch=depth[y0:y1+1,x0:x1+1];mask=(aa>=-1e-8)&(bb>=-1e-8)&(cc>=-1e-8)&(zz>patch)
        patch[mask]=zz[mask];rgb[y0:y1+1,x0:x1+1][mask]=color
    fig=plt.figure(figsize=(12,9),facecolor='#eef2f1');ax=fig.add_axes([.06,.12,.88,.69]);ax.imshow(rgb);ax.axis('off')
    fig.text(.065,.94,'FLIPLITE / ENGINEERING PROTOTYPE',fontsize=11,color='#247b77',weight='bold')
    fig.text(.065,.89,title,fontsize=25,color='#203238',weight='bold')
    fig.text(.065,.055,subtitle,fontsize=10,color='#4e6164')
    fig.savefig(O/'previews'/f'{name}.png',dpi=160);plt.close(fig)
render('wall-preview',wallitems,'Wall toggle · left-side actuator','60 mm screw centers • arm shown parked • reference geometry; physical fit unverified')
render('inline-preview',inlineitems,'Inline push button · exploded study','55 × 23 mm reference body • inward press concept • depth and bracket stack require fit testing')
couponitems=[]
for n,at in [('wall_fit_coupon',(-40,0,0)),('inline_fit_coupon',(10,0,0)),('cable_coupon',(10,35,0)),('optical_hood',(10,-30,0))]: couponitems.append((n,parts[n].translate(at),teal))
render('fit-coupons',couponitems,'Print the fit checks first','Millimetres • 100% scale • geometry previews, not slicer toolpaths')
print(json.dumps(report,indent=2))
