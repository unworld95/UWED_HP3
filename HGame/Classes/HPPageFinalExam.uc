Class HPPageFinalExam extends HPPageYesNo;

var export editinlineuse GUIButton btnTitle;
var export editinlineuse GUILabel lblTitle;
var export editinlineuse GUIImage imgShield0;
var export editinlineuse GUIImage imgShield1;
var export editinlineuse GUIImage imgShield2;
var export editinlineuse GUIImage imgShield3;
var export editinlineuse GUIImage imgShield4;
var export editinlineuse GUIButton btnScore;
var export editinlineuse GUIButton decoy;
var FinalExamGame GameManager;
const SHIELD_H= 0.10667;
const SHIELD_W= 0.08;
const SHIELD_T= 0.42;

defaultproperties
{
     Begin Object Class=GUIButton Name=cbtnTitle
         StyleName="HPFrameButtonII"
         bAcceptsInput=False
         bTabStop=False
         Name="cbtnTitle"
     End Object
     btnTitle=GUIButton'HGame.HPPageFinalExam.cbtnTitle'
     Begin Object Class=GUILabel Name=cLblTitle
         TextAlign=TXTA_Center
         bMultiLine=True
         StyleName="HPSolidBox"
         Name="cLblTitle"
     End Object
     lblTitle=GUILabel'HGame.HPPageFinalExam.cLblTitle'
     Begin Object Class=GUIImage Name=cImgShield0
         ImageStyle=ISTY_Scaled
         Name="cImgShield0"
     End Object
     imgShield0=GUIImage'HGame.HPPageFinalExam.cImgShield0'
     Begin Object Class=GUIImage Name=cImgShield1
         ImageStyle=ISTY_Scaled
         Name="cImgShield1"
     End Object
     imgShield1=GUIImage'HGame.HPPageFinalExam.cImgShield1'
     Begin Object Class=GUIImage Name=cImgShield2
         ImageStyle=ISTY_Scaled
         Name="cImgShield2"
     End Object
     imgShield2=GUIImage'HGame.HPPageFinalExam.cImgShield2'
     Begin Object Class=GUIImage Name=cImgShield3
         ImageStyle=ISTY_Scaled
         Name="cImgShield3"
     End Object
     imgShield3=GUIImage'HGame.HPPageFinalExam.cImgShield3'
     Begin Object Class=GUIImage Name=cImgShield4
         ImageStyle=ISTY_Scaled
         Name="cImgShield4"
     End Object
     imgShield4=GUIImage'HGame.HPPageFinalExam.cImgShield4'
     Begin Object Class=GUIButton Name=cBtnScore
         StyleName="HPScrollButton"
         bAcceptsInput=False
         bTabStop=False
         Name="cBtnScore"
     End Object
     btnScore=GUIButton'HGame.HPPageFinalExam.cBtnScore'
     Begin Object Class=GUIButton Name=cDecoy
         StyleName=""
         bBoundToParent=True
         bHasFocus=True
         Name="cDecoy"
     End Object
     decoy=GUIButton'HGame.HPPageFinalExam.cDecoy'
     Background=Texture'HP3_Menu.A_Misc.PopUpHalf'
     bAllowedAsLast=True
     WinTop=0.286670
     WinLeft=0.180000
     WinWidth=0.640000
     WinHeight=0.426670
}
