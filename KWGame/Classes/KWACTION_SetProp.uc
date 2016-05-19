//================================================================================
// KWACTION_SetProp.
//================================================================================

class KWACTION_SetProp extends KWScriptedAction;

var(Action) string PropName;
var(Action) string PropValue;
var(Action) name ActorTag;
var Actor TargetActor;

function bool InitActionFor (KWCutController C)
{
  return False;
}

function SerializeFrom (string args)
{
}

function string GetActionString ()
{
  return "";
}

defaultproperties
{
     ActionString="SetProp"
}
