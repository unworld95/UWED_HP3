Class HPGUIController extends KWGUIController;

var array<string> HPFontNames;
var array<string> HPStyleNames;
var int CurUserID;

defaultproperties
{
     StyleNames(0)="GUI.STY_RoundButton"
     StyleNames(1)="GUI.STY_RoundScaledButton"
     StyleNames(2)="GUI.STY_SquareButton"
     StyleNames(3)="GUI.STY_ListBox"
     StyleNames(4)="GUI.STY_ScrollZone"
     StyleNames(5)="GUI.STY_TextButton"
     StyleNames(6)="GUI.STY_Header"
     StyleNames(7)="GUI.STY_Footer"
     StyleNames(8)="GUI.STY_TabButton"
     StyleNames(9)="GUI.STY_NoBackground"
     StyleNames(10)="GUI.STY_SliderCaption"
     StyleNames(11)="GUI.STY_SquareBar"
     StyleNames(12)="GUI.STY_TextLabel"
     StyleNames(13)="GUI.STY_ComboListBox"
     MouseCursors(0)=Texture'GUIContent.Menu.MouseCursor'
     MouseCursors(1)=Texture'GUIContent.Menu.MouseCursor'
     MouseCursors(2)=Texture'GUIContent.Menu.MouseCursor'
     MouseCursors(3)=Texture'GUIContent.Menu.MouseCursor'
     MouseCursors(4)=Texture'GUIContent.Menu.MouseCursor'
     MouseCursors(5)=Texture'GUIContent.Menu.MouseCursor'
     MouseCursors(6)=Texture'GUIContent.Menu.MouseCursor'
}
