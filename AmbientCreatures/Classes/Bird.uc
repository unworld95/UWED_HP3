//================================================================================
// Bird.
//================================================================================

class Bird extends TransientAmbientPawn;

#exec MESH  MODELIMPORT MESH=SmallBird MODELFILE=SkeletalMesh\SmallBird.PSK LODSTYLE=10

var float Angle;
var bool bDirection;
var bool bDestroyIfHitWall;
var float CircleRadius;
var float HeightOffset;

defaultproperties
{
    CircleRadius=600.00
    AirSpeed=500.00
    AccelRate=800.00
    Health=1.00
    LandMovementState=PlayerFlying
    Physics=4
    CollisionRadius=28.00
    CollisionHeight=16.00
    bCollideActors=True
    bBlockActors=True
    bBlockPlayers=True
    bProjTarget=True
	Mesh=SkeletalMesh'SmallBird'
    RotationRate=(Pitch=12000,Yaw=20000,Roll=12000),
}