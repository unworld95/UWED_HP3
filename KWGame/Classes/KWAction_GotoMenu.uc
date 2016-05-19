//================================================================================
// KWAction_GotoMenu.
//================================================================================

class KWAction_GotoMenu extends KWScriptedAction;

var(Action) string MenuName;

function bool InitActionFor (KWCutController C)
{
  return False;
}

function SerializeFrom (string args)
{
}

defaultproperties
{
}
