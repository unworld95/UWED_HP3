Class Tab_OptionsInput extends Tab_Options;

var export editinlineuse GUIButton KeyButton[10];
var export editinlineuse GUIButton SelectedButton;
var int KeyButtonIndex;
var string KeyName[255];
var int KeyNo;
var int BoundKey1[10];
var int BoundKey2[10];
var string Alias1[10];
var string Alias2[10];
var string Alias3[10];
var localized string LocalizedKeyName[255];
var localized string OrString;
var bool bPolling;
var export editinlineuse GUIButton btnReset;
var export editinlineuse GUISlider sldMouseSpeedGame;
var export editinlineuse HPmoCheckBox ckbMouseInvert;
var export editinlineuse GUIButton btnKeyForward;
var export editinlineuse GUIButton btnKeyBackward;
var export editinlineuse GUIButton btnKeyTurnLeft;
var export editinlineuse GUIButton btnKeyTurnRight;
var export editinlineuse GUIButton btnKeyJump;
var export editinlineuse GUIButton btnKeyUseWand;
var export editinlineuse GUIButton btnKeyStrafeRight;
var export editinlineuse GUIButton btnKeyStrafeLeft;
var export editinlineuse GUIButton btnKeyOpenMap;
var export editinlineuse GUIButton btnKeySkipCutscene;
var string tmpCap;
var bool CapOn;
const KB_VGAP= 0.0175;
const KB_H= 0.05;
const KB_W= 0.2;
const KB_T= 0.05;
const KB_L= 0.35;
const M_VGAP2= 0.04;
const M_VGAP= 0.06;
const M_H= 0.05;
const M_W= 0.25;
const M_T= 0.131667;
const M_L= 0.05;

defaultproperties
{
}
