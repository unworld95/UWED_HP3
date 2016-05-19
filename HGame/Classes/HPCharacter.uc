Class HPCharacter extends HPPawn;

var name LastState;
var(Skeletal) name HandBone;
var(Skeletal) name castBone;
var(Skeletal) name castBone2;
var WeaponWand Wand;
var(Wand) Vector WandOffset;
var bool bLockedOn;
var bool bJustCast;
var(Animation) name castHoldAnim;
var(Animation) name castReleaseAnim;
var(Animation) int castChannel;
var(Animation) int castChannel2;
var(Animation) float castHoldAnimRate;
var(Animation) float castHoldAnimTweenTime;
var(Animation) float castReleaseAnimRate;
var(Animation) float castReleaseAnimTweenTime;
var(Animation) float castUnblendTime;
var(Casting) float fTimeBetweenCasts;
var Actor spellTarget;
var Class<baseSpell> currentSpell;
var Vector currentTargetOffset;
var() int GetOutOfMyWayPriority;
var float GetOutOfMyWayMoveTime;
var SpongifyPad HitSpongifyPad;
var ControlCreature aControlledCreature;
var() name BoneToAddPropWandTo;
var Actor PropWand;
var(Dialog) string SpongifyRemindDialog;
var(Dialog) bool bRemindSpongify;
var array<string> SpongifyFlyEmotes;
var bool bUsingFightStanceAnims;
var(Animation) name FightStanceAnim;
var(Animation) name FightStanceCastHoldAnim;
var(Animation) name FightStanceCastReleaseAnim;
var(Animation) name FightStanceTurnLeftAnim;
var(Animation) name FightStanceTurnRightAnim;
var array<Actor> CurrentEnemies;
var Vector vGenericFightStanceBattleCenter;
var float LastGenericEnemyStartupTime;
var bool bDontUseGenericFightRadiusCheck;
//var(Animation) float fDefaultTweenTime;
//var(Collision) bool bAlignBottomAlways;

defaultproperties
{
     HandBone="body_rhand"
     castBone="Body_rClav"
     castBone2="body_root"
     castHoldAnim="castaim"
     castReleaseAnim="Cast1"
     castChannel=14
     castChannel2=12
     castHoldAnimRate=1.000000
     castHoldAnimTweenTime=0.300000
     castReleaseAnimRate=1.000000
     castReleaseAnimTweenTime=0.100000
     castUnblendTime=0.300000
     GetOutOfMyWayMoveTime=0.250000
     SpongifyRemindDialog="pc_lup_Ch1IntroSpgHelp_4"
     FightStanceAnim="BattleIdle"
     FightStanceCastHoldAnim="BattleCastAim"
     FightStanceCastReleaseAnim="BattleCast"
     FightStanceTurnLeftAnim="BattleTurnLeft"
     FightStanceTurnRightAnim="BattleTurnRight"
     fDefaultTweenTime=0.200000
     bUseCameraBlocker=True
     fCameraBlockerHeight=5.000000
     vCameraBlockerOffset=(Z=43.000000)
     bUseBlobShadow=True
     SlidingAmbient=Sound'SoundEffects.Objects.glacius_slide'
     OffEdgeOfTrackEmotes(0)="pc_hry_HryEmotes_19"
     OffEdgeOfTrackEmotes(1)="pc_hry_HryEmotes_17"
     OffEdgeOfTrackEmotes(2)="pc_hry_HryEmotes_15"
     GroundRunSpeed=320.000000
     GroundWalkSpeed=130.000000
     GroundCarrySpeed=170.000000
     fLandingTweenInTime=0.050000
     fLandingTweenOutTime=0.300000
     fJumpTweenTime=0.050000
     fAirStillAnimRate=1.200000
     UpperBodyBone="body_lowerspine"
     silence=Sound'SoundEffects.ambience.silence'
     GroundSpeed=320.000000
     AirSpeed=400.000000
     AccelRate=1348.000000
     JumpZ=225.000000
     AirControl=0.250000
     ControllerClass=Class'HGame.HPAIController'
     bPhysicsAnimUpdate=True
     BaseMovementRate=400.000000
     BlendChangeTime=0.350000
     MovementBlendStartTime=0.050000
     ForwardStrafeBias=0.500000
     BackwardStrafeBias=0.500000
     bActorShadows=True
     AmbientGlow=35
     CollisionRadius=15.000000
     CollisionHeight=38.000000
     RotationRate=(Yaw=80000)
}
