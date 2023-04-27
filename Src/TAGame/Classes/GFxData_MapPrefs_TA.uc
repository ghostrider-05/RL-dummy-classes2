/*******************************************************************************
* GFxData_MapPrefs_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_MapPrefs_TA extends GFxDataSingleton_X;

enum EMapPrefType
{
	MapPrefType_None,
	MapPrefType_Like,
	MapPrefType_Dislike,
	MapPrefType_MAX
};

struct GFxMapType
{
	var databinding name MapTypeID;
	var databinding string Label;
	var MapSet_TA MapSet;

	structdefaultproperties
	{
		MapTypeID=None
		Label=""
		MapSet=None
	}
};

struct GFxPlaylistType
{
	var databinding name PlaylistTypeID;
	var databinding string Label;

	structdefaultproperties
	{
		PlaylistTypeID=None
		Label=""
	}
};

struct GFxMapPlaylist
{
	var databinding name PlaylistId;
	var databinding name PlaylistTypeID;
	var databinding string Label;
	var databinding int LikesRemaining;
	var databinding int DislikesRemaining;
	var databinding bool bOverrideGlobal;

	structdefaultproperties
	{
		PlaylistId=None
		PlaylistTypeID=None
		Label=""
		LikesRemaining=0
		DislikesRemaining=0
		bOverrideGlobal=false
	}
};

struct GFxMapPreference
{
	var databinding name MapID;
	var databinding name MapTypeID;
	var databinding name PlaylistId;
	var databinding string Label;
	var databinding Texture2D Thumbnail;
	var databinding EMapPrefType Preference;

	structdefaultproperties
	{
		MapID=None
		MapTypeID=None
		PlaylistId=None
		Label=""
		Thumbnail=None
		Preference=MapPrefType_None
	}
};

var() databinding array<GFxPlaylistType> PlaylistTypes;
var() databinding array<GFxMapType> MapTypes;
var() databinding array<GFxMapPlaylist> Playlists;
var() databinding array<GFxMapPreference> Maps;
var() MapPrefsConfig_X MapPrefsConfig;
var transient MapPrefsSave_TA MapPrefsSave;
var transient MapsConfig_TA MapsConfig;

defaultproperties
{
	PlaylistTypes(0)=(PlaylistTypeID=Global,Label="")
	PlaylistTypes(1)=(PlaylistTypeID=Casual,Label="")
	PlaylistTypes(2)=(PlaylistTypeID=Competitive,Label="")
	MapTypes(0)=(MapTypeID=Standard,Label="",MapSet=)
	TableName=MapPrefs
}