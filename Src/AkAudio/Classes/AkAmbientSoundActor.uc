/*******************************************************************************
* AkAmbientSoundActor generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class AkAmbientSoundActor extends Keypoint
	hidecategories(Navigation);

var() export editinline AkPlaySoundComponent PlaySoundComponent;

defaultproperties
{
	begin object name=DefaultPlaySoundComponent class=AkPlaySoundComponent
		bAutoPlay=true
	end object
	// Reference: AkPlaySoundComponent'Default__AkAmbientSoundActor.DefaultPlaySoundComponent'
	PlaySoundComponent=DefaultPlaySoundComponent
	Components(0)=None
	
	Components(1)=DefaultPlaySoundComponent
}