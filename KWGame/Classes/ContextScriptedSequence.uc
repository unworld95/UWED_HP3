//================================================================================
// ContextScriptedSequence.
//================================================================================

class ContextScriptedSequence extends KWScriptedSequence HideCategories(Actor,Animation,Animations,Editing,Force,Karma,LightColor,Lighting,Movement,Opacity,Targeting);

var(AIScript) editinlineuse array<KWScriptedAction> Actions;
var(AIScript) Class<KWScriptController> ControllerClass;
var KWScriptController Controller;
var(AIScript) bool bStartInitialized;
var(AIScript) int FirstAction;
var Pawn LastInstigator;
var Vector OffsetWhenPathing;
const ACTIONS_LENGTH= 10;

defaultproperties
{
     ControllerClass=Class'KWGame.KWScriptController'
     bStartInitialized=True
     bNavigate=True
     bCollideWhenPlacing=True
     CollisionRadius=50.000000
     CollisionHeight=100.000000
     bDirectional=True
}
