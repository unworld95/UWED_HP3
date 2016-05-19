//================================================================================
// UGraphMatineePage.
//================================================================================

class UGraphMatineePage extends UWindowPageWindow Config(MatineeOptions);

var UWindowLabelControl Labels;
var string StatNameText;
var string CatNameText;
var UWindowEditControl DesiredMaxEdit;
var string DesiredMaxText;
var UWindowCheckbox UseBarStatCheck;
var string UseBarStatText;
var UWindowCheckbox UseLineStatCheck;
var string UseLineStatText;
var UWindowCheckbox SmallIsBadCheck;
var string SmallIsBadText;
var config string DesiredMaxEditSettings;
var config int SmallIsBadSettings;
var config int UseBarStatSettings;
var config int UseLineStatSettings;
var bool bIsLoading;
var bool bShouldDelayChange;

function Created ()
{
  Super.Created();
}

function Notify (UWindowDialogControl C, byte E)
{
  Super.Notify(C,E);
}

function Change (int nIndex)
{
}

defaultproperties
{
     StatNameText="Skin"
     CatNameText="Matinee"
     DesiredMaxText="Target Max"
     UseBarStatText="Bar graph"
     UseLineStatText="Line graph"
     SmallIsBadText="Small values are bad"
}
