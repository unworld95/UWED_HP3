Class Tab_Maps extends HPPageMainMenu;

var float MAPS_BTN_LEFT;
var float MAPS_BTN_TOP;
var float MAPS_BTN_WIDTH;
var float MAPS_BTN_HEIGHT;
var float MAPS_BTN_VGAP;
var export editinlineuse GUIButton ButtonFloor7;
var export editinlineuse GUIButton ButtonFloor6;
var export editinlineuse GUIButton ButtonFloor5;
var export editinlineuse GUIButton ButtonFloor4;
var export editinlineuse GUIButton ButtonFloor3;
var export editinlineuse GUIButton ButtonFloor2;
var export editinlineuse GUIButton ButtonFloor1;
var export editinlineuse GUIButton ButtonFloor0;
var export editinlineuse GUIButton ButtonDungeon;
var export editinlineuse GUIButton ButtonGrounds;
var export editinlineuse GUIButton ButtonUp;
var export editinlineuse GUIButton ButtonDown;
var export editinlineuse GUIImage ImageMap;
var export editinlineuse GUIImage Locator;
var export editinlineuse GUIButton LevelButton[10];
var int PlayerLevel;
var int MapLevel;
var bool bShowMap;
var Vector vLocatorDest;
var string NoMapText;
var bool AtTheWell;
var bool InsideHubDungeon;
var bool Challenge;
const MAP_COUNT= 10;
const GROUNDS= 0;
const DUNGEON= 1;
const FLOOR0= 2;
const FLOOR1= 3;
const FLOOR2= 4;
const FLOOR3= 5;
const FLOOR4= 6;
const FLOOR5= 7;
const FLOOR6= 8;
const FLOOR7= 9;
const BTN_H= 0.07;
const BTN_W= 0.04;
const BTN_LEFT= 0.82;
const DOWN_BTN_TOP= 0.743333;
const UP_BTN_TOP= 0.203333;

defaultproperties
{
}
