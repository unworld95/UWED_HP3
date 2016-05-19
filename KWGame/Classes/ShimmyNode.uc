//================================================================================
// ShimmyNode.
//================================================================================

class ShimmyNode extends Keypoint;

var() bool bFallDown;
var() string LabelNext;
var() string LabelPrev;

defaultproperties
{
     CollisionHeight=100.000000
     bCollideActors=True
}
