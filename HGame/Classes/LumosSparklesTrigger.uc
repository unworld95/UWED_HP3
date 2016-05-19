//================================================================================
// LumosSparklesTrigger.
//================================================================================

class LumosSparklesTrigger extends UWTriggers;

var() float fAreaSparklesPerSquareGameUnit;
var() float fDistanceForAreaEffects;
var() Class<Emitter> fxAreaSparklesClass;
var Emitter fxAreaSparkles;
var float fDistanceToLumosSource;
var Sound SoundGlowLoop;
var Sound SoundSilence;

function PostBeginPlay ()
{
  Super.PostBeginPlay();
  if ( LumosType == 1 )
  {
    SetCollision(False,False,False);
  } else {
    SetCollision(True,True,True);
  }
  AmbientSound = None;
}

event Destroyed ()
{
  TurnOffAreaEffects();
}

function Emitter SpawnAndSetParticles (Class<Emitter> SpawnClass)
{
  local Emitter EmParticles;

  EmParticles = Spawn(SpawnClass);
  if ( EmParticles == None )
  {
    return None;
  }
  if ( DrawType == 8 )
  {
    EmParticles.Emitters[0].MeshSpawningStaticMesh = StaticMesh;
    //EmParticles.Emitters[0].MeshSpawning = 1;
    EmParticles.Emitters[0].MeshScaleRange.X.Min = DrawScale * DrawScale3D.X;
    EmParticles.Emitters[0].MeshScaleRange.X.Max = DrawScale * DrawScale3D.X;
    EmParticles.Emitters[0].MeshScaleRange.Y.Min = DrawScale * DrawScale3D.Y;
    EmParticles.Emitters[0].MeshScaleRange.Y.Max = DrawScale * DrawScale3D.Y;
    EmParticles.Emitters[0].MeshScaleRange.Z.Min = DrawScale * DrawScale3D.Z;
    EmParticles.Emitters[0].MeshScaleRange.Z.Max = DrawScale * DrawScale3D.Z;
    EmParticles.Emitters[0].UniformMeshScale = False;
    //EmParticles.Emitters[0].CoordinateSystem = 1;
  } else {
    //EmParticles.Emitters[0].StartLocationShape = 1;
  }
  return EmParticles;
}

function TurnOnAreaEffects ()
{
  if ( fxAreaSparkles == None )
  {
    fxAreaSparkles = SpawnAndSetParticles(fxAreaSparklesClass);
  }
  PlaySound(SoundGlowLoop);
}

function TurnOffAreaEffects ()
{
  if ( fxAreaSparkles != None )
  {
    fxAreaSparkles.Kill();
    fxAreaSparkles = None;
  }
  PlayOwnedSound(SoundSilence);
}

function UpdateSparkles ()
{
  if ( fDistanceToLumosSource < fDistanceForAreaEffects )
  {
    TurnOnAreaEffects();
    fxAreaSparkles.Emitters[0].ParticlesPerSecond = 100.0 * fAreaSparklesPerSquareGameUnit;
    fxAreaSparkles.Emitters[0].ParticlesPerSecond -= fDistanceToLumosSource * 0.015;
    if ( fxAreaSparkles.Emitters[0].ParticlesPerSecond < 0.025 )
    {
      fxAreaSparkles.Emitters[0].ParticlesPerSecond = 0.025;
    }
  } else {
    TurnOffAreaEffects();
  }
}

auto state StateLumosOff
{
  function BeginState ()
  {
    CM(" LumosSparkles " $ string(self) $ " BeginState LumosOff called!!");
    TurnOffAreaEffects();
    PlayOwnedSound(SoundSilence);
  }
  
  function OnLumosOn ()
  {
    Super.OnLumosOn();
    GotoState('StateWaitingToTurnOn');
  }
  
}

state StateWaitingToTurnOn
{
  event Tick (float fTimeDelta)
  {
    fDistanceToLumosSource = VSize(KWHeroController(Level.PlayerHeroActor.Controller).Camera.Location - Location);
    if ( fDistanceToLumosSource < fDistanceForAreaEffects )
    {
      GotoState('StateLumosOn');
    }
  }
  
  function OnLumosOff ()
  {
    Super.OnLumosOff();
    GotoState('StateLumosOff');
  }
}

state StateLumosOn
{
  function BeginState ()
  {
    PlaySound(SoundGlowLoop);
  }
  
  event Tick (float fTimeDelta)
  {
    UpdateSparkles();
  }
  
  function OnLumosOff ()
  {
    GotoState('StateLumosOff');
  }
}

defaultproperties
{
    fAreaSparklesPerSquareGameUnit=0.25
    fDistanceForAreaEffects=1536.00
    fxAreaSparklesClass=Class'LumosSparklesEmitter'
    SoundGlowLoop=Sound'SoundEffects.Magic.Lumos_glow_loop'
    SoundSilence=Sound'SoundEffects.ambience.silence'
    DrawType=8
    bStatic=True
    bHidden=False
    bShadowCast=True
    CollisionRadius=0.00
    CollisionHeight=0.00
    bBlockActors=True
    bBlockPlayers=True
    bBlockKarma=True
}