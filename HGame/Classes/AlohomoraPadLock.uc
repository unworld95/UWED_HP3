Class AlohomoraPadLock extends Hpgenericspawner;

defaultproperties
{
     GoodieToSpawn(0)=Class'HGame.SpawnFlashBlue'
     Anims=(Opening="Open",OpeningAnimRate=1.000000,Closing="None",ClosingAnimRate=1.000000,Start="None",StartAnimRate=1.000000,End="None",EndAnimRate=1.000000)
     OpeningSnds(0)=Sound'SoundEffects.Objects.padlock01'
     OpeningSnds(1)=Sound'SoundEffects.Objects.padlock02'
     OpeningSnds(2)=Sound'SoundEffects.Objects.padlock03'
     Limits=(Max=2,Min=2)
     StartPos=(Z=0.000000)
     GoodieDelay=0.050000
     bDestroable=True
     Physics=PHYS_None
     Mesh=SkeletalMesh'HProps.Padlock'
     DrawScale=3.000000
     SoundRadius=300.000000
     CollisionRadius=16.000000
     CollisionHeight=12.000000
}
