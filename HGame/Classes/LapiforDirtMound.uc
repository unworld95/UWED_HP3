Class LapiforDirtMound extends LapiforDigableObject;

var Emitter eEmitter;
var() name EventToSendWhenDug;
var() array<SoundGroup> DigDirtSounds;
//var(Animations) export editinlineuse array<AnimNotify> AnimNotifys;

defaultproperties
{
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound0
         Name="AnimNotify_KWSound0"
     End Object
     AnimNotifys(0)=AnimNotify_KWSound'HGame.LapiforDirtMound.AnimNotify_KWSound0'
     clsEffectEmitterType=Class'HGame.DirtDigging'
     bSpawnGoodies=True
     Mesh=SkeletalMesh'HProps.DirtMound'
     CollisionRadius=45.000000
}
