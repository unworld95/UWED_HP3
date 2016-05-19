Class Creatures extends HPPawn;

const NUM_HIT_SOUNDS= 3;
var(Routing) name FromRoutingTriggerState;
var(Attack) float TimeBetweenAttacks;
var float fTimeSinceLastAttack;
var(Attack) int iAttackVolleyMin;
var(Attack) int iAttackVolleyMax;
var(Attack) float TimeBetweenShots;
var(Attack) float fAttackRange;
var(Attack) float fMeleeAttackRange;
var(Attack) float fMeleeDamage;
var(Attack) float fAttackAccuracy;
var() float TimeSpentDisabled;
var() int iNumHitsToBeat;
var() name EventToSendWhenDestroyed;
var() Sound HitSound[3];
var() Range RandColorRange;
var() Range RandSizeRange;
var() Range RandSpeedRange;
var() Range RandSizeRange_X;
var() Range RandSizeRange_Y;
var() Range RandSizeRange_Z;
var(AI) float fMinTimeBetweenDecisions;
var(AI) float fTimeBeforeStall;
var(AI) float fRelevantDistance;
var(AI) bool bMoveAround;
var(AI) float fChanceIRetreat;
var(AI) float fChanceIAdvance;
var(AI) float fMeleeBias;
var(AI) float fSenseRadius;
var(AI) float myRandSeed;
var(Animation) int ActionAnimationChannel;
var(Animation) float fTimeToBlendActionChannel;
var() bool bDebug;
var(AI) name DefaultStateName;
var(AI) name DefaultTriggerState;
var(AI) name FromIdleTriggerState;
var(Animations) AnimGroup PreAttackAnim;
var(Animations) AnimGroup AttackAnim;
var(Animations) AnimGroup PostAttackAnim;
var(Animations) AnimGroup PreMeleeAttackAnim;
var(Animations) AnimGroup MeleeAttackAnim;
var(Animations) AnimGroup PostMeleeAttackAnim;
var(Animations) AnimGroup PreDefendAnim;
var(Animations) AnimGroup DefendAnim;
var(Animations) AnimGroup PostDefendAnim;
var(Animations) AnimGroup AdvanceAnim;
var(Animations) AnimGroup RetreatAnim;
var(Animations) AnimGroup HideAnim;
var(Animations) AnimGroup TakeHitAnim;
var(Animations) AnimGroup DyingAnim;
var(Animation) name ActionBone;
var(sounds) array<SoundGroup> DefaultSounds;
var(sounds) array<SoundGroup> AdvanceSounds;
var(sounds) array<SoundGroup> RetreatSounds;
var(sounds) array<SoundGroup> PreAttackSounds;
var(sounds) array<SoundGroup> AttackSounds;
var(sounds) array<SoundGroup> PostAttackSounds;
var(sounds) array<SoundGroup> PreMeleeAttackSounds;
var(sounds) array<SoundGroup> MeleeAttackSounds;
var(sounds) array<SoundGroup> PostMeleeAttackSounds;
var(sounds) array<SoundGroup> PreDefendSounds;
var(sounds) array<SoundGroup> DefendSounds;
var(sounds) array<SoundGroup> PostDefendSounds;
var(sounds) array<SoundGroup> TakeHitSounds;
var(sounds) array<SoundGroup> DyingSounds;
var array<Class> ThingsIFear;
var array<Class> ThingsIHate;
var array<Class> ThingsILike;
var Actor Enemy;
var Actor Target;
var Actor CurrentInterest;
var Vector vCurrentRetreatDir;
var bool bCreatureActivated;
//var(Animations) export editinlineuse array<AnimNotify> AnimNotifys;
//var(Animation) float fDefaultTweenTime;
var(Reaction) Class<Projectile> vulnerableToClass;
var String Label;
//var(Animation) int DefaultAnimChannel;

defaultproperties
{
     TimeBetweenAttacks=5.000000
     iAttackVolleyMin=1
     iAttackVolleyMax=1
     TimeBetweenShots=1.000000
     fAttackRange=200.000000
     TimeSpentDisabled=5.000000
     iNumHitsToBeat=3
     RandColorRange=(Min=1.000000,Max=1.000000)
     RandSizeRange=(Min=1.000000,Max=1.000000)
     RandSpeedRange=(Min=0.750000,Max=1.250000)
     RandSizeRange_X=(Min=1.000000,Max=1.000000)
     RandSizeRange_Y=(Min=1.000000,Max=1.000000)
     RandSizeRange_Z=(Min=1.000000,Max=1.000000)
     fMinTimeBetweenDecisions=0.050000
     fRelevantDistance=2000.000000
     bMoveAround=True
     fChanceIRetreat=1.000000
     fChanceIAdvance=1.000000
     fSenseRadius=512.000000
     myRandSeed=1.000000
     ActionAnimationChannel=13
     fTimeToBlendActionChannel=0.200000
     DefaultStateName="DefaultState"
     fDefaultTweenTime=0.200000
     bUseBlobShadow=True
     ControllerClass=Class'HGame.GroundCreatureController'
     bPhysicsAnimUpdate=True
     ForwardStrafeBias=0.500000
     BackwardStrafeBias=0.500000
     bActorShadows=True
     TransientSoundRadius=400.000000
}
