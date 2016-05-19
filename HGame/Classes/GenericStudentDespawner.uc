Class GenericStudentDespawner extends MessageTrigger;

var array<Actor> ActorsPendingDeath;
var float LastDestroyCheck;
var() bool bWaitUntilOutOfView;
const DESTOY_CHECK_INTERVAL= 0.1;

defaultproperties
{
     bWaitUntilOutOfView=True
     nOnEvent="Destroy"
     bDoItToTouchingActor=True
     TriggerType=TT_ClassProximity
     ClassProximityType=Class'HGame.HPGenericStudent'
}
