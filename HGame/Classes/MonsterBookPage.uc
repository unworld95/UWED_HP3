Class MonsterBookPage extends Creatures;

var MonsterBook book;
var bool bAvoidOtherPages;
var() Class<Emitter> ExplodeEmitterClass;
var() Class<Emitter> SuicideExplodeEmitterClass;
var() Class<Emitter> TrailEmitterClass;
var Emitter TrailEmitter;
var() int DamageToHarry;
var() int DamageToRonAndHermy;
var bool bIsAttacking;

defaultproperties
{
     ExplodeEmitterClass=Class'HGame.MBookPageExplode'
     SuicideExplodeEmitterClass=Class'HGame.MBookPageExplodeSuicide'
     TrailEmitterClass=Class'HGame.MBookPageTrail'
     DamageToHarry=5
     DamageToRonAndHermy=17
     vulnerableToClass=Class'HGame.RictusempraSpell_Combat'
     ControllerClass=Class'HGame.MonsterBookPageController'
     bPhysicsAnimUpdate=False
     Physics=PHYS_Rotating
     bActorShadows=False
     Mesh=SkeletalMesh'HPCharacters.MBOMPages'
     AmbientGlow=30
     CollisionRadius=26.000000
     CollisionHeight=20.000000
     bCollideWorld=False
     bBlockActors=False
     RotationRate=(Yaw=50000)
}
