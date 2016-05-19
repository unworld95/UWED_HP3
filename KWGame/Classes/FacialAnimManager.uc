//================================================================================
// FacialAnimManager.
//================================================================================

class FacialAnimManager extends Actor;

const FACIAL_ANIMCHANNEL= 24;
  
var transient KWPawn OwnerPawn;
var transient float HoldTime;
var transient name AnimName;

function PlayFacialAnim (string AnimNameString, float HoldTimeIn, optional float tweenTime)
{
}

state WaitingToDie
{ 
}

state DieDieDie
{
}

defaultproperties
{
     bHidden=True
}
