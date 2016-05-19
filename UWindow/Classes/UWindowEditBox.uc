//================================================================================
// UWindowEditBox.
//================================================================================

class UWindowEditBox extends UWindowDialogControl;

var string Value;
var string Value2;
var int CaretOffset;
var int MaxLength;
var float LastDrawTime;
var bool bShowCaret;
var float offset;
var UWindowDialogControl NotifyOwner;
var bool bNumericOnly;
var bool bNumericFloat;
var bool bCanEdit;
var bool bAllSelected;
var bool bSelectOnFocus;
var bool bDelayedNotify;
var bool bChangePending;
var bool bControlDown;
var bool bShiftDown;
var bool bHistory;
var bool bKeyDown;
var UWindowEditBoxHistory HistoryList;
var UWindowEditBoxHistory CurrentHistory;

function Created ()
{
}

function SetHistory (bool bInHistory)
{
}

function SetEditable (bool bEditable)
{
}

function SetValue (string NewValue, optional string NewValue2)
{
}

function Clear ()
{
}

function SelectAll ()
{
}

function string GetValue ()
{
  return Value;
}

function string GetValue2 ()
{
  return Value2;
}

function Notify (byte E)
{
}

function InsertText (string Text)
{
}

function bool Insert (byte C)
{
  return True;
}

function bool Backspace ()
{
  return True;
}

function bool Delete ()
{
  return True;
}

function bool WordLeft ()
{
  return True;
}

function bool MoveLeft ()
{
  return True;
}

function bool MoveRight ()
{
  return True;
}

function bool WordRight ()
{
  return True;
}

function bool MoveHome ()
{
  return True;
}

function bool MoveEnd ()
{
  return True;
}

function EditCopy ()
{
}

function EditPaste ()
{
}

function EditCut ()
{
}

function KeyPressed (int Key, float MouseX, float MouseY)
{
}

function KeyUp (int Key, float X, float Y)
{
}

function KeyDown (int Key, float X, float Y)
{
}

function Click (float X, float Y)
{
}

function LMouseDown (float X, float Y)
{
}

function Paint (Canvas C, float X, float Y)
{
}

function Close (optional bool bByParent)
{
}

function FocusOtherWindow (UWindowWindow W)
{
}

function KeyFocusEnter ()
{
}

function DoubleClick (float X, float Y)
{
}

function KeyFocusExit ()
{
}

defaultproperties
{
}
