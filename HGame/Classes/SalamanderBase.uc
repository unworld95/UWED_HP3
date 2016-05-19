Class SalamanderBase extends HPProps;

var array<Salamander> myManders;
var int listLength;
var() Class<SalamanderBaseFire> BurningParticleFXClass;
var SalamanderBaseFire BurningParticleFX;
var(sounds) Sound BurningSound;
var(sounds) array<SoundGroup> FreezingSounds;
var float fTimeSoFar;
var() bool bRespawnSelf;
var() float fTimeToStayFrozen;
var() float fTimeBeforeRespawnSelf;
var(Events) name EventToSendOnFireDestroy;
var(Events) name EventToSendOnFinalDestroy;
var() Range reSpawnRadius;
var() float fTimeBeforeRespawnMander;
var() float fTimeForRespawnSpellToHit;
var() float fTimeForRespawnSpellToSpawn;
var SalamRespawnSpell spell;

defaultproperties
{
     BurningParticleFXClass=Class'HGame.SalamanderBaseFire'
     BurningSound=Sound'SoundEffects.common.firepit01'
     FreezingSounds(0)=(Sound=Sound'SoundEffects.Creatures.firepit_squelch')
     fTimeToStayFrozen=4.000000
     fTimeBeforeRespawnSelf=8.000000
     reSpawnRadius=(Min=128.000000,Max=256.000000)
     fTimeBeforeRespawnMander=2.000000
     fTimeForRespawnSpellToHit=0.500000
     fTimeForRespawnSpellToSpawn=2.000000
     vulnerableToClass=Class'HGame.GlaciusSpell'
     bHidden=True
     PrePivot=(Z=-40.000000)
     SoundRadius=512.000000
     SoundVolume=160
     CollisionHeight=60.000000
     bCollideWorld=False
     bBlockActors=False
     bBlockPlayers=False
}
