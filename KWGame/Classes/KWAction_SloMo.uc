//================================================================================
// KWAction_SloMo.
//================================================================================

class KWAction_SloMo extends KWScriptedAction;

var float Value;

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
     Value=1.000000
     ActionString="SloMo"
}
