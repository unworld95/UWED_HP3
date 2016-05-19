Class KnightCollapse extends KnightShieldSpawner;

defaultproperties
{
     SpawningSound(0)=Sound'SoundEffects.Objects.rictuarmor_collapse01'
     SpawningSound(1)=Sound'SoundEffects.Objects.rictuarmor_collapse02'
     SpawningAnim="Collapse"
     Anims=(Opening="None",Closing="None")
     OpeningSnds(0)=Sound'SoundEffects.Objects.rictuarmor_hit01'
     OpeningSnds(1)=Sound'SoundEffects.Objects.rictuarmor_hit02'
     OpeningSnds(2)=Sound'SoundEffects.Objects.rictuarmor_hit03'
     Limits=(Max=10,Min=6)
     StartBone="None"
     StartPos=(Z=-40.000000)
     StartVelVariance=(X=20.000000,Y=20.000000,Z=20.000000)
     SingleParticle(0)=Class'HGame.SpawnFlashBlue'
     SingleParticle(1)=Class'HGame.SpawnFlashViolet'
     SingleParticle(2)=Class'HGame.SpawnFlashBlue'
     GoodieDelay=0.500000
     bUnlit=True
}
