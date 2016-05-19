//================================================================================
// BaseCam.
//================================================================================

class BaseCam extends KWPawn
  Config(User);

struct Line
{
  var Vector Start;
  var Vector End;
};

enum ECamMode {
  CM_Startup,
  CM_Idle,
  CM_Transition,
  CM_Standard,
  CM_Quidditch,
  CM_FlyingCar,
  CM_Dueling,
  CM_CutScene,
  CM_Boss,
  CM_Follow,
  CM_Delete,
  CM_Playback,
  CM_Free,
  CM_MenuCam
};
  
const TWO_PI= 6.283185307179586476925286766559;
const MAX_ROLL_DIFF= 16000;
const MAX_YAW_DIFF= 30000;
const BASE_EXTENT_FOR_COLLISION_TRACE= 100.0;
const MIN_DISTANCE_FROM_TARGET= 30.0;
const DISTANCE_SCALAR_MIN= 0.15;
const PITCH_MOVING_IN_SPREAD= 32768.0f;
const PITCH_MOVING_IN_THRESHOLD= 0.0f;
const USE_DEBUG_MODE= false;
const NUM_USER_SETTINGS= 4;
var PlayerController Player;
var Actor savedOwnerOfTargetActor;
var int numOfFans;
var float fMouseDeltaX;
var float fMouseDeltaY;
var ECamMode CameraMode;
var ECamMode CameraModeTransition;
var bool bSyncRotationWithTarget;
var bool bSyncPositionWithTarget;
var float fCameraRollModifier;
var bool bDoWorldCollisionCheck;
var bool bIgnoreTarget;
var BaseCamTarget CamTarget;
var Vector vForward;
var Rotator rRotationStep;
var Rotator rDestRotation;
var Vector vDestPosition;
var Rotator rCurrRotation;
var Vector vCurrPosition;
var float fDestLookAtDistance;
var float fDesiredLookAtDistance;
var float fCurrLookAtDistance;
var float fDestLookAtHeight;
var float fCurrLookAtHeight;
var float fMoveBackTightness;
var CamSettings CurrentSet;
var Rotator rBossRotationOffset;
var Rotator rExtraRotation;
var CamSettings CamSetStandard;
var CamSettings CamSetTransition;
var CamSettings CamSetQuidditch;
var CamSettings CamSetFlyingCar;
var CamSettings CamSetCutScene;
var CamSettings CamSetDueling;
var CamSettings CamSetFree;
var CamSettings CamSetBoss;
var CamSettings CamSetFollow;
var CamSettings UserSettings[4];
var Rotator rViewConeRot;
var config bool bUseViewCone;
var Rotator rSavedRotation;
var Vector vSavedPosition;
var float fPitchMovingInThreshold;
var float fPitchMovingInSpread;
var float fDistanceScalar;
var float fDistanceScalarMin;
var float DESIRED_DIST_FROM_WALL;
var() bool bHideTargetActorIfInside;
var() int MaxBossAimRot;
var ECamMode LastCamMode;
var string cue;
var bool bInsideSomething;
var bool bDebug;
var bool bTransitioning;
var float fTimeForTransfer;
var float fTimeSinceTransfer;
var Vector vOrigPos;
var Rotator rOrigRot;
var bool bRecord;
var float fSampleRate;
var(recording) float fDefaultSampleRate;
var float fTimeSinceLastSample;
var string currentSession;
var int currentIndex;
var int MainIndex;
var Sample LastSample;
var Sample NextSample;
var array<Sample> sampleArray;
var float MaxShakeRoll;
var float ShakeRollTime;
var float ShakeRollRate;
var Vector ShakeOffset;
var Vector ShakeOffsetTime;
var Vector MaxShakeOffset;
var Vector ShakeOffsetRate;
var float SimpleShakeTotalTime;
var float SimpleShakeTime;
var float SimpleShakeMag;
var float SimpleShakeDecayTime;
var Rotator ShakeRotOffset;
var float fTrainRoll;
var float fTrainRollVel;
var float fTrainOverallMag;
var bool bDoTrainShake;
var array<Line> debugLines;
var float LastTime;
var float ROT_TO_RAD;
var String Label;
var(Editing)	bool	bPauseWithSpecial;

auto state StateStartup
{
}

state StateIdle
{
}

event BaseChanged ()
{
}

state StateStandardCam
{
}


state StateTransition
{
}

state StateQuidditchCam
{
}

state StateFlyingCarCam
{
}

state StateDuelingCam
{
}

state StateCutSceneCam
{
}

state StateFreeCam
{
}

state StateMenuCam
{
}

state StateDeleteCam
{
}

state StatePlaybackCam
{
}

state StateFollowCam
{ 
}

defaultproperties
{
     numOfFans=4
     bSyncPositionWithTarget=True
     bDoWorldCollisionCheck=True
     fMoveBackTightness=4.000000
     CamSetQuidditch=(vLookAtOffset=(X=0.050000),fLookAtDistance=65.000000,fRotTightness=60406396428684176000000000000.000000,fMaxMouseDeltaX=0.050000,fMaxMouseDeltaY=7.000000,fMinPitch=7.000000,fMaxPitch=7.000000)
     CamSetFlyingCar=(vLookAtOffset=(X=0.050000),fLookAtDistance=175.000000,fRotTightness=60591362079085214000000000000.000000,fMaxMouseDeltaX=0.050000,fMaxMouseDeltaY=4.000000,fMinPitch=4.000000,fMaxPitch=4.000000)
     CamSetDueling=(vLookAtOffset=(X=0.050000),fLookAtDistance=45.000000,fRotTightness=60436619574174542000000000000.000000,fMoveSpeed=4.000000,fMaxMouseDeltaX=0.050000,fMaxMouseDeltaY=3.500000,fMinPitch=3.500000,fMaxPitch=3.500000)
     rViewConeRot=(Pitch=2000,Yaw=7000)
     bUseViewCone=True
     fDistanceScalar=1.000000
     DESIRED_DIST_FROM_WALL=15.000000
     bHideTargetActorIfInside=True
     fTimeForTransfer=1.000000
     fDefaultSampleRate=60.000000
     fTrainOverallMag=0.200000
     Label="baseCam"
     bAllowPitch=True
     AirSpeed=500.000000
     bHidden=True
     CollisionRadius=0.000000
     CollisionHeight=0.000000
     bCollideActors=False
     bCollideWorld=False
     bBlockActors=False
     bBlockPlayers=False
     bRotateToDesired=False
}
