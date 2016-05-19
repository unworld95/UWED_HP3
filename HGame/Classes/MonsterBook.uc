Class MonsterBook extends BossPawn;

var() int InitialPagesToSpawn;
var() int MinAllowedPages;
var() int MaxAllowedPages;
var() float TimeBetweenPageSpawnsStart;
var() float TimeBetweenPageSpawnsEnd;
var int NumPagesSpawned;
var() int DamageTakenPerPageHit;
var() int PercentAttackRonOrHermy;
var float SpitAnimTime;
var float SpitStartFrame;
var float SpitEndFrame;
var int BookSpitAngle;
var float SpitPagesAnimRate;
var float SpitStartFrameTurn;
var float SpitEndFrameTurn;
var() name EventToSendOnDefeat;
var() name EventToSendOnBookVictory;
var MBookCombatManager mbcm;
var Actor AlternateActorToUseForOrientation;
var() name AlternateActorToUseForOrientationTag;
var() name FightDestTag;
var() name RestDestTag;
var() float fTimeToMove;
var() int DamageToHarry;
var() int DamageToRonAndHermy;
var() bool bHideAfterGoingInactive;
var bool bBattleEnded;
var() float Page_AirSpeed_Start;
var() float Page_AirSpeed_End;
var() float Page_GroundSpeed_Start;
var() float Page_GroundSpeed_End;
var() RangeVector Page_DestPositionRange;
var() bool bDoIdleAnimsAndNoises;
var() float TimeBeforeKidsTakeFirstShot;

defaultproperties
{
     InitialPagesToSpawn=5
     TimeBetweenPageSpawnsStart=5.000000
     TimeBetweenPageSpawnsEnd=3.000000
     DamageTakenPerPageHit=8
     PercentAttackRonOrHermy=30
     fTimeToMove=1.000000
     DamageToHarry=5
     DamageToRonAndHermy=17
     Page_AirSpeed_Start=100.000000
     Page_AirSpeed_End=300.000000
     Page_GroundSpeed_Start=65.000000
     Page_GroundSpeed_End=325.000000
     Page_DestPositionRange=(X=(Min=50.000000,Max=70.000000),Y=(Min=-120.000000,Max=120.000000),Z=(Min=-20.000000,Max=40.000000))
     bDoIdleAnimsAndNoises=True
     TimeBeforeKidsTakeFirstShot=0.100000
     DefaultManagerClass=Class'HGame.MBookCombatManager'
     ControllerClass=Class'KWGame.KWAIController'
     bPhysicsAnimUpdate=False
     Physics=PHYS_Rotating
     bActorShadows=False
     Mesh=SkeletalMesh'HPCharacters.MBOM'
     TransientSoundRadius=1000.000000
     CollisionHeight=15.000000
     bCollideWorld=False
     bBlockActors=False
}
