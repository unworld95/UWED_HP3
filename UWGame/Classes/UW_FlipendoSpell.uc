//================================================================================
// UW_FlipendoSpell.
//================================================================================

class UW_FlipendoSpell extends baseSpell
  Config(Spells);
  
  #EXEC TEXTURE IMPORT FILE=Textures\FlipendoShape.bmp NAME=FlipendoShape
  #EXEC AUDIO IMPORT FILE=Sounds\Flipendo.wav NAME=CastFlipendo


defaultproperties
{
    SpellIcon=Texture'FlipendoShape'
    SeekSpeed=8.00
    fxChargeParticleEffectClass=Class'DepulsoWandEmitter'
    fxFlyParticleEffectClass=Class'DepulsoFlyEmitter'
    CastSound=Sound'CastFlipendo'
    DrawType=0
}