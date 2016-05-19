//================================================================================
// UWindowSmallOKButton.
//================================================================================

class UWindowSmallOKButton extends UWindowSmallCloseButton;

var localized string OKText;

function Created ()
{
  Super.Created();
}

defaultproperties
{
     OKText="OK"
}
