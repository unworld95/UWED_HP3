//================================================================================
// KWACTION_WaitForSound.
//================================================================================

class KWACTION_WaitForSound extends KWLatentScriptedAction;

function bool InitActionFor (KWCutController C)
{
  return True;
}

function ForceFinish (KWCutController C)
{
}

function OnTimer ()
{
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

defaultproperties
{
     ActionString="WaitForSound "
}
