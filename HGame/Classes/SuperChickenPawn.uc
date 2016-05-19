Class SuperChickenPawn extends AviforPawn;

var() bool bUseGetTired;
var() bool bUseFlapZAccel;
var() bool bScaleFlapSpeedByHeight;
var() bool bScaleZFlapByPitch;
var float fMinTimeBetweenFlaps;
var float fAdjustedMinTimeBetweenFlaps;
var float fAdjustedFlapAnimRate;
var() float TerminalVelocity;
var Sound WingFlapSound;
var Sound LandingSound;
var() bool bDoSwitchOnAnyTrigger;

defaultproperties
{
     fMinTimeBetweenFlaps=0.010000
     TerminalVelocity=3000.000000
     WingFlapSound=Sound'SoundEffects.Creatures.hippogriff_wingflap'
     LandingSound=Sound'SoundEffects.Creatures.hippogriff_land'
     bAllowFall=False
     TwoDFlyAccelRate=1000.000000
     MinFlySpeed2d=500.000000
     NormalFlySpeed2d=800.000000
     BoostFlySpeed2d=950.000000
     fMaxRollByDegrees=10.000000
     InitialFlapZSpeed=500.000000
     GroundMoveBaseAnimRate=300.000000
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
     MotionBones(0)=(StartBone="Body_wing_tip_L",EndBone="Body_x13")
     AnimNotifys(0)=AnimNotify_KWSound'HGame.AviforPawn.AnimNotify_KWSound0'
     AnimNotifys(1)=AnimNotify_KWSound'HGame.AviforPawn.AnimNotify_KWSound1'
     CameraSetStandard=(vLookAtOffset=(X=0.000000,Z=200.000000),fLookAtDistance=500.000000,fRotTightness=10.000000,fRotSpeed=5.000000,fMoveTightness=(X=15.000000,Y=20.000000,Z=15.000000))
     bDoWorldCollisionCheck=False
     GroundRunSpeed=300.000000
     GroundWalkSpeed=200.000000
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
     IdleAnims(0)="Fidget_Look"
     IdleAnims(1)="Fidget_Preen"
     IdleAnims(2)="IdleFidget1"
     GroundSpeed=300.000000
     ConstantAcceleration=(Z=300.000000)
     bPhysicsAnimUpdate=False
     Mesh=SkeletalMesh'HPCharacters.Buckbeak'
     PrePivot=(Z=20.000000)
     TransientSoundVolume=1.000000
     CollisionRadius=80.000000
     CollisionHeight=120.000000
     RotationRate=(Pitch=50000,Yaw=30000,Roll=40000)
}
