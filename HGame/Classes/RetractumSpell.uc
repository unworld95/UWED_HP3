Class RetractumSpell extends baseSpell;



var config float fTimeToHit;
var float fTimeSoFar;
var Vector Start;
var Vector lastTargetLoc;
var float lastTargetRad;
var Vector X;
var Vector Y;
var Vector Z;

defaultproperties
{
     fTimeToHit=0.500000
     fxChargeParticleEffectClass=Class'HGame.CarpeWandEmitter'
     fxFlyParticleEffectClass=Class'HGame.CarpeFlyEmitter'
     fxHitSounds(0)=Sound'SoundEffects.ambience.silence'
     fxHitParticleEffectClass=Class'HGame.CarpeHitComboEmitter'
     CastSounds(0)=Sound'SoundEffects.Magic.spell_carpe_cast'
     bTrailerSameRotation=True
     TransientSoundVolume=1.000000
}
