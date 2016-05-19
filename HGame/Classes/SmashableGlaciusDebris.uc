Class SmashableGlaciusDebris extends HPSmashableDebris;

defaultproperties
{
     HitDebris=(bParticles=Class'HGame.Dustsmall',cSound=Sound'SoundEffects.Magic.s_spell_hit4')
     BaseDebris(0)=(aStaticMesh=StaticMesh'HP3_Particles_SM.Object_Pieces.BrokenBrick_Piece_SM',Velocity=1000)
     BaseDebris(1)=(aStaticMesh=StaticMesh'HP3_GamePlay_sm.Spells_Objects.CauldronCake_SM',Velocity=1100)
     BaseDebris(2)=(aStaticMesh=StaticMesh'HP3_Particles_SM.Object_Pieces.BrokenBrick_Piece_SM',Velocity=1200)
     BaseDebris(3)=(aStaticMesh=StaticMesh'HP3_GamePlay_sm.Spells_Objects.CauldronCake_SM',Velocity=1300)
     BaseDebris(4)=(aStaticMesh=StaticMesh'HP3_Particles_SM.Object_Pieces.BrokenBrick_Piece_SM',Velocity=1400)
     BaseDebris(5)=(aStaticMesh=StaticMesh'HP3_GamePlay_sm.Spells_Objects.CauldronCake_SM',Velocity=1500)
     bDirectionalBreak=True
     StaticMesh=StaticMesh'HP3_GamePlay_sm.BeanPickup'
     DrawScale=2.500000
     CollisionRadius=20.000000
     CollisionHeight=20.000000
}
