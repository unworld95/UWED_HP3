class KRepulsor extends Actor
	native;

var()	bool	bEnableRepulsion;
var()	vector	CheckDir; // In owner ref frame
var()	float	CheckDist;
var()	float	Softness;
var()	float	PenScale;

// Used internally for Karma stuff - DO NOT CHANGE!
var		transient const int		KContact;

defaultproperties
{
     CheckDir=(Z=-1.000000)
     CheckDist=50.000000
     Softness=0.100000
     PenScale=1.000000
     RemoteRole=ROLE_None
     bHardAttach=True
     bBlockZeroExtentTraces=False
     bBlockNonZeroExtentTraces=False
}
