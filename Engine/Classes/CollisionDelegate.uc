//=============================================================================
// LookTarget
//
// A convenience actor that you can point a matinee camera at.
//
// Isn't bStatic so you can attach these to movers and such.
//
//=============================================================================
class CollisionDelegate extends UWKeypoint;

var() UWActor Subject;

// Sprite.
#exec Texture Import File=Textures\S_LookTarget.bmp Name=S_LookTarget Mips=Off MASKED=1

function Init(UWActor other, int cRadius, int cHeight, bool bAttach)
{
	Subject = other;
	SetCollisionSize(cRadius, cHeight);
	if(bAttach)
		other.Attach( self );
}

event Touch(Actor other)
{
	if(Subject != none){}
		//Subject.OnEvent('DelTouch');
}

event UnTouch(Actor other)
{
	if(Subject != none){}
		//Subject.OnEvent('DelUnTouch');
}

defaultproperties
{
     bStatic=False
     Texture=Texture'Engine.S_LookTarget'
}
