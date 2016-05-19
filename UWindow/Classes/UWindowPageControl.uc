//================================================================================
// UWindowPageControl.
//================================================================================

class UWindowPageControl extends UWindowTabControl;

function ResolutionChanged (float W, float H)
{
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

function GetDesiredDimensions (out float W, out float H)
{
}

function BeforePaint (Canvas C, float X, float Y)
{
}

function Paint (Canvas C, float X, float Y)
{
}

function UWindowPageControlPage AddPage (string Caption, Class<UWindowPageWindow> PageClass, optional name ObjectName)
{
  local UWindowPageControlPage P;
  return P;
}

function UWindowPageControlPage InsertPage (UWindowPageControlPage BeforePage, string Caption, Class<UWindowPageWindow> PageClass, optional name ObjectName)
{
  local UWindowPageControlPage P;
  return P;
}

function UWindowPageControlPage GetPage (string Caption)
{
  return UWindowPageControlPage(GetTab(Caption));
}

function DeletePage (UWindowPageControlPage P)
{
}

function Close (optional bool bByParent)
{
}

function GotoTab (UWindowTabControlItem NewSelected, optional bool bByUser)
{
}

function UWindowPageControlPage FirstPage ()
{
  return UWindowPageControlPage(Items.Next);
}

defaultproperties
{
     ListClass=Class'UWindow.UWindowPageControlPage'
}
