//================================================================================
// KWACTION_Cue.
//================================================================================

class KWACTION_Cue extends KWScriptedAction;

var(Action) string CueName;

function bool InitActionFor (KWCutController C)
{
  return False;
}

function string GetActionString ()
{
  return ActionString @ CueName;
}

function SerializeFrom (string args)
{
  CueName = args;
}

defaultproperties
{
     ActionString="Cue "
}
