#exec Texture Import File=Textures\S_KVehFact.bmp Name=S_KVehFact Mips=Off MASKED=1

//=============================================================================
// SVehicle spawner location.
//=============================================================================
class SVehicleFactory extends Actor 
	placeable;

var()	class<SVehicle>		VehicleClass;
var()	int					MaxVehicleCount;

var		int					VehicleCount;

event Trigger( Actor Other, Pawn EventInstigator )
{
	local SVehicle CreatedVehicle;

	if(VehicleClass == None)
	{
		Log("SVehicleFactory:"@self@"has no VehicleClass");
		return;
	}

	if(!EventInstigator.IsA('UnrealPawn'))
		return;

	if(VehicleCount >= MaxVehicleCount)
	{
		// Send a message saying 'too many vehicles already'
		return;
	}

	if(VehicleClass != None)
	{
		CreatedVehicle = spawn(VehicleClass, , , Location, Rotation);
		VehicleCount++;
		CreatedVehicle.ParentFactory = self;
	}
}

defaultproperties
{
     MaxVehicleCount=1
     bHidden=True
     bNoDelete=True
     RemoteRole=ROLE_None
     Texture=Texture'Engine.S_KVehFact'
     bDirectional=True
}
