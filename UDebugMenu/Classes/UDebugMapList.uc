//================================================================================
// UDebugMapList.
//================================================================================

class UDebugMapList extends UWindowListBoxItem;

var string MapName;
var string DisplayName;

function int Compare (UWindowList t, UWindowList B)
{
  return 1;
}

function UDebugMapList FindMap (string FindMapName)
{
  return None;
}

defaultproperties
{
}
