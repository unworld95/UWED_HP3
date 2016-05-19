Class DementorManager extends CombatManager;

struct cWaveData
{
  var() int NumDementors;
  var() float DementorKnockBackDistance;
  var() float DementorKnockBackSpeed;
  var() int AngularMovementSpeedMin;
  var() int AngularMovementSpeedMax;
  var() int AngularMovementAccel;
  var() float TimeBetweenSpeedChanges;
  var() float DirectionChangePercentChance;
  var() float RadialMovementSpeed;
  var() float FreezeTimeLong;
  var() int TouchDamage;
  var() name EventToSendWhenWaveCompleted;
  var() name DementorSpawnPointsTag;
  var() float BeatDementorsShakeMag;
  var() float BeatDementorsShakeTime;
};

var() bool bTriggerStartsNextWave;
var bool bStarted;
var() array<cWaveData> WaveData;
var int CurrentWave;
var int NumDementorsThisWave;
var() name BattleCenterActorTag;
var Actor BattleCenterActor;
var() name BattleOuterRingTag;
var float BattleOuterRingRadius;
var() name DementorSpawnPointsTag;
var() name TagOfDementors;
var() float PlayerMoveRadiusFromCenter;
var() name EventToSendWhenWavesCompleted;
var() name EventToSendWhenWaveCompleted;
var() float TimeDelayBeforeNextWave;
var() bool bPlayerMoveInCircle;
var() Class<Emitter> DementorsDefeatedEffect;
var() Class<Emitter> DementorsLastWaveDefeatedEffect;
var() Class<Emitter> DementorsEmitterToAttachWandAtFinale;
var Emitter aEmitterToAttachWandAtFinale;
var() bool bDementorsComeOutOfCabinet;
var() bool bLastWaveIsFinaleWave;
var name TempName;
var() float BeatDementorsShakeMag;
var() float BeatDementorsShakeTime;

defaultproperties
{
     TimeDelayBeforeNextWave=2.000000
     DementorsDefeatedEffect=Class'HGame.DementorEPRingPush'
     DementorsLastWaveDefeatedEffect=Class'HGame.DementorEPFinale'
     BeatDementorsShakeMag=120.000000
     BeatDementorsShakeTime=2.000000
}
