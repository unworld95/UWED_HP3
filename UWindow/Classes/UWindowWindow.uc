//================================================================================
// UWindowWindow.
//================================================================================

class UWindowWindow extends UWindowBase;

const DE_WheelDownPressed= 15;
const DE_WheelUpPressed= 14;
const DE_HelpChanged= 13;
const DE_MouseEnter= 12;
const DE_DoubleClick= 11;
const DE_LMouseDown= 10;
const DE_MouseLeave= 9;
const DE_MouseMove= 8;
const DE_EnterPressed= 7;
const DE_RClick= 6;
const DE_MClick= 5;
const DE_Exit= 4;
const DE_Enter= 3;
const DE_Click= 2;
const DE_Change= 1;
const DE_Created= 0;

enum WinMessage {
  WM_LMouseDown,
  WM_LMouseUp,
  WM_MMouseDown,
  WM_MMouseUp,
  WM_RMouseDown,
  WM_RMouseUp,
  WM_KeyUp,
  WM_KeyDown,
  WM_KeyType,
  WM_Paint
};

struct MouseCursor
{
  var Texture Tex;
  var int HotX;
  var int HotY;
  var byte WindowsCursor;
};

var float WinLeft;
var float WinTop;
var float WinWidth;
var float WinHeight;
var UWindowWindow ParentWindow;
var UWindowWindow FirstChildWindow;
var UWindowWindow LastChildWindow;
var UWindowWindow NextSiblingWindow;
var UWindowWindow PrevSiblingWindow;
var UWindowWindow ActiveWindow;
var UWindowRootWindow Root;
var UWindowWindow OwnerWindow;
var UWindowWindow ModalWindow;
var bool bWindowVisible;
var bool bNoClip;
var bool bMouseDown;
var bool bRMouseDown;
var bool bMMouseDown;
var bool bAlwaysBehind;
var bool bAcceptsFocus;
var bool bAlwaysOnTop;
var bool bLeaveOnscreen;
var bool bUWindowActive;
var bool bTransient;
var bool bAcceptsHotKeys;
var bool bIgnoreLDoubleClick;
var bool bIgnoreMDoubleClick;
var bool bIgnoreRDoubleClick;
var float ClickTime;
var float MClickTime;
var float RClickTime;
var float ClickX;
var float ClickY;
var float MClickX;
var float MClickY;
var float RClickX;
var float RClickY;
var UWindowLookAndFeel LookAndFeel;
var Region ClippingRegion;
var MouseCursor Cursor;

function WindowEvent (WinMessage Msg, Canvas C, float X, float Y, int Key)
{
}

function SaveConfigs ()
{
}

final function PlayerController GetPlayerOwner ()
{
  return Root.ViewportOwner.Actor;
}

final function LevelInfo GetLevel ()
{
  return Root.ViewportOwner.Actor.Level;
}

final function LevelInfo GetEntryLevel ()
{
  return None;
}

function Resized ()
{
}

function BeforePaint (Canvas C, float X, float Y)
{
}

function AfterPaint (Canvas C, float X, float Y)
{
}

function Paint (Canvas C, float X, float Y)
{
}

function Click (float X, float Y)
{
}

function MClick (float X, float Y)
{
}

function RClick (float X, float Y)
{
}

function DoubleClick (float X, float Y)
{
}

function MDoubleClick (float X, float Y)
{
}

function RDoubleClick (float X, float Y)
{
}

function BeginPlay ()
{
}

function BeforeCreate ()
{
}

function Created ()
{
}

function AfterCreate ()
{
}

function MouseEnter ()
{
}

function Activated ()
{
}

function Deactivated ()
{
}

function MouseLeave ()
{
}

function MouseMove (float X, float Y)
{
}

function KeyUp (int Key, float X, float Y)
{
}

function KeyDown (int Key, float X, float Y)
{
}

function bool HotKeyDown (int Key, float X, float Y)
{
  return False;
}

function bool HotKeyUp (int Key, float X, float Y)
{
  return False;
}

function KeyPressed (int Key, float X, float Y)
{
}

function ProcessMenuKey (int Key, string KeyName)
{
}

function KeyFocusEnter ()
{
}

function KeyFocusExit ()
{
}

function RMouseDown (float X, float Y)
{
}

function RMouseUp (float X, float Y)
{
}

function MMouseDown (float X, float Y)
{
}

function MMouseUp (float X, float Y)
{
}

function LMouseDown (float X, float Y)
{
}

function LMouseUp (float X, float Y)
{
}

function FocusWindow ()
{
}

function FocusOtherWindow (UWindowWindow W)
{
}

function EscClose ()
{
}

function Close (optional bool bByParent)
{
}

final function SetSize (float W, float H)
{
}

function Tick (float Delta)
{
}

final function DoTick (float Delta)
{
}

final function PaintClients (Canvas C, float X, float Y)
{
}

final function UWindowWindow FindWindowUnder (float X, float Y)
{
	return self;
}

final function bool PropagateKey (WinMessage Msg, Canvas C, float X, float Y, int Key)
{
  return False;
}

final function bool PropagateMessage (coerce string Msg, float MsgLife)
{
  return False;
}

final function UWindowWindow CheckKeyFocusWindow ()
{
  return None;
}

final function bool MessageClients (WinMessage Msg, Canvas C, float X, float Y, int Key)
{
  return False;
}

final function ActivateWindow (int depth, bool bTransientNoDeactivate)
{
}

final function BringToFront ()
{
}

final function SendToBack ()
{
}

final function HideChildWindow (UWindowWindow Child)
{
}

final function SetAcceptsFocus ()
{
}

final function CancelAcceptsFocus ()
{
}

final function GetMouseXY (out float X, out float Y)
{
}

final function GlobalToWindow (float GlobalX, float GlobalY, out float WinX, out float WinY)
{
}

final function WindowToGlobal (float WinX, float WinY, out float GlobalX, out float GlobalY)
{
}

final function ShowChildWindow (UWindowWindow Child, optional bool bAtBack)
{
}

function ShowWindow ()
{
}

function HideWindow ()
{
}

final function UWindowWindow CreateWindow (Class<UWindowWindow> WndClass, float X, float Y, float W, float H, optional UWindowWindow OwnerW, optional bool bUnique, optional name ObjectName)
{
  local UWindowWindow Child;
  return Child;
}

final function Tile (Canvas C, Texture t)
{
}

final function DrawHorizTiledPieces (Canvas C, float DestX, float DestY, float DestW, float DestH, TexRegion T1, TexRegion T2, TexRegion T3, TexRegion T4, TexRegion T5, float Scale)
{
}

final function DrawVertTiledPieces (Canvas C, float DestX, float DestY, float DestW, float DestH, TexRegion T1, TexRegion T2, TexRegion T3, TexRegion T4, TexRegion T5, float Scale)
{
}

final function DrawClippedTexture (Canvas C, float X, float Y, Texture Tex)
{
}

final function DrawStretchedTexture (Canvas C, float X, float Y, float W, float H, Texture Tex)
{
}

final function DrawStretchedTextureSegment (Canvas C, float X, float Y, float W, float H, float tX, float tY, float tW, float tH, Texture Tex)
{
}

final function ClipText (Canvas C, float X, float Y, coerce string S, optional bool bCheckHotKey)
{
}

final function int WrapClipText (Canvas C, float X, float Y, coerce string S, optional bool bCheckHotKey, optional int Length, optional int PaddingLength, optional bool bNoDraw)
{
  local int numLines;
  return numLines;
}

final function ClipTextWidth (Canvas C, float X, float Y, coerce string S, float W)
{
}

final function DrawClippedActor (Canvas C, float X, float Y, Actor A, bool Wireframe, Rotator RotOffset, Vector LocOffset)
{
}

final function DrawUpBevel (Canvas C, float X, float Y, float W, float H, Texture t)
{
}

final function DrawMiscBevel (Canvas C, float X, float Y, float W, float H, Texture t, int BevelType)
{
}

final function string RemoveAmpersand (string S)
{
  local string Result;
  return Result;
}

final function byte ParseAmpersand (string S, out string Result, out string Underline, bool bCalcUnderline)
{
  local byte HotKey;
  return HotKey;
}

final function bool MouseIsOver ()
{
	return Root.MouseWindow == self;
}

function ToolTip (string strTip)
{
}

final function SetMouseWindow ()
{
}

function Texture GetLookAndFeelTexture ()
{
	return ParentWindow.GetLookAndFeelTexture();
}

function bool IsActive ()
{
	return ParentWindow.IsActive();
}

function SetAcceptsHotKeys (bool bNewAccpetsHotKeys)
{
}

final function UWindowWindow GetParent (Class<UWindowWindow> ParentClass, optional bool bExactClass)
{
  return None;
}

final function UWindowWindow FindChildWindow (Class<UWindowWindow> ChildClass, optional bool bExactClass)
{
  return None;
}

function GetDesiredDimensions (out float W, out float H)
{
}

final function TextSize (Canvas C, string Text, out float W, out float H)
{
}

function ResolutionChanged (float W, float H)
{
}

function ShowModal (UWindowWindow W)
{
}

function bool WaitModal ()
{
  return False;
}

function WindowHidden ()
{
}

function WindowShown ()
{
}

function bool CheckMousePassThrough (float X, float Y)
{
  return False;
}

final function bool WindowIsVisible ()
{
  return False;
}

function SetParent (UWindowWindow NewParent)
{
}

function UWindowMessageBox MessageBox (string Title, string Message, MessageBoxButtons Buttons, MessageBoxResult ESCResult, optional MessageBoxResult EnterResult, optional int TimeOut)
{
  local UWindowMessageBox W;
  return W;
}

function MessageBoxDone (UWindowMessageBox W, MessageBoxResult Result)
{
}

function NotifyQuitUnreal ()
{
}

function NotifyBeforeLevelChange ()
{
}

function SetCursor (MouseCursor C)
{
}

function NotifyAfterLevelChange ()
{
}

final function ReplaceText (out string Text, string Replace, string With)
{
}

function StripCRLF (out string Text)
{
}

defaultproperties
{
}
