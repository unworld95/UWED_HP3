/*----------------------------------------------------------------------------------------
	SwingingDoor - a Mover type that can be used for doors.  Can be set to be locked,
	triggered, and to swing outward, inward, or both depending on where the stimulus is
	located.
----------------------------------------------------------------------------------------*/
class SwingingDoor extends Mover	
	native
	placeable;

var() enum EOpenDirection
{
	OPEN_TwoWay,
	OPEN_Out,
	OPEN_In
}						SwingDirection;			// Direction this door will swing in.

var() bool				bLocked;				// Set to 'true' for doors that are locked.
var() float				OpenForce;				// Amount of force applied to the door while it opens.
var() float				BumpForce;				// Amount of force applied to a door through bumps.
var() float				YawFriction;			// Amount of force applied in the opposite direction of door movement.
var() bool				bNeverClose;			// Door will never close once opened.
var() float				ImpactBounce;			// Scales the force & velocity of the door when it rebounds off a door frame.

var() name				DoorOpenEvent;			// Event to pass when the door is opened.
var() name				DoorClosedEvent;		// Event to pass when the door is closed.

var() sound				LockedSound;			// Sound to play when door is locked.
var() sound				FrameImpactSound;		// Sound to play when door rebounds off its frame.

var() bool				bCanBePushed;			// Whether or not the door can be pushed open/closed.
var() float				TimeBeforeClose;		// Amount of time before door auto-closes.
var() bool				bUnlockOnTrigger;		// Whether this door will unlock when triggered.
var() bool				bLockOnTrigger;			// Whether this door will lock when triggered.
var() bool				bOpenOnTrigger;			// Whether this door will open when triggered.

var   int				BaseYaw;
var   int				DoorKeys;
var   int				OpenDirection;
var	  rotator			RotationForce;
var   rotator			RotationVelocity;
var   rotator			RotationFriction;
var	  bool				MoveByForce;
var   bool				bClosed;


function OpenDoor(){
}

function CloseDoor(){
}

function SendDoorClosedEvent(){
}

// Main swinging door state.
auto state() SwingDoor
{
	// Event called when the door frame hits the other side.
	event DoorFrameImpactSound()
	{
	}

PreClose:
	Sleep( 3.0 );
	if( bNeverClose )
	{
		SetPhysics( PHYS_None );
		Stop;
	}
	Goto( 'Close' );

Open:
	Disable( 'Trigger' );
	if( DelayTime > 0 )
	{
		bDelaying = true;
		Sleep( DelayTime );
	}
	bClosed	= false;
	OpenDoor();
	Sleep( TimeBeforeClose );

Close:
	CloseDoor();
	FinishInterpolation();
	FinishedClosing();
	Enable( 'Trigger' );
	bClosed = true;
	SendDoorClosedEvent();
	Stop;

Locked:
	PlaySound( LockedSound, SLOT_None );
	Sleep( GetSoundDuration( LockedSound ) );
}

defaultproperties
{
     OpenForce=20000.000000
     BumpForce=20000.000000
     YawFriction=10000.000000
     ImpactBounce=-0.400000
     bCanBePushed=True
     TimeBeforeClose=3.000000
     bOpenOnTrigger=True
     StayOpenTime=3.000000
     DelayTime=0.100000
     InitialState="SwingDoor"
}
