//================================================================================
// FlyingBug.
//================================================================================

class FlyingBug extends Bug;

#exec MESH  MODELIMPORT MESH=WaspMesh MODELFILE=SkeletalMesh\WaspMesh.PSK LODSTYLE=10
#exec AUDIO IMPORT NAME="flybuzz" FILE="Sound\flybuzz.wav" GROUP="Flies"

defaultproperties
{
    LandMovementState=PlayerFlying
    AmbientSound=Sound'flybuzz'
    Mesh=SkeletalMesh'WaspMesh'
    SoundRadius=2.00
    SoundVolume=64
}