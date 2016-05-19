Class Pumpkin extends Hpgenericspawner;

defaultproperties
{
     vulnerableToClass=Class'HGame.DepulsoSpell'
     ClosingSound(0)=Sound'SoundEffects.Objects.pumpkin_spawn01'
     ClosingSound(1)=Sound'SoundEffects.Objects.pumpkin_spawn02'
     ClosingSound(2)=Sound'SoundEffects.Objects.pumpkin_spawn03'
     SpawningSound(0)=Sound'SoundEffects.Objects.pumpkin_explode01'
     SpawningSound(1)=Sound'SoundEffects.Objects.pumpkin_explode02'
     SpawningSound(2)=Sound'SoundEffects.Objects.pumpkin_explode03'
     GoodieToSpawn(0)=Class'HGame.Jellybean'
     SpawningAnim="Hit"
     Anims=(Opening="None",OpeningAnimRate=1.000000,Closing="Grow",ClosingAnimRate=1.000000,Start="None",StartAnimRate=1.000000,End="None",EndAnimRate=1.000000)
     StartPos=(Z=5.000000)
     BaseParticles=Class'HGame.PumpkinExplode'
     SingleParticle(0)=Class'HGame.SpawnFlashGreen'
     SingleParticle(1)=Class'HGame.SpawnFlashRed'
     SingleParticle(2)=Class'HGame.SpawnFlashViolet'
     GoodieDelay=0.050000
     Lives=6
     Mesh=SkeletalMesh'HProps.Pumpkin'
     bUnlit=True
     SoundRadius=300.000000
     SoundVolume=255
     CollisionRadius=25.000000
     CollisionHeight=20.000000
}
