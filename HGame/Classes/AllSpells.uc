Class AllSpells extends UWEmitter;

var float fTimeToFade;
var float fTimeSoFar;
var(Casting) float fLightMod;
var float fSavedLightBrightness;

defaultproperties
{
     fLightMod=1.000000
     LightType=LT_SubtlePulse
     LightEffect=LE_QuadraticNonIncidence
     LightRadius=4.000000
     LightSaturation=72
     LightPeriod=32
     bNoDelete=False
     bDynamicLight=True
}
