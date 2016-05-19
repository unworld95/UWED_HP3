//================================================================================
// DevMenuPage.
//================================================================================

class DevMenuPage extends GUIPage;

const GS_H= 0.05;
const GS_W= 0.25;
const GS_T= 0.15;
const GS_L= 0.01;
const GO_H= 0.05;
const GO_W= 0.1;
const GO_T= 0.2;
const GO_L= 0.085;

var editinlineuse GUITitleBar tbHeader;
var editinlineuse GUITabControl tcDevTabs;
var editinlineuse Tab_Map MapTab;
var editinlineuse Tab_Bookmark BookmarkTab;
var editinlineuse GUIComboBox cbGameState;
var editinlineuse GUIButton btnGo;

defaultproperties
{
     bRequire640x480=False
     bAllowedAsLast=True
     WinHeight=1.000000
}
