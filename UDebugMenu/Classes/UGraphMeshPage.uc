//================================================================================
// UGraphMeshPage.
//================================================================================

class UGraphMeshPage extends UWindowPageWindow Config(MeshOptions);

var UWindowLabelControl Labels[7];
var string StatNameText[7];
var string CatNameText;
var UWindowEditControl DesiredMaxEdit[7];
var string DesiredMaxText;
var UWindowCheckbox UseBarStatCheck[7];
var string UseBarStatText;
var UWindowCheckbox UseLineStatCheck[7];
var string UseLineStatText;
var UWindowCheckbox SmallIsBadCheck[7];
var string SmallIsBadText;
var config string DesiredMaxEditSettings[7];
var config int SmallIsBadSettings[7];
var config int UseBarStatSettings[7];
var config int UseLineStatSettings[7];
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
     StatNameText(0)="Result"
     StatNameText(1)="LOD"
     StatNameText(2)="Skel"
     StatNameText(3)="Pose"
     StatNameText(4)="Rigid"
     StatNameText(5)="Draw"
     StatNameText(6)="SpriteSetup"
     CatNameText="Mesh"
     DesiredMaxText="Target Max"
     UseBarStatText="Bar graph"
     UseLineStatText="Line graph"
     SmallIsBadText="Small values are bad"
}
