//================================================================================
// KWAction_TurnTo.
//================================================================================

class KWAction_TurnTo extends KWLatentScriptedAction;

var(Action) name DestinationTag;
var(Action) bool bFollow;
var Rotator rSavedRotSpeed;
var Rotator rSavedRotAccel;
var float fTimeToTake;
var float fTimeSoFar;
var bool bUsingTime;
var float fRateMag;
var float fRate;
var(Action) bool bUseSelfDirection;
var(Action) Vector vDirectionalOffset;

function bool InitActionFor (KWCutController C)
{
  return True;
}

function ActionFinished (KWCutController C)
{
}

function bool TurnToGoal ()
{
  return True;
}

function bool TickedAction ()
{
  return True;
}

function OnTick (float DeltaTime)
{
}

function bool StillTicking (KWCutController C, float DeltaTime)
{
  return True;
}

function ForceFinish (KWCutController C)
{
}

function Actor GetMoveTargetFor (KWCutController C)
{
  return None;
}

function SerializeFrom (string args)
{
}

function string GetActionString ()
{
  return "";
}

defaultproperties
{
     fRateMag=1.000000
     vDirectionalOffset=(X=1.000000)
     ActionString="TurnTo "
     bValidForTrigger=False
}
