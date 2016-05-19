Class LupinWolf extends HPCharacter;

#exec MESH IMPORT MESH=LupinWolf ANIVFILE=Models\LupinWolf_a.3d DATAFILE=Models\LupinWolf_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=LupinWolf X=0 Y=0 Z=0 PITCH=0 YAW=0 ROLL=0
#exec MESHMAP   SCALE MESHMAP=LupinWolf X=1.0 Y=1.0 Z=1.0

defaultproperties
{
     OffEdgeOfTrackEmotes(0)="pc_hry_HryEmotes_19"
     OffEdgeOfTrackEmotes(1)="pc_hry_HryEmotes_17"
     OffEdgeOfTrackEmotes(2)="pc_hry_HryEmotes_15"
     Mesh=VertMesh'HGame.LupinWolf'
     Skins(0)=Shader'HPCharTextures.CutsceneProps.LupinWolf_S'
     Skins(1)=Shader'HPCharTextures.Creatures.HP3WWOLF_hairAS'
}
