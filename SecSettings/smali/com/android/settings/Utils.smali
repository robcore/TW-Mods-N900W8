.class public final Lcom/android/settings/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Utils$LengthFilter;,
        Lcom/android/settings/Utils$CustomCscParser;,
        Lcom/android/settings/Utils$IndexAscCompare;,
        Lcom/android/settings/Utils$ApInfo;
    }
.end annotation


# static fields
.field public static AUTO_AIR_VIEW_MODE:I

.field public static final BADNESS_COLORS:[I

.field public static final ENABLE_DISC_BUTTON_APNLIST:Z

.field public static final ENABLE_SIM_SELECTION_UI:Z

.field public static final ENABLE_WIFI_CONNECTION_TYPE:Z

.field public static final ENABLE_WIFI_PRIORITY_MENU:Z

.field public static FINGER_AIR_VIEW_MODE:I

.field public static MASTER_AIR_VIEW_OFF:I

.field public static MASTER_AIR_VIEW_ON:I

.field public static PEN_AIR_VIEW_MODE:I

.field public static final SHOW_DETAILED_AP_INFO:Z

.field private static fileDefaultPath:Ljava/io/File;

.field private static filePath:Ljava/io/File;

.field public static flagForDefaultAp:Z

.field private static final isMultiSim:Z

.field private static mApInfo:[Lcom/android/settings/Utils$ApInfo;

.field public static mDeviceType:Ljava/lang/String;

.field private static final mExclusionSalesCodes:[Ljava/lang/String;

.field private static mExistCoverNotePackage:Ljava/lang/Boolean;

.field private static mFeatureChecked:Z

.field private static mFeatureEnabled:Z

.field private static mGridListUIFeatureChecked:Z

.field private static mGridListUIFeatureEnabled:Z

.field public static mInitialOSVersion:D

.field private static final mRemoveApkCountryCodes:[Ljava/lang/String;

.field private static mRoamingState:Z

.field public static mSViewWallpaperDrawable:Landroid/graphics/drawable/Drawable;

.field private static sSystemSignature:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 219
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    sput-wide v4, Lcom/android/settings/Utils;->mInitialOSVersion:D

    .line 224
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/Utils;->BADNESS_COLORS:[I

    .line 275
    sput-boolean v2, Lcom/android/settings/Utils;->mFeatureChecked:Z

    .line 276
    sput-boolean v2, Lcom/android/settings/Utils;->mFeatureEnabled:Z

    .line 278
    sput-boolean v2, Lcom/android/settings/Utils;->mGridListUIFeatureChecked:Z

    .line 279
    sput-boolean v2, Lcom/android/settings/Utils;->mGridListUIFeatureEnabled:Z

    .line 285
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/Utils;->isMultiSim:Z

    .line 289
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/Utils;->mSViewWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    .line 2184
    sput-boolean v2, Lcom/android/settings/Utils;->flagForDefaultAp:Z

    .line 3016
    sput v2, Lcom/android/settings/Utils;->PEN_AIR_VIEW_MODE:I

    .line 3017
    sput v1, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    .line 3018
    sput v6, Lcom/android/settings/Utils;->AUTO_AIR_VIEW_MODE:I

    .line 3019
    sput v7, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_OFF:I

    .line 3020
    sput v8, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_ON:I

    .line 3217
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/Utils;->mExistCoverNotePackage:Ljava/lang/Boolean;

    .line 4962
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "KEN"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/settings/Utils;->mExclusionSalesCodes:[Ljava/lang/String;

    .line 4966
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "RU"

    aput-object v3, v0, v2

    const-string v3, "ID"

    aput-object v3, v0, v1

    const-string v1, "VN"

    aput-object v1, v0, v6

    const-string v1, "TW"

    aput-object v1, v0, v7

    const-string v1, "AE"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v3, "QA"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "KW"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "OM"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "ZA"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "KE"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "SN"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v3, "GH"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v3, "NG"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-string v3, "LY"

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string v3, "AO"

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const-string v3, "NA"

    aput-object v3, v0, v1

    const/16 v1, 0x10

    const-string v3, "PK"

    aput-object v3, v0, v1

    const/16 v1, 0x11

    const-string v3, "MU"

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v3, "MR"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/settings/Utils;->mRemoveApkCountryCodes:[Ljava/lang/String;

    .line 5284
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ShowDetailedApInfo"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    .line 5285
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuPriority"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->ENABLE_WIFI_PRIORITY_MENU:Z

    .line 5286
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuConnectionType"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->ENABLE_WIFI_CONNECTION_TYPE:Z

    .line 5287
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_SupportSimSelectionForEapSimAka"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->ENABLE_SIM_SELECTION_UI:Z

    .line 5293
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableDiscButtonApnList"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->ENABLE_DISC_BUTTON_APNLIST:Z

    return-void

    :cond_0
    move v0, v2

    .line 285
    goto/16 :goto_0

    .line 224
    nop

    :array_0
    .array-data 4
        0x0
        -0x3bc7d8
        -0x1ab6e8
        -0xb8500
        -0x540d4
        -0x9861c9
        -0xf580be
    .end array-data
.end method

.method public static DisableCloud()Z
    .locals 2

    .prologue
    .line 2910
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2911
    .local v0, "salesCode":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "MAX"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TRG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static Disable_PSM_Browser()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3603
    const-string v2, "americano"

    const-string v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSetupProject_KK_OS()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3604
    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "c1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3610
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 3607
    goto :goto_0
.end method

.method public static SetAirViewMasterValue(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "val"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3023
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3024
    .local v1, "cr":Landroid/content/ContentResolver;
    packed-switch p1, :pswitch_data_0

    .line 3050
    :cond_0
    :goto_0
    return-void

    .line 3026
    :pswitch_0
    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3027
    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3030
    :pswitch_1
    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3031
    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3034
    :pswitch_2
    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3035
    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3038
    :pswitch_3
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3039
    const-string v2, "air_view_master_onoff"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3040
    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3041
    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3045
    :pswitch_4
    const-string v2, "air_view_master_onoff"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3046
    const-string v2, "air_view_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3047
    .local v0, "airViewIndex":I
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    goto :goto_0

    .line 3024
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static autoTurnOffAirMotionEngine(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 763
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 765
    .local v0, "mResolver":Landroid/content/ContentResolver;
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->isAllAirMotionDisabled2014(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "air_motion_call_accept"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "master_motion"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 767
    :cond_0
    const-string v2, "air_motion_engine"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 768
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 769
    .local v1, "motion_changed":Landroid/content/Intent;
    const-string v2, "isEnable"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 770
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 772
    .end local v1    # "motion_changed":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static autoTurnOffMotionEngine(Landroid/content/Context;)V
    .locals 28
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 682
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 683
    .local v9, "mResolver":Landroid/content/ContentResolver;
    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 684
    .local v8, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    .line 685
    .local v6, "isTablet":Z
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    .line 686
    .local v7, "isVoiceCapable":Z
    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    const/4 v3, 0x0

    .line 692
    .local v3, "detail_motion":I
    const-string v26, "master_motion"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 693
    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TILT"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_4

    const-string v26, "motion_zooming"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    .line 695
    .local v24, "tiltZoom":I
    :goto_1
    const/16 v23, 0x0

    .line 697
    .local v23, "tiltScroll":I
    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_5

    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_5

    const-string v26, "motion_panning"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 699
    .local v15, "panMove":I
    :goto_2
    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN_TO_BROWSE_IMAGE"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6

    const-string v26, "motion_pan_to_browse_image"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 701
    .local v14, "panBrowse":I
    :goto_3
    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_SHAKE"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_7

    if-nez v6, :cond_7

    const-string v26, "motion_shake"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 703
    .local v20, "shake":I
    :goto_4
    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_DOUBLE_TAP"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_8

    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_8

    if-nez v6, :cond_8

    const-string v26, "motion_double_tap"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 705
    .local v5, "doubleTap":I
    :goto_5
    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_9

    if-nez v7, :cond_9

    const-string v26, "motion_pick_up"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    .line 707
    .local v22, "smartAlert":I
    :goto_6
    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_a

    if-nez v6, :cond_a

    const-string v26, "motion_pick_up_to_call_out"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 709
    .local v4, "directCall":I
    :goto_7
    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_b

    const-string v26, "motion_merged_mute_pause"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 711
    .local v12, "mute_pause":I
    :goto_8
    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_c

    if-nez v6, :cond_c

    const-string v26, "motion_overturn"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .line 713
    .local v25, "turnover":I
    :goto_9
    and-int v25, v25, v12

    .line 714
    const/16 v18, 0x0

    .line 716
    .local v18, "peekViewAlbumsList":I
    const/16 v17, 0x0

    .line 719
    .local v17, "peekChapterPreview":I
    or-int v26, v24, v23

    or-int v26, v26, v15

    or-int v26, v26, v14

    or-int v26, v26, v20

    or-int v26, v26, v5

    or-int v26, v26, v22

    or-int v26, v26, v4

    or-int v26, v26, v25

    or-int v26, v26, v18

    or-int v3, v26, v17

    .line 722
    .end local v4    # "directCall":I
    .end local v5    # "doubleTap":I
    .end local v12    # "mute_pause":I
    .end local v14    # "panBrowse":I
    .end local v15    # "panMove":I
    .end local v17    # "peekChapterPreview":I
    .end local v18    # "peekViewAlbumsList":I
    .end local v20    # "shake":I
    .end local v22    # "smartAlert":I
    .end local v23    # "tiltScroll":I
    .end local v24    # "tiltZoom":I
    .end local v25    # "turnover":I
    :cond_2
    const/4 v10, 0x0

    .line 724
    .local v10, "motionUnlock":I
    const/4 v2, 0x0

    .line 727
    .local v2, "CameraQuickAccess":I
    const/16 v21, 0x0

    .line 728
    .local v21, "side_motion":I
    const-string v26, "master_side_motion"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 729
    const-string v26, "side_motion_one_hand_operation"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 730
    .local v13, "oneHandOperation":I
    const-string v26, "side_motion_peek"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 732
    .local v16, "peek":I
    or-int v21, v13, v16

    .line 734
    .end local v13    # "oneHandOperation":I
    .end local v16    # "peek":I
    :cond_3
    or-int v26, v3, v10

    or-int v26, v26, v2

    or-int v26, v26, v21

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_d

    const/16 v19, 0x1

    .line 736
    .local v19, "result":Z
    :goto_a
    if-eqz v19, :cond_0

    .line 738
    const-string v26, "motion_engine"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 739
    new-instance v11, Landroid/content/Intent;

    const-string v26, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 740
    .local v11, "motion_changed":Landroid/content/Intent;
    const-string v26, "isEnable"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 741
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 693
    .end local v2    # "CameraQuickAccess":I
    .end local v10    # "motionUnlock":I
    .end local v11    # "motion_changed":Landroid/content/Intent;
    .end local v19    # "result":Z
    .end local v21    # "side_motion":I
    :cond_4
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 697
    .restart local v23    # "tiltScroll":I
    .restart local v24    # "tiltZoom":I
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 699
    .restart local v15    # "panMove":I
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 701
    .restart local v14    # "panBrowse":I
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 703
    .restart local v20    # "shake":I
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 705
    .restart local v5    # "doubleTap":I
    :cond_9
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 707
    .restart local v22    # "smartAlert":I
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 709
    .restart local v4    # "directCall":I
    :cond_b
    const/4 v12, 0x1

    goto/16 :goto_8

    .line 711
    .restart local v12    # "mute_pause":I
    :cond_c
    const/16 v25, 0x0

    goto/16 :goto_9

    .line 734
    .end local v4    # "directCall":I
    .end local v5    # "doubleTap":I
    .end local v12    # "mute_pause":I
    .end local v14    # "panBrowse":I
    .end local v15    # "panMove":I
    .end local v20    # "shake":I
    .end local v22    # "smartAlert":I
    .end local v23    # "tiltScroll":I
    .end local v24    # "tiltZoom":I
    .restart local v2    # "CameraQuickAccess":I
    .restart local v10    # "motionUnlock":I
    .restart local v21    # "side_motion":I
    :cond_d
    const/16 v19, 0x0

    goto :goto_a
.end method

.method public static buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleResId"    # I
    .param p2, "positiveAction"    # Ljava/lang/Runnable;

    .prologue
    .line 1954
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1955
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1956
    const v1, 0x7f0a0e40

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1957
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/Utils$2;

    invoke-direct {v2, p2}, Lcom/android/settings/Utils$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1963
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1965
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static checkPackageState(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3335
    const/4 v1, 0x0

    .line 3338
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3339
    if-eqz v1, :cond_0

    .line 3340
    const/4 v2, 0x1

    .line 3345
    :cond_0
    :goto_0
    return v2

    .line 3344
    :catch_0
    move-exception v0

    .line 3345
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static checkVlingoAccepted(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3365
    const/4 v8, 0x0

    .line 3366
    .local v8, "isAccepted":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3367
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 3368
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "content://com.vlingo.client.vlingoconfigprovider/tos_accepted"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3370
    const/4 v6, 0x0

    .line 3373
    .local v6, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3374
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3375
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3376
    .local v9, "value":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 3383
    .end local v9    # "value":Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_0

    .line 3384
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3385
    const/4 v6, 0x0

    .line 3388
    :cond_0
    :goto_1
    return v8

    .line 3378
    :cond_1
    :try_start_1
    const-string v2, "Utils"

    const-string v3, "cursor is null in checkVlingoAccepted"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3380
    :catch_0
    move-exception v7

    .line 3381
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3383
    if-eqz v6, :cond_0

    .line 3384
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3385
    const/4 v6, 0x0

    goto :goto_1

    .line 3383
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_2

    .line 3384
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3385
    const/4 v6, 0x0

    :cond_2
    throw v2
.end method

.method public static checkWeatherWidgetEnabled(Landroid/content/Context;)Z
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 4818
    const-string v2, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4820
    .local v1, "ACCU_SETTING_URI":Landroid/net/Uri;
    const-string v6, "WIDGET_COUNT"

    .line 4821
    .local v6, "COL_SETTINGS_WIDGET_COUNT":Ljava/lang/String;
    const/4 v8, 0x0

    .line 4822
    .local v8, "widgetCnt":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4823
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 4824
    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "WIDGET_COUNT"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4827
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 4828
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4829
    const-string v2, "WIDGET_COUNT"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 4831
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4834
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    const-string v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkWeatherWidgetEnabled count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4835
    if-lt v8, v9, :cond_2

    move v2, v9

    .line 4838
    :goto_0
    return v2

    :cond_2
    move v2, v10

    goto :goto_0
.end method

.method public static checkWifiPreCondition(Landroid/content/Context;Z)V
    .locals 11
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1591
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1592
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 1593
    .local v3, "wifiState":I
    const-string v4, "UsbTether"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    const-string v7, "UsbTether"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wifiState == WifiManager.WIFI_STATE_ENABLING: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ne v3, v9, :cond_5

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    const-string v7, "UsbTether"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wifiState == WifiManager.WIFI_STATE_ENABLED: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ne v3, v10, :cond_6

    move v4, v5

    :goto_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    if-eqz p1, :cond_3

    if-eq v3, v9, :cond_0

    if-ne v3, v10, :cond_3

    .line 1599
    :cond_0
    if-eq v3, v9, :cond_1

    if-ne v3, v10, :cond_2

    .line 1601
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "pre_wifi_state_for_usb_tether"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1603
    :cond_2
    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1605
    const-wide/16 v8, 0x258

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1611
    :cond_3
    :goto_2
    if-nez p1, :cond_4

    .line 1612
    const/4 v2, 0x0

    .line 1614
    .local v2, "wifiSavedState":I
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "pre_wifi_state_for_usb_tether"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 1618
    :goto_3
    if-ne v2, v5, :cond_4

    .line 1619
    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1620
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pre_wifi_state_for_usb_tether"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1623
    .end local v2    # "wifiSavedState":I
    :cond_4
    return-void

    :cond_5
    move v4, v6

    .line 1594
    goto :goto_0

    :cond_6
    move v4, v6

    .line 1595
    goto :goto_1

    .line 1606
    :catch_0
    move-exception v0

    .line 1607
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 1615
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "wifiSavedState":I
    :catch_1
    move-exception v4

    goto :goto_3
.end method

.method public static copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v5, 0x1

    .line 1822
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 1824
    .local v1, "contactUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v5}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    .line 1828
    .local v0, "avatarDataStream":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 1829
    const/4 v5, 0x0

    .line 1838
    :goto_0
    return v5

    .line 1831
    :cond_0
    if-eqz p1, :cond_1

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1832
    .local v4, "userId":I
    :goto_1
    const-string v6, "user"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1833
    .local v3, "um":Landroid/os/UserManager;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1834
    .local v2, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v4, v2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1836
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1837
    :catch_0
    move-exception v6

    goto :goto_0

    .line 1831
    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .end local v3    # "um":Landroid/os/UserManager;
    .end local v4    # "userId":I
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    goto :goto_1
.end method

.method public static createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6
    .param p0, "localeStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1657
    if-nez p0, :cond_0

    .line 1658
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 1666
    :goto_0
    return-object v1

    .line 1659
    :cond_0
    const-string v1, "_"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1661
    .local v0, "brokenDownLocale":[Ljava/lang/String;
    array-length v1, v0

    if-ne v4, v1, :cond_1

    .line 1662
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1663
    :cond_1
    array-length v1, v0

    if-ne v5, v1, :cond_2

    .line 1664
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1666
    :cond_2
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    aget-object v4, v0, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createRemoveConfirmationDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "removingUserId"    # I
    .param p2, "onConfirmListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 2441
    const-string v5, "user"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 2442
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 2445
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 2446
    const v2, 0x7f0a0e22

    .line 2447
    .local v2, "titleResId":I
    const v1, 0x7f0a0e26

    .line 2458
    .local v1, "messageResId":I
    :goto_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0e2d

    invoke-virtual {v5, v6, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2465
    .local v0, "dlg":Landroid/app/Dialog;
    return-object v0

    .line 2448
    .end local v0    # "dlg":Landroid/app/Dialog;
    .end local v1    # "messageResId":I
    .end local v2    # "titleResId":I
    :cond_0
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2449
    const v2, 0x7f0a0e24

    .line 2450
    .restart local v2    # "titleResId":I
    const v1, 0x7f0a0e2a

    .restart local v1    # "messageResId":I
    goto :goto_0

    .line 2451
    .end local v1    # "messageResId":I
    .end local v2    # "titleResId":I
    :cond_1
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2452
    const v2, 0x7f0a0e25

    .line 2453
    .restart local v2    # "titleResId":I
    const v1, 0x7f0a0e28

    .restart local v1    # "messageResId":I
    goto :goto_0

    .line 2455
    .end local v1    # "messageResId":I
    .end local v2    # "titleResId":I
    :cond_2
    const v2, 0x7f0a0e23

    .line 2456
    .restart local v2    # "titleResId":I
    const v1, 0x7f0a0e29

    .restart local v1    # "messageResId":I
    goto :goto_0
.end method

.method public static createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings/UserSpinnerAdapter;
    .locals 7
    .param p0, "userManager"    # Landroid/os/UserManager;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2305
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    .line 2308
    .local v4, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 2309
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    const/16 v6, 0x64

    if-lt v5, v6, :cond_0

    .line 2310
    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2311
    add-int/lit8 v1, v1, -0x1

    .line 2308
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2316
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 2317
    const/4 v5, 0x0

    .line 2330
    :goto_1
    return-object v5

    .line 2320
    :cond_2
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {v2, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 2322
    .local v2, "myUserHandle":Landroid/os/UserHandle;
    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2323
    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2325
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2326
    .local v3, "userDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/UserSpinnerAdapter$UserDetails;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 2327
    .local v0, "count":I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 2328
    new-instance v6, Lcom/android/settings/UserSpinnerAdapter$UserDetails;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    invoke-direct {v6, v5, p0, p1}, Lcom/android/settings/UserSpinnerAdapter$UserDetails;-><init>(Landroid/os/UserHandle;Landroid/os/UserManager;Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2327
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2330
    :cond_3
    new-instance v5, Lcom/android/settings/UserSpinnerAdapter;

    invoke-direct {v5, p1, v3}, Lcom/android/settings/UserSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public static deleteWifiFiles()V
    .locals 11

    .prologue
    .line 1916
    const-string v3, "/data/misc/wifi/"

    .line 1918
    .local v3, "folder":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1919
    .local v7, "scanFile":Ljava/io/File;
    new-instance v9, Lcom/android/settings/Utils$1;

    invoke-direct {v9}, Lcom/android/settings/Utils$1;-><init>()V

    invoke-virtual {v7, v9}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v6

    .line 1930
    .local v6, "list":[Ljava/lang/String;
    if-nez v6, :cond_1

    .line 1949
    :cond_0
    return-void

    .line 1933
    :cond_1
    array-length v9, v6

    if-eqz v9, :cond_0

    .line 1939
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 1940
    .local v2, "file":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1946
    .local v8, "temp":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1947
    .local v1, "deleteFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1939
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static enableQuickApplicationAccess(Z)Z
    .locals 3
    .param p0, "enable"    # Z

    .prologue
    .line 4915
    :try_start_0
    const-string v2, "/sys/class/sec/tsp/cmd"

    if-eqz p0, :cond_0

    const-string v1, "quick_app_access_enable,1"

    :goto_0
    invoke-static {v2, v1}, Lcom/android/settings/Utils;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 4920
    :goto_1
    return v1

    .line 4915
    :cond_0
    const-string v1, "quick_app_access_enable,0"
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4917
    :catch_0
    move-exception v0

    .line 4918
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 4920
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static forceCustomPadding(Landroid/view/View;Z)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "additive"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1779
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1780
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f0f0087

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1782
    .local v2, "paddingSide":I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    :goto_0
    add-int v3, v2, v5

    .line 1783
    .local v3, "paddingStart":I
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    :goto_1
    add-int v1, v2, v5

    .line 1784
    .local v1, "paddingEnd":I
    const v5, 0x1050023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1787
    .local v0, "paddingBottom":I
    invoke-virtual {p0, v3, v6, v1, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1788
    return-void

    .end local v0    # "paddingBottom":I
    .end local v1    # "paddingEnd":I
    .end local v3    # "paddingStart":I
    :cond_0
    move v5, v6

    .line 1782
    goto :goto_0

    .restart local v3    # "paddingStart":I
    :cond_1
    move v5, v6

    .line 1783
    goto :goto_1
.end method

.method public static forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "list"    # Landroid/widget/ListView;
    .param p3, "ignoreSidePadding"    # Z

    .prologue
    .line 1748
    const/high16 v0, 0x2000000

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 1749
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 1750
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 1751
    return-void
.end method

.method public static formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # D
    .param p3, "withSeconds"    # Z

    .prologue
    const v5, 0x15180

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2553
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 2554
    .local v4, "seconds":I
    if-nez p3, :cond_0

    .line 2556
    add-int/lit8 v4, v4, 0x1e

    .line 2559
    :cond_0
    const/4 v0, 0x0

    .local v0, "days":I
    const/4 v1, 0x0

    .local v1, "hours":I
    const/4 v2, 0x0

    .line 2560
    .local v2, "minutes":I
    if-lt v4, v5, :cond_1

    .line 2561
    div-int v0, v4, v5

    .line 2562
    mul-int/2addr v5, v0

    sub-int/2addr v4, v5

    .line 2564
    :cond_1
    const/16 v5, 0xe10

    if-lt v4, v5, :cond_2

    .line 2565
    div-int/lit16 v1, v4, 0xe10

    .line 2566
    mul-int/lit16 v5, v1, 0xe10

    sub-int/2addr v4, v5

    .line 2568
    :cond_2
    const/16 v5, 0x3c

    if-lt v4, v5, :cond_3

    .line 2569
    div-int/lit8 v2, v4, 0x3c

    .line 2570
    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v4, v5

    .line 2572
    :cond_3
    if-eqz p3, :cond_7

    .line 2573
    if-lez v0, :cond_4

    .line 2574
    const v5, 0x7f0a09d6

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2595
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 2576
    :cond_4
    if-lez v1, :cond_5

    .line 2577
    const v5, 0x7f0a09d7

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2579
    :cond_5
    if-lez v2, :cond_6

    .line 2580
    const v5, 0x7f0a09d8

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2582
    :cond_6
    const v5, 0x7f0a09d9

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2585
    :cond_7
    if-lez v0, :cond_8

    .line 2586
    const v5, 0x7f0a09da

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2588
    :cond_8
    if-lez v1, :cond_9

    .line 2589
    const v5, 0x7f0a09db

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2592
    :cond_9
    const v5, 0x7f0a09dc

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private static formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 4
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v0, 0x0

    .line 1637
    if-nez p0, :cond_1

    .line 1647
    :cond_0
    return-object v0

    .line 1638
    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1640
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1642
    const-string v0, ""

    .line 1643
    .local v0, "addresses":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1645
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatPercentage(D)Ljava/lang/String;
    .locals 2
    .param p0, "percentage"    # D

    .prologue
    .line 1682
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 1683
    .local v0, "bf":Landroid/text/BidiFormatter;
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatPercentage(I)Ljava/lang/String;
    .locals 4
    .param p0, "percentage"    # I

    .prologue
    .line 1677
    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPercentage(JJ)Ljava/lang/String;
    .locals 4
    .param p0, "amount"    # J
    .param p2, "total"    # J

    .prologue
    .line 1672
    long-to-double v0, p0

    long-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppInfoByPkgName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 2615
    const/4 v0, 0x0

    .line 2616
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    invoke-static {p0, p1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2618
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2622
    :cond_0
    :goto_0
    return-object v0

    .line 2619
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getBatteryLevel(Landroid/content/Intent;)I
    .locals 4
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 1695
    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1696
    .local v0, "level":I
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1697
    .local v1, "scale":I
    mul-int/lit8 v2, v0, 0x64

    div-int/2addr v2, v1

    return v2
.end method

.method public static getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 1691
    invoke-static {p0}, Lcom/android/settings/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;
    .locals 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1711
    move-object v0, p1

    .line 1713
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "plugged"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1714
    .local v2, "plugType":I
    const-string v6, "status"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1715
    .local v4, "status":I
    const-string v6, "hv_charger"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1717
    .local v1, "isHvcharger":Z
    if-eqz v1, :cond_1

    const-string v6, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1718
    const v6, 0x7f0a010f

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1743
    .local v5, "statusString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 1719
    .end local v5    # "statusString":Ljava/lang/String;
    :cond_1
    if-ne v4, v9, :cond_4

    .line 1720
    const v6, 0x7f0a0108

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1721
    .restart local v5    # "statusString":Ljava/lang/String;
    if-lez v2, :cond_0

    .line 1723
    if-ne v2, v8, :cond_2

    .line 1724
    const v3, 0x7f0a0109

    .line 1731
    .local v3, "resId":I
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1732
    goto :goto_0

    .line 1725
    .end local v3    # "resId":I
    :cond_2
    if-ne v2, v9, :cond_3

    .line 1726
    const v3, 0x7f0a010a

    .restart local v3    # "resId":I
    goto :goto_1

    .line 1728
    .end local v3    # "resId":I
    :cond_3
    const v3, 0x7f0a010b

    .restart local v3    # "resId":I
    goto :goto_1

    .line 1733
    .end local v3    # "resId":I
    .end local v5    # "statusString":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x3

    if-ne v4, v6, :cond_5

    .line 1734
    const v6, 0x7f0a010c

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "statusString":Ljava/lang/String;
    goto :goto_0

    .line 1735
    .end local v5    # "statusString":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x4

    if-ne v4, v6, :cond_6

    .line 1736
    const v6, 0x7f0a010d

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "statusString":Ljava/lang/String;
    goto :goto_0

    .line 1737
    .end local v5    # "statusString":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x5

    if-ne v4, v6, :cond_7

    .line 1738
    const v6, 0x7f0a010e

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "statusString":Ljava/lang/String;
    goto :goto_0

    .line 1740
    .end local v5    # "statusString":Ljava/lang/String;
    :cond_7
    const v6, 0x7f0a0107

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "statusString":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getByteFromFile(Ljava/lang/String;)B
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 643
    const/4 v1, 0x0

    .line 645
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x8

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 647
    .local v4, "s":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 648
    if-eqz v4, :cond_0

    .line 649
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 651
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 652
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 657
    .local v3, "ret":B
    if-eqz v2, :cond_1

    .line 658
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v1, v2

    .line 664
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    return v3

    .line 660
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 663
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_0

    .line 653
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ret":B
    .end local v4    # "s":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 654
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v3, -0x1

    .line 657
    .restart local v3    # "ret":B
    if-eqz v1, :cond_2

    .line 658
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 660
    :catch_2
    move-exception v0

    .line 661
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 656
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ret":B
    :catchall_0
    move-exception v5

    .line 657
    :goto_2
    if-eqz v1, :cond_3

    .line 658
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 662
    :cond_3
    :goto_3
    throw v5

    .line 660
    :catch_3
    move-exception v0

    .line 661
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 656
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "s":Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 653
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static getCategoryView(Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;)Landroid/view/View;
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 3961
    const/4 v4, 0x0

    .line 3962
    .local v4, "v":Landroid/view/View;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0400b2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 3963
    const v5, 0x7f1001a7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3964
    .local v3, "title":Landroid/widget/TextView;
    const v5, 0x7f1001a8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3965
    .local v0, "expandArrow":Landroid/widget/ImageView;
    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3966
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3967
    invoke-static {p0, p1}, Lcom/android/settings/Utils;->moveToSharedPref(Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;)V

    .line 3968
    new-instance v1, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;

    invoke-direct {v1}, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;-><init>()V

    .line 3969
    .local v1, "holder":Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {p0, v6, v7}, Lcom/android/settings/Utils;->loadExpandState(Landroid/content/Context;J)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    .line 3970
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/android/settings/Utils;->getExpandableListDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v1, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    invoke-static {p0, v6}, Lcom/android/settings/Utils;->getExpandStateDesc(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3971
    iget-boolean v5, v1, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    if-eqz v5, :cond_0

    .line 3972
    const v5, 0x7f0200cb

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3976
    :goto_0
    iput-object p1, v1, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->header:Landroid/preference/PreferenceActivity$Header;

    .line 3977
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3978
    return-object v4

    .line 3974
    :cond_0
    const v5, 0x7f0200cc

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public static getColorOfCover(Landroid/content/Context;)I
    .locals 6
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 4158
    const/4 v0, 0x0

    .line 4159
    .local v0, "color":I
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 4160
    .local v1, "covermanager":Lcom/samsung/android/sdk/cover/ScoverManager;
    if-eqz v1, :cond_0

    .line 4161
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    .line 4162
    .local v2, "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v2, :cond_1

    .line 4163
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getColor()I

    move-result v0

    .line 4167
    .end local v2    # "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_0
    :goto_0
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scover getColorOfCover color : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4168
    return v0

    .line 4165
    .restart local v2    # "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_1
    const-string v3, "Utils"

    const-string v4, "Scover getColorOfCover ScoverState is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDefaultIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;
    .locals 2
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 1632
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 1633
    .local v0, "prop":Landroid/net/LinkProperties;
    invoke-static {v0}, Lcom/android/settings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5300
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5301
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5302
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 5304
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5305
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 5306
    const/4 v0, 0x1

    .line 5312
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5315
    :goto_0
    return v0

    .line 5308
    :cond_0
    const/4 v0, 0x0

    .line 5312
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 5310
    :catch_0
    move-exception v0

    .line 5312
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5315
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 5312
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5319
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5320
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5321
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 5323
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5324
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 5325
    const/4 v0, 0x1

    .line 5331
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5334
    :goto_0
    return v0

    .line 5327
    :cond_0
    const/4 v0, 0x0

    .line 5331
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 5329
    :catch_0
    move-exception v0

    .line 5331
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5334
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 5331
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5338
    const/4 v7, 0x0

    .line 5339
    .local v7, "result":I
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5340
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5341
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 5343
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5344
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 5347
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5350
    :cond_0
    :goto_0
    return v7

    .line 5345
    :catch_0
    move-exception v0

    .line 5347
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getExpandStateDesc(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "isExpanded"    # Z

    .prologue
    .line 4004
    if-eqz p1, :cond_0

    .line 4005
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4007
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExpandableListDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 4000
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFavoriteCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 3393
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3394
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 3395
    .local v7, "cnt":I
    if-eqz v6, :cond_0

    .line 3396
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 3397
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3399
    :cond_0
    return v7
.end method

.method public static getFestivalType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4546
    const-string v1, "1"

    .line 4547
    .local v1, "mFeatureVersion":Ljava/lang/String;
    const-string v0, "1"

    .line 4548
    .local v0, "mEffectType":Ljava/lang/String;
    new-instance v2, Lcom/samsung/android/theme/SThemeManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    .line 4549
    .local v2, "mThemeMgr":Lcom/samsung/android/theme/SThemeManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/theme/SThemeManager;->getVersionFromFeature(I)Ljava/lang/String;

    move-result-object v1

    .line 4550
    const-string v3, "2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4551
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4552
    const-string v0, "1.5"

    .line 4559
    :goto_0
    return-object v0

    .line 4554
    :cond_0
    const-string v0, "2"

    goto :goto_0

    .line 4557
    :cond_1
    const-string v0, "1"

    goto :goto_0
.end method

.method private static getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 2528
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 2529
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2531
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getGridListView(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/List;I)Lcom/android/settings/grid/GridListContainer;
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p3, "groupIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)",
            "Lcom/android/settings/grid/GridListContainer;"
        }
    .end annotation

    .prologue
    .line 3993
    .local p1, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400bb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3994
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f1001d1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/grid/GridListContainer;

    .line 3995
    .local v0, "row":Lcom/android/settings/grid/GridListContainer;
    new-instance v2, Lcom/android/settings/grid/GridListViewAdapter;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/settings/grid/GridListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)V

    invoke-virtual {v0, v2}, Lcom/android/settings/grid/GridListContainer;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3996
    return-object v0
.end method

.method public static getGridView(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/List;ILcom/android/settings/grid/GridViewAdapter$OnGridItemListener;)Lcom/android/settings/grid/GridContainer;
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p3, "mode"    # I
    .param p4, "listner"    # Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I",
            "Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;",
            ")",
            "Lcom/android/settings/grid/GridContainer;"
        }
    .end annotation

    .prologue
    .line 3984
    .local p1, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400bd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 3985
    .local v7, "v":Landroid/view/View;
    const v0, 0x7f1001d2

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/settings/grid/GridContainer;

    .line 3986
    .local v6, "row":Lcom/android/settings/grid/GridContainer;
    const/high16 v0, 0x40000

    invoke-virtual {v6, v0}, Lcom/android/settings/grid/GridContainer;->setDescendantFocusability(I)V

    .line 3987
    new-instance v0, Lcom/android/settings/grid/GridViewAdapter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/grid/GridViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ILcom/android/settings/grid/GridViewAdapter$OnGridItemListener;)V

    invoke-virtual {v6, v0}, Lcom/android/settings/grid/GridContainer;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3988
    return-object v6
.end method

.method public static getInitialOSversion()D
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 4325
    sget-wide v2, Lcom/android/settings/Utils;->mInitialOSVersion:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 4326
    const-string v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4327
    .local v0, "scafe":Ljava/lang/String;
    const-string v1, "capuccino"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "latte"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSetupProject_KK_OS()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4328
    :cond_0
    const-wide v2, 0x401199999999999aL    # 4.4

    sput-wide v2, Lcom/android/settings/Utils;->mInitialOSVersion:D

    .line 4335
    :cond_1
    :goto_0
    sget-wide v2, Lcom/android/settings/Utils;->mInitialOSVersion:D

    return-wide v2

    .line 4329
    :cond_2
    const-string v1, "americano"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4330
    const-wide v2, 0x4011333333333333L    # 4.3

    sput-wide v2, Lcom/android/settings/Utils;->mInitialOSVersion:D

    goto :goto_0

    .line 4332
    :cond_3
    sput-wide v4, Lcom/android/settings/Utils;->mInitialOSVersion:D

    goto :goto_0
.end method

.method private static getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 1855
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1859
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "account_type IS NULL AND account_name IS NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1865
    .local v6, "localRawProfile":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 1895
    :cond_0
    :goto_0
    return-object v4

    .line 1868
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 1873
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1871
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 1873
    .local v8, "localRowProfileId":J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1877
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data2"

    aput-object v3, v2, v11

    const-string v3, "data3"

    aput-object v3, v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1883
    .local v10, "structuredName":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 1886
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_3

    .line 1895
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1873
    .end local v8    # "localRowProfileId":J
    .end local v10    # "structuredName":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1889
    .restart local v8    # "localRowProfileId":J
    .restart local v10    # "structuredName":Landroid/database/Cursor;
    :cond_3
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1890
    .local v7, "partialName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1891
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v7

    .line 1895
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v4, v7

    goto :goto_0

    .end local v7    # "partialName":Ljava/lang/String;
    :catchall_1
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;
    .locals 7
    .param p0, "userManager"    # Landroid/os/UserManager;

    .prologue
    .line 2061
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    .line 2062
    .local v4, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 2063
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2064
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 2065
    .local v2, "profile":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 2063
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2068
    :cond_1
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 2069
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2073
    .end local v2    # "profile":Landroid/os/UserHandle;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getMaxFavoriteItemNumber()I
    .locals 1

    .prologue
    .line 4861
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4862
    const/16 v0, 0x9

    .line 4864
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc

    goto :goto_0
.end method

.method public static getMeProfileName(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "full"    # Z

    .prologue
    .line 1842
    if-eqz p1, :cond_0

    .line 1843
    invoke-static {p0}, Lcom/android/settings/Utils;->getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1845
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getShorterNameIfPossible(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getModelOfCover(Landroid/content/Context;)I
    .locals 5
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 4108
    const/4 v1, 0x0

    .line 4119
    .local v1, "model":I
    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4120
    .local v0, "mProductName":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4121
    const-string v2, "SC-01G"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SCL24"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4122
    :cond_0
    const-string v0, "tblte"

    .line 4125
    :cond_1
    const-string v2, "tblte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "tbhplte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "tbelte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4127
    :cond_2
    const/4 v1, 0x3

    .line 4128
    :cond_3
    const-string v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scover getModelOfCover model : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4129
    return v1
.end method

.method public static getPreferenceToSpecificActivityTitleInfo(Landroid/content/Context;Landroid/content/Intent;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 296
    const-string v5, ""

    .line 298
    .local v5, "titleString":Ljava/lang/CharSequence;
    if-eqz p1, :cond_2

    .line 300
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 301
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 302
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 303
    .local v2, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 304
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 305
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 308
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_0

    .line 310
    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 312
    :cond_0
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 317
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "listSize":I
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_1
    return-object v6

    .line 303
    .restart local v0    # "i":I
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2    # "listSize":I
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "listSize":I
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private static final getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1900
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1901
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1903
    .local v6, "profile":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1911
    :goto_0
    return-object v3

    .line 1906
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 1911
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1909
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1911
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ResourceName"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 3282
    const/4 v2, 0x0

    .line 3283
    .local v2, "mResources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3285
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 3286
    :try_start_0
    invoke-virtual {v3, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3295
    :goto_0
    if-eqz v2, :cond_2

    .line 3296
    invoke-virtual {v2, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3297
    .local v1, "id":I
    if-eqz v1, :cond_1

    .line 3306
    .end local v1    # "id":I
    :goto_1
    return v1

    :cond_0
    move v1, v4

    .line 3289
    goto :goto_1

    .line 3291
    :catch_0
    move-exception v0

    .line 3293
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "id":I
    :cond_1
    move v1, v4

    .line 3302
    goto :goto_1

    .end local v1    # "id":I
    :cond_2
    move v1, v4

    .line 3306
    goto :goto_1
.end method

.method public static getSViewWallpaperDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 4172
    invoke-static {p0}, Lcom/android/settings/Utils;->saveSViewWallpaperDrawable(Landroid/content/Context;)V

    .line 4173
    sget-object v0, Lcom/android/settings/Utils;->mSViewWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 10
    .param p0, "activityToken"    # Landroid/os/IBinder;
    .param p1, "um"    # Landroid/os/UserManager;
    .param p2, "arguments"    # Landroid/os/Bundle;
    .param p3, "intentExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 2345
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-direct {v2, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 2346
    .local v2, "currentUser":Landroid/os/UserHandle;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2348
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    .line 2349
    .local v5, "launchedFromPackage":Ljava/lang/String;
    const-string v8, "com.android.settings"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2351
    .local v6, "launchedFromSettingsApp":Z
    new-instance v7, Landroid/os/UserHandle;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 2353
    .local v7, "launchedFromUser":Landroid/os/UserHandle;
    if-eqz v7, :cond_0

    invoke-virtual {v7, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2355
    invoke-static {p1, v7}, Lcom/android/settings/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2379
    .end local v5    # "launchedFromPackage":Ljava/lang/String;
    .end local v6    # "launchedFromSettingsApp":Z
    .end local v7    # "launchedFromUser":Landroid/os/UserHandle;
    :goto_0
    return-object v7

    .line 2359
    .restart local v5    # "launchedFromPackage":Ljava/lang/String;
    .restart local v6    # "launchedFromSettingsApp":Z
    .restart local v7    # "launchedFromUser":Landroid/os/UserHandle;
    :cond_0
    if-eqz p3, :cond_1

    const-string v8, "android.intent.extra.USER"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    move-object v4, v8

    .line 2361
    .local v4, "extrasUser":Landroid/os/UserHandle;
    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2363
    if-eqz v6, :cond_2

    invoke-static {p1, v4}, Lcom/android/settings/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v7, v4

    .line 2364
    goto :goto_0

    .end local v4    # "extrasUser":Landroid/os/UserHandle;
    :cond_1
    move-object v4, v1

    .line 2359
    goto :goto_1

    .line 2367
    .restart local v4    # "extrasUser":Landroid/os/UserHandle;
    :cond_2
    if-eqz p2, :cond_3

    const-string v8, "android.intent.extra.USER"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    move-object v1, v8

    .line 2369
    .local v1, "argumentsUser":Landroid/os/UserHandle;
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2371
    if-eqz v6, :cond_4

    invoke-static {p1, v1}, Lcom/android/settings/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_4

    move-object v7, v1

    .line 2372
    goto :goto_0

    .line 2375
    .end local v1    # "argumentsUser":Landroid/os/UserHandle;
    .end local v4    # "extrasUser":Landroid/os/UserHandle;
    .end local v5    # "launchedFromPackage":Ljava/lang/String;
    .end local v6    # "launchedFromSettingsApp":Z
    .end local v7    # "launchedFromUser":Landroid/os/UserHandle;
    :catch_0
    move-exception v3

    .line 2377
    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "Settings_Utils"

    const-string v9, "Could not talk to activity manager."

    invoke-static {v8, v9, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_4
    move-object v7, v2

    .line 2379
    goto :goto_0
.end method

.method private static getShorterNameIfPossible(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1850
    invoke-static {p0}, Lcom/android/settings/Utils;->getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1851
    .local v0, "given":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "given":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "given":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSviewCoverAppLevel(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3157
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3158
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x2

    .line 3159
    .local v1, "sViewCoverAppLevel":I
    if-eqz v0, :cond_0

    .line 3160
    const-string v2, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    .line 3161
    :cond_0
    const-string v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SView Cover App Level :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    return v1
.end method

.method private static getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;
    .locals 3
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 2536
    :try_start_0
    const-string v1, "android"

    const/16 v2, 0x40

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2537
    .local v0, "sys":Landroid/content/pm/PackageInfo;
    invoke-static {v0}, Lcom/android/settings/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2540
    .end local v0    # "sys":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 2538
    :catch_0
    move-exception v1

    .line 2540
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getTetheringLabel(Landroid/net/ConnectivityManager;)I
    .locals 10
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    const v8, 0x7f0a080a

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1795
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 1796
    .local v3, "usbRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 1797
    .local v5, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 1799
    .local v1, "bluetoothRegexs":[Ljava/lang/String;
    array-length v9, v3

    if-eqz v9, :cond_0

    move v2, v6

    .line 1800
    .local v2, "usbAvailable":Z
    :goto_0
    array-length v9, v5

    if-eqz v9, :cond_1

    move v4, v6

    .line 1801
    .local v4, "wifiAvailable":Z
    :goto_1
    array-length v9, v1

    if-eqz v9, :cond_2

    move v0, v6

    .line 1803
    .local v0, "bluetoothAvailable":Z
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    move v6, v8

    .line 1816
    :goto_3
    return v6

    .end local v0    # "bluetoothAvailable":Z
    .end local v2    # "usbAvailable":Z
    .end local v4    # "wifiAvailable":Z
    :cond_0
    move v2, v7

    .line 1799
    goto :goto_0

    .restart local v2    # "usbAvailable":Z
    :cond_1
    move v4, v7

    .line 1800
    goto :goto_1

    .restart local v4    # "wifiAvailable":Z
    :cond_2
    move v0, v7

    .line 1801
    goto :goto_2

    .line 1805
    .restart local v0    # "bluetoothAvailable":Z
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    move v6, v8

    .line 1806
    goto :goto_3

    .line 1807
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    move v6, v8

    .line 1808
    goto :goto_3

    .line 1809
    :cond_5
    if-eqz v4, :cond_6

    .line 1810
    const v6, 0x7f0a0807

    goto :goto_3

    .line 1811
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 1812
    const v6, 0x7f0a0809

    goto :goto_3

    .line 1813
    :cond_7
    if-eqz v2, :cond_8

    .line 1814
    const v6, 0x7f0a0806

    goto :goto_3

    .line 1816
    :cond_8
    const v6, 0x7f0a0808

    goto :goto_3
.end method

.method public static getTetheringSummary(Landroid/net/ConnectivityManager;)I
    .locals 10
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    const v8, 0x7f0a080c

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2093
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 2094
    .local v3, "usbRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 2095
    .local v5, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 2097
    .local v1, "bluetoothRegexs":[Ljava/lang/String;
    array-length v9, v3

    if-eqz v9, :cond_2

    move v2, v6

    .line 2098
    .local v2, "usbAvailable":Z
    :goto_0
    array-length v9, v5

    if-eqz v9, :cond_3

    move v4, v6

    .line 2100
    .local v4, "wifiAvailable":Z
    :goto_1
    array-length v9, v1

    if-eqz v9, :cond_4

    move v0, v6

    .line 2101
    .local v0, "bluetoothAvailable":Z
    :goto_2
    const-string v6, "VZW"

    const-string v7, "ALL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "SPRINT"

    const-string v7, "ALL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2103
    :cond_0
    const/4 v4, 0x0

    .line 2105
    :cond_1
    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    move v6, v8

    .line 2118
    :goto_3
    return v6

    .end local v0    # "bluetoothAvailable":Z
    .end local v2    # "usbAvailable":Z
    .end local v4    # "wifiAvailable":Z
    :cond_2
    move v2, v7

    .line 2097
    goto :goto_0

    .restart local v2    # "usbAvailable":Z
    :cond_3
    move v4, v7

    .line 2098
    goto :goto_1

    .restart local v4    # "wifiAvailable":Z
    :cond_4
    move v0, v7

    .line 2100
    goto :goto_2

    .line 2107
    .restart local v0    # "bluetoothAvailable":Z
    :cond_5
    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    .line 2108
    const v6, 0x7f0a080e

    goto :goto_3

    .line 2109
    :cond_6
    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    move v6, v8

    .line 2110
    goto :goto_3

    .line 2111
    :cond_7
    if-eqz v4, :cond_8

    .line 2112
    const v6, 0x7f0a080f

    goto :goto_3

    .line 2113
    :cond_8
    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    .line 2114
    const v6, 0x7f0a080d

    goto :goto_3

    .line 2115
    :cond_9
    if-eqz v2, :cond_a

    .line 2116
    const v6, 0x7f0a0810

    goto :goto_3

    :cond_a
    move v6, v8

    .line 2118
    goto :goto_3
.end method

.method public static getTetheringTitle(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3770
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3771
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 3778
    .local v1, "titleRes":I
    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_MENU_POSITION_HOTSPOT_AND_TETHERING"

    invoke-static {v2}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3779
    const v1, 0x7f0a080b

    .line 3787
    :goto_0
    return v1

    .line 3780
    :cond_0
    const-string v2, "TMO"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3781
    const v1, 0x7f0a0811

    goto :goto_0

    .line 3782
    :cond_1
    const-string v2, "NEWCO"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3783
    const v1, 0x7f0a0812

    goto :goto_0

    .line 3785
    :cond_2
    invoke-static {v0}, Lcom/android/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v1

    goto :goto_0
.end method

.method public static getTypeOfCover(Landroid/content/Context;)I
    .locals 6
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 4064
    const/4 v2, 0x2

    .line 4065
    .local v2, "type":I
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 4066
    .local v0, "covermanager":Lcom/samsung/android/sdk/cover/ScoverManager;
    if-eqz v0, :cond_0

    .line 4067
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    .line 4068
    .local v1, "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v1, :cond_1

    .line 4069
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    .line 4073
    .end local v1    # "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_0
    :goto_0
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scover getTypeOfCover type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4074
    return v2

    .line 4071
    .restart local v1    # "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_1
    const-string v3, "Utils"

    const-string v4, "Scover getTypeOfCover ScoverState is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "um"    # Landroid/os/UserManager;
    .param p2, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 2491
    iget-object v1, p2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2492
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2493
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2494
    invoke-static {p0, v0}, Lcom/android/settings/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings/drawable/CircleFramedDrawable;

    move-result-object v1

    .line 2497
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    :cond_0
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static getVendorApInfo()[Lcom/android/settings/Utils$ApInfo;
    .locals 4

    .prologue
    .line 2190
    sget-boolean v0, Lcom/android/settings/Utils;->flagForDefaultAp:Z

    if-eqz v0, :cond_0

    .line 2191
    sget-object v0, Lcom/android/settings/Utils;->mApInfo:[Lcom/android/settings/Utils$ApInfo;

    .line 2200
    :goto_0
    return-object v0

    .line 2192
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/Utils;->filePath:Ljava/io/File;

    .line 2193
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/Utils;->fileDefaultPath:Ljava/io/File;

    .line 2195
    sget-object v0, Lcom/android/settings/Utils;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/Utils;->fileDefaultPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/Utils;->fileDefaultPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 2196
    :cond_1
    const-string v0, "/data/misc/wifi/default_ap.conf"

    invoke-static {v0}, Lcom/android/settings/Utils;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/settings/Utils$ApInfo;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->mApInfo:[Lcom/android/settings/Utils$ApInfo;

    .line 2200
    :goto_1
    sget-object v0, Lcom/android/settings/Utils;->mApInfo:[Lcom/android/settings/Utils$ApInfo;

    goto :goto_0

    .line 2198
    :cond_2
    const-string v0, "/system/etc/wifi/default_ap.conf"

    invoke-static {v0}, Lcom/android/settings/Utils;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/settings/Utils$ApInfo;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->mApInfo:[Lcom/android/settings/Utils$ApInfo;

    goto :goto_1
.end method

.method private static getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/settings/Utils$ApInfo;
    .locals 22
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 2205
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/settings/Utils;->flagForDefaultAp:Z

    .line 2207
    const-string v3, ""

    .line 2208
    .local v3, "buf1":Ljava/lang/String;
    const-string v4, ""

    .line 2209
    .local v4, "buf2":Ljava/lang/String;
    const-string v5, ""

    .line 2210
    .local v5, "buf3":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2212
    .local v2, "bWEPprofile":Z
    const/4 v9, 0x0

    .line 2214
    .local v9, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/FileReader;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2217
    .end local v9    # "in":Ljava/io/BufferedReader;
    .local v10, "in":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "bufLine":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 2218
    const-string v19, "ssid=\""

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 2219
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 2220
    .local v15, "ssid":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x22

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x22

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2221
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2222
    goto :goto_0

    .end local v15    # "ssid":Ljava/lang/String;
    :cond_1
    const-string v19, "key_mgmt="

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 2223
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 2224
    .local v13, "secure":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x3d

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2225
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2226
    goto/16 :goto_0

    .end local v13    # "secure":Ljava/lang/String;
    :cond_2
    const-string v19, "wep_key0="

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 2227
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 2228
    .local v17, "wepkey":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x3d

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2229
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2230
    const/4 v2, 0x1

    .line 2231
    goto/16 :goto_0

    .end local v17    # "wepkey":Ljava/lang/String;
    :cond_3
    const-string v19, "}"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    if-nez v2, :cond_4

    .line 2232
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ,"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 2233
    :cond_4
    const-string v19, "}"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v19

    if-eqz v19, :cond_0

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_0

    .line 2234
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2241
    :cond_5
    if-eqz v10, :cond_6

    .line 2243
    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2251
    :cond_6
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2252
    .local v16, "ssids":[Ljava/lang/String;
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2253
    .local v14, "secures":[Ljava/lang/String;
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 2254
    .local v18, "wepkeys":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    array-length v0, v14

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    .line 2255
    const-string v19, "AccessPoint"

    const-string v20, "Parse error default ap"

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    const/4 v12, 0x0

    move-object v9, v10

    .line 2269
    .end local v6    # "bufLine":Ljava/lang/String;
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v14    # "secures":[Ljava/lang/String;
    .end local v16    # "ssids":[Ljava/lang/String;
    .end local v18    # "wepkeys":[Ljava/lang/String;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :cond_7
    :goto_1
    return-object v12

    .line 2244
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "bufLine":Ljava/lang/String;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v7

    .line 2245
    .local v7, "e":Ljava/io/IOException;
    const-string v19, "Utils"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    const/4 v12, 0x0

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto :goto_1

    .line 2237
    .end local v6    # "bufLine":Ljava/lang/String;
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 2238
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v19, "Utils"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2239
    const/4 v12, 0x0

    .line 2241
    if-eqz v9, :cond_7

    .line 2243
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2244
    :catch_2
    move-exception v7

    .line 2245
    const-string v19, "Utils"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    const/4 v12, 0x0

    goto :goto_1

    .line 2241
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    :goto_3
    if-eqz v9, :cond_8

    .line 2243
    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2246
    :cond_8
    throw v19

    .line 2244
    :catch_3
    move-exception v7

    .line 2245
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v19, "Utils"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    const/4 v12, 0x0

    goto :goto_1

    .line 2259
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "bufLine":Ljava/lang/String;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "secures":[Ljava/lang/String;
    .restart local v16    # "ssids":[Ljava/lang/String;
    .restart local v18    # "wepkeys":[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v16

    array-length v11, v0

    .line 2260
    .local v11, "networkCount":I
    new-array v12, v11, [Lcom/android/settings/Utils$ApInfo;

    .line 2261
    .local v12, "ret":[Lcom/android/settings/Utils$ApInfo;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    if-ge v8, v11, :cond_b

    .line 2262
    aget-object v19, v14, v8

    const-string v20, "NONE"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_a

    const-string v19, ""

    aget-object v20, v18, v8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 2263
    const-string v19, "WEP"

    aput-object v19, v14, v8

    .line 2265
    :cond_a
    new-instance v19, Lcom/android/settings/Utils$ApInfo;

    aget-object v20, v16, v8

    aget-object v21, v14, v8

    invoke-direct/range {v19 .. v21}, Lcom/android/settings/Utils$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v19, v12, v8

    .line 2261
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_b
    move-object v9, v10

    .line 2269
    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto :goto_1

    .line 2241
    .end local v6    # "bufLine":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "in":Ljava/io/BufferedReader;
    .end local v11    # "networkCount":I
    .end local v12    # "ret":[Lcom/android/settings/Utils$ApInfo;
    .end local v14    # "secures":[Ljava/lang/String;
    .end local v16    # "ssids":[Ljava/lang/String;
    .end local v18    # "wepkeys":[Ljava/lang/String;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v19

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 2237
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v7

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getVersionOfContextProviders(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3698
    const/4 v2, -0x1

    .line 3700
    .local v2, "version":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.providers.context"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3702
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3706
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 3703
    :catch_0
    move-exception v0

    .line 3704
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Settings"

    const-string v4, "[SW] Could not find ContextProvider"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getWallpaperVersionCode(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4842
    const/4 v2, 0x0

    .line 4844
    .local v2, "versionCode":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.wallpaperchooser"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 4846
    .local v0, "Info":Landroid/content/pm/PackageInfo;
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4850
    .end local v0    # "Info":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 4847
    :catch_0
    move-exception v1

    .line 4848
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWifiDetailedState(Landroid/content/Context;)Landroid/net/NetworkInfo$DetailedState;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1583
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1585
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1587
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1576
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1578
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 1579
    .local v1, "prop":Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static has7StepsFontSizeFeature()Z
    .locals 1

    .prologue
    .line 3174
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_7_STEP_FONTSIZE"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3175
    const/4 v0, 0x1

    .line 3177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static has7StepsHugeFontIndex()I
    .locals 1

    .prologue
    .line 3311
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_7_STEP_FONTSIZE"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3312
    const/4 v0, 0x6

    .line 3314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static has7StepsLargeFontScale()F
    .locals 1

    .prologue
    .line 3318
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_7_STEP_FONTSIZE"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3319
    const v0, 0x3fb5c28f    # 1.42f

    .line 3321
    :goto_0
    return v0

    :cond_0
    const v0, 0x3fa66666    # 1.3f

    goto :goto_0
.end method

.method public static hasCocktailbar(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4677
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cocktailbar"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4678
    const/4 v0, 0x1

    .line 4680
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasCoverSettingOptions(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 4078
    invoke-static {p0}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4085
    :pswitch_0
    const-string v0, "Utils"

    const-string v1, "SView cover hasCoverSettingOptions false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4086
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4082
    :pswitch_1
    const-string v0, "Utils"

    const-string v1, "SView cover hasCoverSettingOptions true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4083
    const/4 v0, 0x1

    goto :goto_0

    .line 4078
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static hasCoverStyleClock(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 4091
    invoke-static {p0}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4097
    :pswitch_0
    const-string v0, "Utils"

    const-string v1, "SView cover hasCoverStyleClock false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4098
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4094
    :pswitch_1
    const-string v0, "Utils"

    const-string v1, "SView cover hasCoverStyleClock true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4095
    const/4 v0, 0x1

    goto :goto_0

    .line 4091
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static hasDAForCameraShortcut()Z
    .locals 2

    .prologue
    .line 3614
    const-string v0, "Australia"

    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasDAForLockscreenShortcut()Z
    .locals 2

    .prologue
    .line 3618
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Germany"

    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasDCMhome(Landroid/content/Context;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2123
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 2125
    .local v0, "salesCode":Ljava/lang/String;
    const-string v3, "DCM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2137
    :cond_0
    :goto_0
    return v1

    .line 2129
    :cond_1
    const-string v3, "com.nttdocomo.android.dhome"

    invoke-static {p0, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 2130
    goto :goto_0

    .line 2133
    :cond_2
    const-string v3, "com.nttdocomo.android.paletteui"

    invoke-static {p0, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 2134
    goto :goto_0
.end method

.method public static declared-synchronized hasFingerprintFeature(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2993
    const-class v1, Lcom/android/settings/Utils;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/settings/Utils;->mFeatureChecked:Z

    if-eqz v0, :cond_0

    .line 2994
    sget-boolean v0, Lcom/android/settings/Utils;->mFeatureEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3000
    :goto_0
    monitor-exit v1

    return v0

    .line 2997
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/Utils;->mFeatureEnabled:Z

    .line 2999
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/Utils;->mFeatureChecked:Z

    .line 3000
    sget-boolean v0, Lcom/android/settings/Utils;->mFeatureEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2993
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static hasKLook()Z
    .locals 1

    .prologue
    .line 4050
    const/4 v0, 0x0

    return v0
.end method

.method public static hasMultipleUsers(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1969
    if-nez p0, :cond_0

    .line 1978
    :goto_0
    return v3

    .line 1973
    :cond_0
    :try_start_0
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-le v1, v2, :cond_1

    move v1, v2

    :goto_1
    move v3, v1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    .line 1975
    :catch_0
    move-exception v0

    .line 1976
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Utils"

    const-string v2, "Cannot get Multi-user info"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hasNewVoiceControlConcept()Z
    .locals 2

    .prologue
    .line 4038
    const-string v1, "ro.build.product"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4039
    .local v0, "sales_code":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/settings/Utils;->isAfterKModel(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4040
    const/4 v1, 0x1

    .line 4042
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 2602
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2603
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 2605
    .local v1, "hasPkg":Z
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2611
    :goto_0
    return v1

    .line 2606
    :catch_0
    move-exception v0

    .line 2607
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasSViewCoverWeather2014(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3167
    const-string v0, "1"

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3168
    const-string v0, "Utils"

    const-string v1, "SView Cover Weather2014 true, Lock Screen level 1"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    const/4 v0, 0x1

    .line 3171
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 3661
    invoke-static {p0}, Lcom/android/settings/Utils;->getVersionOfContextProviders(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 3678
    :goto_0
    return-void

    .line 3664
    :cond_0
    const-string v4, "content://com.samsung.android.providers.context.log.use_app_feature_survey"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3668
    .local v3, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3669
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3670
    .local v2, "row":Landroid/content/ContentValues;
    const-string v4, "app_id"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3671
    const-string v4, "feature"

    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3672
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3673
    const-string v4, "Settings_Utils"

    const-string v5, "ContextProvider insertion operation is performed."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3674
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "row":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 3675
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "Settings"

    const-string v5, "Error while using the ContextProvider"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3676
    const-string v4, "Settings"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 3681
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3682
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3683
    const-string v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3684
    const-string v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3686
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3688
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3689
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3691
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3693
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3694
    const-string v2, "Settings_Utils"

    const-string v3, "insertLog with extra"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3695
    return-void
.end method

.method public static isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mAccessibilityService"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 935
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 936
    .local v3, "enabledServicesSetting":Ljava/lang/String;
    const/16 v0, 0x3a

    .line 937
    .local v0, "ENABLED_SERVICES_SEPARATOR":C
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x3a

    invoke-direct {v4, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 940
    .local v4, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    if-nez p0, :cond_1

    .line 971
    :cond_0
    :goto_0
    return v5

    .line 944
    :cond_1
    if-eqz p0, :cond_0

    .line 945
    if-eqz p1, :cond_0

    .line 950
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "enabled_accessibility_services"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 953
    if-nez v3, :cond_2

    .line 954
    const-string v3, ""

    .line 957
    :cond_2
    move-object v1, v4

    .line 958
    .local v1, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 960
    :cond_3
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 961
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 963
    .local v2, "componentNameString":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 964
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 965
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static isAfterKModel(Ljava/lang/String;)Z
    .locals 1
    .param p0, "salesCode"    # Ljava/lang/String;

    .prologue
    .line 4026
    if-eqz p0, :cond_1

    .line 4027
    const-string v0, "millet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "matisse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "chagall"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "klimt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "degas"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4031
    :cond_0
    const/4 v0, 0x1

    .line 4034
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAirplaneModeEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 4021
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isAllAirMotionDisabled2014(Landroid/content/Context;Z)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "include_external_motion_settings"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 779
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 781
    .local v4, "mResolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_AIR_WAKE_UP"

    invoke-static {v7}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "air_motion_wake_up"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 783
    .local v2, "airWakeUp":I
    :goto_0
    const-string v7, "air_motion_scroll"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 784
    .local v0, "airScroll":I
    const-string v7, "air_motion_turn"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 786
    .local v1, "airTurn":I
    if-eqz p1, :cond_2

    const-string v7, "air_motion_call_accept"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 789
    .local v3, "callAccept":I
    :goto_1
    or-int v7, v2, v0

    or-int/2addr v7, v1

    or-int/2addr v7, v3

    if-ge v7, v6, :cond_0

    move v5, v6

    :cond_0
    return v5

    .end local v0    # "airScroll":I
    .end local v1    # "airTurn":I
    .end local v2    # "airWakeUp":I
    .end local v3    # "callAccept":I
    :cond_1
    move v2, v5

    .line 781
    goto :goto_0

    .restart local v0    # "airScroll":I
    .restart local v1    # "airTurn":I
    .restart local v2    # "airWakeUp":I
    :cond_2
    move v3, v5

    .line 786
    goto :goto_1
.end method

.method public static isAllAirViewOptionDisabled(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3053
    invoke-static {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/AirViewSettings;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3056
    const/4 v0, 0x1

    .line 3058
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAllLockScreenCardOptionDisabled(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1123
    const-string v10, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1138
    :goto_0
    return v9

    .line 1127
    :cond_0
    const/4 v2, 0x0

    .line 1128
    .local v2, "isAllDisabled":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "category_value_weather"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1129
    .local v7, "weather":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "category_value_todayschedule"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1130
    .local v6, "todayschedule":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "category_value_todaybirthday"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1131
    .local v5, "todaybirthday":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "category_value_news"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1132
    .local v3, "news":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "category_value_social"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1133
    .local v4, "social":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "category_value_hereandnow"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1134
    .local v1, "hereandnow":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "category_value_email"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1136
    .local v0, "email":I
    or-int v10, v7, v6

    or-int/2addr v10, v5

    or-int/2addr v10, v3

    or-int/2addr v10, v4

    or-int/2addr v10, v1

    or-int v2, v10, v0

    .line 1138
    if-ge v2, v8, :cond_1

    :goto_1
    move v9, v8

    goto :goto_0

    :cond_1
    move v8, v9

    goto :goto_1
.end method

.method public static isAllMotionDisabled2014(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 797
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 798
    .local v5, "mResolver":Landroid/content/ContentResolver;
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    .line 799
    .local v3, "isTablet":Z
    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    .line 807
    .local v4, "isVoiceCapable":Z
    const-string v11, "air_motion_scroll"

    invoke-static {v5, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 808
    .local v0, "airScroll":I
    const-string v11, "air_motion_turn"

    invoke-static {v5, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 809
    .local v1, "airTurn":I
    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    invoke-static {v11}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v4, :cond_3

    const-string v11, "motion_pick_up"

    invoke-static {v5, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 811
    .local v8, "smartAlert":I
    :goto_0
    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    invoke-static {v11}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    if-nez v3, :cond_4

    const-string v11, "motion_pick_up_to_call_out"

    invoke-static {v5, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 813
    .local v2, "directCall":I
    :goto_1
    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-static {v11}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-static {v11}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_1
    const-string v11, "motion_merged_mute_pause"

    invoke-static {v5, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 816
    .local v6, "mergedMutePause":I
    :goto_2
    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_SWIPE"

    invoke-static {v11}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "surface_palm_swipe"

    invoke-static {v5, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 819
    .local v7, "palmSwipe":I
    :goto_3
    or-int v11, v0, v1

    or-int/2addr v11, v8

    or-int/2addr v11, v2

    or-int/2addr v11, v6

    or-int/2addr v11, v7

    if-ge v11, v10, :cond_2

    move v9, v10

    :cond_2
    return v9

    .end local v2    # "directCall":I
    .end local v6    # "mergedMutePause":I
    .end local v7    # "palmSwipe":I
    .end local v8    # "smartAlert":I
    :cond_3
    move v8, v9

    .line 809
    goto :goto_0

    .restart local v8    # "smartAlert":I
    :cond_4
    move v2, v9

    .line 811
    goto :goto_1

    .restart local v2    # "directCall":I
    :cond_5
    move v6, v9

    .line 813
    goto :goto_2

    .restart local v6    # "mergedMutePause":I
    :cond_6
    move v7, v9

    .line 816
    goto :goto_3
.end method

.method public static isAllNAVendor()Z
    .locals 2

    .prologue
    .line 534
    const-string v0, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MTR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LRA"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ACG"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    :cond_0
    const/4 v0, 0x1

    .line 539
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAutoAirViewSupported()Z
    .locals 1

    .prologue
    .line 3004
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3006
    const/4 v0, 0x1

    .line 3008
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAvailableBrightness()Z
    .locals 4

    .prologue
    .line 626
    const/4 v0, -0x1

    .line 627
    .local v0, "iBatteryLevel":B
    const/4 v1, -0x1

    .line 629
    .local v1, "iChargingSource":B
    const-string v3, "/sys/class/power_supply/battery/capacity"

    invoke-static {v3}, Lcom/android/settings/Utils;->getByteFromFile(Ljava/lang/String;)B

    move-result v0

    .line 630
    const-string v3, "/sys/class/power_supply/battery/batt_charging_source"

    invoke-static {v3}, Lcom/android/settings/Utils;->getByteFromFile(Ljava/lang/String;)B

    move-result v1

    .line 632
    const/4 v3, 0x5

    if-gt v0, v3, :cond_0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 633
    const/4 v2, 0x0

    .line 637
    .local v2, "ret":Z
    :goto_0
    return v2

    .line 635
    .end local v2    # "ret":Z
    :cond_0
    const/4 v2, 0x1

    .restart local v2    # "ret":Z
    goto :goto_0
.end method

.method public static isBatteryPresent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 1687
    const-string v0, "present"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCharger(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 1701
    const-string v2, "status"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1703
    .local v0, "status":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1706
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChinaCMCCModel()Z
    .locals 2

    .prologue
    .line 2755
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 2756
    .local v0, "salesCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChinaCTCModel()Z
    .locals 2

    .prologue
    .line 2763
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 2764
    .local v0, "salesCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChinaHKTWModel()Z
    .locals 2

    .prologue
    .line 2779
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 2780
    .local v0, "salesCode":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "TGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChinaModel()Z
    .locals 2

    .prologue
    .line 2735
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 2736
    .local v0, "salesCode":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChinaNAL()Z
    .locals 3

    .prologue
    .line 2801
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2802
    .local v0, "isChinaNal":Ljava/lang/String;
    const-string v1, "ChinaNalSecurity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isChinaOpen()Z
    .locals 2

    .prologue
    .line 2746
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 2747
    .local v0, "salesCode":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isConceptForSPR()Z
    .locals 2

    .prologue
    .line 543
    const-string v0, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    :cond_0
    const/4 v0, 0x1

    .line 546
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConceptForVZW()Z
    .locals 2

    .prologue
    .line 550
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    const/4 v0, 0x1

    .line 553
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCoverVerified(Landroid/content/Context;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 3925
    invoke-static {p0}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .line 3926
    .local v0, "hasCover":Z
    :goto_0
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scover isCoverVerified hasCover : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    return v0

    .line 3925
    .end local v0    # "hasCover":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isCurrentAirmotionAllItemDisabled(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3078
    invoke-static {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3079
    const/4 v0, 0x1

    .line 3081
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCurrentAirviewAllItemDisabled(Landroid/content/ContentResolver;)Z
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3062
    const-string v3, "air_view_mode"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3064
    .local v0, "airViewIndex":I
    if-nez v0, :cond_1

    .line 3065
    invoke-static {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3074
    :cond_0
    :goto_0
    return v1

    .line 3067
    :cond_1
    if-ne v0, v1, :cond_3

    .line 3068
    invoke-static {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    .line 3074
    goto :goto_0

    .line 3070
    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 3071
    invoke-static {p0}, Lcom/android/settings/Utils;->isAllAirViewOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public static isCurrentMotionAllItemDisabled(Landroid/content/ContentResolver;Landroid/content/Context;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 3085
    invoke-static {p0, p1}, Lcom/android/settings/motion2013/MotionSettings;->isAllOptionDisabled(Landroid/content/ContentResolver;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3086
    const/4 v0, 0x1

    .line 3088
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCurrentPalmMotionAllItemDisabled(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3091
    invoke-static {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3092
    const/4 v0, 0x1

    .line 3094
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDCMRequestOpsPackage(Ljava/lang/String;)Z
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2829
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    .line 2830
    .local v5, "sales_code":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2832
    .local v3, "packageList":[Ljava/lang/String;
    const-string v8, "DCM"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2872
    :cond_0
    :goto_0
    return v6

    .line 2837
    :cond_1
    const/16 v8, 0x18

    new-array v3, v8, [Ljava/lang/String;

    .end local v3    # "packageList":[Ljava/lang/String;
    const-string v8, "com.nttdocomo.android.osv"

    aput-object v8, v3, v6

    const-string v8, "com.nttdocomo.android.fota"

    aput-object v8, v3, v7

    const/4 v8, 0x2

    const-string v9, "com.nttdocomo.android.anmane"

    aput-object v9, v3, v8

    const/4 v8, 0x3

    const-string v9, "com.rsupport.rsperm.ntt"

    aput-object v9, v3, v8

    const/4 v8, 0x4

    const-string v9, "com.nttdocomo.android.remotelock"

    aput-object v9, v3, v8

    const/4 v8, 0x5

    const-string v9, "com.nttdocomo.android.wipe"

    aput-object v9, v3, v8

    const/4 v8, 0x6

    const-string v9, "com.nttdocomo.android.areamail"

    aput-object v9, v3, v8

    const/4 v8, 0x7

    const-string v9, "com.android.contacts"

    aput-object v9, v3, v8

    const/16 v8, 0x8

    const-string v9, "com.samsung.contacts"

    aput-object v9, v3, v8

    const/16 v8, 0x9

    const-string v9, "com.nttdocomo.android.socialphonebook"

    aput-object v9, v3, v8

    const/16 v8, 0xa

    const-string v9, "com.android.phone"

    aput-object v9, v3, v8

    const/16 v8, 0xb

    const-string v9, "com.android.dialer"

    aput-object v9, v3, v8

    const/16 v8, 0xc

    const-string v9, "com.nttdocomo.android.idmanager"

    aput-object v9, v3, v8

    const/16 v8, 0xd

    const-string v9, "com.nttdocomo.android.pf.dcmippushaggregator"

    aput-object v9, v3, v8

    const/16 v8, 0xe

    const-string v9, "com.nttdocomo.android.pf.dcmwappush"

    aput-object v9, v3, v8

    const/16 v8, 0xf

    const-string v9, "com.android.smspush"

    aput-object v9, v3, v8

    const/16 v8, 0x10

    const-string v9, "com.nttdocomo.android.accountauthenticator"

    aput-object v9, v3, v8

    const/16 v8, 0x11

    const-string v9, "com.nttdocomo.android.applicationmanager"

    aput-object v9, v3, v8

    const/16 v8, 0x12

    const-string v9, "jp.co.nttdocomo.lcsapp"

    aput-object v9, v3, v8

    const/16 v8, 0x13

    const-string v9, "jp.co.nttdocomo.lcsappsub"

    aput-object v9, v3, v8

    const/16 v8, 0x14

    const-string v9, "jp.co.nttdocomo.saigaiban"

    aput-object v9, v3, v8

    const/16 v8, 0x15

    const-string v9, "jp.co.nttdocomo.anshinmode"

    aput-object v9, v3, v8

    const/16 v8, 0x16

    const-string v9, "com.nttdocomo.android.store"

    aput-object v9, v3, v8

    const/16 v8, 0x17

    const-string v9, "com.nttdocomo.android.mediaplayer"

    aput-object v9, v3, v8

    .line 2864
    .restart local v3    # "packageList":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2865
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 2866
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    .line 2867
    goto/16 :goto_0

    .line 2865
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isDCMhome(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2876
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2878
    .local v0, "salesCode":Ljava/lang/String;
    const-string v3, "DCM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2890
    :cond_0
    :goto_0
    return v1

    .line 2882
    :cond_1
    const-string v3, "com.nttdocomo.android.dhome"

    invoke-static {v3, p0}, Lcom/android/settings/Utils;->isPreffered(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 2883
    goto :goto_0

    .line 2886
    :cond_2
    const-string v3, "com.nttdocomo.android.paletteui"

    invoke-static {v3, p0}, Lcom/android/settings/Utils;->isPreffered(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 2887
    goto :goto_0
.end method

.method public static isDarkTheme(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, "IS_DARK_THEME":Z
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ro.product.name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CHAGALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KLIMT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 491
    :goto_0
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IS_DARK_THEME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return v0

    .line 481
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDefaultSmsAppInternal(Landroid/content/Context;)Z
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5363
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5365
    .local v0, "defaultSmsApplication":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 5366
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 5367
    const-string v2, "Settings_Utils"

    const-string v3, "SDK ver. >= KITKAT. defaultSmsApplication is null return false"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5380
    :goto_0
    return v1

    .line 5370
    :cond_0
    const-string v1, "Settings_Utils"

    const-string v3, "SDK ver. < KITKAT. defaultSmsApplication is null return true"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 5371
    goto :goto_0

    .line 5375
    :cond_1
    const-string v3, "com.android.mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5376
    const-string v1, "Settings_Utils"

    const-string v3, "DefaultSmsApp is com.android.mms"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 5377
    goto :goto_0

    .line 5379
    :cond_2
    const-string v2, "Settings_Utils"

    const-string v3, "default sms is not samsung\'s, return false"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isDomesticKTTModel()Z
    .locals 2

    .prologue
    .line 2700
    const-string v0, "KTT"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDomesticLGTModel()Z
    .locals 2

    .prologue
    .line 2704
    const-string v0, "LGT"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDomesticModel()Z
    .locals 2

    .prologue
    .line 2687
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 2688
    .local v0, "salesCode":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ANY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KOO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDomesticSKTModel()Z
    .locals 2

    .prologue
    .line 2696
    const-string v0, "SKT"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDualFolderType(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3012
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDuosModel(Ljava/lang/String;)Z
    .locals 5
    .param p0, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 594
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "salesCode":Ljava/lang/String;
    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "mProductName":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 597
    const-string v3, "CTC"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 598
    const-string v3, "GSM"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 608
    :cond_0
    :goto_0
    return v2

    .line 600
    :cond_1
    const-string v3, "GG"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "DGG"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "DTC"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "DTCS"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 604
    :cond_2
    const-string v3, "CDMA"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 608
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isEasyMode30Status(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, 0x1

    .line 3199
    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE_30"

    invoke-static {v2}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3200
    const-string v2, "easy_mode_switch"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3201
    .local v0, "state":I
    if-nez v0, :cond_0

    .line 3205
    .end local v0    # "state":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isEnableDockSettings(Landroid/content/Context;)Z
    .locals 26
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 3829
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v16

    .line 3830
    .local v16, "getTypeOfCover":I
    const/16 v17, 0x0

    .line 3831
    .local v17, "hasNoSViewCover":Z
    const/16 v23, 0x2

    move/from16 v0, v16

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    if-nez v16, :cond_1

    .line 3832
    :cond_0
    const/16 v17, 0x1

    .line 3833
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->needsDockSettings(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_2

    const-string v23, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static/range {v23 .. v23}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_f

    :cond_2
    const/4 v13, 0x1

    .line 3834
    .local v13, "dock_settings":Z
    :goto_0
    const-string v23, "dock_settings"

    move-object/from16 v0, v23

    invoke-static {v0, v13}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3835
    const/4 v12, 0x1

    .line 3836
    .local v12, "dock_audio":Z
    const-string v23, "dock_audio"

    move-object/from16 v0, v23

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3837
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->needsDockSettings(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_3

    const-string v23, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static/range {v23 .. v23}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_10

    :cond_3
    const/4 v14, 0x1

    .line 3838
    .local v14, "dock_sounds":Z
    :goto_1
    const-string v23, "dock_sounds"

    move-object/from16 v0, v23

    invoke-static {v0, v14}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3839
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_11

    :cond_4
    const/4 v10, 0x1

    .line 3841
    .local v10, "cradle_enable":Z
    :goto_2
    const-string v23, "cradle_enable"

    move-object/from16 v0, v23

    invoke-static {v0, v10}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3842
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1120055

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    if-nez v23, :cond_12

    :cond_5
    const/16 v19, 0x1

    .line 3845
    .local v19, "screensaver":Z
    :goto_3
    const-string v23, "screensaver"

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3846
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v23

    if-nez v23, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->needsDockSettings(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_6

    const-string v23, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static/range {v23 .. v23}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_13

    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v23

    if-nez v23, :cond_13

    const/4 v11, 0x1

    .line 3848
    .local v11, "desk_home_screen_display":Z
    :goto_4
    const-string v23, "desk_home_screen_display"

    move-object/from16 v0, v23

    invoke-static {v0, v11}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3849
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_7

    const-string v23, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_UNLOCK"

    invoke-static/range {v23 .. v23}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    const/16 v24, 0x64

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v23

    if-eqz v23, :cond_14

    if-eqz v17, :cond_14

    :cond_7
    const/4 v7, 0x1

    .line 3851
    .local v7, "cover":Z
    :goto_5
    const-string v23, "cover"

    move-object/from16 v0, v23

    invoke-static {v0, v7}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3852
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_8

    const-string v23, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_UNLOCK"

    invoke-static/range {v23 .. v23}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    const/16 v24, 0x64

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v23

    if-eqz v23, :cond_15

    if-eqz v17, :cond_15

    :cond_8
    const/4 v4, 0x1

    .line 3854
    .local v4, "automatic_unlock":Z
    :goto_6
    const-string v23, "automatic_unlock"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3855
    invoke-static {}, Lcom/android/settings/Utils;->isJ_Device()Z

    move-result v23

    if-eqz v23, :cond_9

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_9

    const-string v23, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_UNLOCK"

    invoke-static/range {v23 .. v23}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    const/16 v24, 0x64

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v23

    if-eqz v23, :cond_16

    if-eqz v17, :cond_16

    :cond_9
    const/16 v21, 0x1

    .line 3858
    .local v21, "show_in_call_screen":Z
    :goto_7
    const-string v23, "show_in_call_screen"

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3859
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v23

    if-eqz v23, :cond_a

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    const/16 v24, 0x64

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v23

    if-eqz v23, :cond_17

    if-eqz v17, :cond_17

    :cond_a
    const/16 v22, 0x1

    .line 3861
    .local v22, "sview_color":Z
    :goto_8
    const-string v23, "sview_color"

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3862
    const/16 v18, 0x0

    .line 3864
    .local v18, "hdmi":Z
    const-string v23, "hdmi"

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3865
    move/from16 v3, v18

    .line 3866
    .local v3, "audio_output":I
    const-string v23, "audio_output"

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3867
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_18

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_b

    const-string v23, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_UNLOCK"

    invoke-static/range {v23 .. v23}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_18

    :cond_b
    const/4 v5, 0x1

    .line 3869
    .local v5, "book_cover":Z
    :goto_9
    const-string v23, "book_cover"

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3870
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_19

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_c

    const-string v23, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_UNLOCK"

    invoke-static/range {v23 .. v23}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_19

    :cond_c
    const/4 v6, 0x1

    .line 3872
    .local v6, "book_cover_automatic_unlock":Z
    :goto_a
    const-string v23, "book_cover_automatic_unlock"

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3873
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_1a

    const/4 v8, 0x1

    .line 3874
    .local v8, "cover_note":Z
    :goto_b
    const-string v23, "cover_note"

    move-object/from16 v0, v23

    invoke-static {v0, v8}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3875
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_1b

    const/4 v9, 0x1

    .line 3876
    .local v9, "cover_note_weather_unit":Z
    :goto_c
    const-string v23, "cover_note_weather_unit"

    move-object/from16 v0, v23

    invoke-static {v0, v9}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3877
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v23, v0

    const/16 v24, 0xa0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_d

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_d

    :cond_d
    const/4 v15, 0x1

    .line 3881
    .local v15, "earset":Z
    const-string v23, "earset"

    move-object/from16 v0, v23

    invoke-static {v0, v15}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3882
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v23, v0

    const/16 v24, 0xa0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_e

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_e

    :cond_e
    const/4 v2, 0x1

    .line 3886
    .local v2, "audio_applications":Z
    const-string v23, "audio_applications"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3888
    const-string v23, "Utils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Scover hasNoSViewCover : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    if-eqz v13, :cond_1c

    if-eqz v12, :cond_1c

    if-eqz v14, :cond_1c

    if-eqz v10, :cond_1c

    if-eqz v19, :cond_1c

    if-eqz v11, :cond_1c

    if-eqz v7, :cond_1c

    if-eqz v4, :cond_1c

    if-eqz v21, :cond_1c

    if-eqz v22, :cond_1c

    if-eqz v18, :cond_1c

    if-eqz v3, :cond_1c

    if-eqz v5, :cond_1c

    if-eqz v6, :cond_1c

    if-eqz v8, :cond_1c

    if-eqz v9, :cond_1c

    if-eqz v15, :cond_1c

    if-eqz v2, :cond_1c

    const/16 v20, 0x1

    .line 3897
    .local v20, "shouldBeRemoved":Z
    :goto_d
    if-nez v20, :cond_1d

    const/16 v23, 0x1

    :goto_e
    return v23

    .line 3833
    .end local v2    # "audio_applications":Z
    .end local v3    # "audio_output":I
    .end local v4    # "automatic_unlock":Z
    .end local v5    # "book_cover":Z
    .end local v6    # "book_cover_automatic_unlock":Z
    .end local v7    # "cover":Z
    .end local v8    # "cover_note":Z
    .end local v9    # "cover_note_weather_unit":Z
    .end local v10    # "cradle_enable":Z
    .end local v11    # "desk_home_screen_display":Z
    .end local v12    # "dock_audio":Z
    .end local v13    # "dock_settings":Z
    .end local v14    # "dock_sounds":Z
    .end local v15    # "earset":Z
    .end local v18    # "hdmi":Z
    .end local v19    # "screensaver":Z
    .end local v20    # "shouldBeRemoved":Z
    .end local v21    # "show_in_call_screen":Z
    .end local v22    # "sview_color":Z
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3837
    .restart local v12    # "dock_audio":Z
    .restart local v13    # "dock_settings":Z
    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 3839
    .restart local v14    # "dock_sounds":Z
    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->isRemoveCradelOnly()Z

    move-result v23

    if-nez v23, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->needsDockSettings(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_4

    const-string v23, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static/range {v23 .. v23}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    const/4 v10, 0x0

    goto/16 :goto_2

    .line 3842
    .restart local v10    # "cradle_enable":Z
    :cond_12
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 3846
    .restart local v19    # "screensaver":Z
    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 3849
    .restart local v11    # "desk_home_screen_display":Z
    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 3852
    .restart local v7    # "cover":Z
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 3855
    .restart local v4    # "automatic_unlock":Z
    :cond_16
    const/16 v21, 0x0

    goto/16 :goto_7

    .line 3859
    .restart local v21    # "show_in_call_screen":Z
    :cond_17
    const/16 v22, 0x0

    goto/16 :goto_8

    .line 3867
    .restart local v3    # "audio_output":I
    .restart local v18    # "hdmi":Z
    .restart local v22    # "sview_color":Z
    :cond_18
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 3870
    .restart local v5    # "book_cover":Z
    :cond_19
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 3873
    .restart local v6    # "book_cover_automatic_unlock":Z
    :cond_1a
    const/4 v8, 0x0

    goto/16 :goto_b

    .line 3875
    .restart local v8    # "cover_note":Z
    :cond_1b
    const/4 v9, 0x0

    goto/16 :goto_c

    .line 3890
    .restart local v2    # "audio_applications":Z
    .restart local v9    # "cover_note_weather_unit":Z
    .restart local v15    # "earset":Z
    :cond_1c
    const/16 v20, 0x0

    goto :goto_d

    .line 3897
    .restart local v20    # "shouldBeRemoved":Z
    :cond_1d
    const/16 v23, 0x0

    goto :goto_e
.end method

.method public static isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3233
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3235
    .local v0, "enable":I
    const/4 v3, 0x2

    if-eq v3, v0, :cond_0

    const/4 v3, 0x3

    if-ne v3, v0, :cond_1

    .line 3244
    .end local v0    # "enable":I
    :cond_0
    :goto_0
    return v2

    .line 3240
    .restart local v0    # "enable":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 3242
    .end local v0    # "enable":I
    :catch_0
    move-exception v1

    .line 3244
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static isExistCoverNotePackage(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3220
    sget-object v1, Lcom/android/settings/Utils;->mExistCoverNotePackage:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 3222
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.daynote"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 3224
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/settings/Utils;->mExistCoverNotePackage:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3229
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/settings/Utils;->mExistCoverNotePackage:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 3225
    :catch_0
    move-exception v0

    .line 3226
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/settings/Utils;->mExistCoverNotePackage:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isFavorite(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3577
    const/4 v7, 0x0

    .line 3578
    .local v7, "ret":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "key"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3579
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v8, v7

    .line 3584
    .end local v7    # "ret":Z
    .local v8, "ret":I
    :goto_0
    return v8

    .line 3580
    .end local v8    # "ret":I
    .restart local v7    # "ret":Z
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3581
    const/4 v7, 0x1

    .line 3583
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v7

    .line 3584
    .restart local v8    # "ret":I
    goto :goto_0
.end method

.method public static isFolderModel(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2905
    const/4 v0, 0x0

    return v0
.end method

.method public static isFontsizeForT()Z
    .locals 2

    .prologue
    .line 4437
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4438
    .local v0, "mProductName":Ljava/lang/String;
    const-string v1, "tblte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tr3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trhlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trhplte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tbhplte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tr3calte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4440
    :cond_0
    const/4 v1, 0x1

    .line 4443
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFullScreenSupported()Z
    .locals 1

    .prologue
    .line 3651
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FULL_SCREEN"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3652
    const/4 v0, 0x1

    .line 3654
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGeoNewsUnsupportedModel()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4980
    invoke-static {}, Lcom/android/settings/Utils;->readCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    .line 4981
    .local v0, "countryIsoCode":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    .line 4983
    .local v3, "salesCode":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_SAFETYASSISTANCE_SUPPORT_GEONEWS"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4985
    const-string v5, "Utils"

    const-string v6, "SEC_FLOATING_FEATURE_SAFETYASSISTANCE_SUPPORT_GEONEWS is FALSE"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5005
    :goto_0
    return v4

    .line 4989
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v6, Lcom/android/settings/Utils;->mRemoveApkCountryCodes:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_4

    .line 4990
    sget-object v6, Lcom/android/settings/Utils;->mRemoveApkCountryCodes:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4991
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    sget-object v6, Lcom/android/settings/Utils;->mExclusionSalesCodes:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 4992
    sget-object v6, Lcom/android/settings/Utils;->mExclusionSalesCodes:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4993
    const-string v4, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isoCode ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] / salesCode ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]  support GeoNews."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 4995
    goto :goto_0

    .line 4991
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4998
    :cond_2
    const-string v5, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isoCode ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] / salesCode ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]  don\'t support GeoNews."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4989
    .end local v2    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5003
    :cond_4
    const-string v4, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isoCode ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] / salesCode ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]  support GeoNews."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 5005
    goto/16 :goto_0
.end method

.method public static isGridListUIEnabeld()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4699
    sget-boolean v0, Lcom/android/settings/Utils;->mGridListUIFeatureChecked:Z

    if-eqz v0, :cond_0

    .line 4700
    sget-boolean v0, Lcom/android/settings/Utils;->mGridListUIFeatureEnabled:Z

    .line 4710
    :goto_0
    return v0

    .line 4703
    :cond_0
    const-string v0, "GRIDLIST"

    const-string v1, "DEFAULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4704
    sput-boolean v2, Lcom/android/settings/Utils;->mGridListUIFeatureEnabled:Z

    .line 4708
    :goto_1
    sput-boolean v2, Lcom/android/settings/Utils;->mGridListUIFeatureChecked:Z

    .line 4710
    sget-boolean v0, Lcom/android/settings/Utils;->mGridListUIFeatureEnabled:Z

    goto :goto_0

    .line 4706
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/Utils;->mGridListUIFeatureEnabled:Z

    goto :goto_1
.end method

.method public static isGridSettingEnabed()Z
    .locals 2

    .prologue
    .line 2167
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2168
    const/4 v0, 0x1

    .line 2170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGridSettings()Z
    .locals 2

    .prologue
    .line 2175
    const-string v0, "Settings_Utils"

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "americano"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2178
    :cond_0
    const/4 v0, 0x0

    .line 2180
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isGridSimple()Z
    .locals 2

    .prologue
    .line 4727
    const-string v0, "DEFAULT"

    .line 4729
    .local v0, "type":Ljava/lang/String;
    const-string v1, "GRIDLIST_SIMPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4730
    const/4 v1, 0x1

    .line 4733
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isGridSimpleMenuEnabled()Z
    .locals 2

    .prologue
    .line 4715
    const-string v0, "DEFAULT"

    .line 4717
    .local v0, "type":Ljava/lang/String;
    const-string v1, "GRIDLIST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GRIDLIST_SIMPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4719
    :cond_0
    const/4 v1, 0x1

    .line 4722
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isGuestMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3727
    const-string v2, "user"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 3728
    .local v1, "mUm":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3730
    .local v0, "info":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGuestMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isH_Device()Z
    .locals 2

    .prologue
    .line 4876
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 4877
    .local v0, "build_model":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "SM-N900"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ASH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Madrid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "JS01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SC-01F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SCL22"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SC-02F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SM-G910"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SM-N750"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4881
    :cond_0
    const/4 v1, 0x1

    .line 4883
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHelpHubDownloadableSupported()Z
    .locals 2

    .prologue
    .line 3327
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_HELP_HUB_APK_TYPE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3328
    const/4 v0, 0x1

    .line 3330
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1149
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1150
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1151
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1142
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1143
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1144
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1145
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isJ_Device()Z
    .locals 3

    .prologue
    .line 3624
    const-string v1, "ro.product.name"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3625
    .local v0, "modelName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3626
    const-string v1, "jflte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "jalte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ja3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "jactive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ks01lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3629
    :cond_0
    const/4 v1, 0x1

    .line 3632
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isJapanDCMModel()Z
    .locals 2

    .prologue
    .line 2819
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2820
    .local v0, "salesCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isJapanModel()Z
    .locals 2

    .prologue
    .line 2813
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2814
    .local v0, "salesCode":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XJP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SBM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isJpnFestivalToday(Landroid/content/Context;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 4600
    const/4 v6, 0x0

    .line 4601
    .local v6, "NEW_YEAR_DAY_FESTIVAL":I
    const/4 v4, 0x2

    .line 4602
    .local v4, "GIRLS_FESTIVAL":I
    const/4 v0, 0x5

    .line 4603
    .local v0, "BOYS_FESTIVAL":I
    const/16 v7, 0x8

    .line 4604
    .local v7, "TANABATA_FESTIVAL":I
    const/16 v5, 0xa

    .line 4605
    .local v5, "HALLOWEEN_FESTIVAL":I
    const/16 v1, 0xb

    .line 4606
    .local v1, "CHRISTMASEVE_FESTIVAL":I
    const/16 v2, 0xc

    .line 4608
    .local v2, "CHRISTMAS_FESTIVAL":I
    const/4 v8, -0x1

    .line 4610
    .local v8, "eventId":I
    const/4 v11, 0x7

    new-array v3, v11, [I

    aput v6, v3, v10

    aput v4, v3, v9

    const/4 v11, 0x2

    aput v0, v3, v11

    const/4 v11, 0x3

    aput v7, v3, v11

    const/4 v11, 0x4

    aput v5, v3, v11

    const/4 v11, 0x5

    aput v1, v3, v11

    const/4 v11, 0x6

    aput v2, v3, v11

    .line 4620
    .local v3, "FESTIVAL_LOCKSCREEN_EVENT_IDS":[I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v3}, Lcom/android/settings/Utils;->queryEventIdToday(Landroid/content/ContentResolver;[I)I

    move-result v8

    .line 4621
    const-string v11, "Utils_isJpnFestivalToday"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "eventId :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4622
    if-ltz v8, :cond_0

    .line 4625
    :goto_0
    return v9

    :cond_0
    move v9, v10

    goto :goto_0
.end method

.method public static isKnoxProfile(Landroid/os/UserManager;)Z
    .locals 2
    .param p0, "userManager"    # Landroid/os/UserManager;

    .prologue
    .line 2088
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2089
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v1

    return v1
.end method

.method public static isKnoxTwoEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2161
    const/4 v0, 0x0

    return v0
.end method

.method public static isLightTheme(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 463
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 464
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    const-string v1, "lightTheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v2

    .line 468
    :cond_1
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    .line 469
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    const-string v1, "lightTheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public static isListUI(Landroid/content/Context;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 362
    const/4 v0, 0x0

    .line 364
    .local v0, "ret":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_listui"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 366
    const/4 v0, 0x1

    .line 368
    :cond_0
    return v0
.end method

.method public static isLocaleRTL()Z
    .locals 1

    .prologue
    .line 501
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isLocaleRTL(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public static isLocaleRTL(Ljava/util/Locale;)Z
    .locals 9
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 512
    const-string v0, "ar"

    .line 514
    .local v0, "ISO639_ARABIC":Ljava/lang/String;
    const-string v3, "fa"

    .line 516
    .local v3, "ISO639_PERSIAN":Ljava/lang/String;
    const-string v1, "he"

    .line 519
    .local v1, "ISO639_HEBREW":Ljava/lang/String;
    const-string v2, "iw"

    .line 521
    .local v2, "ISO639_HEBREW_FORMER":Ljava/lang/String;
    const-string v6, "ji"

    .line 523
    .local v6, "ISO639_YIDDISH_FORMER":Ljava/lang/String;
    const-string v4, "ur"

    .line 525
    .local v4, "ISO639_URDU":Ljava/lang/String;
    const-string v5, "yi"

    .line 526
    .local v5, "ISO639_YIDDISH":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 527
    .local v7, "iso639":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static isLockTypeEnabled()Z
    .locals 1

    .prologue
    .line 3213
    const/4 v0, 0x1

    return v0
.end method

.method public static isManagedProfile(Landroid/os/UserManager;)Z
    .locals 2
    .param p0, "userManager"    # Landroid/os/UserManager;

    .prologue
    .line 2080
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2081
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    return v1
.end method

.method public static isMessageCapable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 444
    const-string v1, "ro.product.model"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "model":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "KC100S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KC100K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "T217T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "P607T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMetroPCS()Z
    .locals 2

    .prologue
    .line 3722
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3723
    .local v0, "product_name":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "MetroPCS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMobileNetworkEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 3757
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMonkeyRunning()Z
    .locals 1

    .prologue
    .line 432
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method public static isMouseHoveringEnabledExceptListscrolling(Landroid/content/ContentResolver;)Z
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v5, 0x0

    .line 3914
    const-string v6, "mouse_hovering_information_preview"

    invoke-static {p0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3915
    .local v2, "informationPreview":I
    const-string v6, "mouse_hovering_icon_label"

    invoke-static {p0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3917
    .local v1, "iconLabels":I
    const-string v6, "mouse_hovering_full_text"

    invoke-static {p0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3918
    .local v0, "fullText":I
    const-string v6, "mouse_hovering_progress_bar_preview"

    invoke-static {p0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 3919
    .local v4, "progressBarPreview":I
    const-string v6, "mouse_hovering_magnetic_ui"

    invoke-static {p0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3921
    .local v3, "magneticUI":I
    or-int v6, v2, v1

    or-int/2addr v6, v0

    or-int/2addr v6, v4

    or-int/2addr v6, v3

    if-lez v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    return v5
.end method

.method public static isMouseHoveringSupported()Z
    .locals 1

    .prologue
    .line 3647
    const/4 v0, 0x0

    return v0
.end method

.method public static isMultisimModel()Z
    .locals 1

    .prologue
    .line 612
    sget-boolean v0, Lcom/android/settings/Utils;->isMultiSim:Z

    return v0
.end method

.method public static isOSUpgrade()Z
    .locals 2

    .prologue
    .line 4211
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "d2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "t0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "melius"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "golden"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "serrano"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "garda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lt02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lt01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wilcox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "baffin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "p4note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mproject"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kona"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fresco"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hl3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ha3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "crater"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "santos10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jflte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ja3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jactive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jsglte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m3xx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "s3ve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ks01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "h3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4220
    :cond_0
    const/4 v0, 0x1

    .line 4222
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isOemUnlockEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2472
    const-string v1, "persistent_data_block"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 2474
    .local v0, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v1

    return v1
.end method

.method public static isP4Note_Device()Z
    .locals 3

    .prologue
    .line 3636
    const-string v1, "ro.product.name"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3637
    .local v0, "modelName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3638
    const-string v1, "p4note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3639
    const/4 v1, 0x1

    .line 3642
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3712
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3713
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 3714
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 3715
    .local v1, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3716
    const/4 v4, 0x1

    .line 3718
    .end local v1    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method public static isPedometerSupported(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 3181
    const-string v1, "com.sec.android.app.shealth"

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3182
    const-string v1, "Utils"

    const-string v2, "isPedometerSupported false : no shealth package"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    :goto_0
    return v0

    .line 3185
    :cond_0
    const-string v1, "com.sec.android.app.shealth.CHECK_INIT"

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3186
    const-string v1, "Utils"

    const-string v2, "isPedometerSupported false : shealth intent not available"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3189
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.scontext_lite"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3191
    const-string v1, "Utils"

    const-string v2, "isPedometerSupported false : sensorhub is not supported"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3194
    :cond_2
    const-string v0, "Utils"

    const-string v1, "isPedometerSupported true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isPreffered(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2895
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2896
    .local v1, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2897
    .local v0, "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2898
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v0, p0}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 2900
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z
    .locals 3
    .param p0, "um"    # Landroid/os/UserManager;
    .param p1, "otherUser"    # Landroid/os/UserHandle;

    .prologue
    const/4 v0, 0x0

    .line 2425
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2426
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isRemoveCradelOnly()Z
    .locals 3

    .prologue
    .line 4465
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4467
    .local v0, "mProductName":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4468
    const-string v1, "SC-01G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SCL24"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4469
    :cond_0
    const-string v0, "tblte"

    .line 4473
    :cond_1
    const-string v1, "tblte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tr3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trhlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tre3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trhplte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tbhplte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tbelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tr3calte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4476
    :cond_2
    const-string v1, "Utils"

    const-string v2, "isRemoveCradelOnly : true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4477
    const/4 v1, 0x1

    .line 4480
    :goto_0
    return v1

    .line 4479
    :cond_3
    const-string v1, "Utils"

    const-string v2, "isRemoveCradelOnly : false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4480
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRestrictedProfile(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3752
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 3753
    .local v0, "mUm":Landroid/os/UserManager;
    const-string v1, "no_modify_accounts"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isRoaming(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 617
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 619
    .local v0, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/Utils;->mRoamingState:Z

    .line 620
    sget-boolean v1, Lcom/android/settings/Utils;->mRoamingState:Z

    return v1
.end method

.method public static isSPen30()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4869
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "p4note"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 4870
    const/4 v0, 0x0

    .line 4872
    :cond_0
    return v0
.end method

.method public static isSPenNewLayoutFromT()Z
    .locals 4

    .prologue
    .line 4854
    invoke-static {}, Lcom/android/settings/Utils;->getInitialOSversion()D

    move-result-wide v0

    const-wide v2, 0x4011333333333333L    # 4.3

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSPen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4855
    const/4 v0, 0x1

    .line 4857
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSViewCover2014Supported(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3111
    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3112
    .local v0, "mProductName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3113
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 3115
    .local v2, "sViewCoverAppLevel":I
    if-eqz v1, :cond_0

    .line 3116
    const-string v3, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v2

    .line 3118
    :cond_0
    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const-string v3, "slte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "a5lte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "a5ulte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3120
    :cond_1
    const/4 v3, 0x1

    .line 3122
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3153
    const/4 v0, 0x1

    return v0
.end method

.method public static isSViewStyleClockEnabled(Landroid/content/Context;Landroid/content/ContentResolver;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3142
    invoke-static {p0}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v2

    .line 3143
    .local v2, "covertype":I
    const/4 v0, -0x1

    .line 3144
    .local v0, "STYLIZED_CLOCK_DISABLED":I
    const-string v1, "com.sec.android.cover.sviewcover.stylizedclock.STYLIZED_CLOCK_STYLE"

    .line 3145
    .local v1, "STYLIZED_CLOCK_STYLE_KEY":Ljava/lang/String;
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3147
    .local v3, "defaultClock":I
    if-eq v3, v0, :cond_0

    const/4 v4, 0x6

    if-ne v2, v4, :cond_1

    .line 3148
    :cond_0
    const/4 v4, 0x0

    .line 3150
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isSViewWallpaperOldSupported()Z
    .locals 2

    .prologue
    .line 3126
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3127
    .local v0, "mProductName":Ljava/lang/String;
    const-string v1, "hlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ha3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "h3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3128
    :cond_0
    const/4 v1, 0x1

    .line 3130
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSViewWeatherforT()Z
    .locals 2

    .prologue
    .line 4800
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4802
    .local v0, "mProductName":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4803
    const-string v1, "SC-01G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SCL24"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4804
    :cond_0
    const-string v0, "tblte"

    .line 4808
    :cond_1
    const-string v1, "tblte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tr3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trhlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tre3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trhplte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tbhplte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tbelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tr3calte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4811
    :cond_2
    const/4 v1, 0x1

    .line 4813
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSearchVerTwoEnable()Z
    .locals 1

    .prologue
    .line 2924
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SEARCH_VER_TWO"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2925
    const/4 v0, 0x1

    .line 2927
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSettingsUI2013Supported()Z
    .locals 1

    .prologue
    .line 3098
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_2013_SETTINGS_UI"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3099
    const/4 v0, 0x1

    .line 3101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSettingsUI2014Supported()Z
    .locals 2

    .prologue
    .line 3104
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chagall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "klimt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3106
    :cond_0
    const/4 v0, 0x1

    .line 3108
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSetupCompleted(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    .line 3209
    const-string v1, "user_setup_complete"

    const/4 v2, -0x2

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSetupProject_KK_OS()Z
    .locals 2

    .prologue
    .line 4226
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fortuna"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "levil"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "e5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "e7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vasta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "serranove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "klte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "k3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kmini"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mega2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kwifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hestia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "patek"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "slte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kvo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kmini"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "s4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gnoteds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "berluti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "afyon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tr3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trhplte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tbelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "u7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lentisvelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "slte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kcat6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kalte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m2a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tblte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kccat6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lentislte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tr3calte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4240
    :cond_0
    const/4 v0, 0x1

    .line 4242
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimMissing(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 569
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 570
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v3

    .line 571
    .local v0, "isDataOnly_Sim":Z
    :goto_0
    const/4 v1, 0x0

    .line 573
    .local v1, "isSimMissing":Z
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v4, v3, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 576
    :cond_0
    const-string v3, "Settings"

    const-string v4, "isSimMissing : true"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v1, 0x1

    .line 579
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 580
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->isNoSIM()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 581
    const-string v3, "Settings"

    const-string v4, "MultiSimManager isNoSIM"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v1, 0x1

    .line 589
    :cond_2
    :goto_1
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimMissing : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return v1

    .line 570
    .end local v0    # "isDataOnly_Sim":Z
    .end local v1    # "isSimMissing":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 584
    .restart local v0    # "isDataOnly_Sim":Z
    .restart local v1    # "isSimMissing":Z
    :cond_4
    const-string v3, "Settings"

    const-string v4, "MultiSimManager !isNoSIM"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isStyleClockSupported()Z
    .locals 2

    .prologue
    .line 3134
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3136
    .local v0, "mProductName":Ljava/lang/String;
    const-string v1, "slte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "a5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3137
    :cond_0
    const/4 v1, 0x0

    .line 3139
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSupportAddtionalFeedback()Z
    .locals 2

    .prologue
    .line 4910
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FW_SPEN_HAPTIC_SETTING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportEPDG()Z
    .locals 1

    .prologue
    .line 4502
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportFastCharging()Z
    .locals 2

    .prologue
    .line 4447
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4449
    .local v0, "mProductName":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4450
    const-string v1, "SC-01G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SCL24"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4451
    :cond_0
    const-string v0, "tblte"

    .line 4455
    :cond_1
    const-string v1, "tblte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tr3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trhlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tre3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trhplte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tbhplte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tbelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tr3calte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4458
    :cond_2
    const/4 v1, 0x1

    .line 4460
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportFestival(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 4563
    invoke-static {}, Lcom/android/settings/Utils;->isSupportVNFestival()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4571
    :cond_0
    :goto_0
    return v2

    .line 4566
    :cond_1
    new-instance v1, Lcom/samsung/android/theme/SThemeManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    .line 4567
    .local v1, "mThemeMgr":Lcom/samsung/android/theme/SThemeManager;
    invoke-virtual {v1, v2}, Lcom/samsung/android/theme/SThemeManager;->getVersionFromFeature(I)Ljava/lang/String;

    move-result-object v0

    .line 4568
    .local v0, "festivalVersion":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4569
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSupportGuestMode()Z
    .locals 1

    .prologue
    .line 4193
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportHelpMenu(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2933
    const/4 v1, 0x0

    .line 2934
    .local v1, "helpMenuCheck":Z
    const/4 v2, 0x0

    .line 2936
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v5, "com.samsung.helphub"

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 2937
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.samsung.helphub"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2943
    :goto_0
    if-ne v1, v3, :cond_0

    if-eqz v2, :cond_0

    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v5, v5, 0xa

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    :goto_1
    return v3

    .line 2939
    :catch_0
    move-exception v0

    .line 2940
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move v3, v4

    .line 2943
    goto :goto_1
.end method

.method public static isSupportKKUpgradeAirview()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4494
    const-string v1, "americano"

    const-string v2, "ro.build.scafe"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSetupProject_KK_OS()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4497
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportLMM(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4926
    const-string v2, "ro.security.reactive.active"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 4927
    const-string v1, "Utils"

    const-string v2, "isSupportLMM : TRUE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4931
    :goto_0
    return v0

    .line 4930
    :cond_0
    const-string v0, "Utils"

    const-string v2, "isSupportLMM : FALSE"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 4931
    goto :goto_0
.end method

.method public static isSupportLightSensor(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2975
    const/4 v1, 0x0

    .line 2977
    .local v1, "isSupport":Z
    const-string v5, "sensor"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    .line 2979
    .local v3, "sensorMgr":Landroid/hardware/SensorManager;
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 2980
    .local v2, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 2981
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    .line 2983
    .local v4, "sensorType":I
    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 2984
    const/4 v1, 0x1

    .line 2980
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2988
    .end local v4    # "sensorType":I
    :cond_1
    return v1
.end method

.method public static isSupportMenuTreeForK()Z
    .locals 1

    .prologue
    .line 3592
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportMyPlaceV2()Z
    .locals 2

    .prologue
    .line 4409
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4411
    .local v0, "mProductName":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4412
    const-string v1, "SC-01G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SCL24"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4413
    :cond_0
    const-string v0, "tblte"

    .line 4417
    :cond_1
    const-string v1, "tblte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tr3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trhlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tre3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trhplte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tbhplte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tbelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tr3calte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "a5ltezc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "a5ltectc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4420
    :cond_2
    const/4 v1, 0x1

    .line 4422
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportNfcCardMode()Z
    .locals 2

    .prologue
    .line 3596
    const-string v0, "OFF"

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3597
    const/4 v0, 0x0

    .line 3599
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportOfflineHelpMenu(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2962
    const/4 v1, 0x0

    .line 2963
    .local v1, "helpMenuCheck":Z
    const/4 v2, 0x0

    .line 2965
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v5, "com.samsung.helphub"

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 2966
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.samsung.helphub"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2971
    :goto_0
    if-ne v1, v3, :cond_0

    if-eqz v2, :cond_0

    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v5, v5, 0xa

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    :goto_1
    return v3

    .line 2967
    :catch_0
    move-exception v0

    .line 2968
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move v3, v4

    .line 2971
    goto :goto_1
.end method

.method public static isSupportOnlineHelpMenu(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2948
    const/4 v1, 0x0

    .line 2949
    .local v1, "helpMenuCheck":Z
    const/4 v2, 0x0

    .line 2951
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v5, "com.samsung.helphub"

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 2952
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.samsung.helphub"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2957
    :goto_0
    if-ne v1, v3, :cond_0

    if-eqz v2, :cond_0

    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v5, v5, 0xa

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    :goto_1
    return v3

    .line 2953
    :catch_0
    move-exception v0

    .line 2954
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move v3, v4

    .line 2957
    goto :goto_1
.end method

.method public static isSupportSDCard()Z
    .locals 1

    .prologue
    .line 4427
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportSPen()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4255
    const-string v1, "sugar"

    const-string v2, "ro.build.scafe.syrup"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 4258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSfinder(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2917
    const-string v0, "com.samsung.android.app.galaxyfinder"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2918
    const/4 v0, 0x1

    .line 2920
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSleepingMode()Z
    .locals 1

    .prologue
    .line 4506
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportStart_J_project()Z
    .locals 2

    .prologue
    .line 4290
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ajantalte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jsglte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "baffin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chagall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "crater"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "degas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "flteskt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "frescolte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gardalte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gnoteds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "goldenlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "h3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ha3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "havelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "heat3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hl3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hllte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hvolte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ja3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jactivelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jalte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jflte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jftdd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jfve3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jfvelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jfvolte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kanas3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kaverilte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "klimt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kmini3gub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ks01lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lt01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lt02lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lt03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "matisse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "melius"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "millet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mondrian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "moutailte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mproject"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ms013g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "picasso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rubens"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "s3ve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "santos10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "serrano"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "serranovolte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tn10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tn8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "v1a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "victor3gds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "viennalte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wilcoxlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4309
    :cond_0
    const/4 v0, 0x1

    .line 4311
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportStatusRoamingMenu()Z
    .locals 1

    .prologue
    .line 3735
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportUltraPowerSavingMode()Z
    .locals 1

    .prologue
    .line 4537
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportVNFestival()Z
    .locals 3

    .prologue
    .line 4576
    const-string v0, "Settings_Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportVNFestival "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4577
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "G900H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "XXV"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4578
    const/4 v0, 0x1

    .line 4580
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportVolteSettings(Landroid/content/Context;)Z
    .locals 5
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 4281
    const/4 v0, 0x0

    .line 4282
    .local v0, "isVolteCallOnCommonIms":Z
    const-string v2, "0.0"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_IMS_FrameworkVersion"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4284
    invoke-static {v1, p0}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v0

    .line 4286
    :cond_0
    if-eqz v0, :cond_1

    const-string v2, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isSupportedEvent([II)Z
    .locals 1
    .param p0, "festivalEventIds"    # [I
    .param p1, "eventId"    # I

    .prologue
    .line 4666
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSuppportBlackGreyPowerSaving(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4398
    const/4 v0, 0x0

    .line 4401
    .local v0, "isSupport":Z
    const/4 v0, 0x1

    .line 4405
    return v0
.end method

.method public static isSwitchAccessEnabled(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 894
    const/16 v1, 0x3a

    .line 895
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .line 896
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x3a

    invoke-direct {v6, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 898
    .local v6, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    if-nez p0, :cond_1

    .line 923
    :cond_0
    :goto_0
    return v7

    .line 901
    :cond_1
    const/4 v5, 0x0

    .line 902
    .local v5, "enabledServicesSetting":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 903
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enabled_accessibility_services"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 905
    :cond_2
    if-nez v5, :cond_3

    .line 906
    const-string v5, ""

    .line 909
    :cond_3
    move-object v2, v6

    .line 911
    .local v2, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 913
    :cond_4
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 914
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 915
    .local v3, "componentNameString":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 917
    .local v4, "enabledService":Landroid/content/ComponentName;
    if-eqz v4, :cond_4

    .line 918
    const-string v8, "com.google.android.marvin.talkback"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "com.google.android.marvin.talkback/com.googlecode.eyesfree.switchcontrol.SwitchControlService"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 920
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2519
    sget-object v2, Lcom/android/settings/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    if-nez v2, :cond_0

    .line 2520
    new-array v2, v0, [Landroid/content/pm/Signature;

    invoke-static {p0}, Lcom/android/settings/Utils;->getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v3

    aput-object v3, v2, v1

    sput-object v2, Lcom/android/settings/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    .line 2522
    :cond_0
    sget-object v2, Lcom/android/settings/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v2, v2, v1

    invoke-static {p1}, Lcom/android/settings/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 455
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 456
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 459
    :goto_0
    return v0

    .line 458
    :cond_0
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    .line 459
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 857
    const/16 v1, 0x3a

    .line 858
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .line 859
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x3a

    invoke-direct {v6, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 861
    .local v6, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    if-nez p0, :cond_1

    .line 886
    :cond_0
    :goto_0
    return v7

    .line 864
    :cond_1
    const/4 v5, 0x0

    .line 865
    .local v5, "enabledServicesSetting":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 866
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enabled_accessibility_services"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 868
    :cond_2
    if-nez v5, :cond_3

    .line 869
    const-string v5, ""

    .line 872
    :cond_3
    move-object v2, v6

    .line 874
    .local v2, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 876
    :cond_4
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 877
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 878
    .local v3, "componentNameString":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 880
    .local v4, "enabledService":Landroid/content/ComponentName;
    if-eqz v4, :cond_4

    .line 881
    const-string v8, "com.google.android.marvin.talkback"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 883
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 38
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1163
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 1164
    .local v25, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    .line 1165
    .local v26, "resolver":Landroid/content/ContentResolver;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1166
    .local v8, "data":Landroid/os/Bundle;
    const/4 v13, 0x1

    .line 1167
    .local v13, "is_enabled":Z
    const/16 v20, 0x0

    .line 1168
    .local v20, "option_flag":I
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const v37, 0x7f0a0a99

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1173
    .local v9, "dialog_content":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1174
    .local v7, "assistantmenu":I
    const/4 v12, 0x0

    .line 1175
    .local v12, "interactioncontrol":I
    const/4 v5, 0x0

    .line 1176
    .local v5, "airgesture":I
    const/4 v10, 0x0

    .line 1177
    .local v10, "fingerairview":I
    const/16 v24, 0x0

    .line 1178
    .local v24, "penairview":I
    const/16 v30, 0x0

    .line 1179
    .local v30, "smartscreen":I
    const/16 v17, 0x0

    .line 1180
    .local v17, "multiwindow":I
    const/4 v6, 0x0

    .line 1181
    .local v6, "allSoundOff":I
    const/16 v35, 0x0

    .line 1182
    .local v35, "writingbuddy":I
    const/16 v21, 0x0

    .line 1183
    .local v21, "palmMotion":I
    const/16 v19, 0x0

    .line 1184
    .local v19, "onehandoperation":I
    const/16 v23, 0x0

    .line 1185
    .local v23, "palmoptiontouch":I
    const/16 v22, 0x0

    .line 1186
    .local v22, "palmoptionswipe":I
    const/16 v18, 0x0

    .line 1187
    .local v18, "onehandinput":I
    const/16 v27, 0x0

    .line 1188
    .local v27, "sidesoftkey":I
    const/16 v33, 0x0

    .line 1189
    .local v33, "sounddetector":I
    const/16 v34, 0x0

    .line 1190
    .local v34, "toolbox":I
    const/4 v3, 0x0

    .line 1191
    .local v3, "airbrowser":I
    const/4 v4, 0x0

    .line 1192
    .local v4, "aircommand":I
    const/4 v11, 0x0

    .line 1194
    .local v11, "hoverZoom":I
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isGridSimpleMenuEnabled()Z

    move-result v36

    if-nez v36, :cond_0

    .line 1195
    add-int/lit8 v20, v20, 0x10

    .line 1196
    const-string v36, "air_motion_engine"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1198
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_e

    .line 1199
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a1269

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1205
    :cond_0
    :goto_0
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_1

    .line 1206
    add-int/lit8 v20, v20, 0x8

    .line 1207
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v36

    if-eqz v36, :cond_f

    .line 1208
    const-string v36, "air_view_master_onoff"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 1213
    :cond_1
    :goto_1
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_2

    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_2

    .line 1215
    add-int/lit8 v20, v20, 0x4

    .line 1216
    const-string v36, "pen_hovering"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    .line 1218
    :cond_2
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_3

    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_4

    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_4

    .line 1220
    :cond_3
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a1331

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1223
    :cond_4
    const-string v36, "com.samsung.android.app.assistantmenu"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 1224
    add-int/lit8 v20, v20, 0x20

    .line 1225
    const-string v36, "assistant_menu"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1226
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a10d9

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1229
    :cond_5
    const-string v36, "com.samsung.android.app.accesscontrol"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_6

    .line 1230
    add-int/lit8 v20, v20, 0x40

    .line 1231
    const-string v36, "access_control_use"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 1232
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a0a3e

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1235
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string v37, "com.sec.feature.multiwindow"

    invoke-virtual/range {v36 .. v37}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_7

    .line 1236
    add-int/lit8 v20, v20, 0x1

    .line 1237
    const-string v36, "multi_window_enabled"

    const/16 v37, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 1238
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a06cf

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1241
    :cond_7
    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x200

    move/from16 v20, v0

    .line 1242
    const-string v36, "all_sound_off"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1243
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a15e4

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1245
    const-string v36, "com.samsung.android.app.sounddetector"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_10

    .line 1246
    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x800

    move/from16 v20, v0

    .line 1247
    const-string v36, "sound_detector"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    .line 1248
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a0aed

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1256
    :cond_8
    :goto_2
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isP4Note_Device()Z

    move-result v36

    if-nez v36, :cond_9

    .line 1257
    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    .line 1258
    const-string v36, "pen_writing_buddy"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    .line 1259
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a114a

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1261
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_9

    .line 1262
    const-string v36, "air_button_onoff"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1263
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a12e9

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1268
    :cond_9
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_b

    .line 1269
    const-string v36, "air_motion_call_accept"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1270
    const/16 v36, 0x1

    move/from16 v0, v36

    if-ne v3, v0, :cond_a

    .line 1271
    const-string v36, "air_motion_call_accept"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1272
    new-instance v15, Landroid/content/Intent;

    const-string v36, "com.sec.gesture.AIR_CALL_ACCEPT_SETTINGS_CHANGED"

    move-object/from16 v0, v36

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1273
    .local v15, "motion_changed_callaccept":Landroid/content/Intent;
    const-string v36, "isEnable"

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1274
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1277
    .end local v15    # "motion_changed_callaccept":Landroid/content/Intent;
    :cond_a
    const-string v36, "air_motion_turn"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1278
    const-string v36, "air_motion_scroll"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1280
    new-instance v16, Landroid/content/Intent;

    const-string v36, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1281
    .local v16, "motion_changed_scroll":Landroid/content/Intent;
    const-string v36, "isEnable"

    const/16 v37, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1282
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1284
    new-instance v14, Landroid/content/Intent;

    const-string v36, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    move-object/from16 v0, v36

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1285
    .local v14, "motion_changed_browse":Landroid/content/Intent;
    const-string v36, "isEnable"

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1286
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1288
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isAllMotionDisabled2014(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_b

    .line 1289
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->turnOffAllMotionMaster(Landroid/content/Context;)V

    .line 1294
    .end local v14    # "motion_changed_browse":Landroid/content/Intent;
    .end local v16    # "motion_changed_scroll":Landroid/content/Intent;
    :cond_b
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_c

    .line 1295
    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    .line 1296
    const-string v36, "surface_motion_engine"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 1297
    const-string v36, "surface_palm_touch"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 1298
    const-string v36, "surface_palm_swipe"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    .line 1299
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_12

    .line 1300
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a11f1

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1301
    move/from16 v21, v22

    .line 1309
    :cond_c
    :goto_3
    const-string v36, "any_screen_enabled"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 1311
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string v37, "com.sec.feature.floating_side_softkey"

    invoke-virtual/range {v36 .. v37}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_13

    .line 1312
    const-string v36, "sidesoftkey_switch"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    .line 1313
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a1dba

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1316
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a1dc0

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1332
    :goto_4
    add-int/lit8 v20, v20, 0x2

    .line 1333
    const-string v36, "smart_pause"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    .line 1334
    .local v28, "smartpause":I
    const-string v36, "intelligent_rotation_mode"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    .line 1335
    .local v29, "smartrotation":I
    const-string v36, "intelligent_sleep_mode"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    .line 1336
    .local v32, "smartstay":I
    const-string v36, "smart_scroll"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    .line 1338
    .local v31, "smartscroll":I
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_14

    .line 1340
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a1483

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1344
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a1249

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1348
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a1485    # 1.8354E38f

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1358
    :goto_5
    or-int v36, v32, v29

    or-int v36, v36, v28

    or-int v30, v36, v31

    .line 1361
    const-string v36, "com.sec.feature.overlaymagnifier"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_d

    .line 1362
    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x2000

    move/from16 v20, v0

    .line 1363
    const-string v36, "accessibility_magnifier"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 1364
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a0a10

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1367
    :cond_d
    or-int v36, v12, v7

    or-int v36, v36, v5

    or-int v36, v36, v10

    or-int v36, v36, v24

    or-int v36, v36, v30

    or-int v36, v36, v17

    or-int v36, v36, v6

    or-int v36, v36, v35

    or-int v36, v36, v4

    or-int v36, v36, v21

    or-int v36, v36, v19

    or-int v36, v36, v33

    or-int v36, v36, v34

    or-int v36, v36, v18

    or-int v36, v36, v27

    or-int v36, v36, v3

    or-int v36, v36, v11

    if-lez v36, :cond_15

    const/4 v13, 0x1

    .line 1370
    :goto_6
    const-string v36, "is_enabled"

    move-object/from16 v0, v36

    invoke-virtual {v8, v0, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1371
    const-string v36, "option_flag"

    move-object/from16 v0, v36

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1372
    const-string v36, "dialog_content"

    move-object/from16 v0, v36

    invoke-virtual {v8, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    return-object v8

    .line 1201
    .end local v28    # "smartpause":I
    .end local v29    # "smartrotation":I
    .end local v31    # "smartscroll":I
    .end local v32    # "smartstay":I
    :cond_e
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a125b

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 1210
    :cond_f
    const-string v36, "finger_air_view"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    goto/16 :goto_1

    .line 1249
    :cond_10
    const-string v36, "com.samsung.android.app.advsounddetector"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_8

    .line 1250
    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x800

    move/from16 v20, v0

    .line 1251
    const-string v36, "sound_detector"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    .line 1252
    if-nez v33, :cond_11

    const-string v36, "doorbell_detector"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    .line 1253
    :cond_11
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a0aee

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 1303
    :cond_12
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a1235    # 1.83528E38f

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1304
    or-int v36, v23, v22

    or-int v21, v21, v36

    goto/16 :goto_3

    .line 1321
    :cond_13
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a1618

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4

    .line 1355
    .restart local v28    # "smartpause":I
    .restart local v29    # "smartrotation":I
    .restart local v31    # "smartscroll":I
    .restart local v32    # "smartstay":I
    :cond_14
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a149b

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 1367
    :cond_15
    const/4 v13, 0x0

    goto/16 :goto_6
.end method

.method public static isVTCallCapable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 4315
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4316
    const/4 v0, 0x1

    .line 4318
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoSequenceModel()Z
    .locals 4

    .prologue
    .line 4198
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETUPWIZARD_CONFIG_STEP_SEQUENCE_TYPE"

    const-string v3, "video"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4199
    .local v0, "sequenceType":Ljava/lang/String;
    const-string v1, "Settings_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetupWizard SequenceType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4201
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "video_intro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4203
    :cond_0
    const-string v1, "Settings_Utils"

    const-string v2, "isVideoSequenceModel() floating feature true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4204
    const/4 v1, 0x0

    .line 4207
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isVisibility_panel_bg()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4274
    const-string v1, "americano"

    const-string v2, "ro.build.scafe"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSetupProject_KK_OS()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4275
    const/4 v0, 0x0

    .line 4277
    :cond_0
    return v0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 439
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 441
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWeatherDetailSettings()Z
    .locals 2

    .prologue
    .line 4737
    const-string v0, "1"

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4738
    const/4 v0, 0x1

    .line 4740
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWifiCallingEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4012
    const/4 v0, 0x0

    .line 4013
    .local v0, "isWfcRegistered":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4014
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 4017
    :cond_0
    return v0
.end method

.method public static isWifiEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3761
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 3762
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 3763
    const-string v1, "SmartBonding"

    const-string v2, "Can\'t get WifiManager."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    const/4 v1, 0x0

    .line 3766
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 449
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 451
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isslot1roamingtogsm()Z
    .locals 8

    .prologue
    .line 4511
    const-string v1, "0"

    .line 4512
    .local v1, "current_slot":Ljava/lang/String;
    const-string v0, "/sys/class/sec/slot_switch/slot_sel"

    .line 4513
    .local v0, "FILE_PATH":Ljava/lang/String;
    const/4 v3, 0x0

    .line 4514
    .local v3, "in":Ljava/io/BufferedReader;
    const-string v1, "0"

    .line 4516
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4517
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 4518
    const-string v5, "Settings_Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Slot_Sel [read]<---------------------------------- : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4524
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 4530
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 4531
    const-string v1, "0"

    .line 4533
    :cond_2
    const-string v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    .line 4525
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 4526
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 4528
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_0

    .line 4519
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 4520
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v5, "Settings_Utils"

    const-string v6, "File open error"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4521
    const-string v1, "0"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4524
    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 4525
    :catch_2
    move-exception v2

    .line 4526
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 4523
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 4524
    :goto_2
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 4527
    :cond_3
    :goto_3
    throw v5

    .line 4525
    :catch_3
    move-exception v2

    .line 4526
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 4523
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 4519
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static loadExpandState(Landroid/content/Context;J)Z
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "header_id"    # J

    .prologue
    .line 3944
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    long-to-int v4, p1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 3945
    .local v0, "headerID":Ljava/lang/String;
    const-string v3, "expand_state"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3946
    .local v2, "pref":Landroid/content/SharedPreferences;
    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 3947
    .local v1, "isExpanded":Z
    const-string v3, "GridSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load > headerID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / isExpanded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3948
    return v1
.end method

.method public static loadFavorite(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3445
    .local p1, "favoriteList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    .local p3, "mHeaderIndexMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3446
    .local v8, "c":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 3502
    :goto_0
    return-void

    .line 3447
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 3448
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 3449
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3455
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 3457
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "settings_gridui"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    const/16 v18, 0x1

    .line 3459
    .local v18, "isListView":Z
    :goto_1
    if-eqz v18, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3460
    :cond_2
    new-instance v10, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v10}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 3461
    .local v10, "favoriteCategory":Landroid/preference/PreferenceActivity$Header;
    const-wide/32 v2, 0x7f100002

    iput-wide v2, v10, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 3462
    const v2, 0x7f0a003e

    iput v2, v10, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 3463
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3466
    .end local v10    # "favoriteCategory":Landroid/preference/PreferenceActivity$Header;
    :cond_3
    const-string v2, "Favorite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3467
    new-instance v16, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3468
    .local v16, "indexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3469
    const/4 v9, 0x0

    .line 3471
    .local v9, "count":I
    :cond_4
    const-string v2, "key"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 3472
    .local v19, "key":Ljava/lang/String;
    const-string v2, "Favorite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 3474
    .local v14, "id":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3475
    const-string v2, "Favorite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not in Header List"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3481
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3483
    new-instance v2, Lcom/android/settings/Utils$IndexAscCompare;

    invoke-direct {v2}, Lcom/android/settings/Utils$IndexAscCompare;-><init>()V

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3485
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 3486
    .local v12, "i":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3457
    .end local v9    # "count":I
    .end local v12    # "i":Ljava/lang/Integer;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "id":I
    .end local v16    # "indexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18    # "isListView":Z
    .end local v19    # "key":Ljava/lang/String;
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 3478
    .restart local v9    # "count":I
    .restart local v14    # "id":I
    .restart local v16    # "indexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18    # "isListView":Z
    .restart local v19    # "key":Ljava/lang/String;
    :cond_6
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 3479
    .local v15, "idx":I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3480
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 3489
    .end local v15    # "idx":I
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3490
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getFavoriteCount(Landroid/content/Context;)I

    move-result v20

    .line 3491
    .local v20, "savedFavoriteCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "settings_gridui"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    const/16 v17, 0x1

    .line 3493
    .local v17, "isGridView":Z
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->getMaxFavoriteItemNumber()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_9

    if-nez v17, :cond_8

    if-eqz v18, :cond_9

    .line 3494
    :cond_8
    new-instance v11, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v11}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 3495
    .local v11, "h":Landroid/preference/PreferenceActivity$Header;
    const-wide/32 v2, 0x7f10000b

    iput-wide v2, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 3496
    const v2, 0x7f020220

    iput v2, v11, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 3497
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3501
    .end local v9    # "count":I
    .end local v11    # "h":Landroid/preference/PreferenceActivity$Header;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "id":I
    .end local v17    # "isGridView":Z
    .end local v19    # "key":Ljava/lang/String;
    .end local v20    # "savedFavoriteCount":I
    :cond_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3491
    .restart local v9    # "count":I
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "id":I
    .restart local v19    # "key":Ljava/lang/String;
    .restart local v20    # "savedFavoriteCount":I
    :cond_a
    const/16 v17, 0x0

    goto :goto_4
.end method

.method public static locateSmartNetworkSwitch(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 4587
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 4589
    const/4 v0, 0x3

    .line 4593
    :cond_0
    return v0
.end method

.method public static makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 2646
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2658
    :cond_0
    :goto_0
    return-object v2

    .line 2649
    :cond_1
    const-string v3, "%s"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2653
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2654
    .local v2, "ss":Landroid/text/SpannableString;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2655
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, p1, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 2656
    .local v1, "span":Landroid/text/style/ImageSpan;
    const-string v3, "%s"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2657
    .local v0, "iconIndex":I
    add-int/lit8 v3, v0, 0x2

    const/16 v4, 0x11

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Landroid/text/SpannableString;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 2662
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 2664
    .local v1, "locale":Ljava/lang/String;
    const-string v4, "ar"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "fa"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ur"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "iw"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2665
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%s "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2671
    :goto_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_3

    .line 2683
    :cond_1
    :goto_1
    return-object v3

    .line 2667
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2674
    :cond_3
    const-string v4, "%s"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2678
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2679
    .local v3, "ss":Landroid/text/SpannableString;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p1, v6, p2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2680
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, p1, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 2681
    .local v2, "span":Landroid/text/style/ImageSpan;
    const-string v4, "%s"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2682
    .local v0, "iconIndex":I
    add-int/lit8 v4, v0, 0x2

    const/16 v5, 0x11

    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1
.end method

.method public static moveToSharedPref(Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;)V
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 3931
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    .line 3932
    .local v4, "title_res":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 3933
    .local v1, "headerID":Ljava/lang/String;
    const-string v5, "expand_state"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 3934
    .local v3, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3935
    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3936
    .local v2, "isExpanded":Z
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3937
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3938
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3939
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3941
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "isExpanded":Z
    :cond_0
    return-void
.end method

.method public static needsDockSettings(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 3824
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Z)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleResId"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;
    .param p5, "isShortcut"    # Z

    .prologue
    .line 2042
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2043
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2044
    const-string v1, "Settings_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fragmentName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    const-string v1, "Settings_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "titleResId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    const-string v1, "Settings_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    const-string v1, "Settings_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShortcut : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2050
    const-string v1, ":settings:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2051
    const-string v1, ":settings:show_fragment_title_resid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2052
    const-string v1, ":settings:show_fragment_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 2053
    const-string v1, ":settings:show_fragment_as_shortcut"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2054
    return-object v0
.end method

.method public static prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V
    .locals 9
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "list"    # Landroid/view/View;
    .param p3, "ignoreSidePadding"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1760
    invoke-virtual {p2}, Landroid/view/View;->getScrollBarStyle()I

    move-result v5

    const/high16 v8, 0x2000000

    if-ne v5, v8, :cond_1

    move v1, v7

    .line 1761
    .local v1, "movePadding":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1762
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1763
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f0f0087

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1764
    .local v3, "paddingSide":I
    const v5, 0x1050023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1767
    .local v2, "paddingBottom":I
    instance-of v5, p0, Landroid/preference/PreferenceFrameLayout;

    if-eqz v5, :cond_3

    .line 1768
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v7, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 1770
    if-eqz p3, :cond_2

    move v0, v6

    .line 1771
    .local v0, "effectivePaddingSide":I
    :goto_1
    invoke-virtual {p2, v0, v6, v0, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1776
    .end local v0    # "effectivePaddingSide":I
    .end local v2    # "paddingBottom":I
    .end local v3    # "paddingSide":I
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_2
    return-void

    .end local v1    # "movePadding":Z
    :cond_1
    move v1, v6

    .line 1760
    goto :goto_0

    .restart local v1    # "movePadding":Z
    .restart local v2    # "paddingBottom":I
    .restart local v3    # "paddingSide":I
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_2
    move v0, v3

    .line 1770
    goto :goto_1

    .line 1773
    :cond_3
    invoke-virtual {p2, v3, v6, v3, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_2
.end method

.method public static printLog(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "shouldBeRemoved"    # Z

    .prologue
    .line 3902
    return-void
.end method

.method public static queryEventIdToday(Landroid/content/ContentResolver;[I)I
    .locals 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "festivalEventIds"    # [I

    .prologue
    .line 4630
    const/4 v12, -0x1

    .line 4632
    .local v12, "eventId":I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "festival_effect_id"

    aput-object v4, v2, v0

    .line 4636
    .local v2, "INSTANCES_PROJECTION":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 4637
    .local v8, "calendar":Ljava/util/Calendar;
    const/16 v0, 0xe

    const/16 v4, 0xf

    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v8, v0, v4}, Ljava/util/Calendar;->add(II)V

    .line 4640
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 4641
    .local v6, "begin":J
    move-wide v10, v6

    .line 4643
    .local v10, "end":J
    const-string v0, "content://com.sec.android.jpnanniversaryprovider/all"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4645
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dtstart <= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " and dtend >= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4646
    .local v3, "selection":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4648
    .local v9, "cur":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 4649
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4650
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 4653
    invoke-static {p1, v12}, Lcom/android/settings/Utils;->isSupportedEvent([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4654
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 4662
    :goto_0
    return v0

    .line 4658
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4662
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static readCountryIsoCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4975
    new-instance v0, Lcom/android/settings/Utils$CustomCscParser;

    const-string v1, "/system/csc/customer.xml"

    invoke-direct {v0, v1}, Lcom/android/settings/Utils$CustomCscParser;-><init>(Ljava/lang/String;)V

    .line 4976
    .local v0, "parser":Lcom/android/settings/Utils$CustomCscParser;
    const-string v1, "GeneralInfo.CountryISO"

    invoke-virtual {v0, v1}, Lcom/android/settings/Utils$CustomCscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static readSalesCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2712
    const-string v0, ""

    .line 2714
    .local v0, "sales_code":Ljava/lang/String;
    :try_start_0
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2715
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2716
    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2721
    :cond_0
    :goto_0
    return-object v0

    .line 2718
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static removeFavorite(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3564
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "key"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3565
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 3573
    :goto_0
    return-void

    .line 3566
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3567
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 3568
    .local v7, "id":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3572
    .end local v7    # "id":I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3570
    :cond_1
    const-string v0, "Favorite"

    const-string v1, "no data!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static replaceSIMString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 4485
    const-string v0, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4490
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 4487
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4488
    const-string v0, "SIM"

    const-string v1, "UIM"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4490
    :cond_1
    const-string v0, "SIM"

    const-string v1, "UIM/SIM"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3249
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3250
    .local v1, "res":Landroid/content/res/Resources;
    move-object v0, p1

    .line 3251
    .local v0, "c":Landroid/content/Context;
    const/4 v2, 0x0

    .line 3252
    .local v2, "s":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3253
    const v3, 0x7f0a132c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3257
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a01f7

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/Utils$3;

    invoke-direct {v5, v0}, Lcom/android/settings/Utils$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3278
    return-void

    .line 3255
    :cond_0
    const v3, 0x7f0a132b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static saveExpandstate(Landroid/content/Context;JZ)V
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "header_id"    # J
    .param p3, "isExpanded"    # Z

    .prologue
    .line 3952
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    long-to-int v4, p1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 3953
    .local v1, "headerID":Ljava/lang/String;
    const-string v3, "expand_state"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3954
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3955
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3956
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3957
    const-string v3, "GridSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save > headerID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / isExpanded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3958
    return-void
.end method

.method public static saveFavorite(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3558
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3559
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3560
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3561
    return-void
.end method

.method public static saveSViewWallpaperDrawable(Landroid/content/Context;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 4178
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sview_bg_wallpaper_path"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4179
    .local v1, "mPath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 4180
    const-string v1, "/storage/emulated/0/Android/data/com.sec.android.sviewcover/files/Pictures/cover_wallpaper.jpg"

    .line 4184
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4186
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4187
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    sput-object v2, Lcom/android/settings/Utils;->mSViewWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    .line 4190
    :goto_1
    return-void

    .line 4182
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cover_wallpaper.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4189
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    sput-object v2, Lcom/android/settings/Utils;->mSViewWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public static sendLockScreenWeatherIntent(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # Z

    .prologue
    .line 4745
    const-string v2, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    .line 4746
    .local v2, "ACTION_CURRENT_LOCATION_WEATHER_DATA":Ljava/lang/String;
    const-string v1, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    .line 4747
    .local v1, "ACTION_CURRENT_LOCATION_KWEATHER_DATA":Ljava/lang/String;
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    .line 4748
    .local v0, "ACTION_CURRENT_LOCATION_CMA_WEATHER_DATA":Ljava/lang/String;
    const-string v4, "Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendLockScreenWeatherIntent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4749
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4750
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4751
    .local v3, "mIntent":Landroid/content/Intent;
    const-string v4, "START"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4752
    invoke-static {}, Lcom/android/settings/Utils;->isOSUpgrade()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4753
    const-string v4, "PACKAGE"

    const-string v5, "android"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4756
    :goto_0
    const-string v4, "CP"

    const-string v5, "Kweather"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4757
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4771
    :goto_1
    return-void

    .line 4755
    :cond_0
    const-string v4, "PACKAGE"

    const-string v5, "com.android.keyguard"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 4765
    .end local v3    # "mIntent":Landroid/content/Intent;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4766
    .restart local v3    # "mIntent":Landroid/content/Intent;
    const-string v4, "START"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4767
    const-string v4, "PACKAGE"

    const-string v5, "com.android.keyguard"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4768
    const-string v4, "CP"

    const-string v5, "Accuweather"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4769
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static sendSViewCoverWeatherIntent(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # Z

    .prologue
    .line 4774
    const-string v2, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    .line 4775
    .local v2, "ACTION_CURRENT_LOCATION_WEATHER_DATA":Ljava/lang/String;
    const-string v1, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    .line 4776
    .local v1, "ACTION_CURRENT_LOCATION_KWEATHER_DATA":Ljava/lang/String;
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    .line 4777
    .local v0, "ACTION_CURRENT_LOCATION_CMA_WEATHER_DATA":Ljava/lang/String;
    const-string v4, "Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendSViewCoverWeatherIntent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4778
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4779
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4780
    .local v3, "mIntent":Landroid/content/Intent;
    const-string v4, "START"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4781
    const-string v4, "PACKAGE"

    const-string v5, "com.sec.android.sviewcover"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4782
    const-string v4, "CP"

    const-string v5, "Kweather"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4783
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4797
    :goto_0
    return-void

    .line 4791
    .end local v3    # "mIntent":Landroid/content/Intent;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4792
    .restart local v3    # "mIntent":Landroid/content/Intent;
    const-string v4, "START"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4793
    const-string v4, "PACKAGE"

    const-string v5, "com.sec.android.sviewcover"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4794
    const-string v4, "CP"

    const-string v5, "Accuweather"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4795
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static setEnterprisePolicyInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 5354
    const/4 v1, 0x0

    .line 5355
    .local v1, "result":I
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 5356
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5357
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "API"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5358
    const-string v3, "flag"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5359
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 5360
    return-void
.end method

.method public static setMouseHoveringValExceptListScroll(Landroid/content/ContentResolver;I)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "val"    # I

    .prologue
    .line 3905
    const-string v0, "mouse_hovering_information_preview"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3906
    const-string v0, "mouse_hovering_icon_label"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3908
    const-string v0, "mouse_hovering_progress_bar_preview"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3909
    const-string v0, "mouse_hovering_full_text"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3910
    const-string v0, "mouse_hovering_magnetic_ui"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3911
    return-void
.end method

.method static setOemUnlockEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 2482
    const-string v1, "persistent_data_block"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 2484
    .local v0, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    invoke-virtual {v0, p1}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V

    .line 2485
    return-void
.end method

.method public static showDialogPopup(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3350
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3351
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a01f7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3352
    const v2, 0x7f0a1c17

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3354
    const v2, 0x7f0a1a6e

    new-instance v3, Lcom/android/settings/Utils$4;

    invoke-direct {v3}, Lcom/android/settings/Utils$4;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3361
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3362
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3363
    return-void
.end method

.method public static showSimCardTile(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2506
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2511
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    return v1
.end method

.method public static startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1998
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 2000
    return-void
.end method

.method public static startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "isShortcut"    # Z

    .prologue
    .line 2005
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move-object v4, p6

    move v5, p7

    invoke-static/range {v0 .. v5}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v6

    .line 2007
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, ":settings:show_fragment"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2008
    if-nez p3, :cond_0

    .line 2009
    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2013
    :goto_0
    return-void

    .line 2011
    :cond_0
    invoke-virtual {p3, v6, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleResId"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;
    .param p5, "isShortcut"    # Z
    .param p6, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 2017
    invoke-static/range {p0 .. p5}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v0

    .line 2019
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2020
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2021
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2022
    invoke-virtual {p0, v0, p6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2023
    return-void
.end method

.method private static sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4887
    const/4 v2, 0x0

    .line 4890
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4895
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 4896
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 4906
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 4891
    :catch_0
    move-exception v0

    .line 4892
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 4897
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 4898
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4900
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 4901
    :catch_2
    move-exception v1

    .line 4902
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4897
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static toDigitString(I)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # I

    .prologue
    .line 4669
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    .line 4670
    .local v0, "mArgs":[Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 4671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4672
    .local v1, "mBuilder":Ljava/lang/StringBuilder;
    const-string v2, "%d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4673
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static turnOffAllMotionMaster(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 838
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 840
    .local v0, "mResolver":Landroid/content/ContentResolver;
    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 843
    invoke-static {p0}, Lcom/android/settings/Utils;->autoTurnOffAirMotionEngine(Landroid/content/Context;)V

    .line 846
    invoke-static {p0}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    .line 849
    const-string v1, "surface_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 850
    return-void
.end method

.method public static turnOffSwitchAccess(Landroid/content/Context;)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1054
    const/16 v0, 0x3a

    .line 1055
    .local v0, "ENABLED_ACCESSIBILITY_SERVICES_SEPARATOR":C
    new-instance v11, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v13, 0x3a

    invoke-direct {v11, v13}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1058
    .local v11, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v5

    .line 1061
    .local v5, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v13

    if-ne v5, v13, :cond_0

    .line 1062
    new-instance v5, Ljava/util/HashSet;

    .end local v5    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1065
    .restart local v5    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_0
    const-string v13, "com.google.android.marvin.talkback/com.googlecode.eyesfree.switchcontrol.SwitchControlService"

    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 1066
    .local v12, "toggledService":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 1068
    .local v1, "accessibilityEnabled":Z
    invoke-interface {v5, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1070
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 1071
    .local v10, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1072
    .local v4, "enabledService":Landroid/content/ComponentName;
    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1074
    const/4 v1, 0x1

    .line 1080
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1085
    .local v6, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1086
    .restart local v4    # "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    const/16 v13, 0x3a

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1089
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 1090
    .local v7, "enabledServicesBuilderLength":I
    if-lez v7, :cond_4

    .line 1091
    add-int/lit8 v13, v7, -0x1

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1094
    :cond_4
    const/4 v8, 0x0

    .line 1095
    .local v8, "enabledServicesSetting":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1096
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "enabled_accessibility_services"

    invoke-static {v13, v14, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1099
    if-eqz v8, :cond_6

    .line 1100
    move-object v2, v11

    .line 1101
    .local v2, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v8}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1103
    :cond_5
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1104
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 1105
    .local v3, "componentNameString":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 1107
    .restart local v4    # "enabledService":Landroid/content/ComponentName;
    if-eqz v4, :cond_5

    .line 1108
    const/4 v1, 0x1

    .line 1116
    .end local v2    # "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v3    # "componentNameString":Ljava/lang/String;
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "accessibility_enabled"

    if-eqz v1, :cond_7

    const/4 v13, 0x1

    :goto_1
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1119
    const/4 v13, 0x1

    return v13

    .line 1116
    :cond_7
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public static turnOffTalkBack(Landroid/content/Context;)Z
    .locals 17
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 979
    const/16 v1, 0x3a

    .line 980
    .local v1, "ENABLED_ACCESSIBILITY_SERVICES_SEPARATOR":C
    new-instance v12, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v14, 0x3a

    invoke-direct {v12, v14}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 983
    .local v12, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v6

    .line 986
    .local v6, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v14

    if-ne v6, v14, :cond_0

    .line 987
    new-instance v6, Ljava/util/HashSet;

    .end local v6    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 990
    .restart local v6    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_0
    const-string v14, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    .line 991
    .local v13, "toggledService":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 993
    .local v2, "accessibilityEnabled":Z
    invoke-interface {v6, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 995
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 996
    .local v11, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 997
    .local v5, "enabledService":Landroid/content/ComponentName;
    invoke-interface {v11, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 999
    const/4 v2, 0x1

    .line 1005
    .end local v5    # "enabledService":Landroid/content/ComponentName;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1010
    .local v7, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1011
    .restart local v5    # "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    const/16 v14, 0x3a

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1014
    .end local v5    # "enabledService":Landroid/content/ComponentName;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 1015
    .local v8, "enabledServicesBuilderLength":I
    if-lez v8, :cond_4

    .line 1016
    add-int/lit8 v14, v8, -0x1

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1019
    :cond_4
    const/4 v9, 0x0

    .line 1020
    .local v9, "enabledServicesSetting":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1021
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "enabled_accessibility_services"

    invoke-static {v14, v15, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1024
    if-eqz v9, :cond_6

    .line 1025
    move-object v3, v12

    .line 1026
    .local v3, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v3, v9}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1028
    :cond_5
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1029
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 1030
    .local v4, "componentNameString":Ljava/lang/String;
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 1032
    .restart local v5    # "enabledService":Landroid/content/ComponentName;
    if-eqz v5, :cond_5

    .line 1033
    const/4 v2, 0x1

    .line 1040
    .end local v3    # "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v4    # "componentNameString":Ljava/lang/String;
    .end local v5    # "enabledService":Landroid/content/ComponentName;
    :cond_6
    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.android.settings.action.talkback_off"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1041
    const-string v14, "Utils Accessibility"

    const-string v15, "All sound off broadcast"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "accessibility_enabled"

    if-eqz v2, :cond_7

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1046
    const/4 v14, 0x1

    return v14

    .line 1043
    :cond_7
    const/4 v14, 0x0

    goto :goto_1
.end method

.method public static turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "option_flag"    # I

    .prologue
    .line 1381
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 1384
    .local v13, "resolver":Landroid/content/ContentResolver;
    and-int/lit8 v17, p1, 0x20

    if-lez v17, :cond_0

    .line 1385
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x20"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    const-string v17, "assistant_menu"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1387
    new-instance v4, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1388
    .local v4, "assistantMenu":Landroid/content/Intent;
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.samsung.android.app.assistantmenu"

    const-string v19, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1390
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1391
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x20"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    .end local v4    # "assistantMenu":Landroid/content/Intent;
    :cond_0
    and-int/lit8 v17, p1, 0x10

    if-lez v17, :cond_3

    .line 1396
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x10"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    const-string v17, "air_motion_engine"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1398
    new-instance v2, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1399
    .local v2, "air_motion_changed":Landroid/content/Intent;
    const-string v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1400
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1402
    const-string v17, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v17 .. v17}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1403
    const-string v17, "air_motion_call_accept"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1404
    const-string v17, "air_motion_call_accept"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1405
    new-instance v11, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.AIR_CALL_ACCEPT_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1406
    .local v11, "motion_changed_callaccept":Landroid/content/Intent;
    const-string v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1407
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1409
    .end local v11    # "motion_changed_callaccept":Landroid/content/Intent;
    :cond_1
    const-string v17, "master_motion"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1410
    const-string v17, "air_motion_turn"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1411
    const-string v17, "air_motion_scroll"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1413
    new-instance v12, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1414
    .local v12, "motion_changed_scroll":Landroid/content/Intent;
    const-string v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1415
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1417
    new-instance v10, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1418
    .local v10, "motion_changed_browse":Landroid/content/Intent;
    const-string v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1419
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1422
    .end local v10    # "motion_changed_browse":Landroid/content/Intent;
    .end local v12    # "motion_changed_scroll":Landroid/content/Intent;
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isAllMotionDisabled2014(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1423
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->turnOffAllMotionMaster(Landroid/content/Context;)V

    .line 1429
    .end local v2    # "air_motion_changed":Landroid/content/Intent;
    :cond_3
    and-int/lit8 v17, p1, 0x8

    if-lez v17, :cond_4

    .line 1430
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x08"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 1432
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 1444
    :goto_0
    new-instance v5, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1445
    .local v5, "finger_air_view_changed":Landroid/content/Intent;
    const-string v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1446
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1450
    .end local v5    # "finger_air_view_changed":Landroid/content/Intent;
    :cond_4
    and-int/lit8 v17, p1, 0x40

    if-lez v17, :cond_5

    .line 1451
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x40"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const-string v17, "access_control_use"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1453
    const-string v17, "access_control_enabled"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1454
    new-instance v6, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1455
    .local v6, "icIntent":Landroid/content/Intent;
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.samsung.android.app.accesscontrol"

    const-string v19, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1457
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1458
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x40"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    .end local v6    # "icIntent":Landroid/content/Intent;
    :cond_5
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x800

    move/from16 v17, v0

    if-lez v17, :cond_7

    .line 1463
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x800"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const-string v17, "com.samsung.android.app.sounddetector"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 1466
    const-string v17, "sound_detector"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1468
    new-instance v9, Landroid/content/Intent;

    const-string v17, "com.android.settings.action.sound_detector"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1469
    .local v9, "mIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1471
    new-instance v14, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1472
    .local v14, "sdIntent":Landroid/content/Intent;
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.samsung.android.app.sounddetector"

    const-string v19, "com.samsung.android.app.sounddetector.service.SoundDetectService"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1474
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1492
    .end local v9    # "mIntent":Landroid/content/Intent;
    .end local v14    # "sdIntent":Landroid/content/Intent;
    :cond_6
    :goto_1
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x800"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :cond_7
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x1000

    move/from16 v17, v0

    if-lez v17, :cond_8

    .line 1497
    const-string v17, "toolbox_onoff"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1501
    :cond_8
    and-int/lit8 v17, p1, 0x4

    if-lez v17, :cond_9

    .line 1502
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x04"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    const-string v17, "pen_hovering"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1507
    :cond_9
    and-int/lit8 v17, p1, 0x2

    if-lez v17, :cond_a

    .line 1508
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x02"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    const-string v17, "intelligent_sleep_mode"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1510
    const-string v17, "intelligent_rotation_mode"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1511
    const-string v17, "smart_pause"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1512
    new-instance v15, Landroid/content/Intent;

    const-string v17, "com.sec.SMART_PAUSE_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1513
    .local v15, "smart_pause_changed":Landroid/content/Intent;
    const-string v17, "isEnable"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1514
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1515
    const-string v17, "smart_scroll"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1516
    new-instance v16, Landroid/content/Intent;

    const-string v17, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1517
    .local v16, "smart_scroll_changed":Landroid/content/Intent;
    const-string v17, "isEnable"

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1518
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1522
    .end local v15    # "smart_pause_changed":Landroid/content/Intent;
    .end local v16    # "smart_scroll_changed":Landroid/content/Intent;
    :cond_a
    and-int/lit8 v17, p1, 0x1

    if-lez v17, :cond_b

    .line 1523
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x01"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    const-string v17, "multi_window_enabled"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1528
    :cond_b
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    if-lez v17, :cond_c

    .line 1529
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x80"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    const-string v17, "pen_writing_buddy"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1531
    const-string v17, "air_button_onoff"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1534
    :cond_c
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    if-lez v17, :cond_d

    .line 1535
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x100"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    const-string v17, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v17 .. v17}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 1537
    const-string v17, "surface_palm_swipe"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1547
    :cond_d
    :goto_2
    const-string v17, "any_screen_enabled"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1548
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const-string v18, "com.sec.feature.floating_side_softkey"

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 1549
    const-string v17, "sidesoftkey_switch"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1554
    :cond_e
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x200

    move/from16 v17, v0

    if-lez v17, :cond_f

    .line 1555
    new-instance v3, Landroid/content/Intent;

    const-string v17, "android.settings.ALL_SOUND_MUTE"

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1556
    .local v3, "all_sound_off_intent":Landroid/content/Intent;
    const-string v17, "all_sound_off"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1557
    const-string v17, "mute"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1558
    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1559
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - TurnOffAllSound in"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    .end local v3    # "all_sound_off_intent":Landroid/content/Intent;
    :cond_f
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x2000

    move/from16 v17, v0

    if-lez v17, :cond_10

    const-string v17, "com.sec.feature.overlaymagnifier"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 1564
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x2000"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const-string v17, "accessibility_magnifier"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1567
    :cond_10
    return-void

    .line 1434
    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 1435
    const-string v17, "finger_air_view"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1436
    const-string v17, "finger_air_view_information_preview"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1437
    const-string v17, "finger_air_view_highlight"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1439
    :cond_12
    const-string v17, "finger_air_view"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1440
    const-string v17, "finger_air_view_highlight"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1475
    :cond_13
    const-string v17, "com.samsung.android.app.advsounddetector"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1476
    const-string v17, "sound_detector"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1477
    const-string v17, "doorbell_detector"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1479
    new-instance v7, Landroid/content/Intent;

    const-string v17, "com.android.settings.action.sound_detector"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1480
    .local v7, "mBabyIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1482
    new-instance v8, Landroid/content/Intent;

    const-string v17, "com.android.settings.action.doorbell_detector"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1483
    .local v8, "mDoorIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1485
    new-instance v14, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1486
    .restart local v14    # "sdIntent":Landroid/content/Intent;
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.samsung.android.app.advsounddetector"

    const-string v19, "com.samsung.android.app.advsounddetector.service.SoundDetectService"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1489
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 1539
    .end local v7    # "mBabyIntent":Landroid/content/Intent;
    .end local v8    # "mDoorIntent":Landroid/content/Intent;
    .end local v14    # "sdIntent":Landroid/content/Intent;
    :cond_14
    const-string v17, "surface_palm_touch"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1540
    const-string v17, "surface_palm_swipe"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1541
    const-string v17, "surface_motion_engine"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2
.end method

.method public static turnOnAirMotionEngine(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 749
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 751
    .local v0, "mResolver":Landroid/content/ContentResolver;
    const-string v2, "air_motion_engine"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v4}, Lcom/android/settings/Utils;->isAllAirMotionDisabled2014(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 752
    const-string v2, "air_motion_engine"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 753
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 754
    .local v1, "motion_changed":Landroid/content/Intent;
    const-string v2, "isEnable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 755
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 757
    .end local v1    # "motion_changed":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static turnOnAllMotionMaster(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 823
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 825
    .local v0, "mResolver":Landroid/content/ContentResolver;
    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 828
    invoke-static {p0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    .line 831
    invoke-static {p0}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 834
    const-string v1, "surface_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 835
    return-void
.end method

.method public static turnOnMotionEngine(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 671
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 672
    .local v0, "mResolver":Landroid/content/ContentResolver;
    const-string v2, "motion_engine"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 673
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 674
    .local v1, "motion_changed":Landroid/content/Intent;
    const-string v2, "isEnable"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 675
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 676
    return-void
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentPreferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "preferenceKey"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    const/4 v7, 0x0

    .line 323
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 324
    .local v5, "preference":Landroid/preference/Preference;
    if-nez v5, :cond_0

    .line 357
    :goto_0
    return v7

    .line 328
    :cond_0
    invoke-virtual {v5}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 329
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 332
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 333
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 334
    .local v3, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 335
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 336
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    .line 340
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 344
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    .line 346
    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 349
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 334
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 355
    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "listSize":I
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public static updateSideViewVisibility(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p0, "mLeftside"    # Landroid/view/View;
    .param p1, "mRightside"    # Landroid/view/View;

    .prologue
    .line 4262
    const-string v1, "grande"

    const-string v2, "ro.build.scafe.size"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 4263
    const/16 v0, 0x8

    .line 4265
    .local v0, "visibility":I
    if-eqz p0, :cond_0

    .line 4266
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4268
    :cond_0
    if-eqz p1, :cond_1

    .line 4269
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4272
    .end local v0    # "visibility":I
    :cond_1
    return-void
.end method

.method public static updateSmartNetworkSwitchCheckBox(Landroid/content/Context;)I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4344
    const-string v11, "connectivity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 4345
    .local v2, "mConnectivityManager":Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    .line 4347
    .local v4, "result":I
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isMobilePolicyDataEnable()Z

    move-result v3

    .line 4349
    .local v3, "mMobilePolicyDataEnable":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_1

    const/4 v0, 0x1

    .line 4351
    .local v0, "isAirplaneMode":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "mobile_data"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_2

    const/4 v1, 0x1

    .line 4353
    .local v1, "isMobileDataEnabled":Z
    :goto_1
    const/4 v5, 0x0

    .line 4354
    .local v5, "simState":I
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 4355
    .local v10, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v10, :cond_3

    .line 4356
    const/4 v5, 0x0

    .line 4357
    const-string v11, "Utils"

    const-string v12, "TelephonyManager is null."

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4379
    :goto_2
    const/4 v11, 0x5

    if-eq v5, v11, :cond_9

    .line 4382
    const/4 v4, 0x2

    .line 4393
    :cond_0
    :goto_3
    return v4

    .line 4349
    .end local v0    # "isAirplaneMode":Z
    .end local v1    # "isMobileDataEnabled":Z
    .end local v5    # "simState":I
    .end local v10    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4351
    .restart local v0    # "isAirplaneMode":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 4359
    .restart local v1    # "isMobileDataEnabled":Z
    .restart local v5    # "simState":I
    .restart local v10    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 4360
    const-string v11, "gsm.sim.state"

    const-string v12, "-1,-1"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4361
    .local v8, "simStatus":Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 4362
    .local v9, "simStatusInt":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 4363
    .local v6, "simState1":I
    const/4 v7, 0x0

    .line 4364
    .local v7, "simState2":I
    const-string v11, "READY"

    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 4365
    const/4 v6, 0x5

    .line 4366
    :cond_4
    array-length v11, v9

    const/4 v12, 0x1

    if-le v11, v12, :cond_5

    const-string v11, "READY"

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 4367
    const/4 v7, 0x5

    .line 4368
    :cond_5
    const/4 v11, 0x5

    if-eq v6, v11, :cond_6

    const/4 v11, 0x5

    if-ne v7, v11, :cond_7

    .line 4369
    :cond_6
    const/4 v5, 0x5

    goto :goto_2

    .line 4371
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 4376
    .end local v6    # "simState1":I
    .end local v7    # "simState2":I
    .end local v8    # "simStatus":Ljava/lang/String;
    .end local v9    # "simStatusInt":[Ljava/lang/String;
    :cond_8
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    goto :goto_2

    .line 4383
    :cond_9
    if-eqz v0, :cond_a

    .line 4384
    const/4 v4, 0x3

    goto :goto_3

    .line 4385
    :cond_a
    if-eqz v1, :cond_b

    if-nez v3, :cond_0

    .line 4386
    :cond_b
    const/4 v4, 0x4

    goto :goto_3
.end method

.method public static updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardTile;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    .line 374
    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    .line 375
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_3

    .line 377
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 378
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/16 v11, 0x80

    invoke-virtual {v6, v2, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 379
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 380
    .local v4, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_3

    .line 381
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 382
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_2

    .line 384
    const/4 v1, 0x0

    .line 385
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x0

    .line 386
    .local v10, "title":Ljava/lang/String;
    const/4 v9, 0x0

    .line 390
    .local v9, "summary":Ljava/lang/String;
    :try_start_0
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 392
    .local v7, "res":Landroid/content/res/Resources;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v11, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 394
    .local v5, "metaData":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    if-eqz v5, :cond_0

    .line 395
    const-string v11, "com.android.settings.icon"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 396
    const-string v11, "com.android.settings.title"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 397
    const-string v11, "com.android.settings.summary"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 407
    .end local v5    # "metaData":Landroid/os/Bundle;
    .end local v7    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 408
    invoke-virtual {v8, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 414
    :cond_1
    iput-object v10, p1, Lcom/android/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    .line 415
    iput-object v9, p1, Lcom/android/settings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    .line 417
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    iput-object v11, p1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    .line 420
    const/4 v11, 0x1

    .line 425
    .end local v0    # "i":I
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "listSize":I
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "summary":Ljava/lang/String;
    .end local v10    # "title":Ljava/lang/String;
    :goto_2
    return v11

    .line 380
    .restart local v0    # "i":I
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "listSize":I
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    .end local v0    # "i":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "listSize":I
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 401
    .restart local v0    # "i":I
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "listSize":I
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v9    # "summary":Ljava/lang/String;
    .restart local v10    # "title":Ljava/lang/String;
    :catch_0
    move-exception v11

    goto :goto_1

    .line 399
    :catch_1
    move-exception v11

    goto :goto_1
.end method
