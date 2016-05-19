Class PatronusStag extends Creatures;

var() Class<Emitter> clsPatronusLightningEmitter;
var() Class<Emitter> clsLightningWandEmitter;
var array<Emitter> PatronusLightningEmitter;
var name TempName;
var() Class<Emitter> ExtraEmitterToAttachCls;
var() name ExtraEmitterToAttachBone;
var Emitter ExtraEmitterToAttach;
var Emitter WandLightingEmitter;
var() Vector BeamAttachOffset;
var() name BeamAttachBoneName;
var Actor GenAttachActor;

defaultproperties
{
     clsPatronusLightningEmitter=Class'HGame.EPPatronusLightning'
     clsLightningWandEmitter=Class'HGame.EPWandLightning'
     ExtraEmitterToAttachCls=Class'HGame.DementorSpellFlyEmitter'
     ExtraEmitterToAttachBone="Body_leftthigh"
     BeamAttachBoneName="Body_Spine2"
     Mesh=SkeletalMesh'HPCharacters.PatronusStag'
}
