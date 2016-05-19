//================================================================================
// UWindowLayoutControl.
//================================================================================

class UWindowLayoutControl extends UWindowLayoutBase;

var UWindowDialogClientWindow OwnerWindow;
var float WinTop;
var float WinLeft;
var float WinWidth;
var float WinHeight;
var float MinimumWidth;
var float MinimumHeight;
var UWindowLayoutRow RowList;

static function UWindowLayoutControl Create ()
{
  local UWindowLayoutControl C;
  return C;
}

function PerformLayout ()
{
}

function UWindowLayoutRow AddRow ()
{
  return UWindowLayoutRow(RowList.Append(Class'UWindowLayoutRow'));
}

function UWindowLayoutCell AddCell (optional int ColSpan, optional int RowSpan)
{
  return RowList.AddCell(ColSpan,RowSpan);
}

defaultproperties
{
}
