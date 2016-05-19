//================================================================================
// KWACTION_Debug.
//================================================================================

class KWACTION_Debug extends KWScriptedAction;

var(Action) string DebugString;

function bool InitActionFor (KWCutController C)
{
  return False;
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
     ActionString="Debug"
}
