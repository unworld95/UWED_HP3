//================================================================================
// UGraphLightMapPage.
//================================================================================

class UGraphLightMapPage extends UWindowPageWindow Config(LightMapOptions);

var UWindowLabelControl Labels[2];
var string StatNameText[2];
var string CatNameText;
var UWindowEditControl DesiredMaxEdit[2];
var string DesiredMaxText;
var UWindowCheckbox UseBarStatCheck[2];
var string UseBarStatText;
var UWindowCheckbox UseLineStatCheck[2];
var string UseLineStatText;
var UWindowCheckbox SmallIsBadCheck[2];
var string SmallIsBadText;
var config string DesiredMaxEditSettings[2];
var config int SmallIsBadSettings[2];
var config int UseBarStatSettings[2];
var config int UseLineStatSettings[2];
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
     StatNameText(0)="Updates"
     StatNameText(1)="Time"
     CatNameText="LightMap"
     DesiredMaxText="Target Max"
     UseBarStatText="Bar graph"
     UseLineStatText="Line graph"
     SmallIsBadText="Small values are bad"
}
