Class HudItemTimer extends KWHudItemTimer;

var Texture tIcon;
var Texture tEmpty;
var float toggleTime;
var bool toggleOn;
var Sound TickSound;
var Sound PulseSound;
var float TickTime;

defaultproperties
{
     TickSound=Sound'SoundEffects.common.beanbonus_clock'
     PulseSound=Sound'SoundEffects.common.beanbonus_timer'
}
