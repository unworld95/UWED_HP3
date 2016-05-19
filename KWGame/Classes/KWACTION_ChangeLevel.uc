//================================================================================
// KWACTION_ChangeLevel.
//================================================================================

class KWACTION_ChangeLevel extends KWScriptedAction;

var(Action) string URL;
var(Action) bool bShowLoadingMessage;

function bool InitActionFor (KWCutController C)
{
  return False;
}

function SerializeFrom (string args)
{
}

function string GetActionString ()
{
  return ActionString;
}

defaultproperties
{
     bShowLoadingMessage=True
     ActionString="Change level"
}
