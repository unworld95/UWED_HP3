//================================================================================
// KWACTION_Say.
//================================================================================

class KWACTION_Say extends KWACTION_PlaySound;

var(Action) string DialogString;
var name VarTempName;
var string ForcedPawnTag;
var bool NoEmote;
var bool bNoSubtitleText;

function bool InitActionFor (KWCutController C)
{
  return true;
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
     bAttenuate=False
     bNo3D=True
     ActionString="Say "
}
