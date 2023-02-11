/*******************************************************************************
* GFxData_Garage_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_Garage_TA extends GFxDataSingleton_X;

struct GarageTeam
{
	var databinding string Label;
	var databinding int TeamColorID;
	var databinding int CustomColorID;
	var databinding ProductHashID TeamFinishHashID;
	var databinding ProductHashID CustomFinishHashID;

	structdefaultproperties
	{
		Label=""
		TeamColorID=0
		CustomColorID=0
		TeamFinishHashID=(Id=0)
		CustomFinishHashID=(Id=0)
	}
};

var() array<ProductSlot_TA> LoadoutSlots;
var transient CarPreviewActor_TA PreviewActor;
var array<GFxData_GarageProductSlot_TA> GarageProductSlots;
var databinding array<GarageTeam> Teams;
var databinding int PaintFinishSlotIndex;
var databinding int PreviewTeam;
var databinding array<GFxTeamColor> CustomColors;
var databinding array<GFxTeamColor> Team0Colors;
var databinding array<GFxTeamColor> Team1Colors;
var databinding bool bTeam0FinishDisabled;
var databinding bool bTeam1FinishDisabled;
var databinding bool bCustom0FinishDisabled;
var databinding bool bCustom1FinishDisabled;
var databinding bool bTeam0ColorForced;
var databinding bool bTeam1ColorForced;
var databinding bool bCustom0ColorForced;
var databinding bool bCustom1ColorForced;
var databinding string ForcedTeam0FinishName;
var databinding string ForcedTeam1FinishName;
var databinding int ForcedTeam0Color;
var databinding int ForcedTeam1Color;
var databinding int ForcedCustom0Color;
var databinding int ForcedCustom1Color;
var transient Profile_TA Profile;
var transient LoadoutData Loadouts[2];
var transient LoadoutData LastNonLicensedLoadout[2];
var transient LoadoutSet_TA LoadoutSet;
var CarPreviewSet_TA CarPreviewSet;
var export editinline ExplosionPreviewer_TA ExplosionPreview;
var const name GoalExplosionSeqName;

defaultproperties
{
	Loadouts[0]=(TeamPaint=(TeamFinishID=0,CustomFinishID=0,Team=0,TeamColorID=0,CustomColorID=0,bSet=false),Title=XP,TeamIndex=0,OnlineProducts=none,Products=none)
	Loadouts[1]=(TeamPaint=(TeamFinishID=0,CustomFinishID=0,Team=0,TeamColorID=0,CustomColorID=0,bSet=false),Title=XP,TeamIndex=0,OnlineProducts=none,Products=none)
	LastNonLicensedLoadout[0]=(TeamPaint=(TeamFinishID=0,CustomFinishID=0,Team=0,TeamColorID=0,CustomColorID=0,bSet=false),Title=XP,TeamIndex=0,OnlineProducts=none,Products=none)
	LastNonLicensedLoadout[1]=(TeamPaint=(TeamFinishID=0,CustomFinishID=0,Team=0,TeamColorID=0,CustomColorID=0,bSet=false),Title=XP,TeamIndex=0,OnlineProducts=none,Products=none)
	GoalExplosionSeqName=GarageGoalExplosion
	TableName=Garage
}