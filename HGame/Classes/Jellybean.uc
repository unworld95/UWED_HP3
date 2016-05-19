Class Jellybean extends HPPickup placeable;

var() array<Material> RandSkins;

defaultproperties
{
     RandSkins(0)=Texture'HP3_Gameplay.Beans.BeanRED_SM'
     RandSkins(1)=Texture'HP3_Gameplay.Beans.BeanBLUE_SM'
     RandSkins(2)=Texture'HP3_Gameplay.Beans.BeanGRN_SM'
     RandSkins(3)=Texture'HP3_Gameplay.Beans.BeanPUR_SM'
     RandSkins(4)=Texture'HP3_Gameplay.Beans.BeanYLW_SM'
     RandSkins(5)=Texture'HP3_Gameplay.Beans.BeanPNK_SM'
     RandSkins(6)=Texture'HP3_Gameplay.Beans.BeanCRM_SM'
     RandSkins(7)=Texture'HP3_Gameplay.Beans.BeanBRN_SM'
     RandSkins(8)=Texture'HP3_Gameplay.Beans.BeanORG_SM'
     RandSkins(9)=Texture'HP3_Gameplay.Beans.BeanBLK_SM'
     HudItem=1
     bBounceIntoPlace=True
     BounceSound=Sound'SoundEffects.Magic.bean_bounce'
     PickupFXClass=Class'HGame.BeanPickup'
     InventoryType=Class'HGame.JellybeanCollection'
     PickupMessage="You picked up a jellybean."
     PickupSound=Sound'SoundEffects.Magic.bean_pickup'
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'HP3_GamePlay_sm.BeanPickup'
     CollisionRadius=32.000000
     CollisionHeight=20.000000
}
