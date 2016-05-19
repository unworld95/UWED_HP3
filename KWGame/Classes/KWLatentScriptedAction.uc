//================================================================================
// KWLatentScriptedAction.
//================================================================================

class KWLatentScriptedAction extends KWScriptedAction;

var string PendingCueName;

function Init (KWCutController C)
{
}

function DisplayDebug (Canvas Canvas, out float YL, out float YPos)
{
}

function bool InitActionFor (KWCutController C)
{
  return True;
}

function bool CompleteWhenTriggered ()
{
  return False;
}

function bool CompleteOnAnim (int Channel)
{
  return False;
}

function bool CompleteWhenTimer ()
{
  return False;
}

function bool WaitForPlayer ()
{
  return False;
}

function bool CompleteWhenCued ()
{
  return False;
}

function bool TickedAction ()
{
  return False;
}

function bool StillTicking (KWCutController C, float DeltaTime)
{
  return False;
}

function bool MoveToGoal ()
{
  return False;
}

function bool TurnToGoal ()
{
  return False;
}

function Actor GetMoveTargetFor (KWCutController C)
{
  return None;
}

function float GetDistance ()
{
  return 0.0;
}

function ActionFinished (KWCutController C)
{
}

defaultproperties
{
}
