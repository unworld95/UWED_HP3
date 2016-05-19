//================================================================================
// KWACTION_FadeActor.
//================================================================================

class KWACTION_FadeActor extends KWScriptedAction;

var(Action) name ActorTag;
var(Action) float FadeTime;
var(Action) byte R;
var(Action) byte G;
var(Action) byte B;
var(Action) byte A;
var(Action) bool bDestroy;
var(Action) enumMoveType MoveType;
var Actor ActorToFade;

function bool InitActionFor (KWCutController C)
{
  return False;
}

function ForceFinish (KWCutController C)
{
}

function bool SafeToDestroy (Actor A)
{
  return True;
}

function string GetActionString ()
{
  return "";
}

function SerializeFrom (string args)
{
}

defaultproperties
{
     FadeTime=1.000000
     R=128
     G=128
     B=128
     ActionString="FadeActor"
     bValidForTrigger=False
}
