/*******************************************************************************
* GameInfo_GFxMenu_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GameInfo_GFxMenu_TA extends GameInfoBase_TA
	config(Game)
	hidecategories(Navigation,Movement,Collision);

var transient CarPreviewSet_TA CarPreviewSet;
var transient PremiumGaragePreviewSet_TA PremiumPreviewSet;
var export editinline transient ExplosionPreviewer_TA ExplosionPreviewer;
var /*0x00010000-0x00000000*/ MusicStingersPreviewer_TA MusicStingersPreviewer;
var() export editinline MenuSequencer_TA MenuSequencer;
var const string UIStateNames[EUIMenuState];
var const name UISoundState_MainMenu;
var /*0x00010000-0x00000000*/ const array<CinematicIntroSequence_TA> CinematicSequences;
var EnableOnlineSave_X OnlineSaveEnable;

defaultproperties
{
	UIStateNames[0]="StartMenu"
	UIStateNames[1]="MainMenu"
	UISoundState_MainMenu=MainMenu
	RegistryGroup=GroupComponent_ORS'Default__GameInfo_GFxMenu_TA.DefaultRegistryGroup'
	PlayerControllerClass=class'PlayerController_Menu_TA'
	Components(0)=GroupComponent_ORS'Default__GameInfo_GFxMenu_TA.DefaultRegistryGroup'
}