//================================================================================
// PopupTrigger.
//================================================================================

class PopupTrigger extends Trigger;

var(Popup) string dialogId;
var(Popup) bool bPlayDialogSound;
var(Popup) float fPopupDuration;
var(Popup) bool bDoNothingIfHarryCaptured;
var name VarTempName;
var float fTime;

state StatePopUp
{
}

defaultproperties
{
     bPlayDialogSound=True
     bDoNothingIfHarryCaptured=True
     bTriggerOnceOnly=True
}
