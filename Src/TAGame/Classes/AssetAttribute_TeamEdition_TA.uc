/*******************************************************************************
* AssetAttribute_TeamEdition_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class AssetAttribute_TeamEdition_TA extends ProductAssetAttribute_TA
	editinlinenew
	collapsecategories
	hidecategories(Object);

struct native TeamEditionOverrides
{
	var() DataAsset_ESportsTeam_TA ESportsTeam;
	var() editinline array<editinline ProductOverride_TA> Overrides;
	var() array<PaintWithOverride> PaintOverrides;

	structdefaultproperties
	{
		ESportsTeam=None
		Overrides.Empty
		PaintOverrides.Empty
	}
};

var() editoronly editinline array<editoronly editinline ProductOverride_TA> Template;
var() array<TeamEditionOverrides> TeamEditions;
var() editoronly bool bAddAllAvailableTeams;