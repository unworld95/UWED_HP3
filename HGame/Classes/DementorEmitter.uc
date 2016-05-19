Class DementorEmitter extends CreatureFX;

var float fFrostFactor;
var Vector vDefaultRelativeVelocity_0;
var Vector vDefaultRelativeVelocity_1;
var Range DefaultLifeTimeRange;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=FrostEmitter
         UseDirectionAs=PTDU_Normal
         MaxCollisions=(Max=4.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.100000,Color=(B=215,G=53,R=57))
         ColorScale(2)=(RelativeTime=0.900000,Color=(B=134,G=74,R=68))
         ColorScale(3)=(RelativeTime=1.000000)
         MaxParticles=200
         StartLocationRange=(X=(Min=100.000000,Max=-100.000000),Y=(Min=80.000000,Max=-80.000000),Z=(Min=2.000000,Max=-2.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-0.100000,Max=0.100000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=2.500000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=1.000000)
         StartSizeRange=(X=(Min=10.000000,Max=30.000000))
         UniformSize=True
         DrawStyle=PTDS_Brighten
         Texture=Texture'EmitterTextures.MultiFrame.LargeFlames-grey'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=15.000000,Max=15.000000)
         StartVelocityRange=(X=(Min=1.000000,Max=1.000000),Y=(Min=10.000000,Max=-10.000000))
         UseVelocityScale=True
         VelocityScale(0)=(RelativeVelocity=(X=-120.000000))
         VelocityScale(1)=(RelativeTime=1.000000,RelativeVelocity=(X=120.000000))
         Name="FrostEmitter"
     End Object
     Emitters(0)=SpriteEmitter'HGame.DementorEmitter.FrostEmitter'
     Physics=PHYS_Trailer
     bTrailerSameRotation=True
     RemoteRole=ROLE_DumbProxy
     DrawScale=0.100000
     Mass=4.000000
}
