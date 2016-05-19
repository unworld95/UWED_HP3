Class Peeves extends Poxie;

enum enumPeevesArmor {
  ArmorNone,
  ArmorChest,
  ArmorLeftLeg,
  ArmorRightLeg,
  ArmorShield,
  ArmorMace
};

enum enumPeevesType {
  RictusempraPeeves,
  RetractumPeeves,
  GlaciusPeeves
};

struct cDialogData
{
  //var() array<cDialogId> DialogIds;
  var int LastEntryUsed;
};

struct cDialogId
{
  var() string ID;
  var() name ActorTag;
};

struct cArmorToRemove
{
  var enumPeevesArmor ArmorToRemove[5];
};

const ARMOR_MACE_IDX= 4;


var() enumPeevesType _PeevesType;
var() bool bSpawnArmor;
var array<cArmorToRemove> ArmorRemoveWaves;
var() int NumArmorWaves;
var int CurrentWave;
var HPDecoration RemovableArmorPiece[5];
var array<HPDecoration> ArmorPiece;
var PeevesScroll Scroll;
var() name DestTagForScrollThrow;
var Rotator ScrollRotation;
var Vector ScrollLocation;
var() float StunnedTime;
var() float ProjectileDamage;
var() float ProjectileInaccuracy;
var Emitter SwingMaceEmitter;
var SpellTrigger aSpellTrigger;
var() byte ArmorAmbientGlow;
var() name EventToSendWhenDefeated;
var() name GenericSpawnerToTriggerWhenDefeated;
var float LastCompanionCastHit;
var bool bPlayedFirstThrowDialog;
var bool bPlayedFirstLookOutDialog;
var int iCompanionCastHelp;
var name TimerDialogType;
var bool TimerDialogInterruptable;
var() cDialogData HelpInfoDialogs;
var() cDialogData GoodJobDialogs;
var bool bHasBeenDefeated;
var bool bPeevesPersistent;
var() bool bPlayDefeatedAnimOnCutUnPossess;
var() bool bThrowScrollWhenDefeated;
var() bool bAutoDestroyWhenDefeated;
var() array<SoundGroup> BustOffPieceSounds;
var float TimeNextSpeechIsAllowed;
var bool bIgnoreFirstHelpInfoDialog;

defaultproperties
{
     bSpawnArmor=True
     NumArmorWaves=3
     DestTagForScrollThrow="PortShortCutPaper_00"
     ScrollRotation=(Pitch=16000)
     ScrollLocation=(X=4.000000,Y=8.000000)
     StunnedTime=2.500000
     ProjectileDamage=10.000000
     ProjectileInaccuracy=35.000000
     ArmorAmbientGlow=200
     iCompanionCastHelp=2
     bPeevesPersistent=True
     bPlayDefeatedAnimOnCutUnPossess=True
     bAutoDestroyWhenDefeated=True
     BustOffPieceSounds(0)=(Sound=Sound'SoundEffects.Objects.rictuarmor_tinyhit01',Volume=3.000000)
     BustOffPieceSounds(1)=(Sound=Sound'SoundEffects.Objects.rictuarmor_tinyhit02',Volume=3.000000)
     BustOffPieceSounds(2)=(Sound=Sound'SoundEffects.Objects.rictuarmor_tinyhit03',Volume=3.000000)
     bIgnoreFirstHelpInfoDialog=True
     fRockThrowChance=0.700000
     fRockThrowAnimRate=1.000000
     ThrowAnimFrame=0.980000
     ThrowProjAnimName="ShootMace"
     MoveStartAnimName="Hover"
     MoveLoopAnimName="Hover"
     fMoveSpeedMin=100.000000
     fMoveSpeedMax=120.000000
     bUseEaseBetweenForMovement=True
     bTurnBeforeMoving=True
     MoveCurveFactor=0.500000
     ChanceOfPauseTalk=35.000000
     bEmbedCompanionCastTarget=True
     CompanionsCastOnMeSpeedMag=0.700000
     BumpLineSetPrefix="PEV"
     IdleAnimName="Hover"
     Mesh=SkeletalMesh'HPCharacters_32.Peeves'
     DrawScale=1.000000
     AmbientGlow=0
     bCollideWorld=False
     bBlockActors=False
     bBlockPlayers=False
     bProjTarget=False
     RotationRate=(Pitch=10000,Yaw=30000,Roll=6000)
}
