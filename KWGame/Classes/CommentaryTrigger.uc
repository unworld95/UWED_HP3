//================================================================================
// CommentaryTrigger.
//================================================================================

class CommentaryTrigger extends Trigger;

struct ConversationListElement
{
  var() name CommentKey;
  var() name SpeakingCharacterTAG;
  var() name ActorToActOnTAG;
};

enum CommentaryAction {
  CA_NoAction,
  CA_TurnHead,
  CA_WalkTo
};

enum CommentaryDestroy {
  CD_None,
  CD_Triggered,
  CD_Activated
};

var() CommentaryDestroy eDestoyedBy;
var() bool bNoDialogGap;
var() bool bIgnoreCutscene;
var() name InterruptionKey;
var() ConversationListElement TheComment;
var() ConversationListElement TheResponse;



function Trigger (Actor Other, Pawn EventInstigator)
{
}

function bool ShouldActivate (Actor Other)
{
  return False;
}

function Activate (Actor Other, Pawn Instigator)
{
}

defaultproperties
{
}
