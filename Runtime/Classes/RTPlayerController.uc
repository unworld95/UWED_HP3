//=============================================================================
// RTPlayerController
//=============================================================================

class RTPlayerController extends PlayerController;

replication
{
	reliable if(Role < ROLE_Authority)
		Fly, Walk, ToggleFlyWalk;
}

exec function Fly()
{
	if ( Pawn != None )
	{
		Pawn.UnderWaterTime = Pawn.Default.UnderWaterTime;	
		ClientMessage("You feel much lighter");
		Pawn.SetCollision(true, true , true);
		Pawn.bCollideWorld = true;
		GotoState('PlayerFlying');
	}
}

exec function Walk()
{	
	if ( Pawn != None )
	{
		Pawn.UnderWaterTime = Pawn.Default.UnderWaterTime;	
		Pawn.SetCollision(true, true , true);
		Pawn.SetPhysics(PHYS_Walking);
		Pawn.bCollideWorld = true;
		GotoState('PlayerWalking');
	}
}

exec function ToggleFlyWalk()
{
	if(IsInState('PlayerFlying'))
		Walk();
	else
		Fly();
}

defaultproperties
{
}
