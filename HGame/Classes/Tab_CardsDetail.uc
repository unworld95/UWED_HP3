Class Tab_CardsDetail extends Tab_Cards;

var WizardCardManager wcm;
var int Page;
var int SelectedCardSlot;
var int CardSlotOccupied[5];
var string SmallPath;
var string LargePath;
var bool PlayAudio;
var export editinlineuse GUIGFXButton btnCard0;
var export editinlineuse GUIGFXButton btnCard1;
var export editinlineuse GUIGFXButton btnCard2;
var export editinlineuse GUIGFXButton btnCard3;
var export editinlineuse GUIGFXButton btnCard4;
var export editinlineuse GUIImage imgCard0;
var export editinlineuse GUIImage imgCard1;
var export editinlineuse GUIImage imgCard2;
var export editinlineuse GUIImage imgCard3;
var export editinlineuse GUIImage imgCard4;
var export editinlineuse GUIImage imgCardLargeBorder;
var export editinlineuse GUIImage imgCardLarge;
var export editinlineuse GUIButton btnCardLargeMask;
var export editinlineuse GUIButton btnLeft;
var export editinlineuse GUIButton btnRight;
const DET_FALSE= 0;
const DET_TRUE= 1;
const CARD_H= 0.21333;
const CARD_W= 0.16;

defaultproperties
{
}
