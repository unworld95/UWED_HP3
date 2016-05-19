//================================================================================
// KWPageFrontend.
//================================================================================

class KWPageFrontend extends GUIPage;

var config string FirstLevel;
var editinlineuse GUIButton btnPlay;
var editinlineuse GUIButton btnOptions;
var editinlineuse GUIButton btnQuit;
const BUTTON_VGAP= 0.035;
const BUTTON_H= 0.04;
const BUTTON_W= 0.27;
const BUTTON_T= 0.65;
const BUTTON_L= 0.55;

defaultproperties
{
     bRequire640x480=False
     bAllowedAsLast=True
     WinHeight=1.000000
}
