//================================================================================
// CompanionCorral.
//================================================================================

class CompanionCorral extends Keypoint;

var(BumpLines) string BumpLineSet;
var(BumpLines) float IdleHintTimeoutMin;
var(BumpLines) float IdleHintTimeoutMax;
var() bool bAllowCompanionCorralBreachIfBigZDiff;
var float LastBumpLineTime;
var float IdleHintTimeout;

defaultproperties
{
     IdleHintTimeoutMin=10.000000
     IdleHintTimeoutMax=15.000000
     Texture=Texture'KWGame.CompanionCorral'
     CollisionRadius=100.000000
     bCollideActors=True
}
