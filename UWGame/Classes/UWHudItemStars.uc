//================================================================================
// HudItemStars.
//================================================================================

class UWHudItemStars extends KWHudItemFade;

event PreBeginPlay ()
{
  textureIcon = Texture(DynamicLoadObject("HP3_Menu.A_HUD.A_Star_HUD",Class'Texture'));
}

function int GetCount ()
{
	//Super.GetCount();
	//return 1;
	return KWPawn(parentHUD.UWPlayerOwner.UWLevel.InventoryCarrierPawn).GetInventoryCount('ChallengeStar');
}

defaultproperties
{
    TextureLeft=0.75
    bDisplayCount=True
    nCountMiddleX=50
    nCountMiddleY=80
}