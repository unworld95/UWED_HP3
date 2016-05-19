//================================================================================
// CompanionClimbBoundaryKeyPoint.
//================================================================================

class CompanionClimbBoundaryKeyPoint extends Keypoint;

var(Collision) enum ECollideType
{
	CT_Cylinder,				// Default: World-aligned (vertical) cylinder, using CollisionRadius/Height, CollisionWidth as vertical offset.
	CT_Box,						// Oriented centered box, using CollisionRadius/Width/Height.

} CollideType;

var(Collision) const float CollisionWidth;

function UnTouch (Actor Other)
{
}

defaultproperties
{
     CollisionWidth=170.000000
     bStatic=False
     CollisionRadius=40.000000
     CollisionHeight=70.000000
     bCollideActors=True
     bDirectional=True
}
