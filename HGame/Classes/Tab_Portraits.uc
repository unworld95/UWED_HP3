Class Tab_Portraits extends HPPageMainMenu;

struct IconStruct
{
  var Vector pos;
  var Texture Tex;
  var string Name;
};

var IconStruct Icon[8];
var export editinlineuse GUIButton btnMask0;
var export editinlineuse GUIButton btnMask1;
var export editinlineuse GUIButton btnMask2;
var export editinlineuse GUIButton btnMask3;
var export editinlineuse GUIButton btnMask4;
var export editinlineuse GUIButton btnMask5;
var export editinlineuse GUIButton btnMask6;
var export editinlineuse GUIButton btnMask7;

const MASK_H= 0.21333;
const MASK_W= 0.16;
const ROW1_MASK_Y= 0.521667;
const ROW0_MASK_Y= 0.265;
const PORT7_MASK_X= 0.715;
const PORT6_MASK_X= 0.51875;
const PORT5_MASK_X= 0.3225;
const PORT4_MASK_X= 0.1275;
const PORT3_MASK_X= 0.715;
const PORT2_MASK_X= 0.51875;
const PORT1_MASK_X= 0.3225;
const PORT0_MASK_X= 0.1275;
const ROW1_Y= 313;
const ROW0_Y= 159;
const PORT7_X= 572;
const PORT6_X= 415;
const PORT5_X= 258;
const PORT4_X= 102;
const PORT3_X= 572;
const PORT2_X= 415;
const PORT1_X= 258;
const PORT0_X= 102;

defaultproperties
{
}
