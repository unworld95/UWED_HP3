//================================================================================
// KWACTION_WaitForSay.
//================================================================================

class KWACTION_WaitForSay extends KWLatentScriptedAction;

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
     ActionString="WaitForSay "
}
