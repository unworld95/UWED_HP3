//================================================================================
// KWACTION_FlyTo.
//================================================================================

class KWACTION_FlyTo extends KWLatentScriptedAction;

var(Action) name DestinationTag;
var Actor UltimateDest;
var(Action) enumMoveType MoveType;
var(Action) float MoveTime;
var(Action) Vector vDestOffset;
var(Action) bool bTurnWithChar;
var bool bRelativeToChar;
var(Action) bool bStayLockedToActor;
var float Speed;
var bool bCalcTimeFromSpeed;
var(Action) bool bNonBlocking;
var(Action) name SplinePointTag;
var(Action) Rotator RotStep;

function bool InitActionFor (KWCutController C)
{
  return True;
}

function OnTimer ()
{
}

function ForceFinish (KWCutController C)
{
}

function bool CompleteWhenTimer ()
{
  return True;
}

function bool CompleteWhenTriggered ()
{
  return False;
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
     bTurnWithChar=True
     bRelativeToChar=True
     bStayLockedToActor=True
     ActionString="FlyTo"
     bValidForTrigger=False
}
