//================================================================================
// KWACTION_WaitForFlyTo.
//================================================================================

class KWACTION_WaitForFlyTo extends KWLatentScriptedAction;

function bool InitActionFor (KWCutController C)
{
  return True;
}

function bool TickedAction ()
{
  return True;
}

function OnTick (float DeltaTime)
{
}

function bool StillTicking (KWCutController C, float DeltaTime)
{
	return True;
}

function string GetActionString ()
{
  return "";
}

defaultproperties
{
     ActionString="WaitForFlyTo"
}
