//================================================================================
// KWACTION_PlayAnim.
//================================================================================

class KWACTION_PlayAnim extends KWScriptedAction;

var(Action) name BaseAnim;
var(Action) float BlendInTime;
var(Action) float BlendOutTime;
var(Action) float AnimRate;
var byte AnimIterations;
var(Action) bool bLoopAnim;
var(Action) bool bHoldLastFrame;
var(Action) bool bChangeIdle;
var(Action) float StartFrame;
var(Action) int Channel;
var bool bChannelChanged;

function bool InitActionFor (KWCutController C)
{
  return False;
}

function SetCurrentAnimationFor (KWCutController C)
{
}

function bool PawnPlayBaseAnim (KWCutController C, bool bFirstPlay)
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
     BlendInTime=0.200000
     BlendOutTime=0.200000
     AnimRate=1.000000
     ActionString="PlayAnim "
     bValidForTrigger=False
}
