//================================================================================
// KWACTION_Teleport.
//================================================================================

class KWACTION_Teleport extends KWScriptedAction;

var(Action) name DestinationTag;
var(Action) bool bPlaySpawnEffect;
var(Action) bool bStopMovement;
var Actor Dest;

function bool InitActionFor (KWCutController C)
{
  return False;
}

function SerializeFrom (string args)
{

}

function string GetActionString ()
{
  return "";
}

defaultproperties
{
     ActionString="Teleport "
}
