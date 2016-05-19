//================================================================================
// KWACTION_FOV.
//================================================================================

class KWACTION_FOV extends KWScriptedAction;

var(Action) float ChangeTime;
var(Action) float NewFOV;
var(Action) enumMoveType MoveType;
var() bool bResetFOV;

function bool InitActionFor (KWCutController C)
{
  return False;
}

function ForceFinish (KWCutController C)
{
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
     NewFOV=85.000000
     bResetFOV=True
     ActionString="FOV"
     bValidForTrigger=False
}
