Class DogSirius extends HPCharacter;

#exec MESH IMPORT MESH=DogSirius ANIVFILE=Models\DogSirius_a.3d DATAFILE=Models\DogSirius_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=DogSirius X=0 Y=0 Z=0 PITCH=0 YAW=0 ROLL=0
#exec MESHMAP   SCALE MESHMAP=DogSirius X=1.0 Y=1.0 Z=1.0

defaultproperties
{
     OffEdgeOfTrackEmotes(0)="pc_hry_HryEmotes_19"
     OffEdgeOfTrackEmotes(1)="pc_hry_HryEmotes_17"
     OffEdgeOfTrackEmotes(2)="pc_hry_HryEmotes_15"
     Mesh=VertMesh'HGame.DogSirius'
     Skins(0)=Shader'HPCharTextures.CutsceneProps.DogSirius_S'
}
