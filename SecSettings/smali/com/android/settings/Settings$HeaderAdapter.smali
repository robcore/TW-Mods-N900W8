.class Lcom/android/settings/Settings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private final isDeviceDefault:Z

.field private isKioskContainer:Z

.field private final isTablet:Z

.field private final mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

.field private final mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

.field private mAirPlaneObserver:Landroid/database/ContentObserver;

.field private final mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

.field private final mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

.field private final mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

.field private mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

.field private final mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

.field private final mHeaderItemLayoutResID:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

.field private final mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

.field private final mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

.field private final mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

.field private final mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

.field private final mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

.field private final mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

.field private final mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private final mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

.field private final mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

.field private mPersonalPageObserver:Landroid/database/ContentObserver;

.field private final mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

.field private final mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

.field public mSettingViewClicklistener:Landroid/view/View$OnClickListener;

.field private final mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

.field private mTetheredData:I

.field private final mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

.field private final mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

.field private final mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

.field private mWfcObserver:Landroid/database/ContentObserver;

.field private final mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field private final mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

.field private final mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "authenticatorHelper"    # Lcom/android/settings/accounts/AuthenticatorHelper;
    .param p4, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settings/accounts/AuthenticatorHelper;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 4234
    invoke-direct {p0, p1, v10, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 4098
    iput v10, p0, Lcom/android/settings/Settings$HeaderAdapter;->mTetheredData:I

    .line 4115
    new-instance v0, Lcom/android/settings/Settings$HeaderAdapter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/Settings$HeaderAdapter$1;-><init>(Lcom/android/settings/Settings$HeaderAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageObserver:Landroid/database/ContentObserver;

    .line 4122
    new-instance v0, Lcom/android/settings/Settings$HeaderAdapter$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/Settings$HeaderAdapter$2;-><init>(Lcom/android/settings/Settings$HeaderAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWfcObserver:Landroid/database/ContentObserver;

    .line 4129
    new-instance v0, Lcom/android/settings/Settings$HeaderAdapter$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/Settings$HeaderAdapter$3;-><init>(Lcom/android/settings/Settings$HeaderAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirPlaneObserver:Landroid/database/ContentObserver;

    .line 5216
    new-instance v0, Lcom/android/settings/Settings$HeaderAdapter$5;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$HeaderAdapter$5;-><init>(Lcom/android/settings/Settings$HeaderAdapter;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSettingViewClicklistener:Landroid/view/View$OnClickListener;

    .line 4235
    iput-object p1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    .line 4236
    iput-object p3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 4237
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 4238
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->isKioskContainer:Z

    .line 4242
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 4244
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4245
    new-instance v0, Lcom/android/settings/wifi/WifiCallingEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/WifiCallingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    .line 4268
    :goto_0
    iput-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .line 4273
    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    .line 4278
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4279
    new-instance v0, Lcom/android/settings/ToddlerModeSwitchEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/ToddlerModeSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    .line 4285
    :goto_1
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 4286
    iput-object p4, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 4290
    iput-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    .line 4293
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4294
    new-instance v0, Lcom/android/settings/DrivingModeEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/DrivingModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    .line 4299
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->hasNewVoiceControlConcept()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4300
    :cond_0
    iput-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    .line 4305
    :goto_3
    new-instance v0, Lcom/android/settings/MobileDataEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/MobileDataEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    .line 4307
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    .line 4313
    iput-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    .line 4318
    new-instance v0, Lcom/android/settings/location/LocationModeEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/location/LocationModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    .line 4319
    new-instance v0, Lcom/android/settings/motion/MotionEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/motion/MotionEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    .line 4321
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4322
    new-instance v0, Lcom/android/settings/motion2014/MotionEnabler2014;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/motion2014/MotionEnabler2014;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    .line 4327
    :goto_4
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 4328
    new-instance v0, Lcom/android/settings/FingerAirViewEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/FingerAirViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    .line 4333
    :goto_5
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4334
    new-instance v0, Lcom/android/settings/AirViewEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/AirViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    .line 4340
    :goto_6
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4341
    new-instance v0, Lcom/android/settings/motion2013/AirMotionEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/motion2013/AirMotionEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    .line 4346
    :goto_7
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4347
    new-instance v0, Lcom/android/settings/motion2013/PalmMotionEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/motion2013/PalmMotionEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    .line 4351
    :goto_8
    iput-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    .line 4353
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4354
    new-instance v0, Lcom/android/settings/AirCommandEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/AirCommandEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    .line 4358
    :goto_9
    new-instance v0, Lcom/android/settings/MultiWindowEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/MultiWindowEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

    .line 4361
    iput-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    .line 4364
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4365
    new-instance v0, Lcom/android/settings/nfc/NfcEnabler;

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;Landroid/preference/PreferenceScreen;Landroid/preference/SwitchPreferenceScreen;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 4370
    :goto_a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v0

    if-nez v0, :cond_e

    .line 4371
    :cond_1
    iput-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 4378
    :goto_b
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler;

    invoke-direct {v0, p1}, Lcom/android/settings/nearby/NearbyEnabler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    .line 4383
    iput-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    .line 4386
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_10

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    :goto_c
    invoke-static {v0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-ne v0, v9, :cond_2

    move-object v0, p1

    .line 4387
    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v2, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v0, v1, v2}, Lcom/android/settings/guide/GuideFragment;->setEnablersForGuide(Landroid/app/Activity;Lcom/android/settings/wifi/WifiEnabler;Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    .line 4390
    :cond_2
    sget-object v0, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 4391
    .local v8, "a":Landroid/content/res/TypedArray;
    const/16 v0, 0x14c

    const v1, 0x10900b5

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    .line 4392
    const/16 v0, 0x144

    invoke-virtual {v8, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->isDeviceDefault:Z

    .line 4393
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 4395
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_11

    move v0, v9

    :goto_d
    iput-boolean v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->isTablet:Z

    .line 4397
    return-void

    .line 4247
    .end local v8    # "a":Landroid/content/res/TypedArray;
    :cond_3
    iput-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    goto/16 :goto_0

    .line 4281
    :cond_4
    iput-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    goto/16 :goto_1

    .line 4296
    :cond_5
    iput-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    goto/16 :goto_2

    .line 4302
    :cond_6
    new-instance v0, Lcom/android/settings/VoiceInputControlEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/VoiceInputControlEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    goto/16 :goto_3

    .line 4324
    :cond_7
    iput-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    goto/16 :goto_4

    .line 4330
    :cond_8
    iput-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    goto/16 :goto_5

    .line 4336
    :cond_9
    iput-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    goto/16 :goto_6

    .line 4343
    :cond_a
    iput-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    goto/16 :goto_7

    .line 4349
    :cond_b
    iput-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    goto/16 :goto_8

    .line 4356
    :cond_c
    iput-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    goto/16 :goto_9

    .line 4367
    :cond_d
    iput-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    goto/16 :goto_a

    .line 4372
    :cond_e
    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4373
    new-instance v0, Lcom/android/settings/nfc/SBeamEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/android/settings/nfc/SBeamEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    goto/16 :goto_b

    .line 4375
    :cond_f
    iput-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    goto/16 :goto_b

    :cond_10
    move-object v0, v3

    .line 4386
    goto/16 :goto_c

    .restart local v8    # "a":Landroid/content/res/TypedArray;
    :cond_11
    move v0, v10

    .line 4395
    goto :goto_d
.end method

.method static synthetic access$1800(Lcom/android/settings/Settings$HeaderAdapter;)Lcom/android/settings/personalpage/PersonalPageEnabler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/Settings$HeaderAdapter;

    .prologue
    .line 4035
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/Settings$HeaderAdapter;)Lcom/android/settings/smartbonding/SmartBondingEnabler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/Settings$HeaderAdapter;

    .prologue
    .line 4035
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/Settings$HeaderAdapter;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/Settings$HeaderAdapter;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 4035
    invoke-direct {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->setCheckBoxTypeValue(Landroid/view/View;)V

    return-void
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 6
    .param p0, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const-wide/32 v4, 0x7f10064d

    .line 4150
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10064e

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1006cf

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10064f

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 4153
    :cond_0
    const/4 v0, 0x5

    .line 4194
    :goto_0
    return v0

    .line 4155
    :cond_1
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_2

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 4156
    const/4 v0, 0x0

    goto :goto_0

    .line 4157
    :cond_2
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100649

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10064b

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100648

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1006a9

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10067e

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10069a

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10068f

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10067f

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100685

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 4190
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 4157
    :cond_4
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10068e

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1006dd

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100650

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100652

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10068b

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_5
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1006d5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10064a

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1006cc

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1006cd

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1006ce

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1006bf

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100694

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10065b

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10065c

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100690

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10065d

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100653

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100696

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 4194
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private registerForWfcAndAirPlaneStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4138
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.tmowfc.wfcprovider/registration_state_state_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4139
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4140
    return-void
.end method

.method private setCheckBoxTypeValue(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v4, 0x7f1004cb

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5228
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 5282
    :cond_0
    :goto_0
    return-void

    .line 5230
    :sswitch_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 5231
    .local v0, "check":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5232
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-ne v5, v2, :cond_2

    :goto_2
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    move v1, v3

    .line 5231
    goto :goto_1

    :cond_2
    move v2, v3

    .line 5232
    goto :goto_2

    .line 5267
    .end local v0    # "check":Landroid/widget/CheckBox;
    :sswitch_1
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 5268
    .restart local v0    # "check":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5269
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "auto_adjust_touch"

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-ne v5, v2, :cond_4

    :goto_4
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5273
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5274
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->enableGloveMode(Z)Z

    goto :goto_0

    :cond_3
    move v1, v3

    .line 5268
    goto :goto_3

    :cond_4
    move v2, v3

    .line 5269
    goto :goto_4

    .line 5277
    .end local v0    # "check":Landroid/widget/CheckBox;
    :sswitch_2
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 5278
    .restart local v0    # "check":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_5

    .line 5228
    :sswitch_data_0
    .sparse-switch
        0x7f10064e -> :sswitch_0
        0x7f10064f -> :sswitch_2
        0x7f1006cf -> :sswitch_1
    .end sparse-switch
.end method

.method private setDirectSettingValue(Landroid/widget/Switch;)V
    .locals 3
    .param p1, "_switch"    # Landroid/widget/Switch;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5209
    invoke-static {}, Lcom/android/settings/Settings;->access$2500()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 5210
    .local v0, "value":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 5211
    invoke-static {v1}, Lcom/android/settings/Settings;->access$2202(Z)Z

    .line 5212
    return-void

    .end local v0    # "value":Z
    :cond_0
    move v0, v1

    .line 5209
    goto :goto_0
.end method

.method private setHeaderIcon(Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "holder"    # Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 5043
    iget-object v1, p1, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5044
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5046
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v1, v0

    .line 5047
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x14

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 5048
    iget-object v1, p1, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5049
    iget-object v1, p1, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5050
    return-void
.end method

.method private unregisterForWfcAndAirPlaneStatus()V
    .locals 2

    .prologue
    .line 4143
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4144
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4145
    return-void
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V
    .locals 10
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "holder"    # Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    .prologue
    .line 4938
    iget-object v6, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v6, :cond_8

    iget-object v6, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 4940
    iget-object v6, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4942
    .local v0, "accType":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 4943
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p2, v3}, Lcom/android/settings/Settings$HeaderAdapter;->setHeaderIcon(Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V

    .line 4951
    .end local v0    # "accType":Ljava/lang/String;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v6, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4953
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f100682

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 4954
    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v6}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4957
    iget-object v6, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a1527

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4961
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 4962
    .local v5, "summary":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 4963
    iget-object v6, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4987
    iget-object v6, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4990
    const-string v6, "VZW"

    invoke-static {}, Lcom/android/settings/Settings;->access$2400()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f100649

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f10064b

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    :cond_1
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4992
    :cond_2
    iget-object v6, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5006
    :cond_3
    :goto_1
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f10064c

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 5007
    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 5014
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const-string v6, "TMO"

    const-string v7, "ALL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 5015
    iget-object v6, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0811

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5018
    :goto_2
    iget-object v6, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v1}, Lcom/android/settings/Utils;->getTetheringSummary(Landroid/net/ConnectivityManager;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5022
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_4
    const-string v6, "CTC"

    invoke-static {}, Lcom/android/settings/Settings;->access$2400()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 5023
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f100653

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 5024
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v4

    .line 5026
    .local v4, "slot":I
    const-string v6, "DCGS"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5027
    invoke-static {}, Lcom/android/settings/Utils;->isslot1roamingtogsm()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5028
    const/4 v4, 0x0

    .line 5031
    :cond_5
    invoke-static {}, Lcom/android/settings/Settings;->access$1700()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The current data slot:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 5032
    :cond_6
    iget-object v6, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5033
    const/4 v6, 0x1

    if-ne v4, v6, :cond_c

    .line 5034
    iget-object v6, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0a175d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5040
    .end local v4    # "slot":I
    :cond_7
    :goto_3
    return-void

    .line 4946
    .end local v5    # "summary":Ljava/lang/CharSequence;
    :cond_8
    :try_start_0
    iget-object v6, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v7, p1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4947
    :catch_0
    move-exception v2

    .line 4948
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 4996
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v5    # "summary":Ljava/lang/CharSequence;
    :cond_9
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f10064b

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 4997
    iget-object v6, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    iget-object v7, p1, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 5003
    :cond_a
    iget-object v6, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 5017
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_b
    iget-object v6, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v1}, Lcom/android/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 5036
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v4    # "slot":I
    :cond_c
    iget-object v6, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0a175c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 4210
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 4201
    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 4202
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 4203
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    .line 4205
    .end local v0    # "header":Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 4402
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceActivity$Header;

    .line 4403
    .local v11, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v11}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v12

    .line 4404
    .local v12, "headerType":I
    const/16 v18, 0x0

    .line 4406
    .local v18, "view":Landroid/view/View;
    if-nez p2, :cond_3

    .line 4407
    new-instance v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/Settings$1;)V

    .line 4408
    .local v13, "holder":Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    packed-switch v12, :pswitch_data_0

    .line 4538
    :goto_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4545
    :goto_1
    packed-switch v12, :pswitch_data_1

    .line 4914
    :cond_0
    :goto_2
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f10064a

    cmp-long v19, v20, v22

    if-nez v19, :cond_1

    .line 4925
    :cond_1
    return-object v18

    .line 4417
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f0400fa

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 4418
    const v19, 0x1020016

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 4423
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f040222

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 4426
    const v19, 0x7f1004cc

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 4427
    const v19, 0x7f1004cd

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 4428
    const v19, 0x7f1004ce

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 4429
    const v19, 0x7f1004cf

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->round_:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 4433
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f040221

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 4436
    const v19, 0x7f100085

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 4437
    const v19, 0x7f100086

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 4438
    const v19, 0x7f1000b8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 4439
    const v19, 0x7f100396

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->check_:Landroid/widget/CheckBox;

    goto/16 :goto_0

    .line 4503
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f040190

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 4504
    const v19, 0x7f100085

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 4505
    const v19, 0x1020016

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 4507
    const v19, 0x1020010

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 4509
    const v19, 0x7f100065

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Switch;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    .line 4515
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f04018b

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 4517
    const v19, 0x7f100085

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 4518
    const v19, 0x1020016

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 4520
    const v19, 0x1020010

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 4522
    const v19, 0x7f100395

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    .line 4523
    const v19, 0x7f100198

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    goto/16 :goto_0

    .line 4527
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->isDeviceDefault:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 4528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 4531
    :goto_3
    const v19, 0x7f100085

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 4532
    const v19, 0x1020016

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 4534
    const v19, 0x1020010

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 4530
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f04018d

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    goto :goto_3

    .line 4540
    .end local v13    # "holder":Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    :cond_3
    move-object/from16 v18, p2

    .line 4541
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    .restart local v13    # "holder":Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 4553
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f0400fa

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 4554
    if-nez v13, :cond_4

    .line 4555
    new-instance v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    .end local v13    # "holder":Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/Settings$1;)V

    .line 4557
    .restart local v13    # "holder":Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    :cond_4
    const v19, 0x1020016

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 4558
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4560
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    iget v0, v11, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0025

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4561
    .local v7, "contentDescription":Ljava/lang/String;
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4562
    const v19, 0x7f1001a9

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 4563
    .local v8, "divider":Landroid/view/View;
    const v19, 0x7f100230

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 4564
    .local v9, "divider_first":Landroid/view/View;
    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    .line 4565
    if-nez p1, :cond_5

    .line 4566
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4567
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 4569
    :cond_5
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4570
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 4577
    .end local v7    # "contentDescription":Ljava/lang/String;
    .end local v8    # "divider":Landroid/view/View;
    .end local v9    # "divider_first":Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f040222

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 4580
    const v19, 0x7f1004cc

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 4581
    const v19, 0x7f1004cd

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 4582
    const v19, 0x7f1004ce

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 4583
    const v19, 0x7f1004cf

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->round_:Landroid/widget/ImageView;

    .line 4585
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4587
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    iget v0, v11, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4588
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4590
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 4591
    .local v14, "iconSummary":Ljava/lang/CharSequence;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 4592
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 4594
    :cond_6
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 4616
    .end local v14    # "iconSummary":Ljava/lang/CharSequence;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f040221

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 4618
    const v19, 0x7f1004c8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 4619
    const v19, 0x7f1004c9

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 4620
    const v19, 0x7f1004ca

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 4621
    const v19, 0x7f1004cb

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->check_:Landroid/widget/CheckBox;

    .line 4623
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4625
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    iget v0, v11, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4626
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4627
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 4629
    .local v17, "summaryCheck":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 4630
    .local v6, "check":Landroid/widget/CheckBox;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 4631
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4632
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4637
    :goto_4
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f10064e

    cmp-long v19, v20, v22

    if-nez v19, :cond_a

    .line 4638
    const v19, 0x7f10064e

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setId(I)V

    .line 4639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 4640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->check_:Landroid/widget/CheckBox;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/AirplaneModeSwitchEnabler;->setCheckBox(Landroid/widget/CheckBox;)V

    .line 4659
    :cond_7
    :goto_5
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mSettingViewClicklistener:Landroid/view/View$OnClickListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 4663
    :cond_8
    invoke-static {}, Lcom/android/settings/Settings;->access$2100()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 4664
    invoke-static {}, Lcom/android/settings/Settings;->access$2200()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getId()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static {}, Lcom/android/settings/Settings;->access$2300()J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-nez v19, :cond_0

    .line 4665
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/Settings$HeaderAdapter;->setCheckBoxTypeValue(Landroid/view/View;)V

    .line 4666
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Settings;->access$2202(Z)Z

    goto/16 :goto_2

    .line 4634
    :cond_9
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 4641
    :cond_a
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f1006cf

    cmp-long v19, v20, v22

    if-nez v19, :cond_c

    .line 4642
    const v19, 0x7f1006cf

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setId(I)V

    .line 4643
    const v19, 0x7f1004cb

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "check":Landroid/widget/CheckBox;
    check-cast v6, Landroid/widget/CheckBox;

    .line 4644
    .restart local v6    # "check":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "auto_adjust_touch"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    const/16 v19, 0x1

    :goto_6
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_5

    :cond_b
    const/16 v19, 0x0

    goto :goto_6

    .line 4647
    :cond_c
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f10064f

    cmp-long v19, v20, v22

    if-nez v19, :cond_7

    .line 4648
    const v19, 0x7f10064f

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setId(I)V

    .line 4649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    .line 4650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->check_:Landroid/widget/CheckBox;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/ToddlerModeSwitchEnabler;->setCheckBox(Landroid/widget/CheckBox;)V

    .line 4651
    :cond_d
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "airplane_mode_on"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 4652
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 4653
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4654
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4655
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->check_:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_5

    .line 4694
    .end local v6    # "check":Landroid/widget/CheckBox;
    .end local v17    # "summaryCheck":Ljava/lang/CharSequence;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f040190

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 4695
    const v19, 0x7f100085

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 4696
    const v19, 0x1020016

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 4697
    const v19, 0x1020010

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 4698
    const v19, 0x7f100065

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Switch;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 4699
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4703
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f100649

    cmp-long v19, v20, v22

    if-nez v19, :cond_12

    .line 4704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 4705
    const v19, 0x7f100649

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setId(I)V

    .line 4706
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v19

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "toddler_mode_switch"

    const/16 v21, 0x0

    const/16 v22, -0x2

    invoke-static/range {v19 .. v22}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 4707
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 4708
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4709
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 4840
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 4841
    :cond_f
    invoke-static {}, Lcom/android/settings/Settings;->access$2100()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 4842
    invoke-static {}, Lcom/android/settings/Settings;->access$2200()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    invoke-static {}, Lcom/android/settings/Settings;->access$2300()J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-nez v19, :cond_10

    .line 4843
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/Settings$HeaderAdapter;->setDirectSettingValue(Landroid/widget/Switch;)V

    .line 4849
    :cond_10
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode()Z

    move-result v19

    if-eqz v19, :cond_11

    .line 4853
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v19, v0

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Switch;->setClickable(Z)V

    .line 4856
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 4712
    :cond_12
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f100648

    cmp-long v19, v20, v22

    if-nez v19, :cond_13

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_13

    .line 4715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/wifi/WifiCallingEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 4717
    :cond_13
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f1006d5

    cmp-long v19, v20, v22

    if-nez v19, :cond_14

    .line 4718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 4719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 4720
    :cond_14
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f10064a

    cmp-long v19, v20, v22

    if-nez v19, :cond_15

    .line 4726
    :cond_15
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f100653

    cmp-long v19, v20, v22

    if-nez v19, :cond_16

    .line 4727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 4728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/MobileDataEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 4731
    :cond_16
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f10064d

    cmp-long v19, v20, v22

    if-nez v19, :cond_17

    .line 4732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/AirplaneModeSwitchEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 4734
    :cond_17
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f1006a9

    cmp-long v19, v20, v22

    if-nez v19, :cond_18

    .line 4735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/ToddlerModeSwitchEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 4736
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v19

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "airplane_mode_on"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 4737
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 4738
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4739
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_7

    .line 4741
    :cond_18
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f10069a

    cmp-long v19, v20, v22

    if-nez v19, :cond_19

    .line 4742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/personalpage/PersonalPageEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 4743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Lcom/android/settings/personalpage/PersonalPageEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    .line 4744
    :cond_19
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f10067f

    cmp-long v19, v20, v22

    if-nez v19, :cond_1a

    .line 4745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 4746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/DrivingModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 4747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Lcom/android/settings/DrivingModeEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    .line 4748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/DrivingModeEnabler;->resume()V

    .line 4749
    const-string v19, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 4750
    const-string v19, ""

    move-object/from16 v0, v19

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 4751
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_7

    .line 4754
    :cond_1a
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f100690

    cmp-long v19, v20, v22

    if-nez v19, :cond_1b

    invoke-static {}, Lcom/android/settings/Utils;->hasNewVoiceControlConcept()Z

    move-result v19

    if-nez v19, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_1b

    .line 4755
    const v19, 0x7f100690

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setId(I)V

    .line 4756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 4757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/VoiceInputControlEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 4758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Lcom/android/settings/VoiceInputControlEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    .line 4760
    :cond_1b
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f100685

    cmp-long v19, v20, v22

    if-nez v19, :cond_1d

    .line 4761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 4762
    invoke-static {}, Lcom/android/settings/Settings;->access$1700()Z

    move-result v19

    if-eqz v19, :cond_1c

    const-string v19, "Settings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mPowerSavingEnabler.setSwitch(holder.switch_)"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4763
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    .line 4764
    :cond_1d
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f100650

    cmp-long v19, v20, v22

    if-nez v19, :cond_1e

    .line 4765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 4766
    :cond_1e
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f100652

    cmp-long v19, v20, v22

    if-nez v19, :cond_1f

    .line 4767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/location/LocationModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 4768
    :cond_1f
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f10068b

    cmp-long v19, v20, v22

    if-nez v19, :cond_20

    .line 4769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/motion/MotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 4770
    :cond_20
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f10068e

    cmp-long v19, v20, v22

    if-nez v19, :cond_21

    .line 4771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 4772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/FingerAirViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 4773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Lcom/android/settings/FingerAirViewEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    .line 4775
    :cond_21
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f10068f

    cmp-long v19, v20, v22

    if-nez v19, :cond_22

    .line 4776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 4777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/AirViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 4778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Lcom/android/settings/AirViewEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    .line 4781
    :cond_22
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f1006cc

    cmp-long v19, v20, v22

    if-nez v19, :cond_23

    .line 4782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 4783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/motion2013/AirMotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 4784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Lcom/android/settings/motion2013/AirMotionEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    .line 4786
    :cond_23
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f1006cd

    cmp-long v19, v20, v22

    if-nez v19, :cond_24

    .line 4787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/motion/MotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 4788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Lcom/android/settings/motion/MotionEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    .line 4789
    :cond_24
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f1006ce

    cmp-long v19, v20, v22

    if-nez v19, :cond_25

    .line 4790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 4791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/motion2013/PalmMotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 4792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Lcom/android/settings/motion2013/PalmMotionEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    .line 4794
    :cond_25
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f1006bf

    cmp-long v19, v20, v22

    if-nez v19, :cond_26

    .line 4795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 4796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/AirCommandEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 4797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Lcom/android/settings/AirCommandEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    .line 4799
    :cond_26
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f100694

    cmp-long v19, v20, v22

    if-nez v19, :cond_2a

    .line 4800
    const v19, 0x7f100694

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setId(I)V

    .line 4802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "access_control_enabled"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-nez v19, :cond_28

    const/4 v4, 0x1

    .line 4804
    .local v4, "bAccessControlDisabled":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "easy_mode_switch"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_29

    const/4 v5, 0x1

    .line 4807
    .local v5, "bBasicMode":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/MultiWindowEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 4808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Lcom/android/settings/MultiWindowEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    .line 4810
    if-eqz v4, :cond_27

    if-nez v5, :cond_e

    .line 4811
    :cond_27
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 4812
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4813
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_7

    .line 4802
    .end local v4    # "bAccessControlDisabled":Z
    .end local v5    # "bBasicMode":Z
    :cond_28
    const/4 v4, 0x0

    goto :goto_8

    .line 4804
    .restart local v4    # "bAccessControlDisabled":Z
    :cond_29
    const/4 v5, 0x0

    goto :goto_9

    .line 4816
    .end local v4    # "bAccessControlDisabled":Z
    :cond_2a
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f1006dd

    cmp-long v19, v20, v22

    if-nez v19, :cond_2b

    .line 4817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/MouseHoveringViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 4820
    :cond_2b
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f10065b

    cmp-long v19, v20, v22

    if-nez v19, :cond_2c

    .line 4821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/nfc/NfcEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 4822
    :cond_2c
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f10065c

    cmp-long v19, v20, v22

    if-nez v19, :cond_2d

    .line 4823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/nfc/SBeamEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 4824
    :cond_2d
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f10064b

    cmp-long v19, v20, v22

    if-nez v19, :cond_2f

    .line 4827
    const-string v19, "VZW"

    invoke-static {}, Lcom/android/settings/Settings;->access$2400()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2e

    .line 4828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;Landroid/preference/PreferenceActivity$Header;Landroid/widget/TextView;)V

    goto/16 :goto_7

    .line 4830
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 4833
    :cond_2f
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f10065d

    cmp-long v19, v20, v22

    if-nez v19, :cond_30

    .line 4834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/nearby/NearbyEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 4835
    :cond_30
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f100696

    cmp-long v19, v20, v22

    if-nez v19, :cond_e

    .line 4836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/toolbox/ToolboxEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 4837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Lcom/android/settings/toolbox/ToolboxEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    .line 4860
    :pswitch_a
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f10066f

    cmp-long v19, v20, v22

    if-nez v19, :cond_31

    .line 4862
    const/4 v10, 0x0

    .line 4863
    .local v10, "hasCert":Z
    if-eqz v10, :cond_34

    .line 4864
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4865
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 4866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_32

    const/4 v15, 0x1

    .line 4867
    .local v15, "isManaged":Z
    :goto_a
    if-eqz v15, :cond_33

    .line 4868
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    const v20, 0x7f0202a9

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4873
    :goto_b
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/settings/Settings$HeaderAdapter$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/Settings$HeaderAdapter$4;-><init>(Lcom/android/settings/Settings$HeaderAdapter;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4886
    .end local v10    # "hasCert":Z
    .end local v15    # "isManaged":Z
    :cond_31
    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 4866
    .restart local v10    # "hasCert":Z
    :cond_32
    const/4 v15, 0x0

    goto :goto_a

    .line 4870
    .restart local v15    # "isManaged":Z
    :cond_33
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    const v20, 0x1080078

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_b

    .line 4882
    .end local v15    # "isManaged":Z
    :cond_34
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4883
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 4893
    .end local v10    # "hasCert":Z
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f04018d

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 4895
    if-nez v13, :cond_35

    .line 4896
    new-instance v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    .end local v13    # "holder":Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/Settings$1;)V

    .line 4898
    .restart local v13    # "holder":Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    :cond_35
    const v19, 0x7f100085

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 4899
    const v19, 0x1020016

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 4901
    const v19, 0x1020010

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 4903
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4904
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f100631

    cmp-long v19, v20, v22

    if-nez v19, :cond_37

    const-string v19, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_37

    .line 4905
    :cond_36
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 4906
    .local v16, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0f0414

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4907
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4908
    iget-object v0, v13, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4910
    .end local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_37
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 4408
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 4545
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_b
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 4223
    const/4 v0, 0x6

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 4229
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 4215
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 5127
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 5129
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    if-eqz v0, :cond_0

    .line 5131
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiCallingEnabler;->pause()V

    .line 5134
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_1

    .line 5140
    :cond_1
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->pause()V

    .line 5143
    :cond_2
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->pause()V

    .line 5145
    :cond_3
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 5146
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->pause()V

    .line 5147
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageEnabler;->pause()V

    .line 5148
    :cond_4
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeEnabler;->pause()V

    .line 5149
    :cond_5
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler;->pause()V

    .line 5150
    :cond_6
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->pause()V

    .line 5151
    :cond_7
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/settings/Settings$HeaderAdapter;->unregisterForWfcAndAirPlaneStatus()V

    .line 5153
    :cond_8
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/location/LocationModeEnabler;->pause()V

    .line 5154
    :cond_9
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 5155
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion/MotionEnabler;->pause()V

    .line 5157
    :cond_a
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    invoke-virtual {v0}, Lcom/android/settings/motion2014/MotionEnabler2014;->pause()V

    .line 5158
    :cond_b
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewEnabler;->pause()V

    .line 5159
    :cond_c
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirViewEnabler;->pause()V

    .line 5161
    :cond_d
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 5162
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->pause()V

    .line 5163
    :cond_e
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->pause()V

    .line 5165
    :cond_f
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->pause()V

    .line 5166
    :cond_10
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirCommandEnabler;->pause()V

    .line 5167
    :cond_11
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MultiWindowEnabler;->pause()V

    .line 5169
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MouseHoveringViewEnabler;->pause()V

    .line 5170
    :cond_12
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 5171
    :cond_13
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnPause()V

    .line 5174
    :cond_14
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->pause()V

    .line 5175
    :cond_15
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    if-eqz v0, :cond_16

    .line 5176
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 5178
    :cond_16
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    if-eqz v0, :cond_17

    .line 5179
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MobileDataEnabler;->pause()V

    .line 5181
    :cond_17
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    if-eqz v0, :cond_18

    .line 5182
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    invoke-virtual {v0}, Lcom/android/settings/toolbox/ToolboxEnabler;->pause()V

    .line 5184
    :cond_18
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 5053
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 5055
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    if-eqz v0, :cond_0

    .line 5057
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiCallingEnabler;->resume()V

    .line 5067
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_1

    .line 5073
    :cond_1
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->resume()V

    .line 5076
    :cond_2
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->resume()V

    .line 5078
    :cond_3
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    .line 5079
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageEnabler;->resume()V

    .line 5080
    :cond_4
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeEnabler;->resume()V

    .line 5081
    :cond_5
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler;->resume()V

    .line 5082
    :cond_6
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->resume()V

    .line 5083
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->resume()V

    .line 5084
    :cond_7
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/settings/Settings$HeaderAdapter;->registerForWfcAndAirPlaneStatus()V

    .line 5086
    :cond_8
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/location/LocationModeEnabler;->resume()V

    .line 5087
    :cond_9
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 5088
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion/MotionEnabler;->resume()V

    .line 5090
    :cond_a
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    invoke-virtual {v0}, Lcom/android/settings/motion2014/MotionEnabler2014;->resume()V

    .line 5091
    :cond_b
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewEnabler;->resume()V

    .line 5092
    :cond_c
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirViewEnabler;->resume()V

    .line 5094
    :cond_d
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 5095
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->resume()V

    .line 5096
    :cond_e
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->resume()V

    .line 5098
    :cond_f
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->resume()V

    .line 5099
    :cond_10
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirCommandEnabler;->resume()V

    .line 5100
    :cond_11
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MultiWindowEnabler;->resume()V

    .line 5102
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MouseHoveringViewEnabler;->resume()V

    .line 5103
    :cond_12
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 5104
    :cond_13
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnResume()V

    .line 5108
    :cond_14
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->resume()V

    .line 5109
    :cond_15
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    if-eqz v0, :cond_16

    .line 5110
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "personal_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5113
    :cond_16
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    if-eqz v0, :cond_17

    .line 5114
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MobileDataEnabler;->resume()V

    .line 5116
    :cond_17
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    if-eqz v0, :cond_18

    .line 5117
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    invoke-virtual {v0}, Lcom/android/settings/toolbox/ToolboxEnabler;->resume()V

    .line 5119
    :cond_18
    return-void
.end method

.method public setEnablersForGuide(Lcom/android/settings/Settings;)V
    .locals 2
    .param p1, "settings"    # Lcom/android/settings/Settings;

    .prologue
    .line 5204
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {p1, v0, v1}, Lcom/android/settings/guide/GuideFragment;->setEnablersForGuide(Landroid/app/Activity;Lcom/android/settings/wifi/WifiEnabler;Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    .line 5205
    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    .line 5187
    if-eqz p1, :cond_0

    .line 5188
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    .line 5193
    :goto_0
    return-void

    .line 5190
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 5191
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    goto :goto_0
.end method
