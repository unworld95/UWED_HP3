class fntMidGameFont extends GUIFont;

var int FontScreenWidth[7];

static function Font GetMidGameFont(int xRes)
{
	local int i;
	for(i=0; i<7; i++)
	{
		if ( default.FontScreenWidth[i] <= XRes )
			return LoadFontStatic(i);
	}

	return LoadFontStatic(6);
}

// Same as 
event Font GetFont(int XRes)
{
	return GetMidGameFont(xRes);
}

defaultproperties
{
     FontScreenWidth(0)=2048
     FontScreenWidth(1)=1600
     FontScreenWidth(2)=1280
     FontScreenWidth(3)=1024
     FontScreenWidth(4)=800
     FontScreenWidth(5)=640
     FontScreenWidth(6)=600
     KeyName="MidGameFont"
     FontArrayNames(0)="EM_Fonts_T.FontEurostile17"
     FontArrayNames(1)="EM_Fonts_T.FontEurostile14"
     FontArrayNames(2)="EM_Fonts_T.FontEurostile11"
     FontArrayNames(3)="EM_Fonts_T.FontEurostile11"
     FontArrayNames(4)="EM_Fonts_T.FontEurostile9"
     FontArrayNames(5)="EM_Fonts_T.FontNeuzeit9"
     FontArrayNames(6)="EM_Fonts_T.FontSmallText"
}
