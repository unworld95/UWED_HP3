//================================================================================
// BounceSheet.
//================================================================================

class BounceSheet extends BounceObject
  Config(User);

var(Collision) enum ECollideType
{
	CT_Cylinder,				// Default: World-aligned (vertical) cylinder, using CollisionRadius/Height, CollisionWidth as vertical offset.
	CT_Box,						// Oriented centered box, using CollisionRadius/Width/Height.

} CollideType;

var(Collision) const float CollisionWidth;		// Y of collision box.
var(Collision) const float CollisionHeight;		// Half-height cyllinder.
  
var() Sound BounceSound;
var() name IdleAnim;
var() name BounceAnim;

function PostBeginPlay ()
{
  Super.PostBeginPlay();
}

defaultproperties
{
     CollisionWidth=35.000000
     CollisionHeight=50.000000
     IdleAnim="Idle"
     BounceAnim="Bounce"
     bCanBeBaseForPawns=True
     ControllerClass=Class'KWGame.BounceController'
     CollisionRadius=170.000000
}
