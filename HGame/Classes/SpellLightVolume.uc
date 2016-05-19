Class SpellLightVolume extends PhysicsVolume;

var() bool bTriggerToggles;
var() bool bActive;
var() float LightModifierActive;
var() float LightModifierInActive;
var float fLightModifier;

defaultproperties
{
     bTriggerToggles=True
     bActive=True
     LightModifierInActive=1.000000
     bStatic=False
}
