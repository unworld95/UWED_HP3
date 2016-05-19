Class HudItemCountdown extends KWHudItemFade;

struct FrameStruct
{
  var Texture Texture;
  var float Duration;
};

struct IconStruct
{
  var float L;
  var float t;
  var float W;
  var float H;
  var FrameStruct frame[2];
  var int CurFrame;
};

const ICON_MAX= 3;
const HOLD_TIME= 1.2;
const START_TIME= 0.5;
const SOUND_RADIUS= 400;
const SOUND_VOL= 256;
const GLOW_SCALE= 1.2;
const TIMER_H= 0.21333;
const TIMER_W= 0.16;
const TIMER_T= 0.0;
const TIMER_L= 0.75;
const GLOW_H= 0.16667;
const GLOW_W= 0.125;
const GLOW_T= 0.0;
const GLOW_L= 0.75;
const POS3_H= 0.21333;
const POS3_W= 0.16;
const POS3_T= 0.393333335;
const POS3_L= 0.67;
const POS2_H= 0.21333;
const POS2_W= 0.16;
const POS2_T= 0.393333335;
const POS2_L= 0.42;
const POS1_H= 0.21333;
const POS1_W= 0.16;
const POS1_T= 0.393333335;
const POS1_L= 0.17;
var HippoFlyGame GameManager;
var IconStruct Icon[3];
var int CurImage;
var int LastCanvasSizeX;
var float GlowL;
var float GlowT;
var float GlowW;
var float GlowH;
var float TimerL;
var float TimerT;
var float TimerW;
var float TimerH;
var Texture Glow[5];
var int GlowFrame;
var bool GlowIncrease;
var Sound GlowSound;
var Texture TimerIcon[2];
var int HudTimerID;
var float HudTimerTime;
var array<SoundGroup> CountSound;

defaultproperties
{
     CountSound(0)=(Sound=Sound'SoundEffects.Objects.comc_hudcountdown',Volume=10.000000,PitchRange=(Min=1.000000,Max=1.000000))
}
