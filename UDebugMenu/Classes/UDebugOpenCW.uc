//================================================================================
// UDebugOpenCW.
//================================================================================

class UDebugOpenCW extends UWindowDialogClientWindow;

var UWindowComboControl OpenCombo;
var string OpenText;
var string OpenHelp;
var config string OpenHistory[10];

function Created ()
{
	Super.Created();
}

function Notify (UWindowDialogControl C, byte E)
{
}

function OpenURL ()
{
}

defaultproperties
{
     OpenText="Open:"
     OpenHelp="Enter a standard URL, or select one from the URL history.  Press Enter to activate."
}
