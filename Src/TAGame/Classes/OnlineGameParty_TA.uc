/*******************************************************************************
* OnlineGameParty_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlineGameParty_TA extends OnlineGameParty_X within OnlineGame_X
	config(Online);

var transient array<PartyMemberLoadout_TA> PartyLoadouts;
var int MaxPartyMessages;
var const localized string PlayerJoinPartyString;
var const localized string PlayerLeavePartyString;
var const localized string LocalPlayerLeavePartyString;
var const localized string PlayerNewLeaderPartyString;
var export editinline ProductAssetCache_TA AssetCache;
var array<ProductInstanceID> PendingLocalProductOffers;
var array<ProductHashID> PendingArchivedProductOffers;
var array<ProductHashID> PendingFavoritedProductOffers;
var array<ProductInstanceID> ProductsToVerify;
var config float VerifyProductsDelay;
var array<ProductInstanceID> RemovedProductsDuringVerify;
var bool bIsVerifyingProducts;
var Guid PendingTradeId;
var EOSVoiceManager_TA VoiceManager;

defaultproperties
{
	/**PlayerJoinPartyString="joined the party"*/
	/**PlayerLeavePartyString="left the party"*/
	/**LocalPlayerLeavePartyString="You left the party"*/
	/**PlayerNewLeaderPartyString="is the new party leader"*/
	AssetCache=ProductAssetCache_TA'Default__OnlineGameParty_TA.DefaultAssetCache'
	/**VerifyProductsDelay=2.0*/
	MessageComponent=OnlineMessageComponent_X'Default__OnlineGameParty_TA.DefaultMessageComponent'
	NullSearchStatus=PartyMessage_SearchStatus_X'Default__OnlineGameParty_TA.NullSearchStatus0'
}