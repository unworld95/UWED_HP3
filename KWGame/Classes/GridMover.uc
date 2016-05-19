//================================================================================
// GridMover.
//================================================================================

class GridMover extends KWMover;

var() float MoveIncrement;
var() float OmniGridSize;
var() bool bOmniGridMover;
var bool bDoingInterpolation;
var float fMoveTime;

function Tick (float dtime)
{
}

function int myRound (float f)
{
  local int Result;
  return Result;
}

function DecideDirection (Actor Other)
{
}

state() BumpMove
{
}

defaultproperties
{
     MoveIncrement=64.000000
     OmniGridSize=2.000000
     StayOpenTime=0.000000
     InitialState="BumpMove"
     bCollideWorld=True
     bProjTarget=True
}
