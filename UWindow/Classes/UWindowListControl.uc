//================================================================================
// UWindowListControl.
//================================================================================

class UWindowListControl extends UWindowDialogControl;

var Class<UWindowList> ListClass;
var UWindowList Items;
var Color SelectionBkgColor;
var Color SelectionColor;
var bool bNoSelectionBox;

function DrawItem (Canvas C, UWindowList item, float X, float Y, float W, float H)
{
}

function Created ()
{
  Super.Created();
}

defaultproperties
{
     SelectionBkgColor=(R=192,A=255)
     SelectionColor=(B=255,G=255,R=255,A=255)
}
