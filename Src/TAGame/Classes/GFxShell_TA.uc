/*******************************************************************************
* GFxShell_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxShell_TA extends GFxShell_X
	config(UI);

var() ChampionshipTrophy_TA ChampionshipTrophyArchetype;
var transient LocalPlayer_TA TAPlayer;
var transient GFxData_System_TA SystemData;
var transient GFxData_LocalPlayer_TA LocalPlayerData;
var databinding bool bEnableFocusDebugger;
/** Disable movies that play on startup */
var databinding bool bDisableStartupMovies;
var const config bool bAllowOnlineStorageResyncModal;
var const localized string EOSReconnectMessage;
var const localized string EOSNotConnectedMessage;
var const localized string SaveReplayMessage;
var const localized string DefaultDisconnectionTitle;
var const localized string PsyNetReconnectMessage;
var const localized string PSPlusTipTitle;
var const localized string PSPlusTipMessage;
var const localized string RankedReconnectTitle;
var const localized string RankedReconnectBody;
var const localized string BannedTimeRemainingMessage;
var const localized string PermaBannedMessage;
var transient array<GFxModal_X> ActiveModals;
var transient EProgressMessageType PendingMessageType;
var transient string PendingErrorTitle;
var transient string PendingErrorMessage;
var transient float LastPsyNetReconnectTime;
var transient GFxModal_X ModalKick;
var databinding string BuildEdition;

defaultproperties
{
	DataStore=GFxDataStore_X'Default__GFxShell_TA.DefaultDataStore'
}