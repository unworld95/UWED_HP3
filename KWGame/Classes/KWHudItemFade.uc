//================================================================================
// KWHudItemFade.
//================================================================================

class KWHudItemFade extends KWHudItem;

var float fCurrFadeInTime;
var float fCurrFadeOutTime;
var float fCurrHoldTime;
var float fTotalFadeInTime;
var float fTotalFadeOutTime;
var float fTotalHoldTime;
var bool bHoldIndefinitely;

function int CalcFadeValue (bool bIn, float fCurrTime, float fTotalTime)
{
  local int nFadeValue;
  return nFadeValue;
}

function float GetTimeRatio (float fCurrTime, float fTotalTime)
{
	return 1.0;
}

function DoFadeInAndOut ()
{
}

function DoFadeOut ()
{
}

function DoFadeIn ()
{
}

function int GetFadeValue ()
{
  return 255;
}

function Color GetDrawColor ()
{
  local Color colorReturn;
  return colorReturn;
}

function RenderHud (Canvas Canvas)
{
}

auto state Idle
{
}

state FadeIn
{
}

state Hold
{
}

state HoldIndefinitely
{
}

state FadeOut
{
}

defaultproperties
{
     fTotalFadeInTime=0.500000
     fTotalFadeOutTime=0.500000
     fTotalHoldTime=3.000000
}
