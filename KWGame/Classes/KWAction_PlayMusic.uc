//================================================================================
// KWAction_PlayMusic.
//================================================================================

class KWAction_PlayMusic extends KWScriptedAction;

var(Action) string Song;
var(Action) float TransitionTime;
var(Action) bool Loop;
var(Action) bool Stab;

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
     Loop=True
     ActionString="PlayMusic"
}
