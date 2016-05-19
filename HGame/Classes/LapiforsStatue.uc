Class LapiforsStatue extends CreatureStatue;

var baseSpell savedSpell;

defaultproperties
{
     VisualFXClass=Class'HGame.StatueLapifors'
     vulnerableToClass=Class'HGame.LapiforsSpell'
     Mesh=SkeletalMesh'HPCharacters.LapiforsStatue'
     DrawScale=2.000000
     PrePivot=(X=-8.000000,Z=-25.000000)
     CollisionRadius=16.000000
     CollisionHeight=23.000000
}
