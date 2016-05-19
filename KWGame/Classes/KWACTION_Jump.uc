//================================================================================
// KWACTION_Jump.
//================================================================================

class KWACTION_Jump extends KWScriptedAction;

var(Action) name DestinationTag;
var(Action) bool bJumpForward;

function bool InitActionFor (KWCutController C)
{
  return False;
}

function SerializeFrom (string args)
{
}

defaultproperties
{
     bJumpForward=True
     ActionString="Jump "
}
