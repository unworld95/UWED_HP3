//================================================================================
// UWindowConsoleWindow.
//================================================================================

class UWindowConsoleWindow extends UWindowFramedWindow;

var float OldParentWidth;
var float OldParentHeight;

function Created ()
{
}

function ShowWindow ()
{

}

function ResolutionChanged (float W, float H)
{
}

function SetDimensions ()
{
}

function Close (optional bool bByParent)
{
}

defaultproperties
{
     ClientClass=Class'UWindow.UWindowConsoleClientWindow'
     WindowTitle="Game Console"
}
