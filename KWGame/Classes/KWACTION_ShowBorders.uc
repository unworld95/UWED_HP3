//================================================================================
// KWACTION_ShowBorders.
//================================================================================

class KWACTION_ShowBorders extends KWScriptedAction;

var(Action) string CueName;

function bool InitActionFor (KWCutController C)
{
  return False;
}

function string GetActionString ()
{
  return "";
}

defaultproperties
{
     ActionString="ShowBorders "
}
