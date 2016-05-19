Class HPGenericStudentData extends SpawnerData;

enum ESpawnHouse {
  SpawnHouse_Random,
  SpawnHouse_Gry,
  SpawnHouse_Huf,
  SpawnHouse_Rav,
  SpawnHouse_Sly
};

enum ESpawnGender {
  Gender_Random,
  Gender_Male,
  Gender_Female
};

enum EStudentMovement {
  StudentMovement_Random,
  StudentMovement_Walk,
  StudentMovement_Run
};

enum ESpawnStudentAge {
  StudentAge_Random,
  StudentAge_Younger,
  StudentAge_Older
};

enum EIsPrefect {
  Student_PrefectRandom,
  Student_Prefect,
  Student_Regular
};

var() float PrefectSpawnChance;
var() string BumpLineSet;
var() int GetOutOfTheWayPriority;
var EIsPrefect IsPrefect;
var() ESpawnStudentAge StudentAge;
var() EStudentMovement StudentMovementMode;
var() ESpawnGender SpawnGender;
var() ESpawnHouse SpawnHouse;

defaultproperties
{
     GoodieToSpawn=Class'HGame.HPGenericStudent'
}
