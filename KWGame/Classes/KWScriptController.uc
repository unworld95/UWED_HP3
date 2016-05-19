//================================================================================
// KWScriptController.
//================================================================================

class KWScriptController extends KWCutControllerII;

var bool bUseScriptFacing;
var bool bFakeShot;
var PlayerController MyPlayerController;

event NotifyJumpApex ()
{
}

state Scripting
{
}

state Broken
{
}

defaultproperties
{
     bUseScriptFacing=True
     bTeleportOnMoveFail=False
}
