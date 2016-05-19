//================================================================================
// KWAction_Shake.
//================================================================================

class KWAction_Shake extends KWScriptedAction;

var float magnitude;
var float Time;
var float decay;

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
     magnitude=100.000000
     Time=0.500000
     ActionString="Shake"
}
