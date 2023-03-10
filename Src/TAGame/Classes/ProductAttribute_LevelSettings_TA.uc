/*******************************************************************************
* ProductAttribute_LevelSettings_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ProductAttribute_LevelSettings_TA extends ProductAttribute_TA
	editinlinenew
	collapsecategories
	hidecategories(Object);

var() array<ProductLevelData> Levels;

defaultproperties
{
	Levels(0)=(Level=1,SoftCurrency=0,HardCurrency=0,UnlockWeight=77.50)
	Levels(1)=(Level=2,SoftCurrency=100,HardCurrency=50,UnlockWeight=15.0)
	Levels(2)=(Level=3,SoftCurrency=200,HardCurrency=100,UnlockWeight=5.0)
	Levels(3)=(Level=4,SoftCurrency=750,HardCurrency=250,UnlockWeight=2.0)
	Levels(4)=(Level=5,SoftCurrency=1500,HardCurrency=500,UnlockWeight=0.50)
	Typename=LevelData
}