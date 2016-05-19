Class HPPageMainMenu extends HPGUIPage;

const BTN_QUIT_T= 0.8333;
const BTN_QUIT_L= 0.875;
const BTN_HEIGHT= 0.16666667;
const BTN_WIDTH= 0.125;
const BTN_TOP= 0.0;
var string DefaultHint;
var KWHeroController KWHeroControllerPtr;
var string CardSetID;
var Sound RollOverSound;
var Sound ClickSound;
var Sound BigClickSound;
var export editinlineuse GUILabel lblTitle;
var export editinlineuse GUIGFXButton ButtonStats;
var export editinlineuse GUIGFXButton ButtonMap;
var export editinlineuse GUIGFXButton ButtonPortraits;
var export editinlineuse GUIGFXButton ButtonMiniGames;
var export editinlineuse GUIGFXButton ButtonCommerce;
var export editinlineuse GUIGFXButton ButtonShields;
var export editinlineuse GUIGFXButton ButtonCards;
var export editinlineuse GUIGFXButton buttonOptions;
var export editinlineuse GUIGFXButton buttonQuit;
var export editinlineuse GUIGFXButton ButtonBack;
var export editinlineuse GUILabel lblHint;
var bool bIgnoreEscape;
var bool bIgnoreTab;

defaultproperties
{
}
