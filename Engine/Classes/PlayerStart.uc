//=============================================================================
// Player start location.
//=============================================================================
class PlayerStart extends SmallNavigationPoint placeable;

#exec Texture Import File=Textures\S_Player.bmp Name=S_Player Mips=Off MASKED=1

// Players on different teams are not spawned in areas with the
// same TeamNumber unless there are more teams in the level than
// team numbers.
var() byte TeamNumber;			// what team can spawn at this start
var() bool bSinglePlayerStart;	// use first start encountered with this true for single player
var() bool bCoopStart;			// start can be used in coop games	
var() bool bEnabled; 
var() bool bPrimaryStart;		// None primary starts used only if no primary start available
var() float LastSpawnCampTime;	// last time a pawn starting from this spot died within 5 seconds

defaultproperties
{
     bSinglePlayerStart=True
     bCoopStart=True
     bEnabled=True
     bPrimaryStart=True
     Texture=Texture'S_Player'
     bDirectional=True
}
