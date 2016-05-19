//================================================================================
// KWHelper.
//================================================================================

class KWHelper extends Object;

static function string ParseDelimitedString (string Text, string Delimiter, int Count, optional bool bToEndOfLine)
{
  local string Result;
  local int Found;
  local int i;
  local string S;

  Result = "";
  Found = 1;
  i = 0;
  if ( i < Len(Text) )
  {
    S = Mid(Text,i,1);
    if ( InStr(Delimiter,S) != -1 )
    {
      if ( Found == Count )
      {
        if ( bToEndOfLine )
        {
          return Result $ Mid(Text,i);
        } else {
          return Result;
        }
      }
      Found++;
    } else {
      if ( Found >= Count )
      {
        Result = Result $ S;
      }
    }
    i++;
    //goto JL0016;
  }
  return Result;
}


defaultproperties
{
}
