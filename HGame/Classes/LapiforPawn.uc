Class LapiforPawn extends ControlCreature;

struct cWalkActorAnims
{
  var() name Idle;
  var() name MoveStart;
  var() name MoveLoop;
  var() name MoveBackwards;
  var() name StartJump;
  var() name IdleJump;
  var() name EndJump;
};

var LapiforsStatue aStatue;
var() cWalkActorAnims WalkActorAnims;
var() float WalkAnimRate;
var() float GroundSpeedForwards;
var() float GroundSpeedBackwards;
var() float JumpSpeedXYRunning;
var() float JumpSpeedXYStanding;
var float aForward;
var int AnimLoopCounter;
var() float fTimeToAllowWallJump;
var float fTimeSinceHitWall;
var() int NumWallJumpsAllowed;
var int NumWallJumpsSoFar;
var Vector vLastWallNormal;
var float WalkAnimLeaveGround;
var float WalkAnimLandGround;
var float WalkAnimNumFrames;
var() float ExtraGravity;
var() float AirControlAccel;
var HPHeroController HeroController;
var SpongifyPad HitSpongifyPad;
var bool bDoingSpongifyJump;
var float StartDigTime;
var float DigTime;
var LapiforDigableObject aCurrentDigObject;
var float FastTurnRateTimer;
var() float fTimeToFadeInOut;
var() array<SoundGroup> JumpSounds;
var() array<SoundGroup> LandSounds;
var() array<SoundGroup> FastTurnPeelOutSounds;
var(sounds) array<SoundGroup> PossessedSounds;

defaultproperties
{
     WalkActorAnims=(Idle="Idle",MoveStart="LittleHop",MoveLoop="LoopingHop",MoveBackwards="HopBackwards",StartJump="InAirLoop",IdleJump="InAirLoop",EndJump="Landing")
     WalkAnimRate=1.100000
     GroundSpeedForwards=400.000000
     GroundSpeedBackwards=75.000000
     JumpSpeedXYRunning=300.000000
     JumpSpeedXYStanding=150.000000
     fTimeToAllowWallJump=0.150000
     WalkAnimLeaveGround=4.000000
     WalkAnimLandGround=25.000000
     WalkAnimNumFrames=30.000000
     ExtraGravity=-300.000000
     AirControlAccel=2.000000
     fTimeToFadeInOut=0.500000
     JumpSounds(0)=(Sound=Sound'SoundEffects.Creatures.draconifor_wingflap')
     LandSounds(0)=(Sound=Sound'SoundEffects.Creatures.draconifor_land')
     FastTurnPeelOutSounds(0)=(Sound=Sound'SoundEffects.Creatures.lapifor_dig',Volume=0.400000,Pitch=0.700000)
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound0
         Name="AnimNotify_KWSound0"
     End Object
     AnimNotifys(0)=AnimNotify_KWSound'HGame.LapiforPawn.AnimNotify_KWSound0'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound1
         Name="AnimNotify_KWSound1"
     End Object
     AnimNotifys(1)=AnimNotify_KWSound'HGame.LapiforPawn.AnimNotify_KWSound1'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound2
         Name="AnimNotify_KWSound2"
     End Object
     AnimNotifys(2)=AnimNotify_KWSound'HGame.LapiforPawn.AnimNotify_KWSound2'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound3
         Name="AnimNotify_KWSound3"
     End Object
     AnimNotifys(3)=AnimNotify_KWSound'HGame.LapiforPawn.AnimNotify_KWSound3'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound5
         Name="AnimNotify_KWSound5"
     End Object
     AnimNotifys(4)=AnimNotify_KWSound'HGame.LapiforPawn.AnimNotify_KWSound5'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound6
         Name="AnimNotify_KWSound6"
     End Object
     AnimNotifys(5)=AnimNotify_KWSound'HGame.LapiforPawn.AnimNotify_KWSound6'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound7
         Name="AnimNotify_KWSound7"
     End Object
     AnimNotifys(6)=AnimNotify_KWSound'HGame.LapiforPawn.AnimNotify_KWSound7'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound8
         Name="AnimNotify_KWSound8"
     End Object
     AnimNotifys(7)=AnimNotify_KWSound'HGame.LapiforPawn.AnimNotify_KWSound8'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound9
         Name="AnimNotify_KWSound9"
     End Object
     AnimNotifys(8)=AnimNotify_KWSound'HGame.LapiforPawn.AnimNotify_KWSound9'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound10
         Name="AnimNotify_KWSound10"
     End Object
     AnimNotifys(9)=AnimNotify_KWSound'HGame.LapiforPawn.AnimNotify_KWSound10'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound11
         Name="AnimNotify_KWSound11"
     End Object
     AnimNotifys(10)=AnimNotify_KWSound'HGame.LapiforPawn.AnimNotify_KWSound11'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound12
         Name="AnimNotify_KWSound12"
     End Object
     AnimNotifys(11)=AnimNotify_KWSound'HGame.LapiforPawn.AnimNotify_KWSound12'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound13
         Name="AnimNotify_KWSound13"
     End Object
     AnimNotifys(12)=AnimNotify_KWSound'HGame.LapiforPawn.AnimNotify_KWSound13'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound14
         Name="AnimNotify_KWSound14"
     End Object
     AnimNotifys(13)=AnimNotify_KWSound'HGame.LapiforPawn.AnimNotify_KWSound14'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound15
         Name="AnimNotify_KWSound15"
     End Object
     AnimNotifys(14)=AnimNotify_KWSound'HGame.LapiforPawn.AnimNotify_KWSound15'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound16
         Name="AnimNotify_KWSound16"
     End Object
     AnimNotifys(15)=AnimNotify_KWSound'HGame.LapiforPawn.AnimNotify_KWSound16'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound17
         Name="AnimNotify_KWSound17"
     End Object
     AnimNotifys(16)=AnimNotify_KWSound'HGame.LapiforPawn.AnimNotify_KWSound17'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound18
         Name="AnimNotify_KWSound18"
     End Object
     AnimNotifys(17)=AnimNotify_KWSound'HGame.LapiforPawn.AnimNotify_KWSound18'
     vulnerableToClass=Class'HGame.LapiforsSpell'
     CameraSetStandard=(vLookAtOffset=(X=0.000000,Z=35.000000),fLookAtDistance=200.000000,fRotTightness=6.000000,fRotSpeed=6.000000,fMoveTightness=(X=7.000000,Y=10.000000,Z=7.000000),fMaxMouseDeltaX=20000.000000,fMaxMouseDeltaY=10000.000000,fMinPitch=-14000.000000,fMaxPitch=14000.000000)
     GroundRunSpeed=300.000000
     GroundWalkSpeed=100.000000
     IdleAnims(0)="Fidget"
     fJumpHeight=96.000000
     fJumpDist=512.000000
     bDirectHitWall=True
     bCanPickupInventory=True
     AccelRate=2000.000000
     JumpZ=425.000000
     bPhysicsAnimUpdate=False
     BaseMovementRate=150.000000
     TurnLeftAnim="TurnLeft"
     TurnRightAnim="TurnRight"
     BlendChangeTime=0.200000
     MovementBlendStartTime=0.200000
     Physics=PHYS_Falling
     Mesh=SkeletalMesh'HPCharacters.LapiforsRabbit'
     DrawScale=2.000000
     PrePivot=(Z=-20.000000)
     CollisionRadius=10.000000
     CollisionHeight=15.000000
     RotationRate=(Yaw=80000,Roll=8000)
}
