// ====================================================================
//  Class:  GUI.GUIHorzGripButton
//  Parent: GUI.GUIGFXButton
//
//  <Enter a description here>
// ====================================================================

class GUIHorzGripButton extends GUIGFXButton
		Native;

function InitComponent(GUIController MyController, GUIComponent MyOwner)
{
	Super.Initcomponent(MyController, MyOwner);
	Graphic = Material'GUIContent.Menu.ButGrip';
}

defaultproperties
{
     Position=ICP_Bound
     bNeverFocus=True
}
