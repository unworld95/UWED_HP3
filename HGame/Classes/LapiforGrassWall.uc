Class LapiforGrassWall extends LapiforDigableObject;

var() bool bOneSided;
var Emitter eEmitter;
var() array<SoundGroup> EatGrassSounds;

defaultproperties
{
     clsEffectEmitterType=Class'HGame.GrassEating'
     fTotalDigTime=2.600000
     fIndividualDigTime=2.700000
     bSpawnGoodies=True
     Mesh=SkeletalMesh'HProps.TallGrass'
     CollisionRadius=12.000000
}
