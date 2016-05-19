//================================================================================
// KWAction_IfRandomPct.
//================================================================================

class KWAction_IfRandomPct extends KWScriptedAction;

var(Action) float Probability;

function ProceedToNextAction (KWCutController C)
{
}

function bool StartsSection ()
{
  return True;
}

defaultproperties
{
     ActionString="If Random Pct"
}
