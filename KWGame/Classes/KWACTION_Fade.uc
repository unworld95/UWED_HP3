//================================================================================
// KWACTION_Fade.
//================================================================================

class KWACTION_Fade extends KWScriptedAction;

var(Action) float FadeTime;
var(Action) Vector TargetFlash;
var(Action) byte R;
var(Action) byte G;
var(Action) byte B;
var(Action) byte A;
var(Action) bool bFlash;
var(Action) enumMoveType MoveType;

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
     FadeTime=1.000000
     A=255
     ActionString="fade"
     bValidForTrigger=False
}
