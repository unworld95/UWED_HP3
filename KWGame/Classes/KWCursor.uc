//================================================================================
// KWCursor.
//================================================================================

class KWCursor extends KWPawn
  Config(User);

var() float fClickDistance;


function Actor GetFocusedActor (Vector Start, Vector End, out Vector HitLocation, out Vector HitNormal)
{
  local Actor HitActor;
  return HitActor;
}

function Actor GetCursorEndLocation (float canvSizeX, float canvSizeY, float mX, float mY, float GUIScale, out Vector Loc, out Vector norm)
{
  local Actor act;
  return act;
}

function Actor CursorPaint (UWindowRootWindow Root, Canvas C, float MouseX, float MouseY, out Vector Loc, out Vector norm)
{
  local Actor act;
  return act;
}

defaultproperties
{
     fClickDistance=10000.000000
     bHidden=True
}
