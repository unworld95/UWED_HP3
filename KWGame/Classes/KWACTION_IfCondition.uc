//================================================================================
// KWACTION_IfCondition.
//================================================================================

class KWACTION_IfCondition extends KWScriptedAction;

var(Action) name TriggeredConditionTag;
var TriggeredCondition t;

function ProceedToNextAction (KWCutController C)
{
}

function bool StartsSection ()
{
  return True;
}

function string GetActionString ()
{
  return "";
}

defaultproperties
{
     ActionString="If condition"
}
