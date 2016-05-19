Class BundGoo extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter31
         UseDirectionAs=PTDU_Normal
         UseColorScale=True
         ColorScale(0)=(Color=(B=197,G=120,R=84))
         ColorScale(1)=(RelativeTime=0.800000,Color=(B=99,G=169,R=104))
         ColorScale(2)=(RelativeTime=1.000000)
         MaxParticles=8
         StartLocationRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=-5.000000,Max=5.000000))
         StartSizeRange=(X=(Min=5.000000,Max=30.000000))
         UniformSize=True
         InitialParticlesPerSecond=500.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'EmitterTextures.MultiFrame.Effect_A'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=2.000000,Max=3.000000)
         StartVelocityRange=(X=(Min=-500.000000,Max=500.000000),Y=(Min=-500.000000,Max=500.000000))
         VelocityLossRange=(X=(Min=10.000000,Max=15.000000),Y=(Min=10.000000,Max=15.000000))
         Name="SpriteEmitter31"
     End Object
     Emitters(0)=SpriteEmitter'HGame.BundGoo.SpriteEmitter31'
}
