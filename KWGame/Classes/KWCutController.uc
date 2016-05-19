//================================================================================
// KWCutController.
//================================================================================

class KWCutController extends KWAIController;

var array<KWScriptedAction> Actions;
var Controller PendingController;
var int ActionNum;
var KWLatentScriptedAction CurrentAction;
var Actor ScriptedFocus;
var int AnimsRemaining;
var KWACTION_PlayAnim CurrentAnimation;
var int FullBodyAnimChannel;
var bool bLoopAnim;
var string pawntag;
var bool bResetRunAnims;
var bool bResetWalkAnims;
var float LastSayFinishesAt;
var float LastSoundFinishesAt;
var bool bBroken;
var transient KWCutScene refMyCutScene;
var int myControllerID;
var string ScriptFileName;
var string ScriptSequenceName;
var bool bScriptLoaded;
var float CurSloMoValue;
var bool bDoForceFinish;
var string OnExitCommand;
var Actor lastMoveTarget;
var ContextScriptedSequence SequenceScript;
var int IterationCounter;
var int IterationSectionStart;
var() config string ProjectActionString;
var string Label;

function BeginPlay ()
{
}

function CLog (string Str)
{
}

function ClearScript ()
{
}

function PreDestroy ()
{
}

function ClearAnimation ()
{
}

function DeliverCue (string cue)
{
}

function LoadScript ()
{
}

function Start ()
{
}

function Stop ()
{
}

function int PlayCutsceneAnim (name BaseAnim, float AnimRate, float fTweenTime, bool bLoop)
{
  return 1;
}

function LeaveScripting ();
function CompleteAction ();
function ForceFinish ();
function bool StillScripting ()
{
  return False;
}

function UnPossess ();

state Scripting
{
}

state Broken
{
}

state Finished
{
}

function TakeControlOf (optional Pawn aPawn);

function float DeliverLocalizedDialog (string DlgID, bool bPlaySound, float fDisplayDuration, optional string IntFileName, optional bool No3D, optional Actor soundSource, optional bool bDefeatFacialAnim, optional bool bNoSubtitle)
{
  return 1.0;
}

defaultproperties
{
     CurSloMoValue=1.000000
     ProjectActionString="HGame.HPACTION_"
     Label="KWCutController"
}