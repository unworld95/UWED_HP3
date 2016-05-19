//================================================================================
// KWHeroController.
//================================================================================

class KWHeroController extends PlayerController Config(User);

var KWPawn KWPawn;
var transient name TempName;
var bool bTempBool;
var transient bool bViewUpdated;
var transient Rotator savedViewRotation;
var transient Vector savedViewLocation;
var Class<SelectCursor> DefaultSelectCursorType;
var SelectCursor Cursor;
var bool bUseBaseCam;
var bool bCameraFollowPlayer;
var bool bMovePawn;
var BaseCam Camera;
var Class<BaseCam> CameraClass;
var config bool bUseCameraAxesForPawnMove;
var bool bShouldRotate;
var config bool bArrowKeysYaw;
var config bool bArrowKeysPitch;
var bool bDoingCutScene;
var Pawn nextPawn;
var float fTimeSinceStart;
var float fTimeForTransfer;
var Vector vTransferStart;
var input float aArrowUp;
var input float aArrowRight;
var float savedATurn;
var float savedALookUp;
var float savedAStrafe;
var float savedAForward;
var float savedAUp;
var bool bLastPressedFire;
var bool bLastPressedAltFire;
var name LastState;
var private bool bLockRotation;
var private Rotator RotationToLock;
var private Rotator RotationLockRange;
var private float fRotLockSpeed;
var private float fRotLockTightness;
var private bool bNowLocked;
var bool bTurnToAlternatePawnRot;
var int AlternatePawnRot;
var Actor ActorToMoveAround;
var float ActorToMoveAroundRadius;
var Vector ActorToMoveAroundTangent;
var bool bAllowFreeTurningInStateMoveInCircle;
var Rotator rSnapRotation;
var Rotator rSnapRotationSpeed;
var Vector vSlidingLastLoc[4];
var KWSlideJump aSlideJump;
var bool bUseFallingSpeedAsGroundSpeedOnLand;
var float fSlideSmallCylTimer;
var bool bBlockSlideSpeedInput;
var Vector vLastVel;
var Vector vThisVel;
var bool bFlewOffTrack;
var TelePit aActiveTelepit;
var KWCursor KCursor;
var bool bDoOpacityForCamera;
var Ladder TopOfLadder;
var string strGameMenu;
var string strGameMenuSave;
var bool bPauseWithSpecial;

defaultproperties
{
     DefaultSelectCursorType=Class'KWGame.SelectCursor'
     bUseBaseCam=True
     bMovePawn=True
     CameraClass=Class'KWGame.BaseCam'
     bUseCameraAxesForPawnMove=True
     bShouldRotate=True
     bArrowKeysYaw=True
     strGameMenu="KWGame.MainMenuPage"
     strGameMenuSave="KWGame.MainMenuPage"
     bBehindView=True
     CheatClass=Class'KWGame.KWCheatManager'
     InputClass=Class'KWGame.KWPlayerInput'
     bNotifyApex=True
     RotationRate=(Pitch=4096,Yaw=45000,Roll=3072)
}
