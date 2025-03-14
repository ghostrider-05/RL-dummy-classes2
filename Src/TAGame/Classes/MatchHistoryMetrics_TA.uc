/*******************************************************************************
* MatchHistoryMetrics_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class MatchHistoryMetrics_TA extends MetricsGroup_X;

struct MatchPreviewData
{
	var int Index;
	var string MatchGuid;
	var int TimesPreviewed;

	structdefaultproperties
	{
		Index=0
		MatchGuid=""
		TimesPreviewed=0
	}
};

struct MatchHistoryChangeTabEvent
{
	var EMatchHistoryUI CurrentTab;
	var EMatchHistoryUI NewTab;
	var Qword StartTimestamp;
	var Qword EndTimestamp;
	var EMatchHistoryNavigableButton NavigableButtonID;
	var array<MatchPreviewData> MatchPreviews;

	structdefaultproperties
	{
		CurrentTab=MatchHistoryUI_MatchHistoryTab
		NewTab=MatchHistoryUI_MatchHistoryTab
		
		
		NavigableButtonID=MatchHistoryNavigableButton_ChangeTabButton
		MatchPreviews.Empty
	}
};

var Qword ChangeTabsTimestamp;
var bool bMatchHistorySessionStarted;
var transient array<MatchHistoryChangeTabEvent> CurrentSessionTabChangeMetrics;
var transient array<MatchPreviewData> CurrentMatchPreviews;
var UniqueNetId CurrentPlayerID;

defaultproperties
{
	
	Category="MatchHistory"
}