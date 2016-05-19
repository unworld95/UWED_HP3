//================================================================================
// MessageTrigger.
//================================================================================

class MessageTrigger extends Trigger;

var() name nOnEvent;
var() name nUntouchOnEvent;
var() string DestActorLabel;
var() string CutExitCommand;
var() bool bDoItToTouchingActor;
var() bool bAlsoDoNormalTrigger;

defaultproperties
{
     bAlsoDoNormalTrigger=True
}
