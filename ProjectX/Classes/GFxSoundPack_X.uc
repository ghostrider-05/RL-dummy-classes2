/*******************************************************************************
* GFxSoundPack_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxSoundPack_X extends Object;

struct native SoundPackSoundRef
{
	var() AkSoundCue Sound;
	var() name Name;

	structdefaultproperties
	{
		Sound=none
		Name=None
	}
};

var() string ExportClassName;
var() const array<SoundPackSoundRef> Sounds;
var() /*0x00010000-0x00000000*/ bool bHasSubtitles;
