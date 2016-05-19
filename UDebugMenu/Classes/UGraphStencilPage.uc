//================================================================================
// UGraphStencilPage.
//================================================================================

class UGraphStencilPage extends UWindowPageWindow Config(StencilOptions);

var UWindowLabelControl Labels[3];
var localized string StatNameText[3];
var localized string CatNameText;
var UWindowEditControl DesiredMaxEdit[3];
var localized string DesiredMaxText;
var UWindowCheckbox UseBarStatCheck[3];
var localized string UseBarStatText;
var UWindowCheckbox UseLineStatCheck[3];
var localized string UseLineStatText;
var UWindowCheckbox SmallIsBadCheck[3];
var localized string SmallIsBadText;
var config string DesiredMaxEditSettings[3];
var config int SmallIsBadSettings[3];
var config int UseBarStatSettings[3];
var config int UseLineStatSettings[3];
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
     StatNameText(0)="Render"
     StatNameText(1)="Nodes"
     StatNameText(2)="Triangles"
     CatNameText="Stencil"
     DesiredMaxText="Target Max"
     UseBarStatText="Bar graph"
     UseLineStatText="Line graph"
     SmallIsBadText="Small values are bad"
}
