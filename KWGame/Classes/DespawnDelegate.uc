//================================================================================
// DespawnDelegate.
//================================================================================

class DespawnDelegate extends Info;

struct PawnDespawnInfo
{
  var() KWPawn Key;
  var() float Value;
  var() int iSeenPawnStage;
};

var() array<PawnDespawnInfo> DespawnInfos;


function Tick (float dtime)
{
}

function CleanArray ()
{
}

function float GetValue (KWPawn probeActor)
{
  return -1.0;
}

function AddActor (KWPawn newActor, float fTime)
{
}

function RemoveActor (KWPawn oldActor)
{
}

defaultproperties
{
}
