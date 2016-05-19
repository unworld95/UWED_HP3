Class MotionFX extends UWEmitter;

var float fTimeToFade;
var float fTimeSoFar;
var float fSavedLightBrightness;

defaultproperties
{
     Begin Object Class=RibbonEmitter Name=RibbonEmitter0
         DecayRate=50.000000
         AxisNormal=(Y=1.000000)
         NumSheets=1
         bUseBones=True
         Texture=Texture'HP3_FX.Particles.ConfettiPiece'
         Name="RibbonEmitter0"
     End Object
     Emitters(0)=RibbonEmitter'HGame.MotionFX.RibbonEmitter0'
     Physics=PHYS_Trailer
     bNoDelete=False
     bHardAttach=True
}
