//================================================================================
// KWGenericSpawner.
//================================================================================

class KWGenericSpawner extends KWPawn
  Config(User);

  
const MAX_SPAWNED_GOODIES= 8;
  
struct MaxMin
{
  var() int Max;
  var() int Min;
};

struct Particles
{
  var() Class<Emitter> Spawning;
  var() Class<Emitter> Opening;
  var() Class<Emitter> Closing;
  var() Class<Emitter> Start;
  var() Class<Emitter> End;
  var() Vector StartPos;
  var() name StartBone;
};

struct Animations
{
  var() name Opening;
  var() float OpeningAnimRate;
  var() name Closing;
  var() float ClosingAnimRate;
  var() name Start;
  var() float StartAnimRate;
  var() name End;
  var() float EndAnimRate;
};

var() array<Sound> ClosingSound;
var() array<Sound> SpawningSound;
var() Class<Actor> GoodieToSpawn[8];
var() int GoodiesNumber[8];
var() name SpawningAnim;
var() float SpawningAnimRate;
var() Particles Emitts;
var() name NoMoreLivesEvent;
var() name HitBySpellEvent;
var() Animations Anims;
var() array<Sound> OpeningSnds;
var() MaxMin Limits;
var() name StartBone;
var() Vector StartPos;
var() Vector StartVel;
var() Vector StartVelVariance;
var() float StartVelMultiplier;
var() float BaseParticlesZOffset;
var() Class<Emitter> BaseParticles;
var() Class<Emitter> SingleParticle[3];
var() Sound SingleSound[3];
var() array<Sound> EndSound;
var() float BaseDelay;
var() float GoodieDelay;
var() int Lives;
var() bool bDestroable;
var() float fTimeToFadeAtEnd;
var FadeActorDelegate fader;
var() bool bMakeSpawnPersistent;
var() bool bLivesPersistent;
var bool bInitialized;
var Vector BaseParticlePos;
var Vector BaseEmitterPos;
var Emitter SpawningEmitter;
var Emitter StartEmitter;
var bool bSpawnExactNumbers;
var int HowManyObjectsToSpawn;
var int RandomNums;
var int CurrentNum;
var int CurrentNum1;
var Class<Projectile> vulnerableToClassSaved;
var() bool bActivateOnTrigger;
var() bool bNoIgnoreEncroachers;

auto state stateStart
{
}

state stateEnd
{
}

state stateHitBySpell
{
}

function PostBeginPlay ()
{
}

function FindBaseParticlePos ()
{
}

function FindEmitterPos ()
{
}

function SpawnObject (int Index)
{
}

event SavePersistentData ()
{
}

event RestorePersistentData ()
{
}

event PostPersistentDataRestored ()
{
}

defaultproperties
{
     SpawningAnimRate=1.000000
     Anims=(Opening="Opening",OpeningAnimRate=681324285708970190000000000000000.000000,Closing="MipZero",Start="Activate",StartAnimRate=709006733368519840000000.000000,End="Core")
     Limits=(Max=401969,Min=573702144)
     StartPos=(Z=-10.000000)
     StartVelVariance=(X=100.000000,Y=100.000000,Z=100.000000)
     StartVelMultiplier=75.000000
     GoodieDelay=0.500000
     Lives=1
     bMakeSpawnPersistent=True
     bLivesPersistent=True
     SoundRadius=200.000000
     SoundVolume=200
}
