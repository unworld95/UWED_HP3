//=============================================================================
// ScriptedTrigger
// replaces Counter, Dispatcher, SpecialEventTrigger
//=============================================================================
class ScriptedTrigger extends ScriptedSequence;

#exec Texture Import File=textures\TrigSpcl.bmp Name=S_SpecialEvent Mips=Off MASKED=1

function PostBeginPlay()
{
	local ScriptedTriggerController TriggerController;

	Super.PostBeginPlay();
	TriggerController = Spawn(class'ScriptedTriggerController');
	TriggerController.InitializeFor(self);
}

function bool ValidAction(Int N)
{
	return Actions[N].bValidForTrigger;
}

defaultproperties
{
     bNavigate=False
     Texture=Texture'Gameplay.S_SpecialEvent'
}
