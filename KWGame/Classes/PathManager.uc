//================================================================================
// PathManager.
//================================================================================

class PathManager extends Info
  Placeable;

struct PathActorInfo
{
  var() name ActorTag;
  var() name PathMarkerTag;
  var Actor PathActor;
  var PathMarker currMarker;
};  
  
var() name StartingPathTag;
var() name EndingPathTag;
var() Color PathColor;
var array<PathActorInfo> ActorsOnPath;
var array<PathMarker> PathMarkers;
var() bool bDebug;
var() bool bActive;
var() array<name> TagsToShowWhenActive;
var() array<name> TagsToHideWhenActive;
var() array<name> EventsToTriggerWhenActive;
var() array<name> TagsToShowWhenInActive;
var() array<name> TagsToHideWhenInActive;
var() array<name> EventsToTriggerWhenInActive;
var(Editing)	bool	bPauseWithSpecial;

defaultproperties
{
     bDebug=True
}
