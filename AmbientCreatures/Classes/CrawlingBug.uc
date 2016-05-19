//================================================================================
// CrawlingBug.
//================================================================================

class CrawlingBug extends Bug;

#exec MESH IMPORT MESH=Firefly ANIVFILE=VertMesh\Firefly_a.3d DATAFILE=VertMesh\Firefly_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=Firefly X=0 Y=0 Z=0 PITCH=0 YAW=0 ROLL=0
#exec MESHMAP   SCALE MESHMAP=Firefly X=1.0 Y=1.0 Z=1.0

defaultproperties
{
    bFlyer=False
    bCrawler=True
    AirSpeed=170.00
    AccelRate=1500.00
	Mesh=VertMesh'Firefly'
    RotationRate=(Pitch=4096,Yaw=120000,Roll=0),
}