//================================================================================
// ConversationTrigger.
//================================================================================

class ConversationTrigger extends Trigger;

enum CommentaryDestroy {
  CD_None,
  CD_Triggered,
  CD_Activated
};

enum CommentaryAction {
  CA_NoAction,
  CA_TurnHead,
  CA_WalkTo
};

struct ConversationListElement
{
  var() name CommentKey;
  var() name SpeakingCharacterTAG;
  var() CommentaryAction eAction;
  var() name ActorToActOnTAG;
};

var() CommentaryDestroy eDestoyedBy;
var() name InterruptionKey;
var() array<ConversationListElement> ConversationList;
var() name EndEventTAG;



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

function BeginConversation ()
{
}

defaultproperties
{
}
