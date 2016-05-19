//================================================================================
// KWScriptedAction.
//================================================================================

class KWScriptedAction extends Object
  EditInLineNew
  CollapseCategories
  HideCategories(Object);

var localized string ActionString;
var bool bValidForTrigger;
var string DestTagString;
var KWCutController MyController;
var bool bFinished;
var bool bRequiresTick;
var int DebugLineNumber;

function Init (KWCutController C)
{
  MyController = C;
  InitActionFor(C);
  bFinished = True;
}

function ForceFinish (KWCutController C)
{
}

function OnTick (float DeltaTime)
{
}

function OnTimer ()
{
}

function OnTrigger (Actor Other)
{
}

function OnCue (string cue)
{
}

function OnAnimEnd (int Channel)
{
}

function PostFinish ()
{
}

function bool MoveToGoal ()
{
  return False;
}

function bool TurnToGoal ()
{
  return False;
}

function Actor GetMoveTargetFor (KWCutController C)
{
  return None;
}

function ActionFinished (KWCutController C)
{
}

function CLog (string Str)
{
  local Object ClogOBJ;

  ClogOBJ = new Class'CutLogObj';
  //Class'CutLogObj'.CLog("[" $ GetActionString() $ "]:" $ Str);
  //ClogOBJ.CLog("[" $ GetActionString() $ "]:" $ Str);
  CLog("[" $ GetActionString() $ "]:" $ Str);
}

function bool InitActionFor (KWCutController C)
{
  return False;
}

function bool EndsSection ()
{
  return False;
}

function bool StartsSection ()
{
  return False;
}

function KWScriptedSequence GetScript (KWScriptedSequence S)
{
  return S;
}

function ProceedToNextAction (KWCutController C)
{
  C.ActionNum += 1;
}

function ProceedToSectionEnd (KWCutController C)
{
  local int Nesting;
  local KWScriptedAction A;

  if ( C.ActionNum < C.Actions.Length )
  {
    A = C.Actions[C.ActionNum];
    if ( A.StartsSection() )
    {
      Nesting++;
    } else {
      if ( A.EndsSection() )
      {
        Nesting--;
        if ( Nesting < 0 )
        {
          return;
        }
      }
    }
    C.ActionNum += 1;
    //goto JL0000;
  }
}

function string GetActionString ()
{
  return ActionString;
}

function SerializeFrom (string arg)
{
}

defaultproperties
{
    ActionString="unspecified action"

    bValidForTrigger=True

}