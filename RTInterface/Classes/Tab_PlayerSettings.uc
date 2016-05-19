class Tab_PlayerSettings extends GUITabPanel;

var bool bChanged;

function InitComponent(GUIController MyController, GUIComponent MyOwner)
{
	local int i;

	Super.Initcomponent(MyController, MyOwner);

	for (i=0;i<Controls.Length;i++)
		Controls[i].OnChange=InternalOnChange;

	moEditBox(Controls[0]).MyEditBox.bConvertSpaces = true;
	moEditBox(Controls[0]).MyEditBox.MaxWidth=16;  // as per polge, check Tab_PlayerSettings if you change this

	moNumericEdit(Controls[1]).MyNumericEdit.Step = 5;

}

function InternalOnLoadINI(GUIComponent Sender, string s)
{
	if (Sender==Controls[0])
		moEditBox(Sender).SetText(PlayerOwner().PlayerReplicationInfo.PlayerName);
    else if (Sender==Controls[1])
		moNumericEdit(Controls[1]).SetValue(PlayerOwner().DefaultFOV);
}

function InternalOnChange(GUIComponent Sender)
{
	if (!Controller.bCurMenuInitialized)
		return;

	if ((Sender==Controls[0]) || (Sender==Controls[1]) )
		bChanged=true;
}

function bool InternalOnClick(GUIComponent Sender)
{
	return true;
}

function bool InternalApply(GUIComponent Sender)
{
	local string PName;

	if (!bChanged)
		return true;

	PName = moEditBox(Controls[0]).GetText();

	PlayerOwner().UpdateURL("Name",PName, true);

	PlayerOwner().ConsoleCommand("setname"@PName);

	PlayerOwner().FOV(moNumericEdit(Controls[1]).GetValue());

	bChanged = false;

	return true;

}

defaultproperties
{
     Controls(0)=moEditBox'RTInterface.Tab_PlayerSettings.PlayerName'
     Controls(1)=moNumericEdit'RTInterface.Tab_PlayerSettings.PlayerFOV'
     WinTop=0.150000
     WinHeight=0.720000
}
