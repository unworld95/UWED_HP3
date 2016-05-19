Class HudItemHealth extends KWHudItemFade;

struct SlotStruct
{
  var float L;
  var float t;
  var float W;
  var float H;
  var float BarL;
  var float BarW;
  var Vector pos;
  var Rotator RotCW;
  var Rotator RotCCW;
};

struct IconStruct
{
  var KWPawn Pawn;
  var Texture Texture;
  var int SlotID;
  var SlotStruct slot;
};

var float GHOST_W;
var float GHOST_H;
var float GHOST_BAR_W;
var float GHOST_BAR_L;
var float GLOW_L;
var float GLOW_T;
var float GLOW_W;
var float GLOW_H;
var IconStruct Icon[3];
var SlotStruct slot[3];
var int Leader;
var int OldLeader;
var int CompanionCount;
var bool HideHarry;
var bool HideHermione;
var bool HideRon;
var Vector Center;
var float Radius;
var float TickDelta;
var int Completed;
var Sound RotationSound;
var Texture Glow[5];
var int GlowFrame;
var bool GlowIncrease;
var Sound GlowSound;
var int rotDirection;
var float deltaSizeW;
var float deltaSizeH;
var float deltaSizeBarW;
var float deltaSizeBarL;
var bool bRotating;
var bool bGlowing;
var Texture textureEmpty;
var int LastCanvasSizeX;
var bool HealthIsCritical;

defaultproperties
{
}
