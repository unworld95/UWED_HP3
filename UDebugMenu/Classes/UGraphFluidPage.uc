//================================================================================
// UGraphFluidPage.
//================================================================================

class UGraphFluidPage extends UWindowPageWindow Config(FluidOptions);

var UWindowLabelControl Labels[3];
var string StatNameText[3];
var string CatNameText;
var UWindowEditControl DesiredMaxEdit[3];
var string DesiredMaxText;
var UWindowCheckbox UseBarStatCheck[3];
var string UseBarStatText;
var UWindowCheckbox UseLineStatCheck[3];
var string UseLineStatText;
var UWindowCheckbox SmallIsBadCheck[3];
var string SmallIsBadText;
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

function Change (int nIndex)
{
}

defaultproperties
{
     StatNameText(0)="Render"
     StatNameText(1)="Ping"
     StatNameText(2)="Channels"
     CatNameText="Fluid"
     DesiredMaxText="Target Max"
     UseBarStatText="Bar graph"
     UseLineStatText="Line graph"
     SmallIsBadText="Small values are bad"
}
