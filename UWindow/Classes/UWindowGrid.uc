//================================================================================
// UWindowGrid.
//================================================================================

class UWindowGrid extends UWindowWindow;

var UWindowGridColumn FirstColumn;
var UWindowGridColumn LastColumn;
var UWindowGridClient ClientArea;
var int TopRow;
var float RowHeight;
var UWindowVScrollbar VertSB;
var UWindowHScrollbar HorizSB;
var bool bShowHorizSB;
var bool bSizingColumn;
var bool bNoKeyboard;

function Created ()
{
}

function BeforePaint (Canvas C, float X, float Y)
{
}

function Resized ()
{
}

function UWindowGridColumn AddColumn (string ColumnHeading, float DefaultWidth)
{
	return None;
}

function Paint (Canvas C, float MouseX, float MouseY)
{
}

function PaintColumn (Canvas C, UWindowGridColumn Column, float MouseX, float MouseY)
{
}

function SortColumn (UWindowGridColumn Column)
{
}

function SelectRow (int Row)
{
}

function RightClickRow (int Row, float X, float Y)
{
}

function RightClickRowDown (int Row, float X, float Y)
{
}

function DoubleClickRow (int Row)
{
}

function MouseLeaveColumn (UWindowGridColumn Column)
{
}

function KeyDown (int Key, float X, float Y)
{
}

defaultproperties
{
     RowHeight=10.000000
}
