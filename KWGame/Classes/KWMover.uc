//================================================================================
// KWMover.
//================================================================================

class KWMover extends Mover Placeable;

enum ERotatingDirection {
  RD_None,
  RD_Z,
  RD_X,
  RD_Y
};

  
var() ERotatingDirection bKeepRotationDirection;
var() bool bPersistent;
var(MoverEvents) array<name> KeyEvent;
var() bool bCorralMover;
var bool bCorraledFlag;
var() bool bSaveToLand;

function bool MoverMoves ()
{
  return True;
}

function Tick (float Delta)
{
}

function bool IsRelevant (Actor Other)
{
	return True;
}

simulated event KeyFrameReached ()
{
}

event SavePersistentData ()
{
}

event RestorePersistentData ()
{
}

event PostPersistentDataRestored ()
{
}

defaultproperties
{
     CollisionRadius=32.000000
     CollisionHeight=32.000000
}
