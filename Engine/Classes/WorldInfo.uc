//----------------------------------------------------------------------------
//	WorldInfo
//
//	Class used to hold data that is persistent between level loads.  This 
//	data is serialized along with the saved game data.
//
//	History:
//		5/14/2003	Created	Todd Gilbertsen
//----------------------------------------------------------------------------
class WorldInfo extends Object
	native;

//----------------------------------------------------------------------------
//	Native Variables
//----------------------------------------------------------------------------
var string	strDefaultGameState;

//----------------------------------------------------------------------------
//	Script Variables
//----------------------------------------------------------------------------
var const editconst array<string>	GameStateMasterList;	// Master list of GameStates 
var const editconst string			GameStateGroupPrefix;

//----------------------------------------------------------------------------
//	Functions
//----------------------------------------------------------------------------

//----------------------------------------------------------------------------
//	Default properties
//----------------------------------------------------------------------------

defaultproperties
{
}
