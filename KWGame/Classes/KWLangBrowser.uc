//================================================================================
// KWLangBrowser.
//================================================================================

class KWLangBrowser extends UWindowDialogClientWindow;

struct BrowserStruct
{
  var string Key;
  var string Dialog;
  var string Status;
};

var array<BrowserStruct> BrowserData;
var bool bAlreadyLoaded;

function Created ()
{
}

function Paint (Canvas Canvas, float X, float Y)
{
}

function LoadDialogKeysSub (string Key)
{
}

function LoadDialogKeys ()
{
}

function PreSwitchPage ()
{
}

function Notify (UWindowDialogControl C, byte E)
{
}

defaultproperties
{
}
