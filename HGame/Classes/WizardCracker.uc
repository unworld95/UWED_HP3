Class WizardCracker extends KWPawn;

var float fFuseDelay;
var float fDamage;
var float fDamageRadius;
var bool bReleased;
var bool bThrownByImp;
var bool bOnGround;
var float fThrowTime;
var HPCharacter hp;
var bool bDestroying;
var() array<SoundGroup> ThrowSounds;
var() array<SoundGroup> LandSounds;
var() array<SoundGroup> ExplodeSounds;
var() array<SoundGroup> SwellUpSounds;
var() Sound LoopingShakeSound;
var Emitter AttachedEffect;
var ImpCombatManager ccm;

defaultproperties
{
     bThrownByImp=True
     ThrowSounds(0)=(Sound=Sound'SoundEffects.Magic.wizard_cracker_throw01',Volume=0.600000)
     ThrowSounds(1)=(Sound=Sound'SoundEffects.Magic.wizard_cracker_throw02',Volume=0.600000)
     ThrowSounds(2)=(Sound=Sound'SoundEffects.Magic.wizard_cracker_throw03',Volume=0.600000)
     LandSounds(0)=(Sound=Sound'SoundEffects.Magic.wizard_cracker_land01')
     LandSounds(1)=(Sound=Sound'SoundEffects.Magic.wizard_cracker_land02')
     ExplodeSounds(0)=(Sound=Sound'SoundEffects.common.explosion05')
     SwellUpSounds(0)=(Sound=Sound'SoundEffects.Magic.wizard_cracker_swell',Volume=0.700000)
     LoopingShakeSound=Sound'SoundEffects.Magic.wizard_cracker_pulse'
     Mesh=SkeletalMesh'HProps.WizardCracker'
     AmbientGlow=30
     CollisionRadius=8.000000
     CollisionHeight=5.000000
     bBlockActors=False
     bBlockPlayers=False
}
