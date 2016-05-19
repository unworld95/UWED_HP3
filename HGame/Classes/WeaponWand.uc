Class WeaponWand extends Weapon;

var int Which;
var float ShotCharge;
var() Sound AltFireSound;
var(Skeletal) name WandTipBoneName;
var bool bAutoSelectSpell;
var baseSpell currentSpell;
var Class<baseSpell> CurrentSpellClass;
var float fAutoHitDistance;
var array<Class> SpellBookList;
var baseSpell CastedSpellList[8];
var baseSpell LastCastedSpell;
var int NumCastedSpells;
var Emitter fxChargeParticles;
var Class<Emitter> fxChargeParticleFXClass;
var LumosLight TheLumosLight;
var bool bInstantFire;
var bool bSpellCharges;
var float fSpellCharge;
var float fSpellChargeTime;
var float fSpellChargeTimeSpan;
var float fSpellChargeStartScale;
var float fSpellChargeEndScale;
var Sound SpellChargingSound_Start;
var Sound SpellChargingSound_End;
var Sound SpellChargingSound_Loop;
var bool bUsingSword;
var float fSwordFXTime;
var float fSwordFXTimeSpan;
var float fSwordLength;
var float fSwordFXStartScale;
var float fSwordFXEndScale;
var Emitter fxSwordParticles;
var bool bGlowingWand;
var bool bUseDebugMode;

defaultproperties
{
     WandTipBoneName="tip"
     bAutoSelectSpell=True
     fAutoHitDistance=128.000000
     SpellBookList(0)=Class'HGame.AlohomoraSpell'
     SpellBookList(1)=Class'HGame.SpongifySpell'
     SpellBookList(2)=Class'HGame.RictusempraSpell'
     SpellBookList(3)=Class'HGame.LumosSpell'
     fxChargeParticleFXClass=Class'HGame.WandEmitter'
     SpellChargingSound_Start=Sound'SoundEffects.Magic.spell_build_nl'
     AttachmentClass=Class'HGame.AttachmentWand'
     ItemName="WeaponWand"
     bUnlit=True
     SoundRadius=80.000000
     SoundVolume=80
     SoundOcclusion=OCCLUSION_None
     TransientSoundRadius=80.000000
}
