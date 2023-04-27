/*******************************************************************************
* MusicTheme_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class MusicTheme_TA extends Object;

struct PlaylistTrack
{
	var() AkSoundCue Track;
	var() Texture Icon;

	structdefaultproperties
	{
		Track=None
		Icon=None
	}
};

struct PlaylistTitleTrack extends MusicTheme_TA.PlaylistTrack
{
	var() float StartupLogoDisplayDurationMS;

	structdefaultproperties
	{
		StartupLogoDisplayDurationMS=3380.0
	}
};

var() array<MusicPlaylist_TA> Playlists;
var() array<PlaylistTitleTrack> TitleTracks;
var() AkSoundCue NeverPlayInFirstTracklist;
var() PlaylistTrack Credits;
var() PlaylistTrack KonamiCode;
var() Texture DefaultIcon;
var() array<PlaylistTrack> AdditionalTracks;