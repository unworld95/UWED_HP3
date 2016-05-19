//================================================================================
// KWACTION_MoveTo.
//================================================================================

class KWACTION_MoveTo extends KWLatentScriptedAction;

var(Action) name DestinationTag;
var(Action) bool bUseSelfAsDest;
var(Action) bool bMoveDirect;
var Actor MoveTarget;


function string GetActionString ()
{
  return "";
}

function SerializeFrom (string args)
{
}

defaultproperties
{
     ActionString="MoveTo "
     bValidForTrigger=False
}
