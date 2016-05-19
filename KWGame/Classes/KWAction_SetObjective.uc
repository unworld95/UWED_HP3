//================================================================================
// KWAction_SetObjective.
//================================================================================

class KWAction_SetObjective extends KWScriptedAction;

var(Action) string DialogTag;

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
     ActionString="SetObjective"
}
