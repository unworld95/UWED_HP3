//================================================================================
// UWindowList.
//================================================================================

class UWindowList extends UWindowBase;

var UWindowList Next;
var UWindowList Last;
var UWindowList Prev;
var UWindowList Sentinel;
var int InternalCount;
var bool bItemOrderChanged;
var bool bSuspendableSort;
var int CompareCount;
var bool bSortSuspended;
var UWindowList CurrentSortItem;
var bool bTreeSort;
var UWindowList BranchLeft;
var UWindowList BranchRight;
var UWindowList ParentNode;
var int Tag;

function UWindowList CreateItem (Class<UWindowList> C)
{
  local UWindowList NewElement;
  return NewElement;
}

function GraftLeft (UWindowList NewLeft)
{
}

function GraftRight (UWindowList NewRight)
{
  assert (Sentinel.bTreeSort);
  BranchRight = NewRight;
  if ( NewRight != None )
  {
    NewRight.ParentNode = self;
  }
}

function UWindowList RightMost ()
{
  local UWindowList L;
  return L;
}

function UWindowList LeftMost ()
{
  local UWindowList L;
  return L;
}

function Remove ()
{
}

function int Compare (UWindowList t, UWindowList B)
{
  return 0;
}

function UWindowList InsertBefore (Class<UWindowList> C)
{
  local UWindowList NewElement;
  return NewElement;
}

function UWindowList InsertAfter (Class<UWindowList> C)
{
  local UWindowList NewElement;
  return NewElement;
}

function InsertItemBefore (UWindowList NewElement)
{
}

function InsertItemAfter (UWindowList NewElement, optional bool bCheckShowItem)
{
}

function ContinueSort ()
{
}

function Tick (float Delta)
{
  if ( bSortSuspended )
  {
    ContinueSort();
  }
}

function UWindowList Sort ()
{
  //CurrentItem = self;
  return self;
}

function DisconnectList ()
{
}

function DestroyList ()
{
}

function DestroyListItem ()
{
}

function int CountShown ()
{
  local int C;
  return C;
}

function UWindowList CopyExistingListItem (Class<UWindowList> ItemClass, UWindowList SourceItem)
{
  local UWindowList i;
  return i;
}

function bool ShowThisItem ()
{
  return True;
}

function int Count ()
{
  return InternalCount;
}

function MoveItemSorted (UWindowList item)
{
}

function SetupSentinel (optional bool bInTreeSort)
{
}

function Validate ()
{
}

function UWindowList Append (Class<UWindowList> C)
{
  local UWindowList NewElement;
  return NewElement;
}

function AppendItem (UWindowList NewElement)
{
}

function DoAppendItem (UWindowList NewElement)
{
}

function UWindowList Insert (Class<UWindowList> C)
{
  local UWindowList NewElement;
  return NewElement;
}

function InsertItem (UWindowList NewElement)
{
}

function UWindowList FindEntry (int Index)
{
  local UWindowList L;
  return L;
}

function AppendListCopy (UWindowList L)
{
}

function Clear ()
{
}

defaultproperties
{
}
