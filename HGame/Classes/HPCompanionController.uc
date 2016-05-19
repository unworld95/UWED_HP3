Class HPCompanionController extends HPAIController;

var int WhichCompanionCastLoc;
var float fTimeInMoveToCastLocState;
var float fAtCastLocTimer;
var bool bLeadCharCasted;
var Actor aCompanionCastTarget;
var float TimeOfLastCompanionCast;
var float LastLeadCharCheckTime;
var baseSpell LastCastedCompanionSpell;
var Vector vOffsetToStandWhileCast;
var float BeanCheckTimer;
var Actor aTargetBean;
var() float fPickupBeanDistance;
var() float fPickupBeanDistanceMult;

defaultproperties
{
}
