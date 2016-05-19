//================================================================================
// KWCutControllerII.
//================================================================================

class KWCutControllerII extends KWCutController;

var KWScriptedAction CurrentAction;
var bool bTeleportOnMoveFail;

function bool StillHaveActions ()
{
  return True;
}


function Init ()
{
}

state Scripting
{
}

defaultproperties
{
     bTeleportOnMoveFail=True
}
