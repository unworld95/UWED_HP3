//================================================================================
// HGame.
//================================================================================

class HGame extends KWGame;
/*
enum EPortraitPassword {
  PP_BertieBott,
  PP_DerwentShimpling,
  PP_Mopsus,
  PP_TillyToke,
  PP_GloverHipworth,
  PP_HesperStarkley,
  PP_LeopoldinaSmethwyck,
  PP_BridgetWenlock,
  PP_SalazarSlytherin,
  PP_MirabellaPlunkett,
  PP_GretaCatchlove,
  PP_MerwynTheMalicious,
  PP_Circe,
  PP_NorvelTwonk,
  PP_GlanmorePeakes,
  PP_GodricGryffindor,
  PP_ArtemisiaLufkin,
  PP_WitchStatue,
  PP_PinkLady,
  PP_SirCadogan,
  PP_TBD1,
  PP_TBD2,
  PP_None
};

var VendorManager VendorManager;
var WizardCardManager WizardCardManager;
var ChallengeStarManager ChallengeStarManager;
var PortraitPasswordManager PortraitPasswordManager;
var SecretManager SecretManager;
var string LastPlayingMusic;

function PreBeginPlay ()
{
  Super.PreBeginPlay();
  if ( VendorManager == None )
  {
    VendorManager = Spawn(Class'VendorManager');
  }
  if ( WizardCardManager == None )
  {
    WizardCardManager = Spawn(Class'WizardCardManager');
  }
  if ( ChallengeStarManager == None )
  {
    ChallengeStarManager = Spawn(Class'ChallengeStarManager');
  }
  if ( PortraitPasswordManager == None )
  {
    PortraitPasswordManager = Spawn(Class'PortraitPasswordManager');
  }
  if ( SecretManager == None )
  {
    SecretManager = Spawn(Class'SecretManager');
  }
}

event PreSaveGame ()
{
}

event PostLoadGame (bool bFromSavedGame)
{
  if ( bFromSavedGame )
  {
    if ( LastPlayingMusic != "" )
    {
      PlayMusic(LastPlayingMusic,1.0);
    }
    LastPlayingMusic = "";
  }
}

defaultproperties
{
    DefaultPlayerClassName="hGame.Harry"
    HUDType="HGame.HPHud"
    PlayerControllerClassName="HGame.HarryController"
}
*/