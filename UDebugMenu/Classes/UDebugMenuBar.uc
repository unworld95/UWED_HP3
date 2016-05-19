//================================================================================
// UDebugMenuBar.
//================================================================================

class UDebugMenuBar extends UWindowMenuBar;

var UWindowPulldownMenu Game;
var UWindowPulldownMenu RModes;
var UWindowPulldownMenu Rend;
var UWindowPulldownMenu KDraw;
var UWindowPulldownMenu Stats;
var UWindowPulldownMenu Show;
var UWindowPulldownMenu Player;
var UWindowPulldownMenu Options;
var UWindowMenuBarItem GameItem;
var UWindowMenuBarItem RModesItem;
var UWindowMenuBarItem RendItem;
var UWindowMenuBarItem KDrawItem;
var UWindowMenuBarItem StatsItem;
var UWindowMenuBarItem ShowItem;
var UWindowMenuBarItem PlayerItem;
var UWindowMenuBarItem OptionsItem;
var bool bShowMenu;
var UDebugGraphWindow graphOptions;

function Created ()
{
  Super.Created();
}

function InitGraphConfig ()
{
}

function SetHelp (string NewHelpText)
{
}

function ShowHelpItem (UWindowMenuBarItem i)
{
}

function BeforePaint (Canvas C, float X, float Y)
{
  Super.BeforePaint(C,X,Y);
}

function DrawItem (Canvas C, UWindowList item, float X, float Y, float W, float H)
{
}

function DrawMenuBar (Canvas C)
{
}

function LMouseDown (float X, float Y)
{
  Super.LMouseDown(X,Y);
}

function NotifyQuitUnreal ()
{
}

function NotifyBeforeLevelChange ()
{
}

function NotifyAfterLevelChange ()
{
}

function MenuCmd (int Menu, int item)
{
  Super.MenuCmd(Menu,item);
}

function WindowEvent (WinMessage Msg, Canvas C, float X, float Y, int Key)
{
}

function Paint (Canvas C, float MouseX, float MouseY)
{
}

function MenuItemSelected (UWindowBase Sender, UWindowBase item)
{
}

defaultproperties
{
}
