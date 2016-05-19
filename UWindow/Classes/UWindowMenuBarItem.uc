//================================================================================
// UWindowMenuBarItem.
//================================================================================

class UWindowMenuBarItem extends UWindowList;

var string Caption;
var UWindowMenuBar Owner;
var UWindowPulldownMenu Menu;
var float ItemLeft;
var float ItemWidth;
var bool bHelp;
var byte HotKey;

function SetHelp (bool B)
{
}

function SetCaption (string C)
{
}

function UWindowPulldownMenu CreateMenu (Class<UWindowPulldownMenu> MenuClass)
{
  return Menu;
}

function DeSelect ()
{
}

function Select ()
{
}

function CloseUp ()
{
  Owner.CloseUp();
}

function UWindowMenuBar GetMenuBar ()
{
  return Owner.GetMenuBar();
}

defaultproperties
{
}
