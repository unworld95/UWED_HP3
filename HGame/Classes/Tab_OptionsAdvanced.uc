Class Tab_OptionsAdvanced extends Tab_Options;

enum eLastChange {
  CHANGE_NONE,
  CHANGE_WORLD,
  CHANGE_CHARACTER
};

var config bool bExpert;
var localized string DetailLevels[7];
var localized string ShadowLevels[2];
var bool bPlayedSound;
var int prevWorldDetail;
var int prevTextureDetail;
var int prevCharDetail;
var int prevShadow;
var eLastChange LastChange;
var string ChangeValue;
var export editinlineuse HPGUIComboBox cbWorldDetail;
var export editinlineuse HPGUIComboBox cbCharacterDetail;
var export editinlineuse HPGUIComboBox cbActorDetail;
var export editinlineuse HPGUIComboBox cbShadows;
var export editinlineuse HPmoCheckBox ckbDynamicLighting;

const CKB_VGAP= 0.07;
const CKB_H= 0.05;
const CKB_W= 0.3;
const CKB_T= 0.458333;
const CKB_L= 0.35;
const CB_VGAP= 0.04;
const CB_H= 0.05;
const CB_W= 0.25;
const CB_T= 0.1;
const CB_L2= 0.55;
const CB_L= 0.1875;

defaultproperties
{
}
