//================================================================================
// CameraTrigger.
//================================================================================

class CameraTrigger extends Trigger;

enum NoneFalseTrue
{
  NFT_None,
  NFT_False,
  NFT_True,
};

var() enum ELumosType
{
  Lumos_None,
  Lumos_Appear,
  Lumos_Disappear
} LumosType;

var(Advanced) enum EMountAction
{
  MA_AutoFinishMount,
  MA_AbleFinishMount,
  MA_UnAbleFinishMount,
  MA_StepUpOnlyMount,
} MountAction;

var() bool _bSetToKWPawnDefaults;
var() Vector vLookAtOffset;
var() float fLookAtDistance;
var() float fLookAtHeight;
var() float fRotTightness;
var() float fRotSpeed;
var() Vector fMoveTightness;
var() float fMoveSpeed;
var() float fMaxMouseDeltaX;
var() float fMaxMouseDeltaY;
var() float fMinPitch;
var() float fMaxPitch;
var() int PlayerCamPitch;
var() NoneFalseTrue eNoSnapRotation;
var() bool bSetToKWDefaultsOnUntouch;
var bool bSyncWithTargetPos;
var bool bSyncWithTargetRot;
var bool bDoActionWhenTriggered;

function Activate (Actor Other, Pawn Instigator)
{
}

function Deactivate (Actor Other, Pawn Instigator)
{
}

defaultproperties
{
     bSyncWithTargetPos=True
     bDoActionWhenTriggered=True
}
