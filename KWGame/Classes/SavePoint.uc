//================================================================================
// SavePoint.
//================================================================================

class SavePoint extends Info
  Placeable
  ShowCategories(Collision);

var() bool bSaveOnce;
var() float fMinHealthPercent;
var bool bActive;

defaultproperties
{
     bSaveOnce=True
     bHidden=False
     bUnlit=True
     SoundRadius=16.000000
     SoundVolume=44
     bCollideActors=True
}
