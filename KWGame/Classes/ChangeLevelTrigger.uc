//================================================================================
// ChangeLevelTrigger.
//================================================================================

class ChangeLevelTrigger extends Trigger;

var() string NewMapName;
var() bool bSetGameState;
var() string NewGameState;
var() bool bShowLoadingScreen;
var() bool bNoFade;
var bool bDoActionWhenTriggered;

function FadeOutScreen ()
{
}

function Activate (Actor Other, Pawn Instigator)
{
}

defaultproperties
{
     bSetGameState=True
     bShowLoadingScreen=True
     bDoActionWhenTriggered=True
}
