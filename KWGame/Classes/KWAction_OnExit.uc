//================================================================================
// KWAction_OnExit.
//================================================================================

class KWAction_OnExit extends KWScriptedAction;

var string OnExitCommand;

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
     ActionString="OnExit"
}
