//================================================================================
// OptionsPage.
//================================================================================

class OptionsPage extends GUIPage;

var string sResolutions[6];
var editinlineuse GUIComboBox comboResolutions;
var editinlineuse GUIButton buttonOk;
var editinlineuse GUIButton buttonCancel;
var editinlineuse GUIButton buttonBkgrd;
const fFROM_EDGE= 0.05;
const fRES_COMBO_H= 0.04;
const fRES_COMBO_W= 0.27;
const fBUTTON_H= 0.04;
const fBUTTON_W= 0.1;
const fWIN_Y= 0.3;
const fWIN_X= 0.25;
const fWIN_W= 0.5;
const fWIN_H= 0.21;

defaultproperties
{
     sResolutions(0)="512x384"
     sResolutions(1)="640x480"
     sResolutions(2)="800x600"
     sResolutions(3)="1024x768"
     sResolutions(4)="1280x1024"
     sResolutions(5)="1600x1200"
     bRequire640x480=False
}
