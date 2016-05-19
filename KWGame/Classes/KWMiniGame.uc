//================================================================================
// KWMiniGame.
//================================================================================

class KWMiniGame extends Info
  Placeable;

var() bool bDebug;
var() int TargetCount;
var() Vector GameEntrance;
var() name EndEvent[4];
var int Points;
var int PointsStart;
var int GameRadius;
var int HudItemID;
var bool Playing;

event PostPersistentDataRestored ()
{
  Playing = False;
}

function int GetPoints ()
{
  return Points;
}

function float GetBossHealth ()
{
  return Points / PointsStart;
}

function OnEvent (name param)
{
}

function AddScore (int toAdd)
{
}

auto state WaitingForMiniGameStart
{
}

state PlayingMiniGame
{
}

state EndMiniGame
{
}

defaultproperties
{
     bDebug=True
}
