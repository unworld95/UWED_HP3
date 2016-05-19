class UWCanvas extends Canvas;

function string GetLanguage(){
	return "";
}

function DrawShadowText(string strText, color colorText, color colorShadow) {
    local color colorSave;
    local float fStartX,
        fStartY;
    colorSave = DrawColor;
    fStartX = CurX;
    fStartY = CurY;
    DrawColor.r = colorShadow.r;
    DrawColor.g = colorShadow.g;
    DrawColor.b = colorShadow.b;
    CurX = fStartX + 1;
    CurY = fStartY + 1;
    DrawText(strText);
    DrawColor.r = colorText.r;
    DrawColor.g = colorText.g;
    DrawColor.b = colorText.b;
    CurX = fStartX;
    CurY = fStartY;
    DrawText(strText);
    DrawColor = colorSave;
}
function int SplitString(string strText, int nHeight, out array < string > outArray, optional Font fontTiny, optional Font fontSmall, optional Font fontMed, optional Font fontText)
{
    local int i;
    local float fTextW,
    fTextH;
    local int nLines,
    nAvailLines;
    local int div,
    length,
    index;
    local Font FontArr[4];
    if (strText == "") 
        return 0;
    
    FontArr[0] = fontText;
    FontArr[1] = fontMed;
    FontArr[2] = fontSmall;
    FontArr[3] = fontTiny;
    outArray.Length = 0;
    div = 1;
    index = 0;
    outArray[index] = strText;
    
        do
    
    {
        for (i = 0; i < 4; i++) {
            if (FontArr[i] == None) 
                continue;
            
            Font = FontArr[i];
            TextSize(outArray[index], fTextW, fTextH);
            nLines = ((fTextW + 90) / SizeX) + 1;
            nAvailLines = nHeight / fTextH;
            if (nLines <= nAvailLines) 
                return div;
        }
        outArray.Length = 0;
        div++;
        TextSize(strText, fTextW, fTextH);
        WrapStringToArray(strText, outArray, fTextW / div, "|");
        length = 0;
        index = 0;
        for (i = 0; i < outArray.Length; i++) {
            TextSize(outArray[i], fTextW, fTextH);
            if (fTextW > length) {
                length = fTextW;
                index = i;
            }
        }
    }
    until(div == 4);
    return 0;
}
function DrawWrappedText(string strText, int nXPos, int nYPos, int nHeight, color colorText, optional Font fontTiny, optional Font fontSmall, optional Font fontMed, optional Font fontText, optional float fClipX) {
    local font fontSave;
    local color colorSave;
    local int nStyleSave;
    local float fClipXSave;
    local float fTextW,
        fTextH;
    local int nLines,
        nAvailLines;
    local string strTextLine,
        strSearch;
    local int nOrgPos,
        nNewPos;
    local int i;
    local array < string > OutArray;
    local float fTextHTotal;
    if (strText == "") 
        return;
    
    if (fClipX != 0) {
        fClipXSave = ClipX;
        ClipX = fClipX;
    }
    fontSave = Font;
    colorSave = DrawColor;
    nStyleSave = Style;
    if (fontText == None) 
        Font = fontMed;
    else 
        Font = fontText;
    
    Style = 2;
    DrawColor = colorText;
    TextSize(strText, fTextW, fTextH);
    nLines = ((fTextW + 90) / SizeX) + 1;
    nAvailLines = nHeight / fTextH;
    if (nLines > nAvailLines) {
        Font = fontMed;
        TextSize(strText, fTextW, fTextH);
        nLines = ((fTextW + 90) / SizeX) + 1;
        nAvailLines = nHeight / fTextH;
        if (nLines > nAvailLines) {
            Font = fontSmall;
            TextSize(strText, fTextW, fTextH);
            nLines = ((fTextW + 90) / SizeX) + 1;
            nAvailLines = nHeight / fTextH;
            if (nLines > nAvailLines) {
                Font = fontTiny;
                TextSize(strText, fTextW, fTextH);
                nLines = ((fTextW + 90) / SizeX) + 1;
                nAvailLines = nHeight / fTextH;
            }
        }
    }
    if ((Caps(GetLanguage()) == "THA" || Caps(GetLanguage()) == "JAP") && InStr(strText, "_") > -1) {
        strTextLine = "";
        nOrgPos = 0;
        strSearch = strText;
        SetPos(nXPos, nYPos);
        while (nOrgPos <= Len(strText)) {
            nNewPos = InStr(strSearch, "_");
            if (nNewPos != -1) 
                strTextLine = strTextLine $Left(strSearch, nNewPos);
            else 
                strTextLine = strTextLine $strSearch;
            
            TextSize(strTextLine, fTextW, fTextH);
            if (fTextW > SizeX - 16 - nXPos) {
                strTextLine = Left(strTextLine, nOrgPos);
                DrawText(strTextLine, False);
                nYPos += fTextH;
                SetPos(nXPos, nYPos);
                strTextLine = "";
            } else {
                if (nNewPos != -1) {
                    nOrgPos += nNewPos;
                    strSearch = Right(strSearch, Len(strSearch) - nNewPos - 1);
                } else {
                    break;
                }
            }
        }
        TextSize(strTextLine, fTextW, fTextH);
        if (fTextW < SizeX - 16 - nXPos) 
            nXPos = (SizeX - fTextW - nXPos) / 2;
        
        SetPos(nXPos, nYPos);
        DrawText(strTextLine, False);
    } else {
        WrapStringToArray(strText, OutArray, SizeX - 16, "|");
        fTextHTotal = 0;
        for (i = 0; i < OutArray.Length; i++) {
            TextSize(OutArray[i], fTextW, fTextH);
            fTextHTotal += fTextH;
        }
        nYPos = nYPos + ((nHeight - fTextHTotal) / 2.0);
        for (i = 0; i < OutArray.Length; i++) {
            TextSize(OutArray[i], fTextW, fTextH);
            SetPos((SizeX - fTextW) / 2.0, nYPos);
            DrawText(OutArray[i], False);
            nYPos += fTextH;
        }
    }
    Font = fontSave;
    DrawColor = colorSave;
    Style = nStyleSave;
    if (fClipX != 0) 
        ClipX = fClipXSave;
}