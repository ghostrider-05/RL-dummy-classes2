/*******************************************************************************
* PitchTekSettings generated by MVN.RLLib using UE Explorer.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class PitchTekSettings extends Object
    hidecategories(Object);

enum EPitchTekTargetSize
{
    PTTS_1024,
    PTTS_2048,
    PTTS_4096,
    PTTS_MAX
};

struct native PitchTekTextureDecalSettings
{
    var() private bool bDrawColorDecal;
    var() private float ColorTextureScale;
    var() private Texture2D ColorTexture;
    var() private bool bDrawDataDecal;
    var() private float DataTextureScale;
    var() private Texture2D DataTexture;

    structdefaultproperties
    {
        bDrawColorDecal=false
        ColorTextureScale=1.0
        ColorTexture=none
        bDrawDataDecal=false
        DataTextureScale=1.0
        DataTexture=none
    }
};

struct native PitchTekClearSettings
{
    var() private bool bClearColorTargetEveryFrame;
    var() private Color ColorTargetClearColor;
    var() private bool bClearDataTargetEveryFrame;
    var() private Color DataTargetClearColor;

    structdefaultproperties
    {
        bClearColorTargetEveryFrame=false
        ColorTargetClearColor=(R=0,G=0,B=0,A=0)
        bClearDataTargetEveryFrame=false
        DataTargetClearColor=(R=0,G=0,B=0,A=0)
    }
};

var(General) bool bEnabled;
var(General) bool bUseInitialColorTexture;
var(General) bool bUseInitialDataTexture;
var(General) EPitchTekTargetSize ColorTargetSize;
var(General) EPitchTekTargetSize DataTargetSize;
var(General) float PitchLengthX;
var(General) float PitchLengthY;
var(General) Texture2D InitialColorTexture;
var(General) Texture2D InitialDataTexture;
var(General) PitchTekClearSettings ClearSettings;
var(Ball) bool bRenderBallDecalOnContact;
var(Ball) float BallContactHeight;
var(Ball) PitchTekTextureDecalSettings BallSettings;
var(Wheels) float WheelContactHeight;
var(Wheels) PitchTekTextureDecalSettings WheelSettings;
var(CarBody) float CarBodyContactHeight;
var(CarBody) PitchTekTextureDecalSettings CarBodySettings;
var(CarPosition) bool bRenderCarPositionDecal;
var(CarPosition) PitchTekTextureDecalSettings CarPositionSettings;
var(Demolitions) float DemolitionExplosionMaxHeight;
var(Demolitions) PitchTekTextureDecalSettings DemolitionSettings;
var(GoalExplosions) PitchTekTextureDecalSettings GoalExplosionSettings;
var(JumpBlast) float JumpBlastMaxHeight;
var(JumpBlast) PitchTekTextureDecalSettings JumpBlastSettings;

defaultproperties
{
    bEnabled=true
    bRenderBallDecalOnContact=true
    ColorTargetSize=PTTS_2048
    DataTargetSize=PTTS_2048
    PitchLengthX=12288.0
    PitchLengthY=12288.0
    BallContactHeight=96.0
    BallSettings=(bDrawColorDecal=false,ColorTextureScale=1.0,ColorTexture=none,bDrawDataDecal=false,DataTextureScale=1.0,DataTexture=none)
    WheelContactHeight=96.0
    WheelSettings=(bDrawColorDecal=false,ColorTextureScale=1.0,ColorTexture=none,bDrawDataDecal=false,DataTextureScale=1.0,DataTexture=none)
    CarBodyContactHeight=96.0
    CarBodySettings=(bDrawColorDecal=false,ColorTextureScale=1.0,ColorTexture=none,bDrawDataDecal=false,DataTextureScale=1.0,DataTexture=none)
    DemolitionExplosionMaxHeight=96.0
    DemolitionSettings=(bDrawColorDecal=false,ColorTextureScale=1.0,ColorTexture=none,bDrawDataDecal=false,DataTextureScale=1.0,DataTexture=none)
    GoalExplosionSettings=(bDrawColorDecal=false,ColorTextureScale=1.0,ColorTexture=none,bDrawDataDecal=false,DataTextureScale=1.0,DataTexture=none)
    JumpBlastMaxHeight=96.0
    JumpBlastSettings=(bDrawColorDecal=false,ColorTextureScale=1.0,ColorTexture=none,bDrawDataDecal=false,DataTextureScale=1.0,DataTexture=none)
    CarPositionSettings=(bDrawColorDecal=false,ColorTextureScale=1.0,ColorTexture=none,bDrawDataDecal=false,DataTextureScale=1.0,DataTexture=none)
}