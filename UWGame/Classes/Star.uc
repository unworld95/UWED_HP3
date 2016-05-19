class Star extends Jellybean;

#exec MESH  MODELIMPORT MESH=StarMesh MODELFILE=models\Star.PSK LODSTYLE=10
#exec MESH  ORIGIN MESH=StarMesh X=0 Y=0 Z=0 YAW=0 PITCH=0 ROLL=0
//#exec ANIM  IMPORT ANIM=StarAnims ANIMFILE=models\Star.PSA COMPRESS=1 MAXKEYS=999999 IMPORTSEQS=1
#exec MESHMAP   SCALE MESHMAP=StarMesh X=1.0 Y=1.0 Z=1.0
//#exec MESH  DEFAULTANIM MESH=StarMesh ANIM=StarAnims

// Digest and compress the animation data. Must come after the sequence declarations.
// 'VERBOSE' gives more debugging info in UCC.log 
//#exec ANIM DIGEST  ANIM=StarAnims VERBOSE

#EXEC TEXTURE IMPORT NAME=StarTex0  FILE=TEXTURES\StarTex0.bmp  GROUP=Skins

#EXEC MESHMAP SETTEXTURE MESHMAP=StarMesh NUM=0 TEXTURE=StarTex0

defaultproperties{
     RandSkins(0)=Texture'StarTex0'
     RandSkins(1)=Texture'StarTex0'
     RandSkins(2)=Texture'StarTex0'
     RandSkins(3)=Texture'StarTex0'
     RandSkins(4)=Texture'StarTex0'
     RandSkins(5)=Texture'StarTex0'
     RandSkins(6)=Texture'StarTex0'
     RandSkins(7)=Texture'StarTex0'
     RandSkins(8)=Texture'StarTex0'
     RandSkins(9)=Texture'StarTex0'
     HudItem=1
     bBounceIntoPlace=True
     BounceSound=Sound'SoundEffects.Magic.bean_bounce'
     PickupFXClass=Class'HGame.BeanPickup'
     InventoryType=Class'HGame.JellybeanCollection'
     PickupMessage="You picked up a jellybean."
     PickupSound=Sound'SoundEffects.Magic.bean_pickup'
     DrawType=DT_Mesh
     Mesh=SkeletalMesh'StarMesh'
     CollisionRadius=32.000000
     CollisionHeight=20.000000
}