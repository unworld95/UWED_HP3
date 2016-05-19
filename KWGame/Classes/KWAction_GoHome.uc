//================================================================================
// KWAction_GoHome.
//================================================================================

class KWAction_GoHome extends KWLatentScriptedAction;

var() name homeActorTag;
var Actor homeActor;
var bool bTransition;
var float fTimeOutTime;
var float fTimeSoFar;
var() float fTimeToTrans;
var() bool bNoBlock;

function bool InitActionFor (KWCutController C)
{
  return True;
}

function OnTick (float DeltaTime)
{
}

function ForceFinish (KWCutController C)
{
}

function bool TickedAction ()
{
  return True;
}

function bool StillTicking (KWCutController C, float DeltaTime)
{
  return True;
}

function string GetActionString ()
{
  return "";
}

function SerializeFrom (string args)
{
}

defaultproperties
{
     fTimeOutTime=5.000000
     fTimeToTrans=1.000000
     ActionString="GoHome"
}
