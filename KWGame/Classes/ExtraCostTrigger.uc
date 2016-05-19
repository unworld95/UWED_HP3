//================================================================================
// ExtraCostTrigger.
//================================================================================

class ExtraCostTrigger extends Triggers;

struct sCostModifyInfo
{
  var() array<name> AffectedPaths;
  var() int NewCost;
};

var() array<sCostModifyInfo> AffectedPathInfo;


function Trigger (Actor Other, Pawn Instigator)
{
}

defaultproperties
{
}
