Class WizardCard extends HPPickup;

var int dialogId;
var string CardID;

defaultproperties
{
     bNonHPHeroPawnCanPickup=False
     HudItem=3
     bBounceIntoPlace=True
     BounceSound=Sound'SoundEffects.Magic.bean_bounce'
     PickupFXClass=Class'HGame.BeanPickup'
     bRememberLoc=True
     InventoryType=Class'HGame.WizardCardInvItem'
     PickupMessage="You picked up a Wizard Card."
     PickupSound=Sound'SoundEffects.Magic.pickup_wizardcard'
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'HP3_GamePlay_sm.WizardCards.WizardCard_SM'
     CollisionRadius=32.000000
     CollisionHeight=20.000000
}
