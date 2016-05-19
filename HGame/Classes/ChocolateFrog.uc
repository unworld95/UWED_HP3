Class ChocolateFrog extends HPPawn;

var() float FrogGroundSpeed;
var() name FrogWalkAnim;
var() Sound FrogDestroySound;
var() Sound FrogHopSound;
var() Class<Emitter> FrogDestroyEmitterClass;
var Emitter FrogDestroyEmitter;
var() float HealthToAdd;
var() float HealthToAddToCompanions;

defaultproperties
{
     FrogGroundSpeed=100.000000
     FrogWalkAnim="hop"
     FrogDestroySound=Sound'SoundEffects.Magic.pickup_frog'
     FrogHopSound=Sound'SoundEffects.Creatures.frog_hop'
     FrogDestroyEmitterClass=Class'HGame.FrogPickUp'
     HealthToAdd=50.000000
     HealthToAddToCompanions=50.000000
     ControllerClass=Class'KWGame.KWAIController'
     Mesh=SkeletalMesh'HPCharacters.ChocolateFrog'
     DrawScale=1.250000
     AmbientGlow=150
     CollisionRadius=20.000000
     CollisionHeight=10.000000
}
