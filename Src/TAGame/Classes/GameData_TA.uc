/*******************************************************************************
* GameData_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GameData_TA extends Object;

const UnrealUnitsPerMeter = 100;

var() const ProductDatabase_TA Products;
var() XPManager_TA XPManager;
var() const int MaxTeamSize;
var() const array<ProductSlot_TA> ProductSlots;
var() const array<ProductSlot_TA> SlotLoadOrder;
var ProductSlot_TA BodySlot;
var ProductSlot_TA SkinSlot;
var ProductSlot_TA WheelSlot;
var ProductSlot_TA BoostSlot;
var ProductSlot_TA AntennaSlot;
var ProductSlot_TA HatSlot;
var ProductSlot_TA FrontSlot;
var ProductSlot_TA PaintFinishSlot;
var ProductSlot_TA BotSlot;
var ProductSlot_TA LogoSlot;
var ProductSlot_TA UnderGlowSlot;
var ProductSlot_TA PremiumInventorySlot;
var ProductSlot_TA CustomFinishSlot;
var ProductSlot_TA EngineAudioSlot;
var ProductSlot_TA SupersonicTrailSlot;
var ProductSlot_TA GoalExplosionSlot;
var ProductSlot_TA PlayerBannerSlot;
var ProductSlot_TA PlayerTitleSlot;
var ProductSlot_TA ESportsTeamSlot;
var ProductSlot_TA ArchiveSlot;
var ProductSlot_TA AllSlot;
var ProductSlot_TA ShopItemSlot;
var ProductSlot_TA CurrencySlot;
var ProductSlot_TA PlayerAvatarSlot;
var ProductSlot_TA PlayerAvatarBorderSlot;
var ProductSlot_TA GiftPackSlot;
var ProductSlot_TA BlueprintSlot;
var ProductSlot_TA MusicStingersSlot;
var() const string AlwaysLoadedContentArchetype;
var() const array<string> TeamArchetypePaths;
var const transient array<Team_TA> TeamArchetypes;
var() const string GameModeListPath;
var const transient GameModeList_TA GameModeList;
var const LoadoutData DefaultLoadouts[2];
var const ClientLoadoutData DefaultClientLoadout;
var CarColorSet_TA CustomColorSet;
var CarColorSet_TA ClubColorSet;
var CarColorSet_TA ClubColorSet_v1;
var CarColorSet_TA PlayerBannerColorSet;
var CarColorSet_TA PlayerVanityColorSet;
var() MapList_TA MapList;
var GlobalLookupTexture_TA GlobalLookupTexture;
var const array< class > OnlineProductAttributes;
var() const PaintDatabase_TA PaintDB;
var() const CertifiedStatDatabase_TA CertifiedStatDB;
var() const SpecialEditionDatabase_TA SpecialEditionDB;
var() const DataAssetDatabase_ESportsTeam_TA ESportsTeamDB;

defaultproperties
{
	
	
	MaxTeamSize=3
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	AlwaysLoadedContentArchetype="Archetypes.Misc.AlwaysLoadedContent"
	TeamArchetypePaths(0)="Archetypes.Teams.Team0"
	TeamArchetypePaths(1)="Archetypes.Teams.Team1"
	
	GameModeListPath="Archetypes.GameInfo.GameModes"
	
	DefaultLoadouts[0]=(TeamPaint=(TeamFinishID=270,CustomFinishID=270,Team=0,TeamColorID=35,CustomColorID=0,bSet=false),Title=XP,TeamIndex=0,OnlineProducts=None,Products=(23,0,376,63,0,0,0,270,0,0,0,0,270,0,1948,1903,0,0,0,0,0,0,0,0,0,0,0,0))
	DefaultLoadouts[1]=(TeamPaint=(TeamFinishID=270,CustomFinishID=270,Team=1,TeamColorID=33,CustomColorID=0,bSet=false),Title=XP,TeamIndex=1,OnlineProducts=None,Products=(23,0,376,63,0,0,0,270,0,0,0,0,270,0,1948,1903,0,0,0,0,0,0,0,0,0,0,0,0))
	DefaultClientLoadout=(Products=(23,0,376,63,0,0,0,270,0,0,0,0,270,0,1948,1903,0,0,0,0,0,0,0,0,0,0,0,0))
	
	
	
	
	
	
	
	OnlineProductAttributes(0)=class'ProductAttribute_Certified_TA'
	OnlineProductAttributes(1)=class'ProductAttribute_Painted_TA'
	OnlineProductAttributes(2)=class'ProductAttribute_Quality_TA'
	OnlineProductAttributes(3)=class'ProductAttribute_ProductLink_TA'
	OnlineProductAttributes(4)=class'ProductAttribute_Masterpiece_TA'
	OnlineProductAttributes(5)=class'ProductAttribute_Level_TA'
	OnlineProductAttributes(6)=class'ProductAttribute_EquippableSlot_TA'
	OnlineProductAttributes(7)=class'ProductAttribute_Expiration_TA'
	OnlineProductAttributes(8)=class'ProductAttribute_Rental_TA'
	OnlineProductAttributes(9)=class'ProductAttribute_Indestructible_TA'
	OnlineProductAttributes(10)=class'ProductAttribute_UserColor_TA'
	OnlineProductAttributes(11)=class'ProductAttribute_TitleID_TA'
	OnlineProductAttributes(12)=class'ProductAttribute_SpecialEdition_TA'
	OnlineProductAttributes(13)=class'ProductAttribute_TeamEdition_TA'
	OnlineProductAttributes(14)=class'ProductAttribute_Blueprint_TA'
	OnlineProductAttributes(15)=class'ProductAttribute_BlueprintCost_TA'
	OnlineProductAttributes(16)=class'ProductAttribute_Currency_TA'
	OnlineProductAttributes(17)=class'ProductAttribute_NoNotify_TA'
	
	
	
	
}