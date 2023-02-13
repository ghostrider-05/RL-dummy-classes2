/*******************************************************************************
* GFxData_MusicPlayer_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_MusicPlayer_TA extends GFxDataSingleton_X;

struct GFxMusicPlaylist
{
	var databinding string Label;
	var databinding Texture Icon;
	var databinding bool bSelected;
	var name PlaylistName;
	var MusicPlaylist_TA Playlist;

	structdefaultproperties
	{
		Label=""
		Icon=none
		bSelected=false
		PlaylistName=None
		Playlist=none
	}
};

var() MusicUrlConfig_TA UrlConfig;
var() bool bDebugMusicPlayer;
var databinding bool bPlaylistsEnabled;
var databinding bool bEnableMusicControls;
var databinding bool bPlayerPopupDisplaying;
var databinding bool bActivePlaylistsEnabled;
var transient bool bTitleTracksActive;
var array<GFxMusicPlaylist> DefaultPlaylists;
var databinding array<GFxMusicPlaylist> Playlists;
var databinding string TrackTitle;
var databinding string TrackArtist;
var databinding Texture TrackIcon;
var databinding string TrackUrl;
var databinding float StartupLogoDisplayDurationMS;
var transient string CurrentTrackName;
var transient int CurrentTrackPlayingID;
var transient MusicTrack_TA CurrentTrack;
var transient array<PlaylistTrack> MasterTracklist;
var IMusicTracklist_TA ActiveTracklist;
var MusicTracklistFactory_TA TracklistFactory;
var MusicTracklistBuildStep_RemoveTrack_TA MainRotationTracklistBuilder;
var transient MusicTheme_TA MusicTheme;
var transient MusicPlayerSave_TA MusicSave;
var transient GameplayMusicPlayer_TA GameMusicPlayer;
var StreamerSafeConfig_TA StreamerSafeConfig;

defaultproperties
{
	bPlaylistsEnabled=true
	TableName=MusicPlayer
	bLevelTransitionPersistent=true
}