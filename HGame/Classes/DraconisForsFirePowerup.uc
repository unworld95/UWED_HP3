Class DraconisForsFirePowerup extends HPProps;

var Emitter eEmitter;
var() float InactiveTime;
var() array<SoundGroup> PickupSounds;

defaultproperties
{
     InactiveTime=10.000000
     PickupSounds(0)=(Sound=Sound'SoundEffects.Creatures.draconifor_firepickup',Volume=1.000000,Radius=300.000000,PitchRange=(Min=0.900000,Max=1.100000))
     DrawType=DT_Sprite
     bHidden=True
     CollisionRadius=20.000000
     CollisionHeight=20.000000
     bBlockActors=False
     bBlockPlayers=False
}
