Class MuzzleFlashAttachment extends InventoryAttachment;

var int TickCount;
var(MuzzleFlash) ELightType FlashLightType;
var(MuzzleFlash) ELightEffect FlashLightEffect;

defaultproperties
{
     bHidden=True
     bDynamicLight=True
     bAcceptsProjectors=False
}
