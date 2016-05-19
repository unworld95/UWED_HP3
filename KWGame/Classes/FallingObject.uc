//================================================================================
// FallingObject.
//================================================================================

class FallingObject extends KWPawn
	NotPlaceable
	Config(User);

var() float ShakingTime;
var() float RespawnTime;

defaultproperties
{
     bCanBeBaseForPawns=True
}
