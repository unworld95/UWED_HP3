Class Tab_CardsFolio extends Tab_Cards;

var WizardCardManager wcm;
var int CardsFoundInSet[10];
var int CardsInSet[10];
var Vector ScrollPos[10];
var Vector ScrollPosScaled[10];
var Vector NumPos[10];
var Vector NumPosScaled[10];
var float LastCanvasSizeX;
var Vector CardPosScaled[10];
var export editinlineuse GUIButton btnFolioBanner;
var export editinlineuse GUIGFXButton btnCardWZ;
var export editinlineuse GUIGFXButton btnCardWI;
var export editinlineuse GUIGFXButton btnCardQU;
var export editinlineuse GUIGFXButton btnCardVP;
var export editinlineuse GUIGFXButton btnCardGB;
var export editinlineuse GUIGFXButton btnCardHG;
var export editinlineuse GUIGFXButton btnCardGI;
var export editinlineuse GUIGFXButton btnCardDR;
var export editinlineuse GUIGFXButton btnCardBE;
var export editinlineuse GUIGFXButton btnCardBO;
var export editinlineuse GUIImage imgCardWZ;
var export editinlineuse GUIImage imgCardWI;
var export editinlineuse GUIImage imgCardQU;
var export editinlineuse GUIImage imgCardVP;
var export editinlineuse GUIImage imgCardGB;
var export editinlineuse GUIImage imgCardHG;
var export editinlineuse GUIImage imgCardGI;
var export editinlineuse GUIImage imgCardDR;
var export editinlineuse GUIImage imgCardBE;
var export editinlineuse GUIImage imgCardBO;
var export editinlineuse GUIGFXButton btnCardWZMask;
var export editinlineuse GUIGFXButton btnCardWIMask;
var export editinlineuse GUIGFXButton btnCardQUMask;
var export editinlineuse GUIGFXButton btnCardVPMask;
var export editinlineuse GUIGFXButton btnCardGBMask;
var export editinlineuse GUIGFXButton btnCardHGMask;
var export editinlineuse GUIGFXButton btnCardGIMask;
var export editinlineuse GUIGFXButton btnCardDRMask;
var export editinlineuse GUIGFXButton btnCardBEMask;
var export editinlineuse GUIGFXButton btnCardBOMask;
const CARD_H= 0.21333;
const CARD_W= 0.16;

defaultproperties
{
}
