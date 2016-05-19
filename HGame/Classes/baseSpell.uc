Class baseSpell extends Projectile;

var config Texture SpellIcon;
var float SpellCharge;
var float SpellLifeTime;
var Pawn spellCaster;
var WeaponWand SpellWand;
var Actor TargetActor;
var Vector TargetOffset;
var() bool bAddPawnVel;
var() float SeekSpeed;
var Vector CurrentDir;
var Vector vOrigTargetDir;
var Color baseColor;
var bool bUseFlyFXForChargeFX;
var(VisualFX) Class<AllSpells> fxChargeParticleEffectClass;
var AllSpells fxChargeParticleEffect;
var(VisualFX) SpellFlyEmitter fxFlyParticleEffect;
var(VisualFX) Class<SpellFlyEmitter> fxFlyParticleEffectClass;
var(Sound) array<Sound> fxHitSounds;
var(VisualFX) AllSpells fxHitParticleEffect;
var(VisualFX) config Class<AllSpells> fxHitParticleEffectClass;
var(VisualFX) AllSpells fxHitWallParticleEffect;
var(VisualFX) Class<AllSpells> fxHitWallParticleEffectClass;
var(VisualFX) AllSpells fxReactParticleEffect;
var(VisualFX) Class<AllSpells> fxReactParticleEffectClass;
var(VisualFX) float FadeOutTime;
var(Sound) array<Sound> CastSounds;
var(Sound) Sound CastSound;
var(Sound) Sound CastChargeSound;
var string SpellIncantation;
var string QuietSpellIncantation;
var HPHeroController PlayerController;
var HPHeroPawn PlayerPawn;
var bool bUseDebugMode;

defaultproperties
{
}
