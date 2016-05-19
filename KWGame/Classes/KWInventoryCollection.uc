//================================================================================
// KWInventoryCollection.
//================================================================================

class KWInventoryCollection extends KWInventory;

var travel int iNumItems;
var travel int iMaxItems;

function bool HandlePickupQuery (Pickup item)
{
  return False;
}

function TravelPreAccept ()
{
}

function int GetItemCount ()
{
  return 0;
}

function int AddToItemCount (int iItems)
{
  return 0;
}

function int SubtractFromItemCount (int iItems)
{
  return 0;
}

function int SetMaxItemCount (int iNewMaxItemCount)
{
  local int iOldMax;
  return iOldMax;
}

defaultproperties
{
     iMaxItems=-1
}
