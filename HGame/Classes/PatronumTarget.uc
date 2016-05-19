Class PatronumTarget extends HPProps placeable;

var() name BellTag;
var Actor bell;
var() float MaxBellReachHeight;
var float fTimeToReachApex;
var() float fAddToGravity;
var Vector velocityToAdd;
var float heightFactor;
var() name EventForFullHit;
var() array<Sound> SoundsToPlayFullHit;
var() Class<Emitter> FXForFullHit;
var(Dialog) array<string> FullHitReminder;
var bool bDidFullHit;

defaultproperties
{
     MaxBellReachHeight=128.000000
     SoundsToPlayFullHit(0)=Sound'SoundEffects.common.explosion01'
     SoundsToPlayFullHit(1)=Sound'SoundEffects.common.explosion02'
     SoundsToPlayFullHit(2)=Sound'SoundEffects.common.explosion03'
     SoundsToPlayFullHit(3)=Sound'SoundEffects.common.explosion04'
     SoundsToPlayFullHit(4)=Sound'SoundEffects.common.explosion05'
     SoundsToPlayFullHit(5)=Sound'SoundEffects.common.explosion06'
     FXForFullHit=Class'HGame.PatMeterEmitter'
     FullHitReminder(0)="pc_lup_ADV2Practice_8"
     vulnerableToClass=Class'HGame.PatronumSpell'
     GestureDistance=-150.000000
     vSpellOffset=(Z=300.000000)
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'HP3_GamePlay_sm.Spells_Objects.DementorMachine_SM'
     SoundOcclusion=OCCLUSION_None
     TransientSoundVolume=1.000000
     TransientSoundRadius=500.000000
     CollisionRadius=50.000000
     CollisionHeight=89.000000
}
