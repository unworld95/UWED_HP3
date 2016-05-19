//================================================================================
// KWAction_Emotion.
//================================================================================

class KWAction_Emotion extends KWScriptedAction;

var string EmotionName;
var int Duration;
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
     Duration=3
     ActionString="Emotion"
}
