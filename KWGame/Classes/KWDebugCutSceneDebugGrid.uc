//================================================================================
// KWDebugCutSceneDebugGrid.
//================================================================================

class KWDebugCutSceneDebugGrid extends UWindowGrid;

var KWDebugCSDRightClickMenu Menu;
var string gScriptFileName;
var int CurrentRow[10];
var int gSelectedRow;
var int gSelectedCol;
var KWCutScene kwcs;
const TS_BOTH= 11;
const TS_SELECTED= 10;
const TS_CURRENT= 1;
const TS_NONE= 0;
const MAX_COLUMNS= 10;
const COL_WIDTH= 110;

function Created ()
{
}

function InitText (string ScriptFileName)
{
}

event UpdateCurrentRow ()
{
}

function PaintColumn (Canvas C, UWindowGridColumn Column, float MouseX, float MouseY)
{
}

function int GetClickedColumn (float X)
{
  local int Col;
  return Col;
}

function RightClickRow (int Row, float X, float Y)
{
}

defaultproperties
{
     gSelectedRow=100
     gSelectedCol=100
}
