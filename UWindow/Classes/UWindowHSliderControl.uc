//================================================================================
// UWindowHSliderControl.
//================================================================================

class UWindowHSliderControl extends UWindowDialogControl;

var float MinValue;
var float MaxValue;
var float Value;
var int Step;
var float SliderWidth;
var float SliderDrawX;
var float SliderDrawY;
var float TrackStart;
var float TrackWidth;
var bool bSliding;
var bool bNoSlidingNotify;

function Created ()
{
  Super.Created();
}

function SetRange (float Min, float Max, int NewStep)
{
}

function float GetValue ()
{
  return Value;
}

function SetValue (float NewValue, optional bool bNoNotify)
{
}

function float CheckValue (float test)
{
  local float NewValue;
  return NewValue;
}

function BeforePaint (Canvas C, float X, float Y)
{
}

function Paint (Canvas C, float X, float Y)
{
}

function LMouseUp (float X, float Y)
{
}

function LMouseDown (float X, float Y)
{
}

function MouseMove (float X, float Y)
{
}

function KeyDown (int Key, float X, float Y)
{
}

defaultproperties
{
}
