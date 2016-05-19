Class ProjectileSpell extends baseSpell;

var config float fTimeToHitTarget;
var bool bDestroyOnHitFloor;

defaultproperties
{
     fTimeToHitTarget=1.000000
     fxHitSounds(0)=Sound'SoundEffects.Magic.s_spell_hit2'
     fxHitSounds(1)=Sound'SoundEffects.Magic.s_spell_hit3'
     fxHitSounds(2)=Sound'SoundEffects.Magic.s_spell_hit4'
     DrawType=DT_None
}
