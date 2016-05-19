//================================================================================
// RoundRobin.
//================================================================================

class RoundRobin extends Triggers
  NotPlaceable;

var() name OutEvents[16];
var() bool bLoop;
var int i;

function Trigger (Actor Other, Pawn EventInstigator)
{
}

defaultproperties
{
     bObsolete=True
}
