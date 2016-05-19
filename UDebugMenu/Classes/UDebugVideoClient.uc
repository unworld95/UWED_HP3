//================================================================================
// UDebugVideoClient.
//================================================================================

class UDebugVideoClient extends UWindowDialogClientWindow;

var UWindowComboControl ResolutionCombo;
var string ResolutionText;
var string ResolutionHelp;
var UWindowHSliderControl BrightnessSlider;
var string BrightnessText;
var string BrightnessHelp;
var UWindowMessageBox ConfirmSettings;
var UWindowMessageBox ConfirmDriver;
var UWindowMessageBox ConfirmWorldTextureDetail;
var UWindowMessageBox ConfirmSkinTextureDetail;
var string ConfirmSettingsTitle;
var string ConfirmSettingsText;
var string ConfirmSettingsCancelTitle;
var string ConfirmSettingsCancelText;
var string ConfirmTextureDetailTitle;
var string ConfirmTextureDetailText;
var string ConfirmDriverTitle;
var string ConfirmDriverText;
var string OldSettings;
var bool bInitialized;
var float ControlOffset;

function Created ()
{
  Super.Created();
}

function AfterCreate ()
{
  Super.AfterCreate();
}

function LoadAvailableSettings ()
{
}

function ResolutionChanged (float W, float H)
{
  Super.ResolutionChanged(H,H);
}

function BeforePaint (Canvas C, float X, float Y)
{
}

function Notify (UWindowDialogControl C, byte E)
{
}

function SettingsChanged ()
{
}

function MessageBoxDone (UWindowMessageBox W, MessageBoxResult Result)
{
}

function BrightnessChanged ()
{
}

defaultproperties
{
     ResolutionText="Resolution"
     ResolutionHelp="Select a new screen resolution."
     BrightnessText="Brightness"
     BrightnessHelp="Adjust display brightness."
     ConfirmSettingsTitle="Confirm Video Settings Change"
     ConfirmSettingsText="Are you sure you wish to keep these new video settings?"
     ConfirmSettingsCancelTitle="Video Settings Change"
     ConfirmSettingsCancelText="Your previous video settings have been restored."
     ConfirmTextureDetailTitle="Confirm Texture Detail"
     ConfirmTextureDetailText="Increasing texture detail above its default value may degrade performance on some machines.Are you sure you want to make this change?"
     ConfirmDriverTitle="Change Video Driver"
     ConfirmDriverText="This option will restart Unreal now, and enable you to change your video driver.  Do you want to do this?"
     ControlOffset=20.000000
}
