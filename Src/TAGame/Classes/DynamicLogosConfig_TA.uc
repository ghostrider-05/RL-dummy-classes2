/*******************************************************************************
* DynamicLogosConfig_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class DynamicLogosConfig_TA extends OnlineConfig_X;

var bool bUseDynamicLogos;
var string LogoURL;
var() const string FallbackLogoAssetPath;
var() const string FallbackLogoAssetPathJPN;
var Texture LogoImage;
var string LogoLanguage;
var float MaxWaitLogoLoadTime;

defaultproperties
{
	FallbackLogoAssetPath="UI_MainMenu_Logo.Default_Logo_RocketLeague"
	FallbackLogoAssetPathJPN="UI_MainMenu_Logo.Default_Logo_RocketLeague_JPN"
	MaxWaitLogoLoadTime=2.0
	bAllowOnServer=false
}