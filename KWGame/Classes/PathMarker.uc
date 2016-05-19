//================================================================================
// PathMarker.
//================================================================================

class PathMarker extends Keypoint;

var PathMarker NextOnPath;
var PathMarker PrevOnPath;
var Vector vPathVec;
var Vector X;
var Vector Y;
var Vector Z;
var float fPathLength;
var float fTetherHeight;
var float fTetherWidth;
var() float fSpeedModifier;
var() bool bUsePathSizeScalingForDirection;
var() bool bDebug;
var array<Vector> perimeterPoints;
var() int LinesPerQuad;
var() float fColorMod;
var() Color PathMarkerColor;
var bool bPointsSetup;
var(Editing)	bool	bPauseWithSpecial;

defaultproperties
{
     fSpeedModifier=1.000000
     bUsePathSizeScalingForDirection=True
     LinesPerQuad=10
     PathMarkerColor=(B=255,G=255,R=255)
     bStatic=False
     bHidden=False
     DrawScale=5.000000
     CollisionRadius=1024.000000
     CollisionHeight=512.000000
}
