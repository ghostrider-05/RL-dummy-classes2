/*******************************************************************************
* GFxData_TourSpectate_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_TourSpectate_TA extends GFxDataSingleton_X;

var() OnlineGameTournaments_TA Tournaments;
var const localized string MatchNotAvailable;
var const localized string SearchingTitle;
var const localized string SearchingBody;
var transient AsyncTask ActiveTask;
var transient Qword PendingTourID;

defaultproperties
{
	/**MatchNotAvailable="Tournament match has ended."*/
	/**SearchingTitle="Searching"*/
	/**SearchingBody="Finding server for match..."*/
	TableName=TournamentSpectate
}