/*******************************************************************************
* GFxEngine_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxEngine_TA extends GFxEngine_X
	config(Engine);

enum ESoundStatePriority
{
	SSP_None,
	SSP_Scoreboard,
	SSP_Replay,
	SSP_MidGameMenu,
	SSP_Pause,
	SSP_BeginRound,
	SSP_EndRound,
	SSP_WinnerMenu,
	SSP_MainMenu,
	SSP_PremiumGarage,
	SSP_Roulette,
	SSP_AudioPreview,
	SSP_MusicPreview,
	SSP_ThirdPartyOverlay,
	SSP_LoadingScreen,
	SSP_MAX
};

struct native SoundStateItem
{
	var name StateName;
	var GFxShell_X Shell;
	var GFxEngine_TA.ESoundStatePriority Priority;

	structdefaultproperties
	{
		StateName=None
		Shell=none
		Priority=SSP_None
	}
};

var transient array<SoundStateItem> UISoundStates;
var transient bool bViewingOnlineScene;
var LoadingScreen_TA LoadingScreen;
var /*0x00008000-0x00000000*/ OnlineSubsystem OnlineSubsystem;
