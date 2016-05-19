//================================================================================
// UGraphStatsPage.
//================================================================================

class UGraphStatsPage extends UWindowPageWindow Config(StatsOptions);

var UWindowLabelControl Labels;
var localized string StatNameText;
var localized string CatNameText;
var UWindowEditControl DesiredMaxEdit;
var localized string DesiredMaxText;
var UWindowCheckbox UseBarStatCheck;
var localized string UseBarStatText;
var UWindowCheckbox UseLineStatCheck;
var localized string UseLineStatText;
var UWindowCheckbox SmallIsBadCheck;
var localized string SmallIsBadText;
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
     StatNameText="StaticMesh"
     CatNameText="Stats"
     DesiredMaxText="Target Max"
     UseBarStatText="Bar graph"
     UseLineStatText="Line graph"
     SmallIsBadText="Small values are bad"
}
