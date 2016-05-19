class Tab_NetworkSettings extends GUITabPanel;


var localized string	NetSpeedText[4];

var localized string	StatsURL;
var localized string    EpicIDMsg;

function InitComponent(GUIController MyController, GUIComponent MyOwner)
{

	local int i;
	Super.Initcomponent(MyController, MyOwner);

	for (i=0;i<Controls.Length;i++)
		Controls[i].OnChange=InternalOnChange;

	for(i = 0;i < ArrayCount(NetSpeedText);i++)
		moComboBox(Controls[0]).AddItem(NetSpeedText[i]);

    moCheckBox(Controls[1]).Checked(PlayerOwner().bDynamicNetSpeed);

}

function InternalOnLoadINI(GUIComponent Sender, string s)
{
	local int i;

	if (Sender==Controls[0])
	{
		i = class'Player'.default.ConfiguredInternetSpeed;
		if (i<=2600)
			moComboBox(Sender).SetText(NetSpeedText[0]);
		else if (i<=5000)
			moComboBox(Sender).SetText(NetSpeedText[1]);
		else if (i<=10000)
			moComboBox(Sender).SetText(NetSpeedText[2]);
		else
			moComboBox(Sender).SetText(NetSpeedText[3]);
	}
}

function InternalOnChange(GUIComponent Sender)
{
	if (!Controller.bCurMenuInitialized)
		return;

	if (Sender==Controls[0])
	{
		if (moComboBox(Sender).GetText()==NetSpeedText[0])
			PlayerOwner().ConsoleCommand("netspeed 2600");
		else if (moComboBox(Sender).GetText()==NetSpeedText[1])
			PlayerOwner().ConsoleCommand("netspeed 5000");
		else if (moComboBox(Sender).GetText()==NetSpeedText[2])
			PlayerOwner().ConsoleCommand("netspeed 10000");
		else if (moComboBox(Sender).GetText()==NetSpeedText[3])
			PlayerOwner().ConsoleCommand("netspeed 20000");
	}
    else if (Sender==Controls[1])
    {
    	PlayerOwner().bDynamicNetSpeed = moCheckBox(Controls[1]).IsChecked();
        PlayerOwner().Saveconfig();
    }

}

defaultproperties
{
     NetSpeedText(0)="Modem"
     NetSpeedText(1)="ISDN"
     NetSpeedText(2)="Cable/ADSL"
     NetSpeedText(3)="LAN/T1"
     Controls(0)=moComboBox'RTInterface.Tab_NetworkSettings.OnlineNetSpeed'
     Controls(1)=moCheckBox'RTInterface.Tab_NetworkSettings.NetworkDynamicNetspeed'
     WinTop=0.150000
     WinHeight=0.740000
}
