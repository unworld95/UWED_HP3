Class Salamander extends HPCreatures;

var() float fTimeFrozen;
var() bool bClockwise;
var() float fPatrolRadius;
var() float fAvgTimeBetweenPatrols;
var float fTimeSinceStopPatrolling;
var() name baseTag;
var SalamanderBase HomeBase;
var Vector MoveLoc;
var() bool bPauseWhilePatrolling;
var SalamanderBodyFire myFire;
var SalamanderBodyFrost myFrost;
var SalamanderBodyBreak myBreak;
var float savedSizeScale;
var(Animations) AnimGroup PreRespawnAnim;
var(Animations) AnimGroup RespawnAnim;
var(sounds) array<SoundGroup> PreRespawnSounds;
var(sounds) array<SoundGroup> RespawnSounds;
var(sounds) array<SoundGroup> FlamingSounds;

defaultproperties
{
     fTimeFrozen=9.000000
     fPatrolRadius=256.000000
     fAvgTimeBetweenPatrols=3.000000
     PreRespawnAnim=(anim="Regenerate")
     RespawnAnim=(anim="Hatch",Rate=0.750000)
     PreRespawnSounds(0)=(Sound=Sound'SoundEffects.Creatures.salamander_spawn',Volume=1.000000,Radius=400.000000,PitchRange=(Min=0.700000,Max=1.000000))
     RespawnSounds(0)=(Sound=Sound'SoundEffects.Creatures.salamander_spawn',Volume=1.000000,Radius=400.000000)
     FlamingSounds(0)=(Sound=Sound'SoundEffects.Creatures.salamander_respawn01',Volume=1.000000)
     FlamingSounds(1)=(Sound=Sound'SoundEffects.Creatures.salamander_respawn02',Volume=1.000000)
     AttackSpellClass=Class'HGame.SalamAttackSpell'
     DefaultAnimChannel=13
     TimeBetweenAttacks=2.000000
     fAttackRange=400.000000
     fMeleeDamage=10.000000
     fAttackAccuracy=0.500000
     RandSizeRange=(Min=0.900000,Max=1.100000)
     fTimeBeforeStall=2.000000
     fSenseRadius=1024.000000
     DefaultStateName="Patrolling"
     PreAttackAnim=(anim="Rearup")
     AttackAnim=(anim="RearupSpit")
     PostAttackAnim=(anim="RearupEnd")
     PreMeleeAttackAnim=(anim="Rearup")
     MeleeAttackAnim=(anim="RearupClawAttack")
     PostMeleeAttackAnim=(anim="RearupEnd")
     TakeHitSounds(0)=(Sound=Sound'SoundEffects.Creatures.salamander_freeze01',Volume=1.000000)
     TakeHitSounds(1)=(Sound=Sound'SoundEffects.Creatures.salamander_freeze02',Volume=1.000000)
     TakeHitSounds(2)=(Sound=Sound'SoundEffects.Creatures.salamander_freeze03',Volume=1.000000)
     DyingSounds(0)=(Sound=Sound'SoundEffects.Creatures.salamander_explode',Volume=1.000000,Radius=400.000000,PitchRange=(Min=0.900000,Max=1.100000))
     ThingsIHate(0)=Class'HGame.HPHeroPawn'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound0
         Name="AnimNotify_KWSound0"
     End Object
     AnimNotifys(0)=AnimNotify_KWSound'HGame.Salamander.AnimNotify_KWSound0'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound1
         Name="AnimNotify_KWSound1"
     End Object
     AnimNotifys(1)=AnimNotify_KWSound'HGame.Salamander.AnimNotify_KWSound1'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound2
         Name="AnimNotify_KWSound2"
     End Object
     AnimNotifys(2)=AnimNotify_KWSound'HGame.Salamander.AnimNotify_KWSound2'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound3
         Name="AnimNotify_KWSound3"
     End Object
     AnimNotifys(3)=AnimNotify_KWSound'HGame.Salamander.AnimNotify_KWSound3'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound4
         Name="AnimNotify_KWSound4"
     End Object
     AnimNotifys(4)=AnimNotify_KWSound'HGame.Salamander.AnimNotify_KWSound4'
     vulnerableToClass=Class'HGame.GlaciusSpell'
     SpellHitSounds(0)=(Sound=Sound'SoundEffects.common.explosion01',Volume=1.000000,Radius=400.000000,PitchRange=(Min=0.800000,Max=1.000000))
     SpellHitSounds(1)=(Sound=Sound'SoundEffects.common.explosion02',Volume=1.000000,Radius=400.000000,PitchRange=(Min=0.800000,Max=1.000000))
     vSpellOffset=(X=20.000000,Z=50.000000)
     GroundRunSpeed=200.000000
     GroundWalkSpeed=40.000000
     FootstepsStone(0)=Sound'SoundEffects.Creatures.salamander_walk01'
     FootstepsStone(1)=Sound'SoundEffects.Creatures.salamander_walk02'
     FootstepsNone(0)=Sound'SoundEffects.Creatures.salamander_walk01'
     FootstepsNone(1)=Sound'SoundEffects.Creatures.salamander_walk02'
     FootFramesWalk(0)=1
     FootFramesWalk(1)=20
     BaseMovementRate=140.000000
     MovementAnims(2)="RunStrafeLeft"
     MovementAnims(3)="RunStrafeRight"
     TurnLeftAnim="ShuffleTurnLeft"
     TurnRightAnim="ShuffleTurnRight"
     Physics=PHYS_Falling
     Mesh=SkeletalMesh'HPCharacters.Salamander'
     InitialState="Spawning"
     CollisionRadius=70.000000
     CollisionHeight=20.000000
}
