//================================================================================
// CandleLight.
//================================================================================

class CandleLight extends Light;

#exec texture import file="Textures\CandleF.bmp" Name=CandleF

defaultproperties
{
     bHidden=False
     Texture=Texture'CandleF'
     bSelected=True
	 Style=STY_Translucent
}
