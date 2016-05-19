//================================================================================
// KWACTION_SetFocus.
//================================================================================

class KWACTION_SetFocus extends KWScriptedAction;

var(Action) Actor Focus;
var string ActorTag;

function bool InitActionFor (KWCutController C)
{
  return False;
}

function SerializeFrom (string args)
{
}

defaultproperties
{
     ActionString="SetFocus"
}
