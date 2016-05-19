Class SaveBook extends SavePoint;

var Vector vLoc;
var() float fBobAmountHoriz;
var() float fBobAmountVert;
var float fWaitTime;
var() float fCycleTimeHoriz;
var() float fCycleTimeVert;
var() Class<Actor> TempAttachType;
var Actor TempAttachedActor;
var Sound PickupSound;

defaultproperties
{
     fBobAmountHoriz=2.000000
     fBobAmountVert=10.000000
     fWaitTime=10.000000
     fCycleTimeHoriz=0.750000
     fCycleTimeVert=3.000000
     TempAttachType=Class'HGame.SaveBookFX'
     PickupSound=Sound'SoundEffects.Magic.save_book'
     fMinHealthPercent=0.350000
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'HP3_GamePlay_sm.Spells_Objects.SaveBook_SM'
}
