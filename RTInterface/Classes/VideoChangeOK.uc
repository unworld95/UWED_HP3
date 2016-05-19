class VideoChangeOK extends GUIPage;

var		Int 		Count;
var		string		OrigRes;

var localized string	RestoreTextPre,
						RestoreTextPost,
						RestoreTextSingular;

event Timer()
{
	Count--;
	if (Count>1) 
		GUILabel(Controls[4]).Caption = RestoreTextPre$Count$RestoreTextPost;
	else
		GUILabel(Controls[4]).Caption = RestoreTextSingular;
	
	if (Count<=0)
	{
		SetTimer(0);
		
		// Reset resolution here

		PlayerOwner().ConsoleCommand("setres"@OrigRes);
		
		Controller.CloseMenu(false);
	}
}

function Execute(string DesiredRes)
{
	local string res,bit,x,y;
	local int i;
	
	if (DesiredRes=="")
		return;
	
	res	= Controller.GetCurrentRes();
	bit = PlayerOwner().ConsoleCommand("get ini:Engine.Engine.RenderDevice Use16bit");

	if (bit=="true")
		OrigRes=res$"x16";
	else
		OrigRes=res$"x32";

	if(bool(PlayerOwner().ConsoleCommand("ISFULLSCREEN")))
		OrigRes=OrigRes$"f";
	else
		OrigRes=OrigRes$"w";

	PlayerOwner().ConsoleCommand("set ini:Engine.Engine.RenderDevice Use16bit"@(InStr(DesiredRes,"x16") != -1));
	PlayerOwner().ConsoleCommand("setres"@DesiredRes);
	
	i = Instr(DesiredRes,"x");
	x = left(DesiredRes,i);
	y = mid(DesiredRes,i+1);

	if( (int(x)<640) || (int(y)<480) )
	{
		PlayerOwner().ConsoleCommand("tempsetres 640x480");
		SetTimer(0,false);
		Controller.ReplaceMenu("RTInterface.DeferChangeRes");
		Controller.GameResolution = Left(DesiredRes,Len(DesiredRes) - 4);
	}
	else
		Controller.GameResolution = "";
}


function StartTimer()
{
	Count=15;
	SetTimer(1.0,true);
}

function bool InternalOnClick(GUIComponent Sender)
{
	SetTimer(0);
	if (Sender==Controls[2])
		PlayerOwner().ConsoleCommand("setres"@OrigRes);

	GUILabel(Controls[3]).Caption="Accept these settings?";		
	Controller.CloseMenu(false);
	
	return true;
}
		

defaultproperties
{
     RestoreTextPre="(Original settings will be restored in "
     RestoreTextPost=" seconds)"
     RestoreTextSingular="(Original settings will be restored in 1 second)"
     Controls(0)=GUIButton'RTInterface.VideoChangeOK.VidOKBackground'
     Controls(1)=GUIButton'RTInterface.VideoChangeOK.AcceptButton'
     Controls(2)=GUIButton'RTInterface.VideoChangeOK.BackButton'
     Controls(3)=GUILabel'RTInterface.VideoChangeOK.VideoOKDesc'
     Controls(4)=GUILabel'RTInterface.VideoChangeOK.VideoOkTimerDesc'
     WinTop=0.375000
     WinHeight=0.250000
     __OnActivate__Delegate=VideoChangeOK.StartTimer
}
