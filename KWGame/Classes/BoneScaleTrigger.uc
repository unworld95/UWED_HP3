//================================================================================
// BoneScaleTrigger.
//================================================================================

class BoneScaleTrigger extends Trigger;

var() float NewScale;
var() name BoneName;
var() int slot;
var() bool bResetScale;
var bool bDoActionWhenTriggered;

function Activate (Actor Other, Pawn Instigator)
{
}

defaultproperties
{
     bDoActionWhenTriggered=True
}
