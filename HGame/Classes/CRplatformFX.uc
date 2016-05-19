Class CRplatformFX extends EnvironmentFX;

defaultproperties
{
     Begin Object Class=MeshEmitter Name=MeshEmitter3
         StaticMesh=StaticMesh'HP3_Particles_SM.Object_Pieces.BrokenBrick_Piece_SM'
         Acceleration=(Z=-500.000000)
         MaxParticles=5
         StartLocationRange=(X=(Min=-75.000000,Max=75.000000),Y=(Min=-75.000000,Max=75.000000))
         UseRotationFrom=PTRS_Normal
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.100000,Max=0.500000),Y=(Min=0.100000,Max=0.500000),Z=(Min=0.100000,Max=0.250000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=2.000000)
         SizeScale(1)=(RelativeTime=0.750000)
         SizeScale(2)=(RelativeTime=1.000000)
         StartSizeRange=(X=(Min=0.500000,Max=5.000000),Y=(Min=0.500000,Max=5.000000),Z=(Min=0.500000,Max=5.000000))
         LifetimeRange=(Min=1.000000,Max=3.000000)
         Name="MeshEmitter3"
     End Object
     Emitters(0)=MeshEmitter'HGame.CRplatformFX.MeshEmitter3'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter98
         Acceleration=(Z=-20.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.200000,Color=(B=91,G=47,R=157))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=66,G=66,R=149))
         ColorScale(3)=(RelativeTime=1.000000)
         MaxParticles=60
         StartLocationRange=(X=(Min=-40.000000,Max=40.000000),Y=(Min=-40.000000,Max=40.000000),Z=(Min=-10.000000,Max=10.000000))
         UseRevolution=True
         RevolutionsPerSecondRange=(Z=(Min=0.100000,Max=0.300000))
         StartSizeRange=(X=(Min=4.000000,Max=15.000000))
         UniformSize=True
         Texture=FireTexture'HP_FX.Particles.F_spark'
         LifetimeRange=(Min=1.000000,Max=6.000000)
         StartVelocityRange=(Z=(Min=-5.000000,Max=-10.000000))
         WarmupTicksPerSecond=1.000000
         RelativeWarmupTime=1.000000
         Name="SpriteEmitter98"
     End Object
     Emitters(1)=SpriteEmitter'HGame.CRplatformFX.SpriteEmitter98'
}
