Class PeevesThrowable extends HPPawn;

var Rotator rCurRot;
var Vector GenericAttachedEmitterOffset;
var() array<SoundGroup> ThrowSounds;

defaultproperties
{
     DamageThisTypeOnBump=Class'HGame.HPHeroPawn'
     DamageAmount=30.000000
     bDestroyOnLanded=True
     bDestroyOnHitWall=True
     Physics=PHYS_Rotating
     CollisionRadius=10.000000
     CollisionHeight=10.000000
     bRotateToDesired=False
}
