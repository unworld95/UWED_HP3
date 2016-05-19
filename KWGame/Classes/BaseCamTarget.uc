//================================================================================
// BaseCamTarget.
//================================================================================

class BaseCamTarget extends KWPawn Config(User);

var PlayerController Player;
var Actor aAttachedTo;
var Vector vDestLocation;
var Vector VOffset;
var Rotator rOffset;
var bool bRelative;
var BaseCam cam;
var bool bDebug;

state StateCutScene
{
  
}

defaultproperties
{
     bRelative=True
     AirSpeed=100.000000
     bHidden=True
     Tag="Target"
     bCollideActors=False
     bCollideWorld=False
}
