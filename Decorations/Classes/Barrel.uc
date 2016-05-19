//================================================================================
// Barrel.
//================================================================================

class Barrel extends WarDecoration;

#exec MESH IMPORT MESH=BarrelM ANIVFILE=Models\BarrelM_a.3d DATAFILE=Models\BarrelM_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=BarrelM X=0 Y=0 Z=0 PITCH=0 YAW=0 ROLL=0
#exec MESHMAP   SCALE MESHMAP=BarrelM X=1.0 Y=1.0 Z=1.0

#exec TEXTURE IMPORT NAME=JBarrel1 FILE=Textures\JBarrel1.bmp GROUP=Skins MIPS=OFF FLAGS=2
#exec MESHMAP SETTEXTURE MESHMAP=BarrelM NUM=0 TEXTURE=JBarrel1

defaultproperties
{
     NumFrags=12
     Health=50
     Mesh=VertMesh'Decorations.BarrelM'
     Buoyancy=60.000000
}
