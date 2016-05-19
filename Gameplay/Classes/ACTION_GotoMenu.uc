//================================================================================
// ACTION_GotoMenu.
//================================================================================

class ACTION_GotoMenu extends ScriptedAction;

var(Action) string MenuName;

function bool InitActionFor (ScriptedController C)
{
  return False;
}

defaultproperties
{
     MenuName="HGame.HPPageFrontEnd"
}
