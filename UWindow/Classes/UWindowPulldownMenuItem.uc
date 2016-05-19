//================================================================================
// UWindowPulldownMenuItem.
//================================================================================

class UWindowPulldownMenuItem extends UWindowList;

var string Caption;
var Texture Graphic;
var byte HotKey;
var UWindowPulldownMenu SubMenu;
var bool bChecked;
var bool bDisabled;
var UWindowPulldownMenu Owner;
var float ItemTop;

function UWindowPulldownMenu CreateSubMenu (Class<UWindowPulldownMenu> MenuClass, optional UWindowWindow InOwnerWindow)
{
  return SubMenu;
}

function Select ()
{
}

function SetCaption (string C)
{
}

function DeSelect ()
{
}

function CloseUp ()
{
}

function UWindowMenuBar GetMenuBar ()
{
  return Owner.GetMenuBar();
}

defaultproperties
{
}
