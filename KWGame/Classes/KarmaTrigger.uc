//================================================================================
// KarmaTrigger.
//================================================================================

class KarmaTrigger extends Trigger;

var() float Force;
var() float KarmaLife;
var() float FadeOutLife;
var float fCurrAwakeTime;
var float fCurrFadeOutTime;
var bool bDone;
var bool bDoActionWhenTriggered;

function Activate (Actor Other, Pawn Instigator)
{
}

function Tick (float deltat)
{
}

defaultproperties
{
     Force=1000000.000000
     bDoActionWhenTriggered=True
     bTriggerOnceOnly=True
}
