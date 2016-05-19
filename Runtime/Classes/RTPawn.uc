//=============================================================================
// RTPawn
//=============================================================================

class RTPawn extends Pawn;

var ShadowProjector Shadow; // Warning override of Pawn variable because the pawn Shadow is just a projector

var globalconfig bool bPlayerShadows;
var globalconfig bool bBlobShadow;

event TakeDamage( int Damage, Pawn EventInstigator, vector HitLocation, vector Momentum, class<DamageType> DamageType)
{
	// Never take damage or die
}

// Called whenever a player changes their movement type.
simulated function PlayMoving()
{
	if ( (Physics == PHYS_None) 
		|| ((Controller != None) && Controller.bPreparingMove) )
	{
		// bot is preparing move - not really moving 
		PlayWaiting();
		return;
	}
	if ( Physics == PHYS_Walking )
	{
		if ( bIsCrouched )
		{
			AnimateCrouchWalking();
		}
		else if ( bIsWalking )
		{
			AnimateWalking();
		}
		else
		{
			AnimateRunning();
		}
	}
	else if ( (Physics == PHYS_Swimming)
		|| ((Physics == PHYS_Falling) && TouchingWaterVolume()) )
		AnimateWalking();
	else if ( Physics == PHYS_Ladder )
		AnimateWalking();
	else if ( Physics == PHYS_Flying )
		AnimateFlying();
	else // default
	{
		if ( bIsCrouched )
			AnimateCrouchWalking();
		else if ( bIsWalking )
			AnimateWalking();
		else
			AnimateRunning();
	}
}

// Play appropriate idle animations
simulated function PlayWaiting()
{
	if(bIsCrouched)
	{
		LoopAnim('boxidlecrouch');
	}
	else
	{
		LoopAnim('boxidle');
	}
}


// Play appropriate crouching animations
simulated function AnimateCrouchWalking()
{
	MovementAnims[0]='boxcrouch';
	MovementAnims[1]='boxcrouch';
	MovementAnims[2]='boxcrouch';
	MovementAnims[3]='boxcrouch';
	TurnLeftAnim='boxcrouch';
	TurnRightAnim='boxcrouch';
}


// Play appropriate walking animations
simulated function AnimateWalking()
{
	MovementAnims[0]='boxwalk';
	MovementAnims[1]='boxwalk';
	MovementAnims[2]='boxwalk';
	MovementAnims[3]='boxwalk';
	TurnLeftAnim='boxwalk';
	TurnRightAnim='boxwalk';
}

// Play appropriate running animations
simulated function AnimateRunning()
{
	MovementAnims[0]='boxrun';
	MovementAnims[1]='boxrun';
	MovementAnims[2]='boxrun';
	MovementAnims[3]='boxrun';
	TurnLeftAnim='boxrun';
	TurnRightAnim='boxrun';
}

// Play appropriate flying animations
simulated function AnimateFlying()
{
	MovementAnims[0]='boxfly';
	MovementAnims[1]='boxfly';
	MovementAnims[2]='boxfly';
	MovementAnims[3]='boxfly';
	TurnLeftAnim='boxrun';
	TurnRightAnim='boxrun';
}


simulated event PostBeginPlay()
{
	Super.PostBeginPlay();

	// if this pawn is supposed to cast dynamic shadows
	if(bActorShadows && bPlayerShadows)
	{
		// Spawn the shadow and intialize it
		Shadow = Spawn(class'ShadowProjector',None,'',Location);
		Shadow.ShadowActor = self;
		Shadow.LightDirection = Normal(vect(1,1,3));
		Shadow.LightDistance = 380;
		Shadow.MaxTraceDistance = 3000;
		Shadow.bBlobShadow = bBlobShadow;
		Shadow.InitShadow();
		Shadow.UpdateShadow();
	}
}


event Bump(Actor other)
{
	local KActor kActor;

	super.Bump(other);
	
	if(KActor(other) != None)
		kActor = KActor(other);
	else
		return;

	kActor.KAddImpulse(Normal(other.Location - Location) * 10000, location);


}

defaultproperties
{
     bCanCrouch=True
     BaseEyeHeight=128.000000
     bPhysicsAnimUpdate=True
     MovementAnims(0)="boxrun"
     MovementAnims(1)="boxrun"
     MovementAnims(2)="boxrun"
     MovementAnims(3)="boxrun"
     TurnLeftAnim="boxrun"
     TurnRightAnim="boxrun"
     bActorShadows=True
     Mesh=SkeletalMesh'RT_Box_K.BoxModel'
     Skins(0)=Texture'RT_BoxSkins_T.All.GreySkin'
}
