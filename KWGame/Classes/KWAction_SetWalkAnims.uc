//================================================================================
// KWAction_SetWalkAnims.
//================================================================================

class KWAction_SetWalkAnims extends KWScriptedAction;

var name TempName;
var name NewWalkAnims[4];
var bool bPersistent;

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
     ActionString="SetWalkAnims"
}
