Class CreatureStatue extends HPProps;

var() Class<Emitter> VisualFXClass;
var Emitter VisualFX;
var() name EventToSendOnStartCreaturePossess;
var() name EventToSendOnEndCreaturePossess;

defaultproperties
{
     Physics=PHYS_Falling
}
