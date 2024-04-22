/*******************************************************************************
* GFxData_Playlist_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_Playlist_TA extends GFxDataRow_X;

var transient GameSettingPlaylist_X Playlist;
var databinding int Id;
var databinding string KeyName;
var databinding string FriendlyName;
var databinding string Description;
var databinding string BadgeTitle;
var databinding int TeamSize;
var databinding bool bStandardMatch;
var databinding bool bRanked;
var databinding bool bSolo;
var databinding bool bSelected;
var databinding bool bEnabled;
var databinding bool bRestricted;
var databinding bool bNew;
var databinding bool bIsMicroEventPlaylist;
var databinding bool bTournament;
var databinding bool bCompletedPlacementMatches;
var databinding bool bOpenDetailsOnFirstTimeClicked;
var databinding bool bDisableSaveReplays;
var databinding bool bPlaylistAllowsStayAsParty;
var databinding bool bUndersizedPartyWithRankDisparity;
var databinding bool bIsTimeRestricted;
var databinding bool bForceDetailsPage;
var databinding transient Texture PlaylistBackgroundTexture;
var databinding transient Texture PlaylistIconActiveTexture;
var databinding transient Texture PlaylistIconInactiveTexture;
var databinding transient Texture PlaylistNodeThumbnailTexture;
var databinding EPlaylistPopulationBucket PlayerCountBucket;
var databinding int SkillTier;
var databinding int SkillDivision;
var databinding int SkillMatchesPlayed;
var databinding int SkillPlacementMatchesPlayed;
var databinding float SkillMMR;
var databinding int PrevSkillTier;
var databinding int PrevSkillDivision;
var databinding int MaximumRankDisparity;
var databinding Qword StartTime;
var databinding Qword EndTime;
var transient int DetailsGroup;
var transient MicroEventConfig_TA MicroEventConfig;

defaultproperties
{
	TableName=Playlists
	bLevelTransitionPersistent=true
}