//================================================================================
// KWAction_SetRunAnims.
//================================================================================

class KWAction_SetRunAnims extends KWScriptedAction;

var name TempName;
var name NewRunAnims[4];
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
     ActionString="SetRunAnims"
}
