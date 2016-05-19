//================================================================================
// BiterFish.
//================================================================================

class BiterFish extends TransientAmbientPawn;

#exec Texture Import File=Texture\BatFishTex1.tga Name=BatFishTex1 GROUP=Skins
#exec Texture Import File=Texture\JFirefly1.tga Name=JFirefly1 GROUP=Skins
#exec Texture Import File=Texture\Jfish21.tga Name=Jfish21 GROUP=Skins
#exec Texture Import File=Texture\WaspTex1.tga Name=WaspTex1 GROUP=Skins
#exec Texture Import File=Texture\WaspTex2.tga Name=WaspTex2 GROUP=Skins

#exec MESH IMPORT MESH=AmbientFish ANIVFILE=VertMesh\AmbientFish_a.3d DATAFILE=VertMesh\AmbientFish_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=AmbientFish X=0 Y=0 Z=0 PITCH=0 YAW=0 ROLL=0
#exec MESHMAP   SCALE MESHMAP=AmbientFish X=1.0 Y=1.0 Z=1.0

var float AirTime;

defaultproperties
{
    bCanSwim=True
    WaterSpeed=180.00
    AccelRate=1700.00
    UnderWaterTime=-1.00
    Physics=3
    Mass=5.00
    Buoyancy=5.00
	Mesh=VertMesh'AmbientFish'
    RotationRate=(Pitch=8192,Yaw=128000,Roll=16384),
}