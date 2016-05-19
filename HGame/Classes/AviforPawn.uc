Class AviforPawn extends ControlCreature;

struct BonePairs
{
  var() name StartBone;
  var() name EndBone;
};

const DegreesToRot= 182.045;
var(Animations) AnimGroup Idle;
var(Animations) AnimGroup Land;
var(Animations) AnimGroup Flap;
var(Animations) AnimGroup SmallFlap;
var(Animations) AnimGroup Coast;
var(Animations) AnimGroup WalkForward;
var(Animations) AnimGroup WalkBackward;
var(Animations) AnimGroup HitSomethingAnim;
var(Animations) AnimGroup FireAir;
var(Animations) AnimGroup FireGround;
var DraconisForsStatue aStatue;
var float aForward;
var() float MaxFlyHeight;
var float StartGroundZ;
var float LastGroundZ;
var() float TerminalVelocityNoPitch;
var() float TerminalVelocityFullPitch;
var() float UpwardTerminalVelocity;
var() float ExtraGravity;
var() bool bAllowFall;
var() float CamPitchForFallScalar;
var() float TwoDFlyAccelRate;
var() float LaunchFlySpeed2d;
var() float MinFlySpeed2d;
var() float NormalFlySpeed2d;
var() float BoostFlySpeed2d;
var() bool bAccelToFlySpeed;
var() float NormalFlapForwardBoost;
var() float FlapBoostFalloff;
var() float fLateralSpeedFalloff;
var() float fMaxRollByDegrees;
var float DesiredSpeed;
var float fCurrentFlapBoost;
var() float TurnRateMagnifier;
var int LastYaw;
var() float InitialFlapZSpeed;
var() float NormalFlapZSpeed;
var() float FlapAcceleration;
var() float fTimeToKillFlapAccel;
var() bool bUseAccelForFlap;
var float fFlapTimer;
var() float fFlapTimeScaler;
var() Range FlapScaleRange;
var float fAvgFlapTime;
var() float fAvgFlapLearnRate;
var float fAutoFlapRate;
var bool bWingFlap;
var() float fTimeBeforeParachuteFlap;
var() bool bNoFlapAnimInterrupt;
var() bool bHoldButtonToFlap;
var bool bInPerchVolume;
var() float GroundMoveBaseAnimRate;
var() float FlapAnimRate;
var() float TimeBeforeGetTired;
var float TimeLeftGround;
var baseSpell FlameSpell;
var() float ShootRange;
var() float FlameShootTime;
var float FlameStartShootingTime;
var float LastEffectSpawnTime;
var bool bDoFlameShoot;
var Emitter FlameShootEmitter;
var Emitter SmokePuffEmitter;
var() bool ShootAtVulnSpellTriggers;
var() int FlameAmmo;
var() name EventToSendOnPossess;
var HPHeroController HeroController;
var() name PathManagerTag;
var PathManager PathManager;
var() bool bUsePath;
var() Rotator trackLockFrustrum;
var(sounds) array<SoundGroup> PossessedSounds;
var(sounds) array<SoundGroup> FlapSounds;
var(sounds) array<SoundGroup> LandSounds;
var(sounds) array<SoundGroup> CoastSounds;
var(sounds) array<SoundGroup> ShootSounds;
var(sounds) array<SoundGroup> HitSomethingSounds;
var int currentRemindDialogueIndex;
var Actor LastBumped;
var(MotionFX) Class<MotionFX> MotionFXClass;
var array<MotionFX> MotionFX;
var(MotionFX) array<BonePairs> MotionBones;
var() bool bCanMoveOnGround;
var() float timeToRemind;
var() float timeSinceRemind;
//var(Animation) int DefaultAnimChannel;

defaultproperties
{
     Land=(anim="Landing")
     Flap=(anim="Flap",Rate=2.500000,tweenTime=0.000100)
     SmallFlap=(anim="FlapSmall",Rate=1.500000,tweenTime=0.001000)
     Coast=(anim="Glide",bLoop=True)
     WalkForward=(anim="Walk")
     WalkBackward=(anim="WalkBack")
     FireAir=(anim="FireAir")
     FireGround=(anim="FireGround")
     TerminalVelocityNoPitch=60.000000
     TerminalVelocityFullPitch=350.000000
     ExtraGravity=-300.000000
     bAllowFall=True
     TwoDFlyAccelRate=200.000000
     LaunchFlySpeed2d=140.000000
     MinFlySpeed2d=50.000000
     NormalFlySpeed2d=200.000000
     BoostFlySpeed2d=250.000000
     NormalFlapForwardBoost=200.000000
     FlapBoostFalloff=400.000000
     fLateralSpeedFalloff=2500.000000
     fMaxRollByDegrees=45.000000
     TurnRateMagnifier=1.600000
     InitialFlapZSpeed=400.000000
     NormalFlapZSpeed=275.000000
     FlapAcceleration=3500.000000
     fTimeToKillFlapAccel=0.200000
     fAutoFlapRate=2.000000
     GroundMoveBaseAnimRate=100.000000
     FlapAnimRate=1.000000
     ShootRange=200.000000
     FlameShootTime=2.000000
     trackLockFrustrum=(Yaw=15000)
     PossessedSounds(0)=(Sound=Sound'SoundEffects.Creatures.draconifor_squawk01',Volume=1.000000)
     PossessedSounds(1)=(Sound=Sound'SoundEffects.Creatures.draconifor_squawk02',Volume=1.000000)
     PossessedSounds(2)=(Sound=Sound'SoundEffects.Creatures.draconifor_squawk03',Volume=1.000000)
     PossessedSounds(3)=(Sound=Sound'SoundEffects.Creatures.draconifor_squawk04',Volume=1.000000)
     PossessedSounds(4)=(Sound=Sound'SoundEffects.Creatures.draconifor_squawk05',Volume=1.000000)
     FlapSounds(0)=(Sound=Sound'SoundEffects.Creatures.draconifor_wingflap01',Volume=0.700000,Pitch=1.400000,Radius=125.000000)
     FlapSounds(1)=(Sound=Sound'SoundEffects.Creatures.draconifor_wingflap02',Volume=0.700000,Pitch=1.400000,Radius=125.000000)
     FlapSounds(2)=(Sound=Sound'SoundEffects.Creatures.draconifor_wingflap03',Volume=0.700000,Pitch=1.400000,Radius=125.000000)
     FlapSounds(3)=(Sound=Sound'SoundEffects.Creatures.draconifor_wingflap04',Volume=0.700000,Pitch=1.400000,Radius=125.000000)
     FlapSounds(4)=(Sound=Sound'SoundEffects.Creatures.draconifor_wingflap05',Volume=0.700000,Pitch=1.400000,Radius=125.000000)
     LandSounds(0)=(Sound=Sound'SoundEffects.Creatures.draconifor_land01',PitchRange=(Min=0.900000,Max=1.100000))
     LandSounds(1)=(Sound=Sound'SoundEffects.Creatures.draconifor_land02',PitchRange=(Min=0.900000,Max=1.100000))
     LandSounds(2)=(Sound=Sound'SoundEffects.Creatures.draconifor_land03',PitchRange=(Min=0.900000,Max=1.100000))
     ShootSounds(0)=(Sound=Sound'SoundEffects.Creatures.draconifor_spitfire01',Volume=1.000000)
     MotionFXClass=Class'HGame.MotionFX'
     MotionBones(0)=(StartBone="Body_wing_tip_L",EndBone="Body_x13")
     bCanMoveOnGround=True
     timeToRemind=5.000000
     DefaultAnimChannel=12
     fTimeForCameraSwitch=0.000000
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound0
         Name="AnimNotify_KWSound0"
     End Object
     AnimNotifys(0)=AnimNotify_KWSound'HGame.AviforPawn.AnimNotify_KWSound0'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound1
         Name="AnimNotify_KWSound1"
     End Object
     AnimNotifys(1)=AnimNotify_KWSound'HGame.AviforPawn.AnimNotify_KWSound1'
     vulnerableToClass=Class'HGame.DraconisForsSpell'
     StartSpellBone="BeakBot"
     CameraSetStandard=(vLookAtOffset=(X=-15.000000,Z=30.000000),fLookAtDistance=300.000000,fRotTightness=6.000000,fRotSpeed=4.000000,fMaxMouseDeltaX=20000.000000,fMaxMouseDeltaY=10000.000000,fMinPitch=-14000.000000,fMaxPitch=4000.000000)
     bControlsCameraRot=True
     fCameraRollModifier=0.300000
     GroundRunSpeed=200.000000
     GroundWalkSpeed=100.000000
     FootstepsStone(0)=Sound'SoundEffects.Creatures.draconifor_walk01'
     FootstepsStone(1)=Sound'SoundEffects.Creatures.draconifor_walk02'
     FootstepsRug(0)=Sound'SoundEffects.Creatures.draconifor_walk01'
     FootstepsRug(1)=Sound'SoundEffects.Creatures.draconifor_walk02'
     FootstepsWood(0)=Sound'SoundEffects.Creatures.draconifor_walk01'
     FootstepsWood(1)=Sound'SoundEffects.Creatures.draconifor_walk02'
     FootstepsWet(0)=Sound'SoundEffects.Movement.footstep_har_water01'
     FootstepsWet(1)=Sound'SoundEffects.Movement.footstep_har_water02'
     FootstepsWet(2)=Sound'SoundEffects.Movement.footstep_har_water03'
     FootstepsGrass(0)=Sound'SoundEffects.Creatures.draconifor_walk01'
     FootstepsGrass(1)=Sound'SoundEffects.Creatures.draconifor_walk02'
     FootstepsMetal(0)=Sound'SoundEffects.Creatures.draconifor_walk01'
     FootstepsMetal(1)=Sound'SoundEffects.Creatures.draconifor_walk02'
     FootstepsNone(0)=Sound'SoundEffects.Creatures.draconifor_walk01'
     FootstepsNone(1)=Sound'SoundEffects.Creatures.draconifor_walk02'
     FootFramesRun(0)=1
     FootFramesRun(1)=13
     IdleAnims(0)="FireIdleFidget1"
     IdleAnims(1)="FireIdleFidget2"
     IdleAnims(2)="IdleFidget1"
     bDirectHitWall=True
     bCanPickupInventory=True
     bRollToDesired=True
     GroundSpeed=60.000000
     AirSpeed=120.000000
     ControllerClass=None
     BaseMovementRate=100.000000
     MovementAnims(0)="Walk"
     MovementAnims(1)="WalkBack"
     TurnLeftAnim="TurnLeft"
     TurnRightAnim="TurnRight"
     Physics=PHYS_Falling
     Mesh=SkeletalMesh'HPCharacters.Draconisfors'
     PrePivot=(Z=-27.000000)
     CollisionRadius=30.000000
     CollisionHeight=23.000000
     RotationRate=(Pitch=80000,Yaw=48000,Roll=12000)
}
