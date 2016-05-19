//================================================================================
// ElevatorTrigger.
//================================================================================

class ElevatorTrigger extends Triggers;

enum ETriggerType {
  TT_PlayerProximity,
  TT_PawnProximity,
  TT_ClassProximity,
  TT_AnyProximity,
  TT_Shoot
};

var() int GotoKeyframe;
var() float MoveTime;
var() bool bTriggerOnceOnly;
var() Class<Actor> ClassProximityType;
var() ETriggerType TriggerType;

final function bool IsRelevant (Actor Other)
{
	return True;
}

function Touch (Actor Other)
{
}

function Trigger (Actor Other, Pawn EventInstigator)
{
}

defaultproperties
{
     Texture=Texture'KWGame.elevator'
}
