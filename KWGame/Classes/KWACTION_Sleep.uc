//================================================================================
// KWACTION_Sleep.
//================================================================================

class KWACTION_Sleep extends KWLatentScriptedAction;

var(Action) float PauseTime;

function bool InitActionFor (KWCutController C)
{
  return True;
}

function ForceFinish (KWCutController C)
{
}

function OnTimer ()
{
  bFinished = True;
}

function bool CompleteWhenTriggered ()
{
  return True;
}

function bool CompleteWhenTimer ()
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
     ActionString="Sleep "
}
