//================================================================================
// UGraphNetPage.
//================================================================================

class UGraphNetPage extends UWindowPageWindow Config(NetOptions);

var UWindowLabelControl Labels[9];
var string StatNameText[9];
var string CatNameText;
var UWindowEditControl DesiredMaxEdit[9];
var string DesiredMaxText;
var UWindowCheckbox UseBarStatCheck[9];
var string UseBarStatText;
var UWindowCheckbox UseLineStatCheck[9];
var string UseLineStatText;
var UWindowCheckbox SmallIsBadCheck[9];
var string SmallIsBadText;
var config string DesiredMaxEditSettings[9];
var config int SmallIsBadSettings[9];
var config int UseBarStatSettings[9];
var config int UseLineStatSettings[9];
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
     StatNameText(0)="Unorderd"
     StatNameText(1)="Unordered"
     StatNameText(2)="PacketLoss"
     StatNameText(3)="Packets"
     StatNameText(4)="Bunches"
     StatNameText(5)="Bytes"
     StatNameText(6)="Speed"
     StatNameText(7)="NumPrimitives"
     StatNameText(8)="NumTextures"
     CatNameText="Net"
     DesiredMaxText="Target Max"
     UseBarStatText="Bar graph"
     UseLineStatText="Line graph"
     SmallIsBadText="Small values are bad"
}
