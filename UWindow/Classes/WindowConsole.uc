//================================================================================
// WindowConsole.
//================================================================================

class WindowConsole extends Console;

var Viewport Viewport;
var int Scrollback;
var int numLines;
var int TopLine;
var int TextLines;
var float MsgTime;
var float MsgTickTime;
var string MsgText[64];
var float MsgTick[64];
var int ConsoleLines;
var float ConsolePos;
var float ConsoleDest;
var bool bNoStuff;
var bool bTyping;
var bool bNoDrawWorld;
var UWindowRootWindow Root;
var() config string RootWindow;
var float OldClipX;
var float OldClipY;
var bool bCreatedRoot;
var float MouseX;
var float MouseY;
var Class<UWindowConsoleWindow> ConsoleClass;
var config float MouseScale;
var config bool ShowDesktop;
var config bool bShowConsole;
var bool bBlackout;
var bool bUWindowType;
var bool bUWindowActive;
var bool bQuickKeyEnable;
var bool bLocked;
var bool bLevelChange;
var string OldLevel;
var config EInputKey UWindowKey;
var UWindowConsoleWindow ConsoleWindow;
const TextMsgSize=128;
const MaxLines=64;

function ResetUWindow ()
{
  if ( Root != None )
  {
    Root.Close();
  }
  Root = None;
  bCreatedRoot = False;
  ConsoleWindow = None;
  bShowConsole = False;
  CloseUWindow();
}

function bool KeyEvent (EInputKey Key, EInputAction Action, float Delta)
{
  return False;
}

function ShowConsole ()
{
  bShowConsole = True;
  if ( bCreatedRoot )
  {
    ConsoleWindow.ShowWindow();
  }
}

function HideConsole ()
{
  ConsoleLines = 0;
  bShowConsole = False;
  if ( ConsoleWindow != None )
  {
    ConsoleWindow.HideWindow();
  }
}

event Tick (float Delta)
{
  Super.Tick(Delta);
  if ( bLevelChange && (Root != None) && (string(Viewport.Actor.Level) != OldLevel) )
  {
    OldLevel = string(Viewport.Actor.Level);
    if ( Viewport.Actor.Level != Viewport.Actor.GetEntryLevel() )
    {
      bLevelChange = False;
    }
    Root.NotifyAfterLevelChange();
  }
}

state UWindow
{
  event Tick (float Delta)
  {
    Global.Tick(Delta);
    if ( Root != None )
    {
      Root.DoTick(Delta);
    }
  }
  
  function PostRender (Canvas Canvas)
  {
    if ( Root != None )
    {
      Root.bUWindowActive = True;
    }
    RenderUWindow(Canvas);
  }
  
  function bool KeyType (EInputKey Key, optional string Unicode)
  {
    if ( Root != None )
    {
      //Root.WindowEvent(8,None,MouseX,MouseY,Key);
    }
    return True;
  }
  
  function bool KeyEvent (EInputKey Key, EInputAction Action, float Delta)
  {
    return True;
  }
  
}

function ToggleUWindow ()
{
}

function LaunchUWindow ()
{
  Viewport.bSuspendPrecaching = True;
  bUWindowActive =  !bQuickKeyEnable;
  Viewport.bShowWindowsMouse = True;
  if ( bQuickKeyEnable )
  {
    bNoDrawWorld = False;
  } else {
    if ( Viewport.Actor.Level.NetMode == 0 )
    {
      Log("********** windowconsole LaunchUWindow");
      Viewport.Actor.SetPause(True);
    }
    bNoDrawWorld = ShowDesktop;
  }
  if ( Root != None )
  {
    Root.bWindowVisible = True;
  }
  GotoState('UWindow');
}

function CloseUWindow ()
{
  if (  !bQuickKeyEnable )
  {
    Viewport.Actor.SetPause(False);
  }
  bNoDrawWorld = False;
  bQuickKeyEnable = False;
  bUWindowActive = False;
  Viewport.bShowWindowsMouse = False;
  if ( Root != None )
  {
    Root.bWindowVisible = False;
  }
  GotoState('None');
  Viewport.bSuspendPrecaching = False;
}

function CreateRootWindow (Canvas Canvas)
{
  local int i;

  if ( Canvas != None )
  {
    OldClipX = Canvas.ClipX;
    OldClipY = Canvas.ClipY;
  } else {
    OldClipX = 0.0;
    OldClipY = 0.0;
  }
  Log("Creating root window: " $ RootWindow);
  //Root = new (None,Class<UWindowRootWindow>(DynamicLoadObject(RootWindow,Class'Class')));
  Root = new Class<UWindowRootWindow>(DynamicLoadObject(RootWindow,Class'Class'));
  Root.BeginPlay();
  Root.WinTop = 0.0;
  Root.WinLeft = 0.0;
  if ( Canvas != None )
  {
    Root.WinWidth = Canvas.ClipX / Root.GUIScale;
    Root.WinHeight = Canvas.ClipY / Root.GUIScale;
    Root.RealWidth = Canvas.ClipX;
    Root.RealHeight = Canvas.ClipY;
  } else {
    Root.WinWidth = 0.0;
    Root.WinHeight = 0.0;
    Root.RealWidth = 0.0;
    Root.RealHeight = 0.0;
  }
  Root.ClippingRegion.X = 0;
  Root.ClippingRegion.Y = 0;
  Root.ClippingRegion.W = int(Root.WinWidth);
  Root.ClippingRegion.H = int(Root.WinHeight);
  Root.bUWindowActive = bUWindowActive;
  Root.Created();
  bCreatedRoot = True;
  ConsoleWindow = UWindowConsoleWindow(Root.CreateWindow(ConsoleClass,100.0,100.0,200.0,200.0));
  if (  !bShowConsole )
  {
    HideConsole();
  }
  UWindowConsoleClientWindow(ConsoleWindow.ClientArea).TextArea.AddText(" ");
  i = 0;
  if ( i < 4 )
  {
    UWindowConsoleClientWindow(ConsoleWindow.ClientArea).TextArea.AddText(MsgText[i]);
    i++;
    //goto JL02C8;
  }
}

function RenderUWindow (Canvas Canvas)
{
  local UWindowWindow NewFocusWindow;

  Canvas.bNoSmooth = True;
  Canvas.Z = 1.0;
  Canvas.Style = 1;
  Canvas.DrawColor.R = 255;
  Canvas.DrawColor.G = 255;
  Canvas.DrawColor.B = 255;
  if ( Viewport.bWindowsMouseAvailable && (Root != None) )
  {
    MouseX = Viewport.WindowsMouseX / Root.GUIScale;
    MouseY = Viewport.WindowsMouseY / Root.GUIScale;
  }
  if (  !bCreatedRoot )
  {
    CreateRootWindow(Canvas);
  }
  Root.bWindowVisible = True;
  Root.bUWindowActive = bUWindowActive;
  Root.bQuickKeyEnable = bQuickKeyEnable;
  if ( (Canvas.ClipX != OldClipX) || (Canvas.ClipY != OldClipY) )
  {
    OldClipX = Canvas.ClipX;
    OldClipY = Canvas.ClipY;
    Root.WinTop = 0.0;
    Root.WinLeft = 0.0;
    Root.WinWidth = Canvas.ClipX / Root.GUIScale;
    Root.WinHeight = Canvas.ClipY / Root.GUIScale;
    Root.RealWidth = Canvas.ClipX;
    Root.RealHeight = Canvas.ClipY;
    Root.ClippingRegion.X = 0;
    Root.ClippingRegion.Y = 0;
    Root.ClippingRegion.W = int(Root.WinWidth);
    Root.ClippingRegion.H = int(Root.WinHeight);
    Root.Resized();
  }
  if ( MouseX > Root.WinWidth )
  {
    MouseX = Root.WinWidth;
  }
  if ( MouseY > Root.WinHeight )
  {
    MouseY = Root.WinHeight;
  }
  if ( MouseX < 0 )
  {
    MouseX = 0.0;
  }
  if ( MouseY < 0 )
  {
    MouseY = 0.0;
  }
  NewFocusWindow = Root.CheckKeyFocusWindow();
  if ( NewFocusWindow != Root.KeyFocusWindow )
  {
    Root.KeyFocusWindow.KeyFocusExit();
    Root.KeyFocusWindow = NewFocusWindow;
    Root.KeyFocusWindow.KeyFocusEnter();
  }
  //Root.MoveMouse(MouseX,MouseY);
  //Root.WindowEvent(9,Canvas,MouseX,MouseY,0);
  if ( bUWindowActive || bQuickKeyEnable )
  {
    Root.DrawMouse(Canvas);
  }
}

event Message (coerce string Msg, float MsgLife)
{
  Super.Message(Msg,MsgLife);
  if ( Viewport.Actor == None )
  {
    return;
  }
  if ( (Msg != "") && (ConsoleWindow != None) )
  {
    UWindowConsoleClientWindow(ConsoleWindow.ClientArea).TextArea.AddText(MsgText[TopLine]);
  }
}

function UpdateHistory ()
{
  History[int(HistoryCur++  % 16)] = TypedStr;
  if ( HistoryCur > HistoryBot )
  {
    HistoryBot++;
  }
  if ( HistoryCur - HistoryTop >= 16 )
  {
    HistoryTop = HistoryCur - 16 + 1;
  }
}

function HistoryUp ()
{
  if ( HistoryCur > HistoryTop )
  {
    History[int(HistoryCur % 16)] = TypedStr;
    TypedStr = History[int( --HistoryCur % 16)];
  }
}

function HistoryDown ()
{
  History[int(HistoryCur % 16)] = TypedStr;
  if ( HistoryCur < HistoryBot )
  {
    TypedStr = History[int( ++HistoryCur % 16)];
  } else {
    TypedStr = "";
  }
}

function NotifyLevelChange ()
{
  bLevelChange = True;
  if ( Root != None )
  {
    Root.NotifyBeforeLevelChange();
  }
}

defaultproperties
{
    RootWindow="UWindow.UWindowRootWindow"

    ConsoleClass=Class'UWindowConsoleWindow'

    MouseScale=0.60

}