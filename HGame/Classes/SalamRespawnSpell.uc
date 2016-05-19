Class SalamRespawnSpell extends ProjectileSpell;

var SalamanderBase BaseThatCastMe;
var float fTimeBeforeRespawn;
var float fTimeSoFar;

defaultproperties
{
     fxHitSounds(0)=Sound'SoundEffects.Magic.s_spell_hit2'
     fxHitSounds(1)=Sound'SoundEffects.Magic.s_spell_hit3'
     fxHitSounds(2)=Sound'SoundEffects.Magic.s_spell_hit4'
}
