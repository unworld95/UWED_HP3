Class LumosLight extends Actor;

var bool bLumosOn;
var LumosLightEmitter Particles;
var float fLumosTimeToTurnOff;
var float fLumosTime;
var bool bInfiniteLumos;
var bool bUseDebugMode;

defaultproperties
{
     fLumosTimeToTurnOff=30.000000
     bUseDebugMode=True
     Physics=PHYS_Trailer
     DrawType=DT_Mesh
     RemoteRole=ROLE_SimulatedProxy
     Texture=None
     Style=STY_Translucent
}
