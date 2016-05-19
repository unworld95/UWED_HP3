//================================================================================
// KWACTION_FollowSpline.
//================================================================================

class KWACTION_FollowSpline extends KWLatentScriptedAction;

var(Action) name SplineName;
var(Action) float Speed;
var(Action) float Accel;
var(Action) name StartPointTag;
var(Action) name DestPointTag;
var(Action) enumMoveType MoveType;
var(Action) bool bAlignAlongSpline;
var(Action) float Time;
var(Action) Rotator EndRotation;

function bool InitActionFor (KWCutController C)
{
  return True;
}

function ForceFinish (KWCutController C)
{
}

function ActionFinished (KWCutController C)
{
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
  return false;
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
     ActionString="FollowSpline "
     bValidForTrigger=False
}
