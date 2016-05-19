Class LumosTrigger  extends Triggers;

#exec Texture Import File=Textures\LumosTriggerIcon.bmp Name=LumosTriggerIcon Mips=Off Flags=2 MASKED=1

var bool bFirstEventSent;
var() bool bNoEventWhileInRadius;
var() bool bEventEntering;
var() bool bEventLeaving;
var() bool bUseZDistanceCheck;
var() float fZDistanceCheck;
var() float fDistanceCheck;

defaultproperties
{
     bEventEntering=True
     fZDistanceCheck=64.000000
     fDistanceCheck=512.000000
     Texture=Texture'HGame.LumosTriggerIcon'
}
