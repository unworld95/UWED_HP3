//================================================================================
// UGraphGamePage.
//================================================================================

class UGraphGamePage extends UWindowPageWindow Config(GameOptions);

var UWindowLabelControl Labels[16];
var string StatNameText[16];
var string CatNameText;
var UWindowEditControl DesiredMaxEdit[16];
var string DesiredMaxText;
var UWindowCheckbox UseBarStatCheck[16];
var string UseBarStatText;
var UWindowCheckbox UseLineStatCheck[16];
var string UseLineStatText;
var UWindowCheckbox SmallIsBadCheck[16];
var string SmallIsBadText;
var config string DesiredMaxEditSettings[16];
var config int SmallIsBadSettings[16];
var config int UseBarStatSettings[16];
var config int UseLineStatSettings[16];
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
     StatNameText(0)="ScriptTick"
     StatNameText(1)="Actor"
     StatNameText(2)="Path"
     StatNameText(3)="See"
     StatNameText(4)="Spawning"
     StatNameText(5)="Audio"
     StatNameText(6)="CleanupDestroyed"
     StatNameText(7)="Unused"
     StatNameText(8)="Net"
     StatNameText(9)="Particle"
     StatNameText(10)="Canvas"
     StatNameText(11)="Move"
     StatNameText(12)="Physics"
     StatNameText(13)="MLChecks"
     StatNameText(14)="MPChecks"
     StatNameText(15)="RenderData"
     CatNameText="Game"
     DesiredMaxText="Target Max"
     UseBarStatText="Bar graph"
     UseLineStatText="Line graph"
     SmallIsBadText="Small values are bad"
}
