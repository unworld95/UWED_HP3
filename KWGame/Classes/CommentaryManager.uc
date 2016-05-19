//================================================================================
// CommentaryManager.
//================================================================================

class CommentaryManager extends Info;

struct CommentData
{
  var name CommentKeyTAG;
  var name eSpeakingCharacter;
  var name InterruptionKey;
  var bool bNoGap;
  var name ResponseKey;
  var name ResponseCharacterTAG;
  var int eAction;
  var name ActorToActOnTAG;
};

struct Candidate
{
  var int Variant;
  var float fWeight;
};

struct VarDialogInfo
{
  var int Variations;
  var bool bHasBeenSaid;
  var float fTimeLastSaid;
};

const MAX_COMMENT_VARIANTS= 30;
struct DialogInfo
{
  var string DlgName;
  var bool bHasBeenSaid;
  var float fTimeLastSaid;
};

struct VarSpeakingActorInfo
{
  var Actor TheActor;
  var name TheTag;
};

const fMinTimeBeforeCommentRepeat= 90.0;
const fMaxGapTimeBetweenComments= 10.0;
const fMinGapTimeBetweenComments= 5.6;
const fNoGapTimeBetweenComments= 0.05;

var float fNextTimeACommentCanBeSaid;
var float fTimeLastDialogFinished;
var float fGapTime;
var int NumCandidates;
var bool bAmPaused;
var float fCommentaryVolume;
var bool bNoSubtitles;
var int NumCompanionComments;
var array<string> CompanionComments;
var int NumSpeakingActors;
var array<VarSpeakingActorInfo> SpeakingActors;
var array<VarDialogInfo> Comments;
var Candidate Candidates[90];
var Actor LastSpeakingActor;
var bool without3D;
var CommentData TimedComment;
var bool AmConversing;
var ConversationTrigger CurrentConversation;
var int WhichConversationDialog;
var CommentaryTrigger CurrentCommentary;

function PostBeginPlay ()
{
}

function ComposeCommentList (name KeyName)
{
}

function bool AddKeyName (name KeyName)
{
  return True;
}

function Actor GetCommentaryActor (name TagIn)
{
  local Actor ac;
  return ac;
}


function int GetCommentKeyIndex (name SearchName)
{
  local int i;
  return i;
}

function float SaySimpleComment (name CommentKey, optional string IntFileName, optional KWPawn kwp)
{
  local float Length;
  return Length;
}

function bool SayComment (name CommentKey, name SpeakingCharacterTAG, optional name InterruptionKey, optional bool bNoGap, optional int eAction, optional name ActorToActOnTAG, optional Actor SpeakingCharacterActor, optional string IntFileName, optional out float DialogLength, optional bool SayNow)
{
  local bool bSaid;
  return bSaid;
}

function Timer ()
{
}

function StartCommentary (CommentaryTrigger CommentaryTgrIN)
{
}

function StartConversation (ConversationTrigger ConversationTrgIN)
{
}

function SayFirstConversationDialog ()
{
}

function SayNextConversationDialog ()
{
}

function PauseCommentary ()
{
}

function UnPauseCommentary ()
{
}

defaultproperties
{
     fCommentaryVolume=1.400000
     without3D=True
}
