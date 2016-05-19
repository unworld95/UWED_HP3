Class ControlCreature extends Creatures;

var() name EventToSendOnStartCreaturePossess;
var() name EventToSendOnEndCreaturePossess;
var(CameraSettings) float fTimeForCameraSwitch;
var HPCharacter aSavedActor;

defaultproperties
{
     fTimeForCameraSwitch=1.000000
}
