//================================================================================
// UGraphParticlePage.
//================================================================================

class UGraphParticlePage extends UWindowPageWindow Config(ParticleOptions);

var UWindowLabelControl Labels[4];
var string StatNameText[4];
var string CatNameText;
var UWindowEditControl DesiredMaxEdit[4];
var string DesiredMaxText;
var UWindowCheckbox UseBarStatCheck[4];
var string UseBarStatText;
var UWindowCheckbox UseLineStatCheck[4];
var string UseLineStatText;
var UWindowCheckbox SmallIsBadCheck[4];
var string SmallIsBadText;
var config string DesiredMaxEditSettings[4];
var config int SmallIsBadSettings[4];
var config int UseBarStatSettings[4];
var config int UseLineStatSettings[4];
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
     StatNameText(0)="Particles"
     StatNameText(1)="ParticlesTicked"
     StatNameText(2)="Render"
     StatNameText(3)="Triangles"
     CatNameText="Particle"
     DesiredMaxText="Target Max"
     UseBarStatText="Bar graph"
     UseLineStatText="Line graph"
     SmallIsBadText="Small values are bad"
}
