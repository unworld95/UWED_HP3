//================================================================================
// KWGame.
//================================================================================

class KWGame extends UWGameInfo;

var bool bAllowBehindView;
var Vector StartLocation;
var bool SimpleShadows;
var bool NoShadows;
var bool bNeedAutoFadeIn;
var BumpLineManager BumpLineMgr;
var DespawnDelegate DespawnDel;
var(GameState) string CurrentGameState;
var (GameState) String DefaultGameState;
var int TicksSinceLastSaveGame;
var UWLevelInfo Level;	//UW Added custom LevelInfo handle
var UWGameInfo Game;	//UW Added custom GameInfo handle

function PreBeginPlay ()
{
  Super.PreBeginPlay();
  SimpleShadows = bool(ConsoleCommand("get ini:Engine.Engine.ViewportManager SimpleShadows"));
  NoShadows = bool(ConsoleCommand("get ini:Engine.Engine.ViewportManager NoShadows"));
  if ( (DespawnDel == None) || DespawnDel.bDeleteMe )
  {
    DespawnDel = Spawn(Class'DespawnDelegate');
  }
  if ( (BumpLineMgr == None) || BumpLineMgr.bDeleteMe )
  {
    BumpLineMgr = Spawn(Class'BumpLineManager');
  }
}

exec function DumpPawnStates ()
{
  local Pawn P;
  local string ci;

  foreach AllActors(Class'Pawn',P)
  {
    if ( P.Controller != None )
    {
      ci = string(P.Controller) @ string(P.Controller.GetStateName());
    } else {
      ci = "";
    }
    CMAndLog(string(P) $ " " $ string(P.GetStateName()) $ " " $ ci);
  }
}

function Tick (float dt)
{
  Super.Tick(dt);
  TicksSinceLastSaveGame++;
}

exec function ShowGameState ()
{
  local string strMsg;

  if ( CurrentGameState == "" )
  {
    strMsg = "There is no current game state";
  } else {
    strMsg = "Current game state is: " $ CurrentGameState;
  }
  Log(strMsg);
  CM(strMsg);
}

event SetGameState (string NewGameState)
{
  local int i;
  local bool bValid;

  bValid = False;
  i = 0;
  if ( i < WorldInfo.GameStateMasterList.Length )
  {
    if ( NewGameState ~= WorldInfo.GameStateMasterList[i] )
    {
      bValid = True;
    } else {
      i++;
      //goto JL000F;
    }
  }
  if ( bValid )
  {
    CurrentGameState = NewGameState;
  } else {
    Log("SetGameState() - Attempt to set invalid game state: " $ NewGameState);
  }
}

event string GetGameState ()
{
  return CurrentGameState;
}

event int GetNumericGameState ()
{
  return int(Right(CurrentGameState,3));
}

event InitGame (string Options, out string Error)
{
  local string InOpt;

  Log("KWGame.InitGame:" @ Options);
  InOpt = ParseOption(Options,"GameState");
  if ( InOpt == "" )
  {
    //InOpt = Level.DefaultGameState;
    InOpt = DefaultGameState;
    //InOpt = UWLevelInfo.DefaultGameState;
  }
  if ( InOpt == "" )
  {
    InOpt = "GSTATE000";
  }
  Log("GameState" @ InOpt);
  SetGameState(InOpt);
  Super.InitGame(Options,Error);
}

function ProcessServerTravel (string URL, bool bItems)
{
  local string tstr;

  tstr = Caps(URL);
  if ( InStr(URL,"SAVE") == -1 )
  {
    Level.NextURL = URL $ "?GameState=" $ GetGameState();
  }
  Log("KWGame.ProcessServerTravel:" @ URL);
  Super.ProcessServerTravel(URL,bItems);
}

event Timer ()
{
  local FadeViewDelegate fader;

  if ( bNeedAutoFadeIn )
  {
    fader = Spawn(Class'FadeViewDelegate',Level.PlayerHeroActor);
    fader.Init(0.0,0.0,0.0,0.0,0.69999999,False);
    bNeedAutoFadeIn = False;
    Log("AutoFadeIn faded IN level");
  }
}

function InitAutoLevelFadeIn (PlayerController NewPlayer)
{
  NewPlayer.FlashScale.X = 0.0;
  ConsoleCommand("SetFlash 0");
  Log("AutoFadeIn faded OUT level");
  bNeedAutoFadeIn = True;
  SetTimer(1.0,False);
}

event PlayerController Login (string Portal, string Options, out string Error)
{
  local PlayerController NewPlayer;
  local KWPawn TestPawn;
  local Class<Security> MySecurityClass;

  Log(string(self) @ "Login called");
  Log(string(self) @ "Pauser" @ string(Level.Pauser));
  Level.Pauser = None;
  foreach AllActors(Class'KWPawn',TestPawn)
  {
    if ( TestPawn.bIsMainPlayer && (TestPawn.Controller != None) )
    {
      Log(string(self) @ "Login found existing player/controller" @ string(TestPawn) @ string(TestPawn.Controller));
      if ( TestPawn.Controller.Pawn != TestPawn )
      {
        TestPawn.Controller.Possess(TestPawn);
      }
      return PlayerController(TestPawn.Controller);
    }
    if ( TestPawn.bIsMainPlayer && (TestPawn.Controller == None) )
    {
      NewPlayer = Spawn(TestPawn.DefaultPlayerControllerClass);
      InitAutoLevelFadeIn(NewPlayer);
      if ( NewPlayer != None )
      {
        NewPlayer.GameReplicationInfo = GameReplicationInfo;
        NewPlayer.GotoState('Spectating');
        MySecurityClass = Class<Security>(DynamicLoadObject(SecurityClass,Class'Class'));
        NewPlayer.PlayerSecurity = Spawn(MySecurityClass,self);
        if ( NewPlayer.PlayerSecurity == None )
        {
          Log("Could not spawn security for player " $ string(NewPlayer),'Security');
        }
        if ( bDelayedStart )
        {
          NewPlayer.GotoState('PlayerWaiting');
        }
        NewPlayer.Possess(TestPawn);
        return NewPlayer;
      }
    }
  }
}

event PostLogin (PlayerController NewPlayer)
{
  local Class<HUD> HudClass;

  if ( HUDType != "" )
  {
    HudClass = Class<HUD>(DynamicLoadObject(HUDType,Class'Class'));
  }
  NewPlayer.ClientSetHUD(HudClass,None);
  StartLocation = NewPlayer.Pawn.Location;
}

function SetPlayerDefaults (Pawn PlayerPawn)
{
  PlayerPawn.AirControl = PlayerPawn.Default.AirControl;
  KWPawn(PlayerPawn).SetWalking(False);
  PlayerPawn.WaterSpeed = PlayerPawn.Default.WaterSpeed;
  PlayerPawn.AirSpeed = PlayerPawn.Default.AirSpeed;
  PlayerPawn.Acceleration = PlayerPawn.Default.Acceleration;
  BaseMutator.ModifyPlayer(PlayerPawn);
}

function KWHeroController GetHeroController ()
{
  return None;
}

function string GetLevelName ()
{
  local int pos;
  local string Scan;
  local string ObjName;
  local int iLevelNameLen;

  ObjName = string(self);
  Scan = ObjName;
JL0024:
  pos = InStr(Scan,".");
  if ( pos != -1 )
  {
    Scan = Right(Scan,Len(Scan) - pos - 1);
    pos = InStr(Scan,".");
    //goto JL0024;
  }
  iLevelNameLen = Len(ObjName) - Len(Scan) - 1;
  return Left(ObjName,iLevelNameLen);
}

function Persistence_SaveBool (string VarName, bool val)
{
  PersistentStore.SaveBool(VarName,val);
}

function bool Persistence_RestoreBool (string VarName, out int val)
{
  return PersistentStore.RestoreBool(VarName,val);
}

function Persistence_SaveByte (string VarName, byte val)
{
  PersistentStore.SaveByte(VarName,val);
}

function bool Persistence_RestoreByte (string VarName, out byte val)
{
  return PersistentStore.RestoreByte(VarName,val);
}

defaultproperties
{
    bAllowBehindView=True

    bRestartLevel=False

    bDelayedStart=False

    AutoAim=1.00

    DefaultPlayerClassName="KWGame.KWHeroPawn"

    ScoreBoardType="XInterface.ScoreBoardDeathMatch"

    HUDType="KWGame.KWHud"

    MapListType="XInterface.MapListDeathMatch"

    MapPrefix="KW"

    BeaconName="KW"

    MaxPlayers=32

    GameName="KWGame"

    PlayerControllerClassName="KWGame.KWHeroController"

    bPauseWithSpecial=False

}

