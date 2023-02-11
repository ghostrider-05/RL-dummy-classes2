/*******************************************************************************
* SoundSettingsSave_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SoundSettingsSave_TA extends SaveObject_TA;

var /*0x00080000-0x00000000*/ float MasterVolume;
var /*0x00080000-0x00000000*/ float SoundVolume;
var /*0x00080000-0x00000000*/ float MusicVolume;
var /*0x00080000-0x00000000*/ float GameplayMusicVolume;
var /*0x00080000-0x00000000*/ float AmbientVolume;
var /*0x00080000-0x00000000*/ float CrowdVolume;
var /*0x00080000-0x00000000*/ float VoiceVolume;
var /*0x00080000-0x00000000*/ bool bMuteOnFocusLost;
var /*0x00080000-0x00000000*/ bool bStreamerSafeAudioEnabled;
var /*0x00080000-0x00000000*/ AkDevice.EAkOutputType OutputType;
var /*0x00090000-0x00000000*/ AkDevice.EAkDynamicRangeType DynamicRangeType;
var /*0x00090000-0x00000000*/ _Types_TA.EMusicStingersSetting MusicStingersSetting;

defaultproperties
{
	MasterVolume=1.0
	SoundVolume=0.750
	MusicVolume=0.750
	GameplayMusicVolume=0.750
	AmbientVolume=0.750
	CrowdVolume=0.750
	VoiceVolume=0.750
	bMuteOnFocusLost=true
	DynamicRangeType=AkDRT_Medium
	MusicStingersSetting=MusicStingers_MatchesOnly
}