//================================================================================
// SlidingVolume.
//================================================================================

class SlidingVolume extends PhysicsVolume;

var() float fSlideInclineZ;
var() float fSlideWallAccelMag;
var() float fSlideExtraFallGrav;

defaultproperties
{
     fSlideInclineZ=0.970000
     fSlideWallAccelMag=3000.000000
     fSlideExtraFallGrav=-500.000000
     Gravity=(Z=-400.000000)
     GroundFriction=0.500000
}
