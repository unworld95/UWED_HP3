//================================================================================
// KWAction_ShowWeapon.
//================================================================================

class KWAction_ShowWeapon extends KWScriptedAction;

var bool bShow;

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
     bShow=True
     ActionString="ShowWeapon"
}
