class SVehicleTrigger extends AIScript
	notplaceable;

function UsedBy( Pawn user )
{
	// Enter vehicle code
	SVehicle(Owner).TryToDrive(User);
}

defaultproperties
{
     bStatic=False
     bHidden=False
     bOnlyAffectPawns=True
     RemoteRole=ROLE_None
     bHardAttach=True
     CollisionRadius=80.000000
     CollisionHeight=400.000000
}
