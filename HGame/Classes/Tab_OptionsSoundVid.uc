Class Tab_OptionsSoundVid extends Tab_Options;

struct DisplayMode
{
  var int Width;
  var int Height;
};

var DisplayMode DisplayModes[5];
var localized string BitDepthText[2];
var export editinlineuse GUISlider sldGamma;
var export editinlineuse GUISlider sldBrightness;
var export editinlineuse GUISlider sldContrast;
var export editinlineuse HPGUIComboBox cbResolution;
var export editinlineuse HPGUIComboBox cbColorDepth;
var export editinlineuse GUISlider sldMusicVolume;
var export editinlineuse GUISlider sldEffectsVolume;
var export editinlineuse HPmoCheckBox ckbReverseStereo;
var export editinlineuse GUIButton btnViewCredits;
var export editinlineuse GUIButton btnApplyVideoChanges;

const CKB_HGAP= 0.06;
const CKB_SIZE= 0.05;
const CREDITS_H= 0.05;
const CREDITS_W= 0.25;
const CREDITS_T= 0.65;
const CREDITS_L= 0.05;
const SND_VGAP= 0.07;
const SND_H= 0.05;
const SND_W= 0.25;
const SND_T= 0.131667;
const SND_L= 0.7;
const VDL_VGAP= 0.06;
const VDL_H= 0.05;
const VDL_W= 0.25;
const VDL_T= 0.131667;
const VDL_L= 0.375;
const VS_VGAP= 0.06;
const VS_H= 0.05;
const VS_W= 0.25;
const VS_T= 0.131667;
const VS_L= 0.05;

defaultproperties
{
}
