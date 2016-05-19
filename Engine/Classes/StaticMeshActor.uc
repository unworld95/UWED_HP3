//=============================================================================
// StaticMeshActor.
// An actor that is drawn using a static mesh(a mesh that never changes, and
// can be cached in video memory, resulting in a speed boost).
//=============================================================================

class StaticMeshActor extends Actor placeable;

	//UW Added
		var(Collision) enum ECollideType {
			CT_Cylinder,
			CT_Box,
		}
		CollideType;
	//UW end	

var() bool bExactProjectileCollision;		// nonzero extent projectiles should shrink to zero when hitting this actor
var(Advanced) bool bIsMountable;

function StartShimmyShimmy() {}		// KW Specific - MYL, to be able to play shimmy related animations
function StartShimmyBounce() {}		// KW Specific - MYL, to be able to play shimmy related animations
function StartShimmyIdle() {}	

defaultproperties
{
     bExactProjectileCollision=True
     DrawType=DT_StaticMesh
     bStatic=True
     bWorldGeometry=True
     bShadowCast=True
     bStaticLighting=True
     CollisionRadius=1.000000
     CollisionHeight=1.000000
     bCollideActors=True
     bBlockActors=True
     bBlockPlayers=True
     bBlockKarma=True
     bEdShouldSnap=True
}
