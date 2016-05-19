//================================================================================
// KWACTION_TakeOver.
//================================================================================

class KWACTION_TakeOver extends KWLatentScriptedAction;

var(Action) name pawntag;
var(Action) float fTakeOverRadius;
var(Action) bool bInterruptOtherScript;
var(Action) bool bForceFinishOtherScript;
var(Action) float TryAgainAfterXSeconds;
var KWCutController SavedController;

function bool InitActionFor (KWCutController C)
{
  return True;
}

function bool CompleteWhenTriggered ()
{
  return False;
}

function bool CompleteWhenTimer ()
{
  return  True;
}

function OnTimer ()
{
}

function string GetActionString ()
{
	return "";
}

defaultproperties
{
     fTakeOverRadius=1000.000000
     TryAgainAfterXSeconds=1.000000
     ActionString="TakeOver"
}
