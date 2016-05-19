class WaterVolume extends PhysicsVolume;

var string EntrySoundName, ExitSoundName, EntryActorName;

function PostBeginPlay()
{
	Super.PostBeginPlay();

	if ( EntrySoundName != "" )
		EntrySound = Sound(DynamicLoadObject(EntrySoundName,class'Sound'));
	if ( ExitSoundName != "" )
		ExitSound = Sound(DynamicLoadObject(ExitSoundName,class'Sound'));
	if ( EntryActorName != "" )
		EntryActor = class<Actor>(DynamicLoadObject(EntryActorName,class'Class'));	
}

defaultproperties
{
     FluidFriction=2.400000
     bWaterVolume=True
     bDistanceFog=True
     DistanceFogColor=(B=128,G=64,R=32,A=64)
     DistanceFogStart=8.000000
     DistanceFogEnd=2000.000000
     KExtraLinearDamping=0.800000
     KExtraAngularDamping=0.100000
     LocationName="under water"
}
