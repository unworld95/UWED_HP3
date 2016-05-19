Class TapestrySpwn extends Hpgenericspawner;

defaultproperties
{
     bBlocksCamera=True
     vulnerableToClass=Class'HGame.DepulsoSpell'
     SpawningSound(0)=Sound'SoundEffects.Objects.tapestry_hit01'
     SpawningSound(1)=Sound'SoundEffects.Objects.tapestry_hit02'
     SpawningSound(2)=Sound'SoundEffects.Objects.tapestry_hit03'
     GoodieToSpawn(0)=Class'HGame.Jellybean'
     SpawningAnim="Hit"
     Emitts=(End=Class'HGame.Dustsmall')
     Anims=(Opening="Open",OpeningAnimRate=1.000000,Closing="Close",ClosingAnimRate=1.000000,Start="Idle",StartAnimRate=1.000000,End="HitEnd",EndAnimRate=1.000000)
     BaseParticles=Class'HGame.DustLarge'
     SingleParticle(0)=Class'HGame.SpawnFlashGreen'
     SingleParticle(1)=Class'HGame.SpawnFlashRed'
     SingleParticle(2)=Class'HGame.SpawnFlashViolet'
     EndSound(0)=Sound'SoundEffects.Objects.tapestry_rollup01'
     EndSound(1)=Sound'SoundEffects.Objects.tapestry_rollup02'
     EndSound(2)=Sound'SoundEffects.Objects.tapestry_rollup03'
     GoodieDelay=0.000000
     Lives=3
     Mesh=SkeletalMesh'HProps.Tapestry'
     DrawScale=1.500000
     SoundRadius=400.000000
     SoundVolume=255
     CollisionRadius=10.000000
}
