//================================================================================
// KWACTION_OnEvent.
//================================================================================

class KWACTION_OnEvent extends KWScriptedAction;

var(Action) name EventName;

function bool InitActionFor (KWCutController C)
{
  return False;
}

function SerializeFrom (string args)
{
}

defaultproperties
{
     ActionString="OnEvent"
}
