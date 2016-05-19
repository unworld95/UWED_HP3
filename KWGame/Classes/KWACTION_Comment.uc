//================================================================================
// KWACTION_Comment.
//================================================================================

class KWACTION_Comment extends KWACTION_PlaySound;

var(Action) string DialogString;

function bool InitActionFor (KWCutController C)
{
  return False;
}

function SerializeFrom (string args)
{
}

defaultproperties
{
     ActionString="Comment"
}
