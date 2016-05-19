//================================================================================
// KWAction_LookAt.
//================================================================================

class KWAction_LookAt extends KWScriptedAction;

var name TargetTag;
var bool bTrack;

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
     ActionString="LookAt"
}
