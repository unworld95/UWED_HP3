//================================================================================
// UWindowButton.
//================================================================================

class UWindowButton extends UWindowDialogControl;

var bool bDisabled;
var bool bStretched;
var Texture UpTexture;
var Texture DownTexture;
var Texture DisabledTexture;
var Texture OverTexture;
var Region UpRegion;
var Region DownRegion;
var Region DisabledRegion;
var Region OverRegion;
var bool bUseRegion;
var float RegionScale;
var string ToolTipString;
var float ImageX;
var float ImageY;
var Sound OverSound;
var Sound DownSound;

function Created ()
{
}

function BeforePaint (Canvas C, float X, float Y)
{
}

function Paint (Canvas C, float X, float Y)
{
}

function MouseLeave ()
{
}

simulated function MouseEnter ()
{
}

simulated function Click (float X, float Y)
{
}

function DoubleClick (float X, float Y)
{
}

function RClick (float X, float Y)
{
}

function MClick (float X, float Y)
{
}

function KeyDown (int Key, float X, float Y)
{
}

defaultproperties
{
     bIgnoreLDoubleClick=True
     bIgnoreMDoubleClick=True
     bIgnoreRDoubleClick=True
}
