//================================================================================
// KWMusicTrigger.
//================================================================================

class KWMusicTrigger extends Trigger;

var() string Song;
var() float FadeInTime;
var() float FadeOutTime;
var() bool FadeOutAllSongs;
var() bool DoNotLoop;
var() bool Stab;
var transient bool Triggered;
var transient int SongHandle;
var float fCurrTime;

function Activate (Actor Other, Pawn Instigator)
{
}

function Tick (float t)
{
}

function DoIt (Actor Other)
{
}

defaultproperties
{
     FadeInTime=1.000000
     FadeOutTime=1.000000
     Texture=Texture'KWGame.MusicTriggerIcon'
}
