//================================================================================
// KWPickup.
//================================================================================

class KWPickup extends Pickup;

var() bool bBounceIntoPlace;
var() Sound BounceSound;
var() Class<Emitter> PickupFXClass;
var() Class<Emitter> AmbientFXClass;
var() bool bRotating;
var() float AmbientFXRadius;
var() float PickupRadius;
var() bool bCheckForDistance;
var Emitter AmbientFX;
var() float fTimeTillFadeOutBegins;
var() float fFadeOutTime;
var() bool bDestroyAfterFadeOut;
var() bool bPickUpPersistent;
var() bool bRememberLoc;
var bool bBouncingIntoPlace;
var() float fBounceIntoPlaceTimeout;
var bool bShowHUD;
var bool bAmbientFXVisible;
var int PickupVisibility;
var int HasBeenPickedUp;

event SetInitialState ()
{
}


state BounceIntoPlace extends Pickup
{
}

state WaitToFadeOut extends Pickup
{
}

event SavePersistentData ()
{
}

event RestorePersistentData ()
{

}

defaultproperties
{
     bRotating=True
     AmbientFXRadius=1024.000000
     PickupRadius=4096.000000
     fTimeTillFadeOutBegins=5.000000
     fFadeOutTime=5.000000
     bDestroyAfterFadeOut=True
     bPickUpPersistent=True
     fBounceIntoPlaceTimeout=2.000000
     bShowHUD=True
     bAmbientFXVisible=True
     PickupVisibility=5
     AmbientGlow=150
     bBlockActors=True
}
