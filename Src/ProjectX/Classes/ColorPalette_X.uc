/*******************************************************************************
* ColorPalette_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ColorPalette_X extends Object;

struct native ColorPosition
{
	var int Row;
	var int Column;

	structdefaultproperties
	{
		Row=0
		Column=0
	}
};

var() int DefaultId;
var() const int HueCount;
var() const int ValueCount;
var() const array<LinearColor> Colors;
