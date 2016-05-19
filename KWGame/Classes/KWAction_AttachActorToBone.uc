//================================================================================
// KWAction_AttachActorToBone.
//================================================================================

class KWAction_AttachActorToBone extends KWScriptedAction;

var(Action) name ActorTag;
var(Action) name BoneName;
var Actor AttachActor;
var Rotator boneOffsetRot;
var Vector boneOffsetLoc;

function bool InitActionFor (KWCutController C)
{
  return False;
}

function SerializeFrom (string args)
{
}

defaultproperties
{
     ActionString="AttachActorToBone"
}
