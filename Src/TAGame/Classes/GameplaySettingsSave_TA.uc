/*******************************************************************************
* GameplaySettingsSave_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GameplaySettingsSave_TA extends SaveObject_TA
	config(Game);

enum EGameplaySettingsSaveVersion
{
	EGameplaySettingsSaveVersion_ChatFilterDisambiguation,
	EGameplaySettingsSaveVersion_MAX
};

var bool bFilterNonTacticalQuickChat;
var bool bColorBlind;
var bool bForceDefaultColors;
var bool bEnableHorizontalSplitscreen;
var bool bEnableFreeplayUnlimitedBoost;
var bool bUseSteamInput;
var bool bDisableFreeplayGoals;
var bool bIsTradingEnabled;
var bool bFirstTimeDefaultVoice;
var bool bFirstTimeDefaultText;
var bool bFirstTimeDefaultTrade;
var EChatFilter QuickChatFilter;
var EChatFilter MatchChatFilter;
var EChatFilter PartyChatFilter;
var EVoiceFilter DeprecatedVoiceFilter;
var EVoiceFilter ChatFilter;
var EEffectsIntensity EffectIntensity;
var config EStatEventDisplayLevels StatEventDisplayLevel;
var EBoostFillType FreeplayBoostFillType;
var EStatGraphLevel StatGraphLevel;
var EControlsVisibilityType TrainingControlsVisibility;
var float SafeZoneRatio;
var float UIScale;
var float NameplateScale;
var float TrainingGameSpeed;
var float FreeplayBoostFillDelay;
var string PreviousDefaultVoice;
var string PreviousDefaultText;
var string PreviousDefaultTrade;

defaultproperties
{
	bEnableFreeplayUnlimitedBoost=true
	bIsTradingEnabled=true
	QuickChatFilter=ChatFilter_Preset
	DeprecatedVoiceFilter=VoiceFilter_None
	SafeZoneRatio=1.0
	UIScale=1.0
	NameplateScale=1.0
	TrainingGameSpeed=1.0
	FreeplayBoostFillDelay=1.50
	PreviousDefaultVoice="everybody"
	PreviousDefaultText="everybody"
	PreviousDefaultTrade="everybody"
}