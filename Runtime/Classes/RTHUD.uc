//=============================================================================
// RTHUD
//=============================================================================

class RTHUD extends HUD;



/* DisplayMessages() - display current messages
*/
function DisplayMessages(Canvas C)
{
    local int i, j, XPos, YPos,MessageCount;
    local float XL, YL;

    for( i = 0; i < ConsoleMessageCount; i++ )
    {
        if ( TextMessages[i].Text == "" )
            break;
        else if( TextMessages[i].MessageLife < Level.TimeSeconds )
        {
            TextMessages[i].Text = "";

            if( i < ConsoleMessageCount - 1 )
            {
                for( j=i; j<ConsoleMessageCount-1; j++ )
                    TextMessages[j] = TextMessages[j+1];
            }
            TextMessages[j].Text = "";
            break;
        }
        else
			MessageCount++;
    }

    XPos = (ConsoleMessagePosX * HudCanvasScale * C.SizeX) + (((1.0 - HudCanvasScale) / 2.0) * C.SizeX);
    YPos = (ConsoleMessagePosY * HudCanvasScale * C.SizeY) + (((1.0 - HudCanvasScale) / 2.0) * C.SizeY);

    C.Font = LoadProgressFont();
    C.Style = ERenderStyle.STY_Alpha;

    C.TextSize ("A", XL, YL);

    YPos -= YL * MessageCount+1; // DP_LowerLeft
    YPos -= YL; // Room for typing prompt

    for( i=0; i<MessageCount; i++ )
    {
        if ( TextMessages[i].Text == "" )
            break;

        C.StrLen( TextMessages[i].Text, XL, YL );
        C.SetPos( XPos, YPos );
        C.DrawColor = TextMessages[i].TextColor;
        C.DrawText( TextMessages[i].Text, false );
        YPos += YL;
    }
}

defaultproperties
{
     ConsoleMessagePosY=0.200000
}
