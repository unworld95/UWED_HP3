class Tab_InstantActionMain extends GUITabPanel;

#exec OBJ LOAD FILE=RuntimeInterfaceContent.utx

var config string	LastMap;			// Stores the last known settings

var GUIListBox 			MyMapList;
var GUIImage   			MyMapImage;
var GUIScrollTextBox	MyMapScroll;
var GUIButton			LoadMapButton;

function InitComponent(GUIController MyController, GUIComponent MyOwner)
{
	Super.Initcomponent(MyController, MyOwner);

	MyMapList   			= GUIListBox(Controls[0]);
	MyMapImage  			= GUIImage(Controls[1]);
	MyMapScroll 			= GUIScrollTextBox(Controls[2]);
	LoadMapButton			= GUIButton(Controls[4]);

	MyMapList.List.OnChange = MapListChange;
	MyMapList.List.OnDblClick = MapListDblClick;

	ReadMapList();

	if ( (LastMap=="") || (MyMapList.List.Find(LastMap)=="") )
		MyMapList.List.SetIndex(0);

	ReadMapInfo(MyMapList.List.Get());
	Controls[0].SetFocus(none);
}

// Play is called when the play button is pressed.  It saves any releavent data and then
// returns any additions to the URL
function string Play()
{
	SaveConfig();

	return "";
}

function ReadMapList()
{
	local int i;

	MyMapList.List.Clear();

	Controller.GetMapList("", MyMapList.List);

	MyMapList.List.RemoveItem("Entry");
	MyMapList.List.RemoveItem("AutoPlay");
	for(i = 0; i < 10; i++)
        MyMapList.List.RemoveItem("Auto"$i);

	MyMapList.List.SortList();
	MyMapList.List.SetIndex(0);
}

function ReadMapInfo(string MapName)
{
	local LevelSummary L;
	local string mDesc;

	if(MapName == "")
		return;

	L = LevelSummary(DynamicLoadObject(MapName$".LevelSummary", class'LevelSummary'));

	//Screen Shot
	MyMapImage.Image = Material(DynamicLoadObject(MapName$".Screenshot", class'Material'));
	if(MyMapImage.Image == NONE)
		MyMapImage.Image = Material'NoLevelPreview';

	/* Title and Author the old way
	//Title
	if ( L != none )
		GUILabel(Controls[5]).Caption = L.Title;
	else
    	GUILabel(Controls[5]).Caption = MapName;

	//Author
    if (L.Author != "")
		GUILabel(Controls[6]).Caption = L.Author;
    else
    	GUILabel(Controls[6]).Caption = "Anonymous";
	*/

	//Title
	mDesc = "Title: ";
	if ( L != none )
		mDesc = mDesc $ L.Title;
	else
    	mDesc = mDesc $ MapName;

	//Author
	mDesc = mDesc $ "|Author: ";
	if (L.Author != "")
		mDesc = mDesc $ L.Author;
    else
    	mDesc = mDesc $ "Anonymous";

	//Description - useing LevelEnterText as hack
	mDesc = mDesc $ "|";
    if (L.LevelEnterText != "")
		mDesc = mDesc $ L.LevelEnterText;
    else
        mDesc = mDesc $ "No Description Available!";

	MyMapScroll.SetContent(mDesc);
}

function MapListChange(GUIComponent Sender)
{
	if (!Controller.bCurMenuInitialized)
		return;

	LastMap = MyMapList.List.Get();
	SaveConfig();

	ReadMapInfo(LastMap);
}

function bool LoadMap(GUIComponent Sender)
{
	local string FullURL, FirstMap;

	MainMenu(Controller.ActivePage).pPlayer.InternalApply(none);

	FirstMap = MyMapList.List.Get();

	FullURL = FirstMap;

	log("UT2InstantActionMain::PlayButtonClick - Sending [open"@FullURL$"] to the console");
	Console(Controller.Master.Console).ConsoleCommand("start"@FullURL);  // Was buffered.  Is not now.
	Controller.CloseAll(false);
	return true;
}

defaultproperties
{
     Controls(0)=GUIListBox'RTInterface.Tab_InstantActionMain.IAMain_MapList'
     Controls(1)=GUIImage'RTInterface.Tab_InstantActionMain.IAMain_MapImage'
     Controls(2)=GUIScrollTextBox'RTInterface.Tab_InstantActionMain.IAMain_MapScroll'
     Controls(3)=GUIImage'RTInterface.Tab_InstantActionMain.IAMainBK2'
     Controls(4)=GUIButton'RTInterface.Tab_InstantActionMain.LoadMapB'
     WinTop=0.150000
     WinHeight=0.770000
}
