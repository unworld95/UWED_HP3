//================================================================================
// KWACTION_UnLockCamTo.
//================================================================================

class KWACTION_UnLockCamTo extends KWACTION_LockCamTo;

function bool InitActionFor (KWCutController C)
{
  return False;
}

defaultproperties
{
     bLock=False
     ActionString="UnLockCamTo"
}
