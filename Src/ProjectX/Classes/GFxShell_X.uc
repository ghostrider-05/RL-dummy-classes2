/*******************************************************************************
* GFxShell_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxShell_X extends GFxDataSingleton_X
	abstract;

var() GFxMoviePlayer_X MoviePlayerArchetype;
var const transient LocalPlayer_X Player;
/** Whether game is paused */
var databinding bool bGamePaused;
var const transient bool bWasFullscreen;
/** Cache gamepad analog values for radial menus */
var databinding float LeftX;
/** Cache gamepad analog values for radial menus */
var databinding float LeftY;
var databinding float RightX;
var databinding float RightY;
var const transient array<GFxMoviePlayer_X> Movies;
var const export editinline GFxDataStore_X DataStore;
var const transient EInputPlatformType InputType;
var databinding _Types_Core.OnlinePlatform OnlinePlatformType;
var() OnlineSubsystem OnlineSub;

defaultproperties
{
	DataStore=GFxDataStore_X'Default__GFxShell_X.DefaultDataStore'
	TableName=Shell
	bLevelTransitionPersistent=true
}