//================================================================================
// KWAction_HideHUDItem.
//================================================================================

class KWAction_HideHUDItem extends KWScriptedAction;

var(Action) string ActorTag;

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
