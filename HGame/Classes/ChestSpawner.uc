Class ChestSpawner extends Hpgenericspawner;

defaultproperties
{
     GoodieToSpawn(0)=Class'HGame.Jellybean'
     Anims=(Opening="Open",OpeningAnimRate=1.000000,Closing="Close",ClosingAnimRate=1.000000,Start="None",StartAnimRate=1.000000,End="End",EndAnimRate=1.000000)
     OpeningSnds(0)=Sound'SoundEffects.Objects.chest_magic_open01'
     OpeningSnds(1)=Sound'SoundEffects.Objects.chest_magic_open02'
     OpeningSnds(2)=Sound'SoundEffects.Objects.chest_magic_open03'
     Limits=(Max=6,Min=4)
     StartPos=(X=15.000000,Z=15.000000)
     StartVelMultiplier=100.000000
     BaseParticles=Class'HGame.Dustsmall'
     SingleParticle(0)=Class'HGame.SpawnFlashRed'
     SingleParticle(1)=Class'HGame.SpawnFlashGreen'
     SingleParticle(2)=Class'HGame.SpawnFlashViolet'
     GoodieDelay=0.100000
     Physics=PHYS_None
     bLightChanged=True
     SoundOcclusion=OCCLUSION_None
     CollisionRadius=32.000000
     CollisionHeight=24.000000
     bSelected=True
}
