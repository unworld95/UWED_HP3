//================================================================================
// SpawnerData.
//================================================================================

class SpawnerData extends Object
  EditInLineNew;

enum ESpawnedActorBehavior {
  SpawnedActorBehavior_None,
  SpawnedActorBehavior_Route
};

var() Class<Actor> GoodieToSpawn;
var() int MaxNumberToSpawn;
var() int MinNumberToSpawn;
var() int MinLifeSpan;
var() int MaxLifeSpan;
var() array<string> RouteNameArray;
var() bool bSpawnWhileSeen;
var() int iNumberOfPlacementAttempts;
var() int FarEnoughAwayToSpawn;
var() ESpawnedActorBehavior SpawnedActorBehavior;


function bool SetSpawnedProperties (GenericMobileSpawner Spawner, Actor SpawnedActor)
{
  return True;
}

function bool SetUpRouting (GenericMobileSpawner Spawner, Actor SpawnedActor)
{
 
  return True;
}

function bool CameraCanSeeYou (Actor SpawnedActor)
{
  return false;
}

function bool TooFarFromCamera (Actor SpawnedActor)
{
  return False;
}

defaultproperties
{
     MaxNumberToSpawn=1
     MinNumberToSpawn=1
     MinLifeSpan=90
     MaxLifeSpan=90
     iNumberOfPlacementAttempts=5
     FarEnoughAwayToSpawn=10000
}
