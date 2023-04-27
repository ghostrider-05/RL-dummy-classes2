/*******************************************************************************
* OnlineGameSettings_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlineGameSettings_X extends Settings;

var int NumPublicConnections;
var int NumOpenPublicConnections;
var() array<GameSettingCategory_X> GameSettingCategories;
var transient bool bOffline;
var bool bIgnoreHiddenMutatorsOverride;
var int MinimumPlayersRequired;
var int NumSecondsWaitingForPlayers;
var int SearchScore;
var databinding transient float LogTime;

defaultproperties
{
	bIgnoreHiddenMutatorsOverride=true
	MinimumPlayersRequired=10
}