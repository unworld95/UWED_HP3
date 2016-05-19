Class DementorCrate extends HPProps;

var(Animation) name IdleAnim;
var(Animation) name IdleAnim2;
var(Animation) name LockAnim;
var(Animation) name BustThruAnim;
var(Animation) name OpenAnim;
var(Animation) name CloseAnim;
var(Animation) name ShakeAnim;
var(Animation) float fOpenAnimRate;
var(Animation) float fCloseAnimRate;
var(Animation) float fLockAnimRate;
var(Animation) float fBustAnimRate;
var() float fFadeOutTime;
var float fTotalTime;
var Trigger myTrig;
var(sounds) Sound SoundToPlayWhenOpened;
var(sounds) Sound SoundToPlayWhenClosed;
var(sounds) Sound SoundToPlayWhenBusted;
var(sounds) Sound SoundToPlayWhenShaken;
var(sounds) Sound SoundToPlayWhenLocked;
var(Events) name EventToSendWhenOpened;
var(Events) name EventToSendWhenClosed;
var(Events) name EventToSendWhenBusted;
var(Events) name EventToSendWhenShaken;
var(Events) name EventToSendWhenLocked;
var(Animation) string AnimationSetName;
var(Animation) int FrameToExpose;
var(Animation) int FrameToUnExpose;

defaultproperties
{
     IdleAnim="Idle1"
     IdleAnim2="Idle2"
     LockAnim="Tumble1"
     BustThruAnim="Tumble2"
     OpenAnim="JostleOpen"
     CloseAnim="JostleClosed"
     ShakeAnim="JostleNoLid"
     fOpenAnimRate=1.000000
     fCloseAnimRate=1.000000
     fLockAnimRate=1.000000
     fBustAnimRate=1.000000
     fFadeOutTime=3.000000
     AnimationSetName="HPProps.Crates01"
     Mesh=SkeletalMesh'HProps.Crates01'
}
