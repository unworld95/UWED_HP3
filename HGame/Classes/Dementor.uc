Class Dementor extends Creatures;

var(Animation) array<name> reachAnims;
var(Animation) name BustDoorAnim;

defaultproperties
{
     reachAnims(0)="ReachLeft"
     reachAnims(1)="ReachRight"
     BustDoorAnim="BustDoor"
     Label="Dementor"
     bCanStrafe=True
     SightRadius=600.000000
     PeripheralVision=1.000000
     GroundSpeed=300.000000
     AirSpeed=500.000000
     AccelRate=4000.000000
     JumpZ=620.000000
     BaseEyeHeight=20.000000
     EyeHeight=20.000000
     bPhysicsAnimUpdate=False
     MovementAnims(0)="Walk"
     bActorShadows=False
     Mesh=SkeletalMesh'HPCharacters.Dementor'
     DrawScale=2.000000
     AmbientGlow=110
     SoundRadius=25.000000
     CollisionRadius=35.000000
     CollisionHeight=25.000000
     Mass=130.000000
     RotationRate=(Pitch=60000,Yaw=40000,Roll=60000)
}
