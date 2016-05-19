Class VendorItem extends Keypoint;

enum ECurrency {
  Jellybeans,
  CauldronCakes,
  PumpkinPasties
};

var() ECurrency CurrencyType;
var() int cost;
var() float RespawnTime;
var() Class<Emitter> HideShowFXClass;
var() Sound PurchasedSound;
var() Sound ReloadedSound;
var() bool bRotating;
var() int GameStateAvailable;
var HPGenericStudent VendorActor;
var float Duration;
var float PostTransactionDistance;
var float LastDistCheck;
const DIST_CHECK_INTERVAL= 0.3;
const BACK_OFF_DISTANCE= 30;

defaultproperties
{
     RespawnTime=5.000000
     HideShowFXClass=Class'HGame.BeanPickup'
     PurchasedSound=Sound'SoundEffects.Magic.bean_pickup'
     ReloadedSound=Sound'SoundEffects.Magic.bean_pickup'
     bRotating=True
     bStatic=False
     bHidden=False
     bCollideActors=True
     bCollideWorld=True
     bBlockActors=True
     bBlockPlayers=True
     bUseCylinderCollision=True
     bFixedRotationDir=True
}
