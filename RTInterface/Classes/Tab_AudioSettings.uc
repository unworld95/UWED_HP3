class Tab_AudioSettings extends GUITabPanel;

#exec OBJ LOAD FILE=RuntimeInterfaceSounds.uax

struct APackInfo
{
	var config string PackageName;
    var config string Description;
};

var localized string	AudioModes[4],
						VoiceModes[4],
						AnnounceModes[3];



var moComboBox APack;
var config APackInfo BonusPackInfo[4];    // Mod authors, do put anything in here since it
										  // will be overwritten by the bonus pack.  Use PackInfo instead

var config array<APackInfo> PackInfo;

var bool binitialized;
function InitComponent(GUIController MyController, GUIComponent MyOwner)
{

	local int i;
    
	Super.Initcomponent(MyController, MyOwner);

    bInitialized = false;

	for (i=0;i<Controls.Length;i++)
		Controls[i].OnChange=InternalOnChange;

	for(i = 0;i < ArrayCount(AudioModes);i++)
		moComboBox(Controls[8]).AddItem(AudioModes[i]);

	Controls[3].FriendlyLabel = GUILabel(Controls[2]);
	Controls[5].FriendlyLabel = GUILabel(Controls[4]);

	bInitialized = true;

}

function InternalOnLoadINI(GUIComponent Sender, string s)
{
	local bool b1, b2, b3;

    if ( Sender==Controls[7] )
     	GUISlider(Controls[7]).SetValue(PlayerOwner().AnnouncerVolume);

	else if ( Sender==Controls[8] )
	{
	    B1 = bool( PlayerOwner().ConsoleCommand("get ini:Engine.Engine.AudioDevice UseEAX" ) );
	    B2 = bool( PlayerOwner().ConsoleCommand("get ini:Engine.Engine.AudioDevice CompatibilityMode" ) );
	    B3 = bool( PlayerOwner().ConsoleCommand("get ini:Engine.Engine.AudioDevice Use3DSound" ) );

	    if( B2 )
	        moComboBox(Controls[8]).SetText(AudioModes[3]);
	    else if( B1 )
			moComboBox(Controls[8]).SetText(AudioModes[2]);
		else if( B3 )
			moComboBox(Controls[8]).SetText(AudioModes[1]);
		else
			moComboBox(Controls[8]).SetText(AudioModes[0]);
	}

	else if (Sender==Controls[9])
	{
		moCheckBox(Sender).Checked(bool(s));
	}

	else if (Sender==Controls[10])
		moCheckBox(Sender).Checked(class'Hud'.default.bMessageBeep);

	else if (Sender==Controls[11])
	{
	    B1 = PlayerOwner().Level.bLowSoundDetail;
		B2 = bool( PlayerOwner().ConsoleCommand("get ini:Engine.Engine.AudioDevice LowQualitySound" ) );

		// Make sure both are the same - LevelInfo.bLowSoundDetail take priority
		if(B1 != B2)
		{
			PlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice LowQualitySound"@B1);
			PlayerOwner().ConsoleCommand("SOUND_REBOOT");

			// Restart music.
			if( PlayerOwner().Level.Song != "" && PlayerOwner().Level.Song != "None" )
				PlayerOwner().ClientSetMusic( PlayerOwner().Level.Song, MTRAN_Instant );
		}

		moCheckBox(Sender).Checked(B1);
	}

}

function string InternalOnSaveINI(GUIComponent Sender); 		// Do the actual work here



function InternalOnChange(GUIComponent Sender)
{
	local String t;
	local bool b1;

	if (!Controller.bCurMenuInitialized)
		return;

	if (Sender==Controls[3])
	{
   	    PlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice MusicVolume "$GUISlider(Sender).Value);
	}

	else if (Sender==Controls[5])
	{
   	    PlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice SoundVolume "$GUISlider(Sender).Value);
   	    PlayerOwner().ConsoleCommand("stopsounds");
		PlayerOwner().PlaySound(sound'RuntimeInterfaceSounds.SoundEffectsTest'); 
	}

	else if (Sender==Controls[7])
	{
   	    PlayerOwner().AnnouncerVolume=GUISlider(Controls[7]).Value;
        PlayerOwner().SaveConfig();
        PlayerOwner().PlayAnnouncement(sound'RuntimeInterfaceSounds.VoiceTest', 0, true);
	}

	else if (Sender==Controls[8])
	{
		t = moComboBox(Sender).GetText();

		if (t==AudioModes[3])
		{
            PlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice UseEAX false" );
            PlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice Use3DSound false" );
            PlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice CompatibilityMode true" );
		}
		else if (t==AudioModes[0])
		{
            PlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice UseEAX false" );
            PlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice Use3DSound false" );
            PlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice CompatibilityMode false" );
		}
		else if (t==AudioModes[1])
		{
            PlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice UseEAX false" );
            PlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice Use3DSound true" );
            PlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice CompatibilityMode false" );
			Controller.OpenMenu("RTInterface.PerformWarn");
		}

		else if (t==AudioModes[2])
		{
            PlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice UseEAX true" );
            PlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice Use3DSound true" );
            PlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice CompatibilityMode false" );
			Controller.OpenMenu("RTInterface.PerformWarn");
		}

		PlayerOwner().ConsoleCommand("SOUND_REBOOT");

		// Restart music.
		if( PlayerOwner().Level.Song != "" && PlayerOwner().Level.Song != "None" )
			PlayerOwner().ClientSetMusic( PlayerOwner().Level.Song, MTRAN_Instant );

    }

	else if (Sender==Controls[9])
		PlayerOwner().ConsoleCommand("set"@Sender.INIOption@moCheckBox(Sender).IsChecked());

	else if (Sender==Controls[10])
	{
		if( PlayerOwner().MyHud != None )
			PlayerOwner().MyHud.bMessageBeep = moCheckBox(Sender).IsChecked();

		class'Hud'.default.bMessageBeep = moCheckBox(Sender).IsChecked();
		class'Hud'.static.StaticSaveConfig();
	}

	else if (Sender==Controls[11])
	{

		b1 = moCheckBox(Sender).IsChecked();

		PlayerOwner().Level.bLowSoundDetail = b1;
        PlayerOwner().Level.SaveConfig();

		PlayerOwner().ConsoleCommand("set ini:Engine.Engine.AudioDevice LowQualitySound"@B1);
		PlayerOwner().ConsoleCommand("SOUND_REBOOT");

		// Restart music.
		if( PlayerOwner().Level.Song != "" && PlayerOwner().Level.Song != "None" )
			PlayerOwner().ClientSetMusic( PlayerOwner().Level.Song, MTRAN_Instant );
	}

}

defaultproperties
{
     AudioModes(0)="Software 3D Audio"
     AudioModes(1)="Hardware 3D Audio"
     AudioModes(2)="Hardware 3D Audio + EAX"
     AudioModes(3)="Safe Mode"
     VoiceModes(0)="All"
     VoiceModes(1)="No auto-taunts"
     VoiceModes(2)="No taunts"
     VoiceModes(3)="None"
     AnnounceModes(0)="None"
     AnnounceModes(1)="Minimal"
     AnnounceModes(2)="All"
     Controls(0)=GUIImage'RTInterface.Tab_AudioSettings.AudioBK1'
     Controls(1)=GUIImage'RTInterface.Tab_AudioSettings.AudioBK2'
     Controls(2)=GUILabel'RTInterface.Tab_AudioSettings.AudioMusicVolumeLabel'
     Controls(3)=GUISlider'RTInterface.Tab_AudioSettings.AudioMusicVolumeSlider'
     Controls(4)=GUILabel'RTInterface.Tab_AudioSettings.AudioEffectsVolumeLabel'
     Controls(5)=GUISlider'RTInterface.Tab_AudioSettings.AudioEffectsVolumeSlider'
     Controls(6)=GUILabel'RTInterface.Tab_AudioSettings.AudioVoiceVolumeLabel'
     Controls(7)=GUISlider'RTInterface.Tab_AudioSettings.AudioVoiceVolumeSlider'
     Controls(8)=moComboBox'RTInterface.Tab_AudioSettings.AudioMode'
     Controls(9)=moCheckBox'RTInterface.Tab_AudioSettings.AudioReverseStereo'
     Controls(10)=moCheckBox'RTInterface.Tab_AudioSettings.AudioMessageBeep'
     Controls(11)=moCheckBox'RTInterface.Tab_AudioSettings.AudioLowDetail'
     WinTop=0.150000
     WinHeight=0.740000
}
