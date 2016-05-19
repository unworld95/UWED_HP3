//================================================================================
// UGraphBSPPage.
//================================================================================

class UGraphBSPPage extends UWindowPageWindow Config(BSPOptions);

var UWindowLabelControl Labels[6];
var string StatNameText[6];
var string CatNameText;
var UWindowEditControl DesiredMaxEdit[6];
var string DesiredMaxText;
var UWindowCheckbox UseBarStatCheck[6];
var string UseBarStatText;
var UWindowCheckbox UseLineStatCheck[6];
var string UseLineStatText;
var UWindowCheckbox SmallIsBadCheck[6];
var string SmallIsBadText;
var config string DesiredMaxEditSettings[6];
var config int SmallIsBadSettings[6];
var config int UseBarStatSettings[6];
var config int UseLineStatSettings[6];
var bool bIsLoading;
var bool bShouldDelayChange;

function Created ()
{
  Super.Created();
}

function Notify (UWindowDialogControl C, byte E)
{
}

function Change (int nIndex)
{
}

defaultproperties
{
     StatNameText(0)="Render"
     StatNameText(1)="Sections"
     StatNameText(2)="Nodes"
     StatNameText(3)="Triangles"
     StatNameText(4)="DynamicLighting"
     StatNameText(5)="DynamicLights"
     CatNameText="BSP"
     DesiredMaxText="Target Max"
     UseBarStatText="Bar graph"
     UseLineStatText="Line graph"
     SmallIsBadText="Small values are bad"
}
