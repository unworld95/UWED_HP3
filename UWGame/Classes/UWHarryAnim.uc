//===============================================================================
//  [UWHarryAnim] 
//===============================================================================

class UWHarryAnim extends HPHeroPawn;
#exec MESH  MODELIMPORT MESH=UWHarryAnimMesh MODELFILE=models\skHarryMeshMAXNEW2.PSK LODSTYLE=10
#exec MESH  ORIGIN MESH=UWHarryAnimMesh X=0 Y=0 Z=0 YAW=0 PITCH=0 ROLL=0
#exec ANIM  IMPORT ANIM=UWHarryAnimAnims ANIMFILE=models\skHarryMeshMAXNEW2.PSA MAXKEYS=999999
#exec MESHMAP   SCALE MESHMAP=UWHarryAnimMesh X=1.0 Y=1.0 Z=1.0
#exec MESH  DEFAULTANIM MESH=UWHarryAnimMesh ANIM=UWHarryAnimAnims

// Animation sequences. These can replace or override the implicit (exporter-defined) sequences.
#EXEC ANIM  SEQUENCE ANIM=UWHarryAnimAnims SEQ=HeadSwivel STARTFRAME=0 NUMFRAMES=6 RATE=30.0000 GROUP=None
// Digest and compress the animation data. Must come after the sequence declarations.
// 'VERBOSE' gives more debugging info in UCC.log 
#exec ANIM DIGEST ANIM=UWHarryAnimAnims  VERBOSE

#EXEC TEXTURE IMPORT NAME=UWHarryAnimTex0  FILE=TEXTURES\skharryTex0.bmp  GROUP=Skins
#EXEC TEXTURE IMPORT NAME=UWHarryAnimTex1  FILE=TEXTURES\skharryTex1.bmp  GROUP=Skins
#EXEC TEXTURE IMPORT NAME=UWHarryAnimTex2  FILE=TEXTURES\skharryTex2.bmp  GROUP=Skins
#EXEC TEXTURE IMPORT NAME=UWHarryAnimTex3  FILE=TEXTURES\skharryTex3.bmp  GROUP=Skins

#EXEC MESHMAP SETTEXTURE MESHMAP=UWHarryAnimMesh NUM=0 TEXTURE=UWHarryAnimTex0
#EXEC MESHMAP SETTEXTURE MESHMAP=UWHarryAnimMesh NUM=1 TEXTURE=UWHarryAnimTex1
#EXEC MESHMAP SETTEXTURE MESHMAP=UWHarryAnimMesh NUM=2 TEXTURE=UWHarryAnimTex2
#EXEC MESHMAP SETTEXTURE MESHMAP=UWHarryAnimMesh NUM=3 TEXTURE=UWHarryAnimTex3

defaultproperties
{
    Mesh=UWHarryAnimMesh
    DrawType=DT_Mesh
    bStatic=False
}