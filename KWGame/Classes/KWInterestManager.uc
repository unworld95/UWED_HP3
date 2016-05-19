//================================================================================
// KWInterestManager.
//================================================================================

class KWInterestManager extends Info;

enum InterestActor {
  WS_Companion1,
  WS_Companion2
};

struct sInterestActorTypes
{
  var() Class<Actor> InterestActorClass;
  var() float InterestPriority;
  var() name InterestDlgKeyname;
};

enum CommentaryAction {
  CA_NoAction,
  CA_TurnHead,
  CA_WalkTo
};

struct sInterestActors
{
  var() Actor InterestActor;
  var() float InterestPriority;
};

const MAX_Current_Radius_Actors= 254;
const MAX_Secondary_Interest_Actors= 254;
const MAX_Interest_Actors= 254;
var float LastGenericPhraseTime;
var float GenericPhraseFrequency;
var float fMinGenericPhraseFrequency;
var float fMaxGenericPhraseFrequency;
var float RebuildListTime;
var float fMaxRebuildListFrequency;
var sInterestActors InterestActors[254];
var sInterestActors SecondaryInterestActors[254];
var sInterestActors CurrentRadiusActors[254];
var() array<sInterestActorTypes> InterestActorTypes;
var() array<sInterestActorTypes> SecondaryInterestActorTypes;
var Actor LastInterestActor;
var CommentaryManager CommentMgr;
var InterestActor CompanionInterestActor;
var int whichcompanion;

defaultproperties
{
     fMinGenericPhraseFrequency=15.000000
     fMaxGenericPhraseFrequency=50.000000
     fMaxRebuildListFrequency=20.000000
}
