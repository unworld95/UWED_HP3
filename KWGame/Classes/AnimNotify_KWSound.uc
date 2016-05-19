//================================================================================
// AnimNotify_KWSound.
//================================================================================

class AnimNotify_KWSound extends AnimNotify_Scripted;

var Sound Sound;
var float Volume;
var float Radius;
var float Pitch;
var Range PitchRandRange;
var bool bNoOverride;
var bool bAttenuate;
var bool No3D;

event Notify (Actor Owner)
{
}

defaultproperties
{
     Volume=0.300000
     Radius=300.000000
     Pitch=1.000000
     bAttenuate=True
}
