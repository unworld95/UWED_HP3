Class ChestCompanionSpawner extends Hpgenericspawner;

defaultproperties
{
     ClosingSound(0)=Sound'SoundEffects.Objects.companion_chest_close'
     GoodieToSpawn(0)=Class'HGame.Jellybean'
     Anims=(Opening="Open",OpeningAnimRate=1.000000,Closing="Close",ClosingAnimRate=1.000000,Start="None",StartAnimRate=1.000000,End="None",EndAnimRate=1.000000)
     OpeningSnds(0)=Sound'SoundEffects.Objects.companion_chest_open'
     Limits=(Max=8,Min=5)
     StartPos=(X=15.000000,Z=15.000000)
     StartVelMultiplier=150.000000
     BaseParticles=Class'HGame.Dustsmall'
     SingleParticle(0)=Class'HGame.SpawnFlashRed'
     SingleParticle(1)=Class'HGame.SpawnFlashGreen'
     SingleParticle(2)=Class'HGame.SpawnFlashViolet'
     GoodieDelay=0.000000
     Physics=PHYS_None
     bLightChanged=True
     Mesh=SkeletalMesh'HProps.AlohomoraChest'
     DrawScale=1.200000
     SoundRadius=300.000000
     CollisionRadius=32.000000
     CollisionHeight=24.000000
     bSelected=True
}
