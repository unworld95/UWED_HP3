//================================================================================
// Dispatcher.
//================================================================================

class Dispatcher extends Trigger;

var() name OutEvents[32];
var() float OutDelays[32];
var int outEventIndex;

function Activate (Actor Other, Pawn EventInstigator)
{
}

state Dispatch
{
}

defaultproperties
{
     Texture=Texture'KWGame.S_Dispatcher'
     bCollideActors=False
}
