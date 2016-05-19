//================================================================================
// KWAction_SetGameState.
//================================================================================

class KWAction_SetGameState extends KWScriptedAction;

var(Action) string NewState;

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
     ActionString="SetGameState"
}
