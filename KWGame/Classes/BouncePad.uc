//================================================================================
// BouncePad.
//================================================================================

class BouncePad extends BounceObject
  Config(User);

var() float fTimeToHitTarget;
var() float SpongifyPadSpeed;
var() Vector SpongifyPadDir;
var BounceTarget SpongyTarget;
var BounceSheet SpongySheet;
var() bool bEnabled;
var() bool bCanMoveWhileJumping;

function Trigger (Actor Other, Pawn EventInstigator)
{
}

function SetTarget (optional name HostTag)
{
}

function PreBeginPlay ()
{
  Super.PreBeginPlay();
}

function OnBounce (Actor Other)
{
}

defaultproperties
{
     fTimeToHitTarget=2.000000
     SpongifyPadSpeed=500.000000
     SpongifyPadDir=(Z=1.000000)
     bEnabled=True
     bHidden=True
     Texture=Texture'KWGame.SpongifyTexture'
     CollisionRadius=48.000000
     CollisionHeight=4.000000
     bCollideWorld=False
     bBlockActors=False
     bBlockPlayers=False
}
