//================================================================================
// FadeActorDelegate.
//================================================================================

class FadeActorDelegate extends Actor;

var() float FadeTime;
var() Color FadeEnd;
var() Color FadeStart;
var Color NeutralColor;
var float CurTime;
var Actor ActorToFade;
var bool bDestroy;
var bool bIsFading;


state stateFlash
{
}

defaultproperties
{
     NeutralColor=(B=128,G=128,R=128,A=255)
     bHidden=True
}
