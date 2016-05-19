//================================================================================
// KWAction_SetIdle.
//================================================================================

class KWAction_SetIdle extends KWScriptedAction;

var name AnimName;
var bool bPlayNow;

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
     bPlayNow=True
     ActionString="SetIdle"
}
