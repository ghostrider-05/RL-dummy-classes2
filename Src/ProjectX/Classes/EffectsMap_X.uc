/*******************************************************************************
* EffectsMap_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class EffectsMap_X extends Object
	collapsecategories
	hidecategories(Object);

struct native EffectsMapping
{
	var() PhysicalMaterial PhysicalMaterial;
	var() ParticleSystem Particle;

	structdefaultproperties
	{
		PhysicalMaterial=None
		Particle=None
	}
};

var() array<EffectsMapping> Effects;
