Class GnomeController extends KWAIController;

var Vector vNewLoc;
var Vector vTargetDir;
var Vector vTargetLocation;
var float savedCollisionRadius;
var float savedCollisionHeight;
var int Lives;
var int iBeans;
var bool bHome;
var bool bJustCreated;
var bool bPlayThrowAnim;
var Actor aTargetGoody;

defaultproperties
{
     Lives=2
}
