Class BannerSpwn extends Hpgenericspawner;

var bool bBlocksCamera;

defaultproperties
{
     bBlocksCamera=True
     vulnerableToClass=Class'HGame.DepulsoSpell'
     SpawningSound(0)=Sound'SoundEffects.Objects.banner_hit01'
     SpawningSound(1)=Sound'SoundEffects.Objects.banner_hit02'
     SpawningSound(2)=Sound'SoundEffects.Objects.banner_hit03'
     GoodieToSpawn(0)=Class'HGame.Jellybean'
     SpawningAnim="HitRight"
     Anims=(Opening="None",OpeningAnimRate=1.000000,Closing="None",ClosingAnimRate=1.000000,Start="InsideIdle",StartAnimRate=1.000000,End="HitEnd",EndAnimRate=1.000000)
     StartPos=(Z=45.000000)
     BaseParticles=Class'HGame.DustLarge'
     SingleParticle(0)=Class'HGame.SpawnFlashGreen'
     SingleParticle(1)=Class'HGame.SpawnFlashViolet'
     SingleParticle(2)=Class'HGame.SpawnFlashBlue'
     EndSound(0)=Sound'SoundEffects.Objects.banner_rollup01'
     EndSound(1)=Sound'SoundEffects.Objects.banner_rollup02'
     EndSound(2)=Sound'SoundEffects.Objects.banner_rollup03'
     GoodieDelay=0.100000
     Lives=2
     Physics=PHYS_None
     Mesh=SkeletalMesh'HProps.Banner'
     DrawScale=1.500000
     AmbientGlow=5
     SoundRadius=300.000000
     SoundVolume=255
     CollisionRadius=10.000000
}
