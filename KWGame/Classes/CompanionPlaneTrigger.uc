//================================================================================
// CompanionPlaneTrigger.
//================================================================================

class CompanionPlaneTrigger extends KWTrigger;

var(Collision) enum ECollideType
{
	CT_Cylinder,				// Default: World-aligned (vertical) cylinder, using CollisionRadius/Height, CollisionWidth as vertical offset.
	CT_Box,						// Oriented centered box, using CollisionRadius/Width/Height.

} CollideType;

var(Collision) const float CollisionWidth;		// Y of collision box.
var(Collision) const float CollisionHeight;		// Half-height cyllinder.
var() bool bActivateOnUntouchInsteadOfTouch;

function UnTouch (Actor Other)
{
  return;
}

function bool IsRelevant (Actor Other)
{
  return True;
}

defaultproperties
{
     CollisionWidth=100.000000
     CollisionHeight=50.000000
     bActivateOnUntouchInsteadOfTouch=True
     CollisionRadius=5.000000
     bDirectional=True
}
