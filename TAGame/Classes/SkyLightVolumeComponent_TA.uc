/*******************************************************************************
* SkyLightVolumeComponent_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SkyLightVolumeComponent_TA extends SkyLightComponent
	editinlinenew
	hidecategories(Object);

var() const float BlendDistance;
var() SkyLight LightToOverride;
var export editinline BrushComponent BrushComponent;
var const transient Matrix CachedParentToWorld;

defaultproperties
{
	BlendDistance=100.0
	LightingChannels=(BSP=false,Static=false)
}