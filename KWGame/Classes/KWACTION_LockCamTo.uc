//================================================================================
// KWACTION_LockCamTo.
//================================================================================

class KWACTION_LockCamTo extends KWScriptedAction;

var bool bLock;
var Rotator LockCone;
var Actor LockActor;
var name ActorTag;
var float fSpeed;
var float fTightness;

function bool InitActionFor (KWCutController C)
{
  return False;
}

function string GetActionString ()
{
  return "";
}

function SerializeFrom (string args)
{
}

defaultproperties
{
     bLock=True
     LockCone=(Pitch=2000,Yaw=2000)
     fSpeed=7.000000
     fTightness=10.000000
     ActionString="LockCamTo"
     bValidForTrigger=False
}
