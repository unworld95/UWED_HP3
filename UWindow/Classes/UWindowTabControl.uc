//================================================================================
// UWindowTabControl.
//================================================================================

class UWindowTabControl extends UWindowListControl;

var UWindowTabControlLeftButton LeftButton;
var UWindowTabControlRightButton RightButton;
var UWindowTabControlTabArea TabArea;
var UWindowTabControlItem SelectedTab;
var bool bMultiLine;
var bool bSelectNearestTabOnRemove;

function Created ()
{
  Super.Created();
}

function BeforePaint (Canvas C, float X, float Y)
{
}

function SetMultiLine (bool InMultiLine)
{
}

function Paint (Canvas C, float X, float Y)
{
}

function UWindowTabControlItem AddTab (string Caption)
{
  local UWindowTabControlItem i;
  return i;
}

function UWindowTabControlItem InsertTab (UWindowTabControlItem BeforeTab, string Caption)
{
  local UWindowTabControlItem i;
  return i;
}

function GotoTab (UWindowTabControlItem NewSelected, optional bool bByUser)
{
}

function UWindowTabControlItem GetTab (string Caption)
{
  return None;
}

function DeleteTab (UWindowTabControlItem tab)
{
}

defaultproperties
{
     ListClass=Class'UWindow.UWindowTabControlItem'
}
