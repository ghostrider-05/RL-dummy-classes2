/*******************************************************************************
* WordFilterTypes_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class WordFilterTypes_X extends Object
	abstract;

enum EWordFilterUsage
{
	WordFilterUsage_PlayerName,
	WordFilterUsage_TrainingName,
	WordFilterUsage_LanServerName,
	WordFilterUsage_CustomTeamName,
	WordFilterUsage_TourName,
	WordFilterUsage_TourTeamName,
	WordFilterUsage_ClubName,
	WordFilterUsage_ClubTag,
	WordFilterUsage_ClubTagPlayerName,
	WordFilterUsage_MatchChat,
	WordFilterUsage_PartyChat,
	WordFilterUsage_MAX
};

struct native WordFilterPair
{
	var string Id;
	var string Key;
	var string Value;
	var EWordFilterUsage Usage;
	var bool bPending;
	var float LastRequestTime;
	var Error Error;

	structdefaultproperties
	{
		Id=""
		Key=""
		Value=""
		Usage=WordFilterUsage_PlayerName
		bPending=false
		LastRequestTime=0.0
		Error=None
		
		
	}
};

