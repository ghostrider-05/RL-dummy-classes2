/*******************************************************************************
* GFxData_CustomTeams_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_CustomTeams_TA extends GFxDataSingleton_X;

struct GFxCustomTeamSettings
{
	var databinding string Name;
	var databinding int TeamColorID;
	var databinding int CustomColorID;

	structdefaultproperties
	{
		Name=""
		TeamColorID=0
		CustomColorID=0
	}
};

var databinding array<GFxCustomTeamSettings> Settings;
var databinding ECustomMatchSettingsType SettingsType;
var databinding array<GFxTeamColor> TeamColors;
var databinding array<GFxTeamColor> CustomColors;
var transient LocalPlayer_TA TAPlayer;
var transient int PreviewTeam;
var transient CarPreviewSet_TA PreviewSet;
var transient ClubColorSet PreviewColors[2];

defaultproperties
{
	TableName=CustomTeams
}