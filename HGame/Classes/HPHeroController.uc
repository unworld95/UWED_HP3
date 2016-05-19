Class HPHeroController extends KWHeroController;

var float fRetSwingTimer;
var() float fMaxImpulseTime;
var Vector LastImpulse;
var bool bStillPulling;
var bool bStillRotating;
var float fLastIncrement;
var float fOldZVelocity;
var() int PlayerHoppingCamPitch;
var() int PlayerFlappingCamPitch;
var() config bool bInvertHippoMouse;
var input byte bFlap;
var byte savedBFlap;
var float jlTime;
var bool bOptionsMenuOnly;
var bool bCOMCTutorial;
var bool bMaraudersMapOnly;
var bool bAchieveFromStats;
var string CardSetID;
var string ActiveOptionsTab;
var string strResolution;
var string strColorDepth;
var bool bSoftware;
var string strNewResolution;
var string strNewColorDepth;
var bool bNewSoftware;
var bool bSoftwareCancel;
var bool bVidCancel;
var bool bLastDayCheat;
var bool bFinalCredits;
var bool bDisableResumeBtn;
var int MaraudersMapKey1;
var int MaraudersMapKey2;
var int ExitState;
var bool bUnAssigned;
var bool bMenuActive;
var int MenuSongHandle;
var bool popupCancel;

defaultproperties
{
     fMaxImpulseTime=1.000000
     PlayerHoppingCamPitch=-1000
     PlayerFlappingCamPitch=-500
     bInvertHippoMouse=True
     ActiveOptionsTab="HGame.Tab_OptionsSoundVid"
     CheatClass=Class'HGame.HPCheatManager'
     InputClass=Class'HGame.HPPlayerInput'
}
