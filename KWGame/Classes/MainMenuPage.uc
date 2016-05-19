//================================================================================
// MainMenuPage.
//================================================================================

class MainMenuPage extends GUIPage;

const fBUTTON_HGAP= 0.02;
const fBUTTON_H= 0.04;
const fBUTTON_W= 0.27;
const fWIN_Y= 0.4;
const fWIN_X= 0.0;
const fWIN_W= 1.0;
const fWIN_H= 0.21;
var bool bIgnoreEsc;
var editinlineuse GUIButton buttonQuit;
var editinlineuse GUIButton buttonContinue;
var editinlineuse GUIButton buttonOptions;
var editinlineuse GUIButton buttonBkgrd;

defaultproperties
{
     bIgnoreEsc=True
     bRequire640x480=False
     bAllowedAsLast=True
}
