Class PoxieManager extends CompanionCombatManager;

struct cWaveData
{
  var() int NumCreatures;
};

var int WaveCounter;
var() array<cWaveData> WaveData;
var int NumCreaturesThisWave;
var bool bActivated;
var() float ThrowObjectPercentChance;
var() int ProjectileDamage;
var() int CompanionTimeBetweenShots;
var() bool bKeepShootingTillAllDestroyed;
var() int CompanionNumToDestroyPerWave;

defaultproperties
{
     ThrowObjectPercentChance=40.000000
     ProjectileDamage=20
     CompanionNumToDestroyPerWave=999
     DefaultEnemyClassType=Class'HGame.Poxie'
}
