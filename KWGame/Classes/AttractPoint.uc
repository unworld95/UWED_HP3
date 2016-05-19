//================================================================================
// AttractPoint.
//================================================================================

class AttractPoint extends Keypoint;

var() array<name> AttractTags;
var array<Actor> AttractActors;
var float fRelevantRadius;

function PostBeginPlay ()
{
}

auto state() StateInactive
{ 
}

state() StateActive
{ 
}

function TestAttract (Actor Other)
{
}

function DoPull (Actor Other, Vector endLocation, float Time)
{
}

defaultproperties
{
     fRelevantRadius=256.000000
     bStatic=False
     bNoDelete=True
     InitialState="StateInactive"
     Texture=Texture'Engine.S_LookTarget'
     CollisionRadius=128.000000
     CollisionHeight=100.000000
}
