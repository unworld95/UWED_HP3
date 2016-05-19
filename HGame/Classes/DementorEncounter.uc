Class DementorEncounter extends Info;

struct PuzzleInfo
{
  var() name LockTag;
  var() name LockTriggerTag;
  var() bool bCurrentlyLocked;
  var DementorCrate Crate;
  var Trigger LockTrigger;
};
var() name DementorDoorTag;
var() array<PuzzleInfo> PuzzleInfos;
var() float fDBustAnimTime;
var() float fDReachAnimTime;
var() int EncounterFOV;
var() Rotator CameraLockTowardsDementor;
var() bool bRandomSelection;
var() bool bAllowSamePuzzleInARow;
var DementorEmitter DEmitter;
var DementorDoor Door;
var Dementor Dementor;
var float fCurrentAmbientHitStrength;
var float fCurrentTimeBetweenShakes;
var() array<float> fAmbientShakeStrength;
var float fAvgTimeBetweenShakes;
var int CurrentMaxStepsBeforeDamage;
var int CurrentStepBeforeDamage;
var int CurrentPuzzleIndex;
var() array<float> fAvgTimePuzzleIsOpen;
var() array<float> fAvgTimePuzzleIsClosed;
var() array<float> fAvgPauseBeforePuzzle;
var() float fPauseBeforeFirstPuzzle;
var() array<float> fTimeForShakesBetweenPuzzles;
var harry Victim;
var() int DefaultFrostDamage;
var float fTimeSinceLastDamage;
var() float SecondsPerDamage;
var() array<Sound> hitSounds;
var(Events) array<name> EventToSendWhenPuzzleStarts;
var(Events) array<name> EventToSendWhenPuzzleOpens;
var(Events) array<name> EventToSendWhenPuzzleCloses;
var(Events) array<name> EventToSendWhenPuzzleEnds;
var(Events) array<name> EventToSendWhenPuzzleBusts;
var(Events) name DementorEncounterEndEvent;
var KWHeroController Player;
var name LastPlayerState;

defaultproperties
{
     fDBustAnimTime=1.000000
     fDReachAnimTime=3.000000
     EncounterFOV=60
     CameraLockTowardsDementor=(Pitch=5000,Yaw=9000)
     bRandomSelection=True
     fAmbientShakeStrength(0)=0.800000
     fAmbientShakeStrength(1)=0.950000
     fAmbientShakeStrength(2)=1.100000
     fAmbientShakeStrength(3)=1.300000
     fAvgTimePuzzleIsOpen(0)=2.000000
     fAvgTimePuzzleIsOpen(1)=1.750000
     fAvgTimePuzzleIsOpen(2)=1.500000
     fAvgTimePuzzleIsOpen(3)=1.500000
     fAvgTimePuzzleIsClosed(1)=1.750000
     fAvgTimePuzzleIsClosed(2)=1.500000
     fAvgTimePuzzleIsClosed(3)=1.000000
     fAvgPauseBeforePuzzle(0)=2.000000
     fAvgPauseBeforePuzzle(1)=2.000000
     fAvgPauseBeforePuzzle(2)=1.500000
     fAvgPauseBeforePuzzle(3)=1.500000
     fPauseBeforeFirstPuzzle=3.000000
     fTimeForShakesBetweenPuzzles(0)=4.000000
     DefaultFrostDamage=1
     SecondsPerDamage=1.000000
     hitSounds(0)=Sound'SoundEffects.Creatures.dementor_doorhit01'
     hitSounds(1)=Sound'SoundEffects.Creatures.dementor_doorhit02'
     hitSounds(2)=Sound'SoundEffects.Creatures.dementor_doorhit03'
     hitSounds(3)=Sound'SoundEffects.Creatures.dementor_doorhit04'
     EventToSendWhenPuzzleStarts(0)="EventPuzzleStarted0"
     EventToSendWhenPuzzleStarts(1)="EventPuzzleStarted1"
     EventToSendWhenPuzzleStarts(2)="EventPuzzleStarted2"
     EventToSendWhenPuzzleStarts(3)="EventPuzzleStarted3"
     EventToSendWhenPuzzleOpens(0)="EventPuzzleOpened0"
     EventToSendWhenPuzzleOpens(1)="EventPuzzleOpened1"
     EventToSendWhenPuzzleOpens(2)="EventPuzzleOpened2"
     EventToSendWhenPuzzleOpens(3)="EventPuzzleOpened3"
     EventToSendWhenPuzzleCloses(0)="EventPuzzleClosed0"
     EventToSendWhenPuzzleCloses(1)="EventPuzzleClosed1"
     EventToSendWhenPuzzleCloses(2)="EventPuzzleClosed2"
     EventToSendWhenPuzzleCloses(3)="EventPuzzleClosed3"
     EventToSendWhenPuzzleEnds(0)="EventPuzzleEnds0"
     EventToSendWhenPuzzleEnds(1)="EventPuzzleEnds1"
     EventToSendWhenPuzzleEnds(2)="EventPuzzleEnds2"
     EventToSendWhenPuzzleEnds(3)="EventPuzzleEnds3"
     EventToSendWhenPuzzleBusts(0)="MoveBarsB"
     EventToSendWhenPuzzleBusts(1)="EventPuzzleBusts1"
     EventToSendWhenPuzzleBusts(2)="EventPuzzleBusts2"
     EventToSendWhenPuzzleBusts(3)="EventPuzzleBusts3"
     DementorEncounterEndEvent="DementorEncounterEnded"
}
