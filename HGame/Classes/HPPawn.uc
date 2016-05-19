Class HPPawn extends KWPawn placeable;

var(Reaction) Class<Emitter> ReactFXClass;
var(Reaction) float fMaxDistanceForReaction;
var(Events) name EventToSendOnSpellHit;
var(Events) name EventToSendOnSpellTarget;
var(Animations) AnimGroup SpellHitAnim;
var(sounds) array<SoundGroup> SpellHitSounds;
var(Sound) bool bStopSpellSound;
var(Skeletal) name StartSpellBone;
var(Skeletal) Vector vSpellOffset;
var(Alohomora) name AlohomoraOpeningAnim;
var(RictusempraMovement) float MoveIncrement;
var(RictusempraMovement) float MoveTime;
var(RictusempraMovement) bool bMoveInAnyDir;
var float RictusempraTime;
var Vector RictusempraLocation;
var Vector RictusempraVelocity;
var name SavedState;
var float RictusempraLength;
var Vector RictusempraOffset;
var() bool bEmbedCompanionCastTarget;
var CompanionSpellTrigger aCompanionSpellTrigger;
var(AutoDamage) Class<Actor> DamageThisTypeOnBump;
var(AutoDamage) name AnimToPlayOnBump;
var(AutoDamage) float DamageAmount;
var(AutoDamage) array<SoundGroup> DamageDestroySounds;
var() Class<Emitter> EmitterToSpawnOnDestroy;
var Emitter GenericAttachedEmitter;
var() float CompanionsCastOnMeSpeedMag;
var(Casting) float fLightModifier;
var bool bIsDoingKnockBack;
//var() string Label;

defaultproperties
{
     MoveIncrement=64.000000
     MoveTime=2.000000
     CompanionsCastOnMeSpeedMag=1.000000
     fLightModifier=1.000000
     fIdleAnimTweenTimeCutScene=0.400000
     bPickRandomStartFrameForAnimateStanding=True
     bCanIdleWander=True
     BlendChangeTime=0.050000
     RotationRate=(Yaw=20000)
}
