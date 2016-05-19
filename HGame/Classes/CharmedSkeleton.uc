Class CharmedSkeleton extends Creatures;

var() float fDetectDistance;
var() float fStartupDetectDistance;
var() Class<Emitter> EffectToSpawnOnCreate;
var Vector vOriginalLoc;
var Vector vNextMoveLoc;
var() float DelayBeforeSendDefeatedEvent;
var() name EventToSendWhenDefeated;
var() float ResurectAnimRate;
var() float TimeBetweenAttacks;
var float LastAttackTime;
var() float TimeBeforeResurectMin;
var() float TimeBeforeResurectMax;
var bool bMissingArm;
var bool bFatalShatter;
var() bool bShowPileOfBones;

defaultproperties
{
     fDetectDistance=500.000000
     EffectToSpawnOnCreate=Class'HGame.Dustsmall'
     DelayBeforeSendDefeatedEvent=1.000000
     ResurectAnimRate=2.000000
     TimeBetweenAttacks=2.000000
     TimeBeforeResurectMin=0.010000
     TimeBeforeResurectMax=0.020000
     RandColorRange=(Min=0.900000,Max=1.100000)
     RandSizeRange_X=(Min=0.970000,Max=1.030000)
     RandSizeRange_Y=(Min=0.850000,Max=1.250000)
     RandSizeRange_Z=(Min=0.980000,Max=1.030000)
     vulnerableToClass=Class'HGame.RictusempraSpell_Combat'
     bEmbedCompanionCastTarget=True
     IdleAnimName="'"
     GroundRunSpeed=75.000000
     AccelRate=100.000000
     BaseMovementRate=70.000000
     MovementAnims(0)="Walk"
     MovementAnims(1)="Walk"
     MovementAnims(2)="Walk"
     MovementAnims(3)="Walk"
     bStasis=True
     Mesh=SkeletalMesh'HPCharacters.CharmedSkeleton'
     CollisionHeight=60.000000
     bBlockActors=False
     bBlockPlayers=False
}
