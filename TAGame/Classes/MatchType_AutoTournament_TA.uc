/*******************************************************************************
* MatchType_AutoTournament_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class MatchType_AutoTournament_TA extends MatchType_Tournament_TA;

var() /*0x00018000-0x00000000*/ AutoTourConfig_TA AutoTourConfig;

defaultproperties
{
	PlaylistName=AutoTournament
	Components(0)=Condition=,
/* Exception thrown while deserializing Components
System.ArgumentOutOfRangeException: De index valt buiten het bereik. Deze mag niet negatief zijn en moet kleiner zijn dan de grootte van de verzameling.
Parameternaam: index
   bij System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   bij System.Collections.Generic.List`1.get_Item(Int32 index)
   bij UELib.UName.Deserialize(IUnrealStream stream) in C:\Projects\RLMM\Ulibrary\Unreal-Library\Core\Types\UName.cs:regel 53
   bij UELib.UName..ctor(IUnrealStream stream) in C:\Projects\RLMM\Ulibrary\Unreal-Library\Core\Types\UName.cs:regel 36
   bij UELib.UObjectStream.ReadNameReference() in C:\Projects\RLMM\Ulibrary\Unreal-Library\UnrealStream.cs:regel 968
   bij UELib.Core.UDefaultProperty.Deserialize() in C:\Projects\RLMM\Ulibrary\Unreal-Library\Core\Classes\UDefaultProperty.cs:regel 156
   bij UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) in C:\Projects\RLMM\Ulibrary\Unreal-Library\Core\Classes\UDefaultProperty.cs:regel 662 */
	WaitForPlayersTime=30
	LobbyTime=150.0
	LobbyIntroTime=7.0
}