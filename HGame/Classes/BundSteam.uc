Class BundSteam extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter49
         UseDirectionAs=PTDU_Scale
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.100000,Color=(B=136,G=167,R=63))
         ColorScale(2)=(RelativeTime=1.000000)
         StartLocationRange=(X=(Min=25.000000,Max=-25.000000),Y=(Min=25.000000,Max=-25.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.350000,Max=-0.350000))
         UseSizeScale=True
         StartSizeRange=(X=(Min=10.000000,Max=25.000000),Y=(Min=10.000000,Max=10.000000))
         UniformSize=True
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP_FX.Particles.Smoke3'
         LifetimeRange=(Min=2.000000,Max=6.000000)
         StartVelocityRange=(X=(Min=1.000000,Max=1.000000),Y=(Min=1.000000,Max=1.000000),Z=(Min=2.000000,Max=2.000000))
         VelocityLossRange=(X=(Min=15.000000,Max=15.000000),Z=(Min=0.250000,Max=0.250000))
         UseVelocityScale=True
         VelocityScale(0)=(RelativeVelocity=(X=8.000000,Y=-8.000000,Z=15.000000))
         VelocityScale(1)=(RelativeTime=0.200000,RelativeVelocity=(X=-8.000000,Y=8.000000,Z=10.000000))
         VelocityScale(2)=(RelativeTime=0.400000,RelativeVelocity=(X=8.000000,Y=-8.000000,Z=10.000000))
         VelocityScale(3)=(RelativeTime=0.600000,RelativeVelocity=(X=-8.000000,Y=8.000000,Z=10.000000))
         VelocityScale(4)=(RelativeTime=0.800000,RelativeVelocity=(X=8.000000,Y=-8.000000,Z=15.000000))
         VelocityScale(5)=(RelativeTime=1.000000)
         VelocityScaleRepeats=2.000000
         Name="SpriteEmitter49"
     End Object
     Emitters(0)=SpriteEmitter'HGame.BundSteam.SpriteEmitter49'
}
