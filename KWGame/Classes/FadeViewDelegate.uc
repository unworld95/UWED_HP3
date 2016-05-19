//================================================================================
// FadeViewDelegate.
//================================================================================

class FadeViewDelegate extends UWActor;

var() bool bFadeFlash;
var() float FadeTime;
var float fTimeSoFar;
var() Vector FadeEnd;
var() float FadeEndAlpha;
var Vector FadeStart;
var float FadeStartAlpha;
var enumMoveType MoveType;
var float CurTime;
var PlayerController Player;
var bool bIsFading;

event BeginPlay ()
{
  Super.BeginPlay();
  Player = KWGame(Level.Game).GetHeroController();
  if ( Player == None )
  {
    Destroy();
  }
  DestroyAllFadeViewDelegates();
}

function Init (float A, float R, float G, float B, float fTime, optional bool bFlash)
{
  FadeEndAlpha = FClamp(1.0 - A,0.0,1.0);
  FadeEnd.X = FClamp(R,0.0,1.0);
  FadeEnd.Y = FClamp(G,0.0,1.0);
  FadeEnd.Z = FClamp(B,0.0,1.0);
  fTimeSoFar = 0.0;
  FadeTime = fTime;
  bFadeFlash = bFlash;
  //MoveType = mtype;
  bIsFading = True;
  CurTime = 0.0;
  if ( bFadeFlash )
  {
    FadeTime = FadeTime / 2;
  }
  FadeStart = KWHeroController(Player).FlashFog;
  FadeStartAlpha = KWHeroController(Player).FlashScale.X;
  GotoState('stateFlash');
}

function DestroyAllFadeViewDelegates ()
{
  local FadeViewDelegate A;

  foreach AllActors(Class'FadeViewDelegate',A)
  {
    if ( A != self )
    {
      A.Finish();
    }
  }
}

function Finish ()
{
  Destroy();
}

state stateFlash
{
  event Tick (float fTimeDelta)
  {
    local float fSpeedAndTime;
  
    fTimeSoFar = 0.0;
    if ( CurTime <= FadeTime )
    {
      if ( bFadeFlash )
      {
        KWHeroController(Player).FlashFog = FadeEnd;
        KWHeroController(Player).FlashScale.X = FadeEndAlpha;
      } else {
        fSpeedAndTime = EaseFunction(CurTime / FadeTime,MoveType);
        KWHeroController(Player).FlashFog.X = (FadeEnd.X - FadeStart.X) * fSpeedAndTime + FadeStart.X;
        KWHeroController(Player).FlashFog.Y = (FadeEnd.Y - FadeStart.Y) * fSpeedAndTime + FadeStart.Y;
        KWHeroController(Player).FlashFog.Z = (FadeEnd.Z - FadeStart.Z) * fSpeedAndTime + FadeStart.Z;
        KWHeroController(Player).FlashScale.X = (FadeEndAlpha - FadeStartAlpha) * fSpeedAndTime + FadeStartAlpha;
      }
    } else {
      bIsFading = False;
      Finish();
    }
    CurTime += fTimeDelta;
  }
  
  function Finish ()
  {
    if ( bFadeFlash )
    {
      KWHeroController(Player).FlashFog = FadeStart;
      KWHeroController(Player).FlashScale.X = FadeStartAlpha;
    } else {
      KWHeroController(Player).FlashFog = FadeEnd;
      KWHeroController(Player).FlashScale.X = FadeEndAlpha;
    }
    Destroy();
  }
  
}

defaultproperties
{
    bHidden=True

}