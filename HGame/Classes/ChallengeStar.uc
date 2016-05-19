Class ChallengeStar extends HPPickup placeable;

var() bool bIsFinalShield;
var bool bIsGhost;

function Inventory SpawnCopy (Pawn Other)
{
  local ChallengeStarInvItem Copy;

  if (  !bIsFinalShield && bIsGhost )
  {
    Copy = ChallengeStarInvItem(Spawn(InventoryType,Other,,,rot(0,0,0)));
    Copy.StarName = string(Tag);
    Copy.GiveTo(Other);
  }
  return None;
}

event PostPersistentDataRestored ()
{
}

function MakeGhost ()
{
}

state Pickup
{
  function bool ValidTouch (Actor Other)
  {
    return Super.ValidTouch(Other);
  }  
}


defaultproperties
{
     bNonHPHeroPawnCanPickup=False
     HudItem=2
     bBounceIntoPlace=True
     BounceSound=Sound'SoundEffects.Magic.bean_bounce'
     PickupFXClass=Class'HGame.ChallengeShield'
     InventoryType=Class'HGame.ChallengeStarInvItem'
     PickupMessage="You picked up a Challenge Shield."
     PickupSound=Sound'SoundEffects.Magic.pickup_star1'
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'HP3_GamePlay_sm.ChallengeShields.GoldShield_SM'
     DrawScale=0.800000
     CollisionRadius=32.000000
     CollisionHeight=20.000000
}
