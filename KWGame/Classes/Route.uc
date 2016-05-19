//================================================================================
// Route.
//================================================================================

class Route extends Info
  Placeable;

var(Routing) string NameOfRoute;
var(Routing) array<name> Waypoints;
var array<Actor> wPoints;

defaultproperties
{
     Texture=Texture'KWGame.Routesign'
}
