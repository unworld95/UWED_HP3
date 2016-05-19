//================================================================================
// UDebugMapListCW.
//================================================================================

class UDebugMapListCW extends UWindowDialogClientWindow;

var UDebugMapListBox MapList;
var UWindowSmallCloseButton CloseButton;
var UDebugSmallLoadMapButton OKButton;
var UWindowComboControl GameCombo;
var UWindowComboControl NetworkCombo;
var globalconfig string LastGameType;

function Created ()
{
  Super.Created();
}

function BeforePaint (Canvas C, float X, float Y)
{
  Super.BeforePaint(C,X,Y);
}

function Paint (Canvas C, float X, float Y)
{
  Super.Paint(C,X,Y);
}

function Resized ()
{
}

function LoadMapList ()
{
}

function Notify (UWindowDialogControl C, byte E)
{
}

function WindowEvent (WinMessage Msg, Canvas C, float X, float Y, int Key)
{
	return;
}

defaultproperties
{
}
