//================================================================================
// UGraphKarmaPage.
//================================================================================

class UGraphKarmaPage extends UWindowPageWindow Config(KarmaOptions);

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
     StatNameText(0)="  ContactGen"
     StatNameText(1)="  TrilistGen"
     StatNameText(2)="RagdollTrilist"
     StatNameText(3)="Dynamics"
     StatNameText(4)="physKarma"
     StatNameText(5)="physKarma Constraint"
     StatNameText(6)="physKarmaRagdoll"
     StatNameText(7)="Temp"
     StatNameText(8)="Script"
     CatNameText="Karma"
     DesiredMaxText="Target Max"
     UseBarStatText="Bar graph"
     UseLineStatText="Line graph"
     SmallIsBadText="Small values are bad"
}
