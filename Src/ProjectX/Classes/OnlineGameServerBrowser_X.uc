/*******************************************************************************
* OnlineGameServerBrowser_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlineGameServerBrowser_X extends Online_X within OnlineGame_X;

var transient string PreferredRegion;
var transient CustomMatchSettings Filter;
var() const localized string StartSearchFailString;
var() const localized string NoResultsFound;
var() const localized string NotLoggedInToPsynet;

defaultproperties
{
	/**StartSearchFailString="Unable to find server. Please try again later..."*/
	/**NoResultsFound="Unable to find server."*/
	/**NotLoggedInToPsynet="Unable to log in to server. Check your internet connection"*/
}