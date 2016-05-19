//================================================================================
// HeadLookManager.
//================================================================================

class HeadLookManager extends Actor;

const HEADLOOK_ANIMCHANNEL= 23;
const TurnRate= 3.0;
const MaxHeadTiltPitch= 5000;
const MinHeadTiltPitch= -5000;
const MaxNeckTurnYaw= 10000;
const MinNeckTurnYaw= -10000;

enum EHeadLookMode {
  HL_NotLooking,
  HL_ScanEnvironment,
  HL_LockOnActor
};

var bool bEnabled;
var KWPawn OwnerPawn;
var Actor LookTarget;
var bool bTurnToTrack;
var bool bIgnoreWhenTrackLost;
var name CurrentState;
var Rotator LastHeadRot;


function EnableHeadLook (bool bEnableIn)
{
}

function bool IsHeadLookEnabled ()
{
  return bEnabled;
}

function SetParameters (bool bTurnToTrackIn, bool bIgnoreWhenTrackLostIn)
{
}

function ScanEnvironment ()
{
}

function LockOnActor (Actor LockTargetIn)
{
  return;
}

function StopLooking ()
{
}

auto state NotLooking
{
}

state ScanningEnvironment
{
}

state LockedOnPawn
{
}

state StoppingLooking
{  
}

defaultproperties
{
     CurrentState="NotLooking"
     bHidden=True
}
