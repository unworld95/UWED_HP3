//================================================================================
// KWCutScene.
//================================================================================

class KWCutScene extends Info;

var array<KWCutController> CutControllers;
var string ScriptFileName;
var bool bScriptLoaded;
var KWHud playerHud;
var KWHeroController PlayerController;
var string CurComment;
var name EndSceneEvent;
var bool bCinematicView;
var bool bDebugMe;
var bool bNoBypass;
var array<string> DeliveredCues;
var transient KWCutScene LastTriggeredCutscene;
var transient bool bInCutScene;
var array<string> ExitCommands;
var CutFactory MyFactory;
var bool bDoBookMarkSave;
var int BookMarkSaveSlot;
var BaseCam CameraToBeControlled;
var KWPawn PawnPlayerWillControl;
var FileLog CutDebuggerLog;


function bool IsInCutscene ()
{
  return True;
}

function bool PawnIsInCutscene (Pawn P, bool bAlsoCheckCamera)
{
  return False;
}

function ForceFinish ()
{
}

function TellDebugger (coerce string Str)
{
}

function OpenDebuggerLog ()
{
}

function CLog (string Str)
{
}

function DeliverCue (string cue)
{
}

function bool CueAlreadyDelivered (string cue)
{
  return False;
}

event PostBeginPlay ()
{
}

function SetupControllers ()
{
}

function StartScripts ()
{
}

function LoadOnExitScript (string Section)
{
}

function LoadProperties ()
{
}

function StartScene ()
{
}

state Running
{
}

function EndScene ()
{
}

function ResetOnEnd ()
{
}

function DoExitCommands ()
{
}

function NotifyControllerFinished ()
{
}

function Trigger (Actor Other, Pawn EventInstigator)
{
}

defaultproperties
{
}
