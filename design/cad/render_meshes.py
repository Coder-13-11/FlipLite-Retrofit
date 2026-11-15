"""Render existing STL geometry with no branded heading. No image-generation model.
Assembly transforms mirror build.py; reference plate/servo are simple envelopes.
This is a mechanical study, not a complete electronics/battery assembly.
"""
from pathlib import Path
import math,os,json
os.environ.setdefault('MPLCONFIGDIR','/tmp/fliplite-mpl')
import numpy as np
import trimesh
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
D=Path(__file__).resolve().parent;O=D.parent
P=json.loads((D/'parameters.json').read_text())
def box(x,y,z,at=(0,0,0)):
 m=trimesh.creation.box([x,y,z]);m.apply_translation([at[0],at[1],at[2]+z/2]);return m
def part(n,at=(0,0,0),angle=0):
 m=trimesh.load_mesh(D/(n+'.stl'))
 if angle:m.apply_transform(trimesh.transformations.rotation_matrix(math.radians(angle),[0,0,1]))
 m.apply_translation(at);return m
def render(name,items,title,subtitle):
    # Orthographic CPU z-buffer: per-pixel depth avoids painter-sort artifacts
    # when large plate/PCB triangles overlap smaller elevated components.
    az=math.radians(-65); elev=math.radians(52)
    view=np.array([math.cos(elev)*math.cos(az),math.cos(elev)*math.sin(az),math.sin(elev)])
    right=np.array([-math.sin(az),math.cos(az),0]); up=np.cross(view,right)
    triangles=[];colors=[]
    for label,obj,color in items:
        vv=np.asarray(obj.vertices); tri=vv[np.asarray(obj.faces)]
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
    fig=plt.figure(figsize=(10,8),facecolor='white');ax=fig.add_axes([.02,.06,.96,.92]);ax.imshow(rgb);ax.axis('off')
    fig.text(.03,.02,subtitle,fontsize=8,color='#444444')
    fig.savefig(O/'previews'/f'{name}.png',dpi=160);plt.close(fig)

sx=P['wall_servo_x']
lever=box(9,23,8,(0,0,5))
lever.apply_transform(trimesh.transformations.rotation_matrix(math.radians(-20),[1,0,0],point=[0,0,5]))
items=[('plate',box(88,132.5,3,(0,0,-3)),(.84,.84,.84)),('lever',lever,(.65,.65,.65)),('bracket',part('wall_bracket'),(.48,.58,.65)),('carriage',part('servo_carriage',(sx,0,20)),(.48,.58,.65)),('servo',box(22.5,12.1,22.4,(sx,0,3)),(.22,.22,.22)),('arm',part('wall_arm',(sx,0,27),150),(.68,.68,.68))]
render('wall-preview',items,'','Mechanical study; 60 mm screw spacing. Servo pose and fit unverified. Reference plate has square corners in this mesh view.')
items=[(n,part(n,at),(.5,.58,.64)) for n,at in [('wall_bracket',(-30,0,0)),('servo_carriage',(28,0,0)),('wall_arm',(28,35,18)),('wall_fit_coupon',(-60,0,0))]]
render('fan-parts',items,'','Fan parts and fit coupon; STL geometry in mm. Not a verified assembly or print layout.')

net=json.loads((O/'electronics/netlist.json').read_text())
items=[('board_envelope',box(50,38,1.6,(25,19,0)),(.27,.39,.32))]
for item in net['parts']:
 x,y=item['xy'];w,h,z=item['body'];ref=item['ref']
 color=(.72,.72,.72) if ref=='U4' else ((.86,.84,.77) if item['group']=='connector' else (.2,.2,.2))
 items.append((ref,box(w,h,z,(x,y,1.65)),color))
 for pad,(px,py,pw,ph) in item['pads'].items():items.append((ref+pad,box(pw,ph,.05,(x+px,y+py,1.6)),(.7,.6,.4)))
render('pcb-3d-preview',items,'','Placement envelopes from netlist.json; unrouted. Simplified board body omits mounting holes.')
