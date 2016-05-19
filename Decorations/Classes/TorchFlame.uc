//================================================================================
// TorchFlame.
//================================================================================

class TorchFlame extends Light;

#exec MESH IMPORT MESH=TFlameM ANIVFILE=Models\TFlameM_a.3d DATAFILE=Models\TFlameM_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=TFlameM X=0 Y=0 Z=0 PITCH=0 YAW=0 ROLL=0
#exec MESHMAP   SCALE MESHMAP=TFlameM X=1.0 Y=1.0 Z=1.0

defaultproperties
{
     LightBrightness=40.000000
     LightRadius=32.000000
     bStatic=False
     bHidden=False
     Mesh=VertMesh'Decorations.TFlameM'
     bUnlit=True
}
