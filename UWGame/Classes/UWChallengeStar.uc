class UWChallengeStar extends HPPickup;

#exec Texture Import File=Textures\GoldShieldBlue_SM.bmp Name=GoldShieldBlue_SM

var() bool bIsFinalShield;
var() bool bIsGhost;
var ChallengeStar r;
var ChallengeStarManager ChallengeStarManager;
var ChallengeStarInvItem ChallengeStarInvItem;

var float DesiredOpacityForCamera;
var float SpeedOpacityForCamera;
var float CurrentOpacityForCamera;

function Inventory SpawnCopy (Pawn Other)
{
  local UWChallengeStarInvItem Copy;

  if (  !bIsFinalShield && bIsGhost )
  {
    Copy = UWChallengeStarInvItem(Spawn(InventoryType,Other,,,rot(0,0,0)));
    Copy.StarName = string(Tag);
    Copy.GiveTo(Other);
  }
  return None;
}

event PostPersistentDataRestored ()
{
  /*
  local ChallengeStarManager CSMgr;

  CSMgr = UWHGame(Level.Game).ChallengeStarManager;
  if ( CSMgr != None )
  {
    if ( CSMgr.HasChallengeStarBeenFound(string(Tag)) )
    {
      MakeGhost();
    }
  }
  */
}

function MakeGhost ()
{
	//Super.MakeGhost();
	bIsGhost = True;
	Skins[0] = Texture'GoldShieldBlue_SM';
	SetOpacity(0.3);
	Style=STY_Translucent;
	AmbientGlow = 250;
	if ( bIsFinalShield )
	{
	bShowHUD = False;
	} else {
	SetCollision(False,False,False);
	}
}

state Pickup
{
  function bool ValidTouch (Actor Other)
  {
    return Super.ValidTouch(Other);
  }
  
}

simulated function PreBeginPlay(){
	//ChallengeStarManager = Spawn(Class'ChallengeStarManager');
	//ChallengeStarInvItem = Spawn(Class'ChallengeStarInvItem');
}

simulated function PostBeginPlay()
{
	if(bIsGhost==True){
		MakeGhost();
	}
	ChallengeStarManager = Spawn(Class'ChallengeStarManager');
	ChallengeStarInvItem = Spawn(Class'ChallengeStarInvItem');
}


defaultproperties
{
    bNonHPHeroPawnCanPickup=False
    HudItem=3
    bBounceIntoPlace=True
    BounceSound=Sound'SoundEffects.Magic.bean_bounce'
    PickupFXClass=Class'ChallengeShield'
    InventoryType=Class'UWChallengeStarInvItem'
    PickupMessage="You picked up a Challenge Shield."
    PickupSound=Sound'SoundEffects.Magic.pickup_star1'
    DrawType=DT_StaticMesh
    StaticMesh=StaticMesh'HP3_GamePlay_sm.ChallengeShields.GoldShield_SM'
    DrawScale=0.80
    CollisionRadius=32.00
    CollisionHeight=20.00
    DesiredOpacityForCamera=0.50
    SpeedOpacityForCamera=0.50
    CurrentOpacityForCamera=0.50

}