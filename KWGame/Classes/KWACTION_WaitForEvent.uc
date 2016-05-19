//================================================================================
// KWACTION_WaitForEvent.
//================================================================================

class KWACTION_WaitForEvent extends KWLatentScriptedAction;

var(Action) name ExternalEvent;
var TriggeredCondition t;

function bool InitActionFor (KWCutController C)
{
  return True;
}

function SerializeFrom (string args)
{
}

function OnTrigger (Actor Other)
{
}

function string GetActionString ()
{
  return "";
}

defaultproperties
{
     ActionString="WaitForEvent "
}
