//================================================================================
// ACTION_KWFadeView.
//================================================================================

class ACTION_KWFadeView extends ACTION_FadeView;

var(Action) Color TargetColor;
var(Action) float InnerRadius;
var(Action) float OuterRadius;
var Color OldFogColor;
var float OldInnerR;
var float OldOuterR;
var PhysicsVolume Volume;
var bool bDidHaveFog;
var float factor;

// UW Added
/*
function bool InitActionFor (ScriptedController C)
{
  Volume = KWGame(C.Level.Game).GetHeroController().Camera.PhysicsVolume;
  OldFogColor = Volume.DistanceFogColor;
  OldInnerR = Volume.DistanceFogStart;
  OldOuterR = Volume.DistanceFogEnd;
  bDidHaveFog = Volume.bDistanceFog;
  Volume.bDistanceFog = True;
  return True;
}

function bool TickedAction ()
{
  return True;
}

function Cleanup ()
{
}

function bool StillTicking (ScriptedController C, float DeltaTime)
{
  local float temp;

  factor += DeltaTime / FadeTime;
  if ( factor >= 1 )
  {
    Cleanup();
    C.CompleteAction();
    return False;
  }
  temp = (TargetColor.R - OldFogColor.R) * factor + Volume.DistanceFogColor.R;
  Volume.DistanceFogColor.R = byte(temp);
  Volume.DistanceFogColor.G = byte((TargetColor.G - OldFogColor.G) * factor + OldFogColor.G);
  Volume.DistanceFogColor.B = byte((TargetColor.B - OldFogColor.B) * factor + OldFogColor.B);
  Volume.DistanceFogStart = (InnerRadius - OldInnerR) * factor + OldInnerR;
  Volume.DistanceFogEnd = (OuterRadius - OldOuterR) * factor + OldOuterR;
  return True;
}
*/
//UWEnd

defaultproperties
{
     ActionString="KWfade view"
}
