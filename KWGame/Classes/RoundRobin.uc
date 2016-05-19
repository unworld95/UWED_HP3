//================================================================================
// RoundRobin.
//================================================================================

class RoundRobin extends Trigger;

var() bool bDebug;
var() name OutEvents[16];
var() bool bLoop;
var int outEventIndex;
var() bool bPersistent;

event SavePersistentData ()
{
}

event RestorePersistentData ()
{
}

defaultproperties
{
     Texture=Texture'KWGame.Rndrobin'
     bCollideActors=False
}
