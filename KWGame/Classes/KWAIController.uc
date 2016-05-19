//================================================================================
// KWAIController.
//================================================================================

class KWAIController extends KWAIControllerNative;

enum ETurnBeforeMoving {
  TBM_FALSE,
  TBM_TRUE,
  TBM_JUSTONCE
};

var KWPawn KWPawn;
var bool bDebug;
var BaseCam cam;
var name DefaultMovementState;
var name DefaultAirMovingState;
var name DefaultGroundMovingState;
var float fTimeBetweenNavigations;
var float fTimeToGetUnstuck;
var int iLastRandomBumpLine;
var int iCurBumpLine;
var name SavedPreBumpControllerState;
var name SavedPreBumpPawnState;
var float fLastBumpTime;
var string CorralSavedBumpLineSet;
var bool CorralSavedbUseBumpLine;
var Route myRoute;
var Actor GoalTarget;
var Vector GoalPoint;
var Vector movePoint;
var Actor oldMoveTarget;
var Actor oldGoalTarget;
var Vector oldGoalPoint;
var Vector OldLocation;
var Actor lastFailedMoveTarget;
var name NavigateStateToGoToWhenDone;
var bool bInsideDecideMoveTarget;
var bool bUseSearchAlternative;
var Actor LeadingActor;
var Actor LeadingActorLastGoalTarget;
var bool bLeadingActorFirstEntry;
var string _LeadActorBumpSet;
var bool bPlayingLeadActorAttractAnim;
var int iLeadActorIdleAnimLoopCount;
var float TimeEnteredLeadActorPauseState;
var int TotalNumSpecificPawnLeadActorCommentsDelivered;
var name dLastStateName;
var KWPawn LeadChar;
var KWPawn OtherTrailingChar;
var Vector vTargetLoc;
var int iWhichTarget;
var int iWhichTrailingChar;
var(HeroFollow) bool bUseDistFromLeadCharForMovement;
var bool bJumpAfterLand;
var name SavedTrailingState;
var(HeroFollow) float TrailCharFollowRadius;
var(HeroFollow) float Target2dTolerance;
var float Target2dToleranceOriginal;
var(HeroFollow) float Target2dToleranceDelta;
var float Target2dToleranceDeltaOriginal;
var(HeroFollow) float LeadCharToleranceTowards;
var bool bOutsideOfTolerance;
var(HeroFight) float Target2dToleranceFight;
var(HeroFight) float Target2dToleranceDeltaFight;
var float TCMoveToTargetLocTimer;
var float TCWaitToMoveTimer;
var float TCWaitToMoveTimeOut;
var(HeroFollow) float TCWaitToMoveTimeOutMin;
var(HeroFollow) float TCWaitToMoveTimeOutMax;
var float TCWaitToMoveTimeOutMinOriginal;
var float TCWaitToMoveTimeOutMaxOriginal;
var bool bTCWantsToMove;
var(HeroFollow) float MoveToLeadCharsSideTimer;
var float DontFaceMoveDirTimer;
var ETurnBeforeMoving TCTurnBeforeMoving;
var bool bTCTurningToTarget;
var float fCharDodgeDistInner;
var float fCharDodgeDistOuter;
var Vector vRandom;
var float fRandomDistance;
var Vector vLeadCharSaveLoc1;
var Vector vLeadCharSaveLoc2;
var Vector vLeadCharMountDir;
var bool bReadyToJump;
var float fJumpTimer;
var bool bWallFollowDirNormal;
var float fTimeDoingObjDodge;
var float fTimeCantSeeTargetLoc;
var float fTimeToSpendFollowingWall;
var int iLastIdleAnim;
var float fLastIdleAnimLength;
var float TimeOfLastIdleDialogAnim;
var int iLastIdleDialogAnim;
var float fRelocateTimer;
var float fBlindRunningTime;
var float fTimeLeftTrailingState;
var float fTimeFollowing;
var float fTimeNotFollowing;
var int iIdleAnimCounter;
var Actor aCorral;
var Vector vPosInCorral;
var KWPawn aOtherCorralChar;
var float IdleMonitorTime;
var CompanionTrigger CheerTrigger;
var Actor CurrentInterestActor;
var Class<Actor> CompanionGoodiePickupType;
var float GoodieCheckTimer;
var Actor aTargetGoodie;
var() float fPickupGoodieDistance;
var() float fPickupGoodieDistanceMult;

defaultproperties
{
     DefaultMovementState="StateMoving"
     DefaultAirMovingState="StateAirMoving"
     DefaultGroundMovingState="StateGroundMoving"
     fTimeBetweenNavigations=0.100000
     bUseDistFromLeadCharForMovement=True
     TrailCharFollowRadius=450.000000
     Target2dTolerance=175.000000
     Target2dToleranceDelta=30.000000
     LeadCharToleranceTowards=80.000000
     Target2dToleranceFight=150.000000
     Target2dToleranceDeltaFight=5.000000
     TCWaitToMoveTimeOutMin=0.100000
     TCWaitToMoveTimeOutMax=0.600000
     MoveToLeadCharsSideTimer=1.000000
     fPickupGoodieDistance=150.000000
     fPickupGoodieDistanceMult=2.000000
     bNotifyApex=True
}
