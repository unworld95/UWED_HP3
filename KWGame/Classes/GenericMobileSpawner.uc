//================================================================================
// GenericMobileSpawner.
//================================================================================

class GenericMobileSpawner extends KWPawn
  Config(User);

enum eSpawnMode {
  SpawnMode_SpawnAtStart,
  SpawnMode_StaggeredSpawn,
  SpawnMode_TriggeredStaggeredSpawn,
  SpawnMode_RepeatTriggerStaggerSpawn,
  SpawnMode_TriggerOnOffStaggerSpawn,
  SpawnMode_DoNotSpawn
};

var int iCurrentNumberOfSpawns;
var() int iMaxNumberOfSpawns;
var() int iLowEndMaxNumberOfSpawns;
var array<Actor> SpawnedMobile;
var() int iMinTimeBetweenSpawns;
var() int iMaxTimeBetweenSpawns;
var float fTimeSinceLastSpawn;
var() int iFiniteSpawnLimit;
var int iTotalSpawns;
var bool bFilledRouteArray;
var array<Route> RouteArray;
var() eSpawnMode SpawnMode;
var eSpawnMode OriginalSpawnMode;
var() editinlineuse array<SpawnerData> SpawnerDataArray;
var() bool bSpawnAtOptimalPointAlongRoute;

function PostBeginPlay ()
{
}

function Tick (float DeltaTime)
{
}

function SpawnMobile (int Index)
{
}

event FilterForCurrentGameState ()
{
}

event Trigger (Actor Other, Pawn EventInstigator)
{
}

function GenerateRouteArray ()
{
}

function SpawnExpired (Actor ExpiredSpawn)
{
}

defaultproperties
{
     iMaxNumberOfSpawns=10
     iMinTimeBetweenSpawns=30
     iMaxTimeBetweenSpawns=30
     bSpawnAtOptimalPointAlongRoute=True
     bHidden=True
     bCollideActors=False
     bBlockActors=False
     bBlockPlayers=False
}
