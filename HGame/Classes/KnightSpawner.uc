Class KnightSpawner extends Hpgenericspawner;

defaultproperties
{
     bBlocksCamera=True
     vulnerableToClass=Class'HGame.DepulsoSpell'
     GoodieToSpawn(0)=Class'HGame.Jellybean'
     Anims=(Opening="Hit",OpeningAnimRate=1.000000,Closing="None",ClosingAnimRate=1.000000,Start="None",StartAnimRate=1.000000,End="None",EndAnimRate=1.000000)
     OpeningSnds(0)=Sound'SoundEffects.Objects.rictuarmor_hit01'
     OpeningSnds(1)=Sound'SoundEffects.Objects.rictuarmor_hit02'
     OpeningSnds(2)=Sound'SoundEffects.Objects.rictuarmor_hit03'
     StartPos=(X=20.000000,Z=50.000000)
     BaseParticles=Class'HGame.Dustsmall'
     Mesh=SkeletalMesh'HProps.SuitOfArmour'
     DrawScale=1.250000
     SoundRadius=300.000000
}
