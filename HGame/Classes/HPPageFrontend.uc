Class HPPageFrontend extends GUIPage;

var export editinlineuse GUIButton btnNewGame;
var export editinlineuse GUIButton btnLoad;
var export editinlineuse GUIButton btnQuit;
var export editinlineuse GUIButton btnOptions;
var export editinlineuse GUIGFXButton btnNewGameHighLight;
var export editinlineuse GUIGFXButton btnLoadHighLight;
var export editinlineuse GUIGFXButton btnQuitHighLight;
var export editinlineuse GUIGFXButton btnOptionsHighLight;
var export editinlineuse GUIButton btnNewGameMask;
var export editinlineuse GUIButton btnLoadMask;
var export editinlineuse GUIButton btnQuitMask;
var export editinlineuse GUIButton btnOptionsMask;
var export editinlineuse GUIImage imgLogo;
var export editinlineuse GUIImage imgKids;
var export editinlineuse GUILabel lblCopyright;
var export editinlineuse GUILabel lblVersion;
var export editinlineuse GUIButton decoy;
var export editinlineuse GUIButton LastActiveButton;
var bool btnLoadDisabled;
var config string FirstLevel;
const COPYRIGHT_H= 0.04;
const COPYRIGHT_W= 0.75;
const COPYRIGHT_T= 0.90;
const COPYRIGHT_L= 0.18;
const QUIT_H= 0.05;
const QUIT_W= 0.2;
const OPT_H= 0.05;
const OPT_W= 0.2;
const LOAD_H= 0.05;
const LOAD_W= 0.2;
const NEW_H= 0.05;
const NEW_W= 0.2;
const LOGO_H= 0.42667;
const LOGO_W= 0.64;
const LOGO_T= 0.188333;
const LOGO_L= 0.0;

defaultproperties
{
}
