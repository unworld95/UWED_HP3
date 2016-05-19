//================================================================================
// KWACTION_Trigger.
//================================================================================

class KWACTION_Trigger extends KWScriptedAction;

var(Action) name Event;

function bool InitActionFor (KWCutController C)
{
  return False;
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
     ActionString="Trigger"
}
