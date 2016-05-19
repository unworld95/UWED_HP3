Class CauldronCake extends HPPickup placeable;

var string Label;

defaultproperties
{
     HudItem=10
     bBounceIntoPlace=True
     BounceSound=Sound'SoundEffects.Magic.bean_bounce'
     PickupFXClass=Class'HGame.CauldronCakePickup'
     InventoryType=Class'HGame.CauldronCakeCollection'
     PickupMessage="You picked up a Cauldron Cake."
     PickupSound=Sound'SoundEffects.Magic.pickup_cauldroncake'
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'HP3_GamePlay_sm.Spells_Objects.CauldronCake_SM'
     DrawScale=2.500000
     CollisionRadius=32.000000
     CollisionHeight=5.000000
}
