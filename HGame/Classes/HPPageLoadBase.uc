Class HPPageLoadBase extends GUIPage;

var int GameID;
var int SlotID;
var string PreviousMenu;
var string FirstLevel;
var string DefaultHint;
var int LevelID[20];
var Sound RollOverSound;
var Sound ClickSound;
var Sound BigClickSound;
var export editinlineuse GUILabel lblTitle;
var export editinlineuse GUIGFXButton btnBack;
var export editinlineuse GUIGFXButton btnQuit;
var export editinlineuse GUILabel lblHint;
const BTN2_HEIGHT= 0.16666667;
const BTN2_WIDTH= 0.125;

defaultproperties
{
}
