/*******************************************************************************
* PlaylistSettings_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class PlaylistSettings_TA extends PlaylistSettings_X;

var() /*0x00010000-0x00000000*/ int XPLevelUnlocked;
var() array<MapSkillSettings> MapSkillRequirements;
var() /*0x00010000-0x00000000*/ class TourServerInfoClass;
var() /*0x00010000-0x00000000*/ bool bAllowHonorDuelChallenges;
var() /*0x00010000-0x00000000*/ bool bAllowVoiceChat;
var() int DetailsGroup;
var array<TeamColor> TeamColors;
var ColorOverride BallSuperSonicColor;
var ClientLoadoutData LoadoutOverrides[2];

defaultproperties
{
	bAllowHonorDuelChallenges=true
	bAllowVoiceChat=true
	BallSuperSonicColor=(bOverride=false,Color=(R=0.0,G=0.0,B=0.0,A=1.0))
}