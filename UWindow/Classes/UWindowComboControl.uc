//================================================================================
// UWindowComboControl.
//================================================================================

class UWindowComboControl extends UWindowDialogControl;

var float EditBoxWidth;
var float EditAreaDrawX;
var float EditAreaDrawY;
var UWindowEditBox EditBox;
var UWindowComboButton Button;
var UWindowComboLeftButton LeftButton;
var UWindowComboRightButton RightButton;
var Class<UWindowComboList> ListClass;
var UWindowComboList List;
var bool bListVisible;
var bool bCanEdit;
var bool bButtons;

function Created ()
{
}

function SetButtons (bool bInButtons)
{

}

function Notify (byte E)
{
}

function int FindItemIndex (string V, optional bool bIgnoreCase)
{
  return List.FindItemIndex(V,bIgnoreCase);
}

function RemoveItem (int Index)
{
}

function int FindItemIndex2 (string v2, optional bool bIgnoreCase)
{
  return List.FindItemIndex2(v2,bIgnoreCase);
}

function Close (optional bool bByParent)
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

function SetEditTextColor (Color NewColor)
{
}

function SetEditable (bool bNewCanEdit)
{
}

function int GetSelectedIndex ()
{
  return List.FindItemIndex(GetValue());
}

function SetSelectedIndex (int Index)
{
}

function string GetValue ()
{
  return EditBox.GetValue();
}

function string GetValue2 ()
{
  return EditBox.GetValue2();
}

function SetValue (string NewValue, optional string NewValue2)
{
}

function SetMaxLength (int MaxLength)
{
}

function Paint (Canvas C, float X, float Y)
{
}

function AddItem (string S, optional string s2, optional int SortWeight)
{
}

function InsertItem (string S, optional string s2, optional int SortWeight)
{
}

function BeforePaint (Canvas C, float X, float Y)
{
}

function CloseUp ()
{
}

function DropDown ()
{
}

function Sort ()
{
}

function ClearValue ()
{
}

function Clear ()
{
}

function FocusOtherWindow (UWindowWindow W)
{
}

defaultproperties
{
     ListClass=Class'UWindow.UWindowComboList'
     bNoKeyboard=True
}
