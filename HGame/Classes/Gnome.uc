Class Gnome extends Creatures;

var Vector vHome;
var GnomeMarker pMarker;
var Vector pNodeLoc;
var float HitByRictTime;
var float SoundDuration;
var float SoundPlayTime;
var bool bCurrentSoundOver;
var bool bWasHitByRict;
var() bool bHasHome;
var() int HeroBeans;
var() int HeroPotions;
var() int MaxGoodies;
var() Vector PushForce;
var() float MaxDistFromHome;
var() Class<Emitter> DyingEffectClass[2];
var() array<SoundGroup> soundGetOff;
var() array<SoundGroup> soundOuch;
var() array<SoundGroup> soundTalk;
var() array<SoundGroup> soundDie;
var() array<SoundGroup> soundThrown;
var() array<SoundGroup> soundEat;
var() array<SoundGroup> soundCrash;
var() name HitEvent;
var() name PickupEvent;
var() name StandUpEvent;

defaultproperties
{
     bCurrentSoundOver=True
     bHasHome=True
     MaxGoodies=15
     PushForce=(X=200.000000,Y=200.000000,Z=250.000000)
     DyingEffectClass(0)=Class'HGame.DustLarge'
     DyingEffectClass(1)=Class'HGame.DustLarge'
     soundGetOff(0)=(Sound=Sound'SoundEffects.Creatures.gnome_talk01')
     soundGetOff(1)=(Sound=Sound'SoundEffects.Creatures.gnome_talk02')
     soundGetOff(2)=(Sound=Sound'SoundEffects.Creatures.gnome_talk03')
     soundOuch(0)=(Sound=Sound'SoundEffects.Creatures.gnome_ouch01')
     soundOuch(1)=(Sound=Sound'SoundEffects.Creatures.gnome_ouch02')
     soundOuch(2)=(Sound=Sound'SoundEffects.Creatures.gnome_ouch03')
     soundOuch(3)=(Sound=Sound'SoundEffects.Creatures.gnome_ouch04')
     soundOuch(4)=(Sound=Sound'SoundEffects.Creatures.gnome_ouch05')
     soundOuch(5)=(Sound=Sound'SoundEffects.Creatures.gnome_ouch06')
     soundOuch(6)=(Sound=Sound'SoundEffects.Creatures.gnome_ouch07')
     soundOuch(7)=(Sound=Sound'SoundEffects.Creatures.gnome_ouch08')
     soundTalk(0)=(Sound=Sound'SoundEffects.Creatures.gnome_talk01')
     soundTalk(1)=(Sound=Sound'SoundEffects.Creatures.gnome_talk02')
     soundTalk(2)=(Sound=Sound'SoundEffects.Creatures.gnome_talk03')
     soundTalk(3)=(Sound=Sound'SoundEffects.Creatures.gnome_talk04')
     soundTalk(4)=(Sound=Sound'SoundEffects.Creatures.gnome_talk05')
     soundTalk(5)=(Sound=Sound'SoundEffects.Creatures.gnome_talk06')
     soundTalk(6)=(Sound=Sound'SoundEffects.Creatures.gnome_talk07')
     soundTalk(7)=(Sound=Sound'SoundEffects.Creatures.gnome_talk08')
     soundTalk(8)=(Sound=Sound'SoundEffects.Creatures.gnome_talk09')
     soundTalk(9)=(Sound=Sound'SoundEffects.Creatures.gnome_talk10')
     soundTalk(10)=(Sound=Sound'SoundEffects.Creatures.gnome_talk11')
     soundTalk(11)=(Sound=Sound'SoundEffects.Creatures.gnome_talk12')
     soundTalk(12)=(Sound=Sound'SoundEffects.Creatures.gnome_talk13')
     soundTalk(13)=(Sound=Sound'SoundEffects.Creatures.gnome_talk14')
     soundTalk(14)=(Sound=Sound'SoundEffects.Creatures.gnome_talk15')
     soundTalk(15)=(Sound=Sound'SoundEffects.Creatures.gnome_talk16')
     soundDie(0)=(Sound=Sound'SoundEffects.Creatures.gnome_die01')
     soundDie(1)=(Sound=Sound'SoundEffects.Creatures.gnome_die02')
     soundDie(2)=(Sound=Sound'SoundEffects.Creatures.gnome_die03')
     soundDie(3)=(Sound=Sound'SoundEffects.Creatures.gnome_die04')
     soundDie(4)=(Sound=Sound'SoundEffects.Creatures.gnome_die05')
     soundDie(5)=(Sound=Sound'SoundEffects.Creatures.gnome_die06')
     soundThrown(0)=(Sound=Sound'SoundEffects.Creatures.gnome_gets_thrown01')
     soundThrown(1)=(Sound=Sound'SoundEffects.Creatures.gnome_gets_thrown02')
     soundThrown(2)=(Sound=Sound'SoundEffects.Creatures.gnome_gets_thrown03')
     soundThrown(3)=(Sound=Sound'SoundEffects.Creatures.gnome_gets_thrown04')
     soundThrown(4)=(Sound=Sound'SoundEffects.Creatures.gnome_gets_thrown05')
     soundThrown(5)=(Sound=Sound'SoundEffects.Creatures.gnome_gets_thrown06')
     soundThrown(6)=(Sound=Sound'SoundEffects.Creatures.gnome_gets_thrown07')
     soundThrown(7)=(Sound=Sound'SoundEffects.Creatures.gnome_gets_thrown08')
     soundThrown(8)=(Sound=Sound'SoundEffects.Creatures.gnome_gets_thrown09')
     soundThrown(9)=(Sound=Sound'SoundEffects.Creatures.gnome_gets_thrown10')
     soundEat(0)=(Sound=Sound'SoundEffects.Creatures.gnome_eat01')
     soundEat(1)=(Sound=Sound'SoundEffects.Creatures.gnome_eat02')
     soundEat(2)=(Sound=Sound'SoundEffects.Creatures.gnome_eat03')
     soundEat(3)=(Sound=Sound'SoundEffects.Creatures.gnome_eat04')
     soundCrash(0)=(Sound=Sound'SoundEffects.Creatures.gnome_die01')
     soundCrash(1)=(Sound=Sound'SoundEffects.Creatures.gnome_die02')
     soundCrash(2)=(Sound=Sound'SoundEffects.Creatures.gnome_die03')
     soundCrash(3)=(Sound=Sound'SoundEffects.Creatures.gnome_die04')
     soundCrash(4)=(Sound=Sound'SoundEffects.Creatures.gnome_die05')
     vulnerableToClass=Class'HGame.RictusempraSpell_Combat'
     bAccurateThrowing=True
     fAccurateThrowingTime=0.250000
     SightRadius=400.000000
     PeripheralVision=1.000000
     GroundSpeed=150.000000
     BaseEyeHeight=15.000000
     EyeHeight=15.000000
     ControllerClass=Class'HGame.GnomeController'
     bPhysicsAnimUpdate=False
     Mesh=SkeletalMesh'HPCharacters.Gnome'
     AmbientGlow=75
     CollisionRadius=12.000000
     CollisionHeight=20.000000
     bBlockKarma=True
     Begin Object Class=KarmaParamsSkel Name=GnomeKParams
         KSkeleton="Gnome"
         KConvulseSpacing=(Max=2.200000)
         KLinearDamping=0.150000
         KAngularDamping=0.050000
         KBuoyancy=1.000000
         KStartEnabled=True
         KVelDropBelowThreshold=50.000000
         bHighDetailOnly=False
         KFriction=0.600000
         KRestitution=0.300000
         KImpactThreshold=500.000000
         Name="GnomeKParams"
     End Object
     KParams=KarmaParamsSkel'HGame.Gnome.GnomeKParams'
}
