//================================================================================
// UWindowEditControl.
//================================================================================

class UWindowEditControl extends UWindowDialogControl;

var float EditBoxWidth;
var float EditAreaDrawX;
var float EditAreaDrawY;
var UWindowEditBox EditBox;

function Created ()
{
}

function SetNumericOnly (bool bNumericOnly)
{
}

function SetNumericFloat (bool bNumericFloat)
{
}

function SetFont (int NewFont)
{
}

function SetHistory (bool bInHistory)
{
}

function SetEditTextColor (Color NewColor)
{
}

function Clear ()
{
  EditBox.Clear();
}

function string GetValue ()
{
  return EditBox.GetValue();
}

function SetValue (string NewValue)
{
}

function SetMaxLength (int MaxLength)
{
}

function Paint (Canvas C, float X, float Y)
{
}

function BeforePaint (Canvas C, float X, float Y)
{
}

function SetDelayedNotify (bool bDelayedNotify)
{
}

defaultproperties
{
}
