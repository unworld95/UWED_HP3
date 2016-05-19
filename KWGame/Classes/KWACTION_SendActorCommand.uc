//================================================================================
// KWACTION_SendActorCommand.
//================================================================================

class KWACTION_SendActorCommand extends KWScriptedAction;

var(Action) name TagOfDestActor;
var string Command;

function bool InitActionFor (KWCutController C)
{
  return False;
}

function SerializeFrom (string args)
{
}

defaultproperties
{
     ActionString="SendActorCommand"
}
