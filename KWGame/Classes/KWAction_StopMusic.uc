//================================================================================
// KWAction_StopMusic.
//================================================================================

class KWAction_StopMusic extends KWScriptedAction;

var(Action) float TransitionTime;

function bool InitActionFor (KWCutController C)
{
  return False;
}

function SerializeFrom (string args)
{
}

defaultproperties
{
     TransitionTime=3.000000
     ActionString="StopMusic"
}
