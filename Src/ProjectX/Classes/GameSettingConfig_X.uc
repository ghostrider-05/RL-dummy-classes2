/*******************************************************************************
* GameSettingConfig_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GameSettingConfig_X extends OnlineConfig_X;

struct GameSettingHidingOverride
{
	var name SettingName;
	var bool bHidden;

	structdefaultproperties
	{
		SettingName=None
		bHidden=false
	}
};

var array<GameSettingHidingOverride> HidingOverrides;
