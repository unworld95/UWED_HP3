//================================================================================
// KWACTION_PlaySound.
//================================================================================

class KWACTION_PlaySound extends KWScriptedAction;

var(Action) Sound Sound;
var(Action) float Volume;
var(Action) float Pitch;
var(Action) bool bAttenuate;
var(Action) bool bNo3D;

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
     Volume=1.000000
     Pitch=1.000000
     bAttenuate=True
     ActionString="PlaySound "
}
