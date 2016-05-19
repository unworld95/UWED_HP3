//================================================================================
// KWAction_DetachActorFromBone.
//================================================================================

class KWAction_DetachActorFromBone extends KWAction_AttachActorToBone;

function bool InitActionFor (KWCutController C)
{
  return False;
}

function SerializeFrom (string args)
{
}

defaultproperties
{
     ActionString="DetachActorFromBone"
}
