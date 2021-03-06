.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerUsageSummary.java"


# instance fields
.field private mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Ljava/lang/String;

.field private mBatteryStatus:Ljava/lang/String;

.field private mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

.field mHandler:Landroid/os/Handler;

.field private mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

.field private mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

.field private mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

.field private mPowerSavingModePref:Landroid/preference/PreferenceScreen;

.field private mPowerSavingObserver:Landroid/database/ContentObserver;

.field private mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mStatsType:I

.field private mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 125
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingObserver:Landroid/database/ContentObserver;

    .line 718
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerUsageSummary;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateBatteryStatus(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isDisplayedPowerSaving()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Lcom/android/internal/os/BatteryStatsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0
.end method

.method private addNotAvailableMessage()V
    .locals 3

    .prologue
    .line 499
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 500
    .local v0, "notAvailable":Landroid/preference/Preference;
    const v1, 0x7f0a0afb

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 501
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setHideLabels(Z)V

    .line 502
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 503
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 504
    return-void
.end method

.method private addPowerSavingPreference(I)V
    .locals 3
    .param p1, "order"    # I

    .prologue
    .line 681
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isDisplayedPowerSaving()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 683
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isDisplayedPowerSaving()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 686
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 687
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 690
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 691
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 692
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, "mProductName":Ljava/lang/String;
    const-string v1, "SC-01G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SCL24"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 705
    .end local v0    # "mProductName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 695
    .restart local v0    # "mProductName":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportFastCharging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 696
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 697
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 699
    .end local v0    # "mProductName":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportFastCharging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 700
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 701
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private isDisplayedPowerSaving()Z
    .locals 2

    .prologue
    .line 708
    const/4 v0, 0x0

    .line 709
    .local v0, "isDisplayedPwSaving":Z
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isConceptForVZW()Z

    move-result v1

    if-nez v1, :cond_0

    .line 710
    const/4 v0, 0x1

    .line 713
    :cond_0
    return v0
.end method

.method private refreshStats()V
    .locals 42

    .prologue
    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v36, v0

    if-eqz v36, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    move-object/from16 v36, v0

    if-nez v36, :cond_1

    .line 527
    :cond_0
    const-string v36, "PowerUsageSummary"

    const-string v37, "refresh null!!"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :goto_0
    return-void

    .line 530
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    move-object/from16 v36, v0

    const/16 v37, -0x3

    invoke-virtual/range {v36 .. v37}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 536
    new-instance v36, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v39

    invoke-direct/range {v36 .. v39}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;Landroid/content/Intent;)V

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    move-object/from16 v36, v0

    const/16 v37, -0x2

    invoke-virtual/range {v36 .. v37}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setOrder(I)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 540
    const/4 v7, 0x0

    .line 542
    .local v7, "addedSome":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v23

    .line 543
    .local v23, "powerProfile":Lcom/android/internal/os/PowerProfile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v31

    .line 545
    .local v31, "stats":Landroid/os/BatteryStats;
    new-instance v11, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-direct {v11, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 546
    .local v11, "batteryTimePref":Landroid/preference/Preference;
    if-eqz v31, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    const-wide/16 v38, 0x3e8

    mul-long v36, v36, v38

    const/16 v38, 0x0

    move-object/from16 v0, v31

    move-wide/from16 v1, v36

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v32

    .line 547
    .local v32, "uSecTime":J
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v36

    const-wide/16 v38, 0x3e8

    div-long v38, v32, v38

    move-wide/from16 v0, v38

    long-to-double v0, v0

    move-wide/from16 v38, v0

    const/16 v37, 0x1

    move-object/from16 v0, v36

    move-wide/from16 v1, v38

    move/from16 v3, v37

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v14

    .line 548
    .local v14, "durationString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v36

    const v37, 0x7f0a0b08

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput-object v14, v38, v39

    invoke-virtual/range {v36 .. v38}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 549
    .local v18, "mDurationString":Ljava/lang/String;
    const/16 v36, -0x1

    move/from16 v0, v36

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 550
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 553
    const-string v36, "screen.full"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    .line 554
    .local v8, "averagePower":D
    const-wide/high16 v36, 0x4024000000000000L    # 10.0

    cmpl-double v36, v8, v36

    if-ltz v36, :cond_e

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v29

    .line 557
    .local v29, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v37

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILjava/util/List;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v34

    .line 561
    .local v34, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v31, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v36, v0

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v13

    .line 562
    .local v13, "dischargeAmount":I
    :goto_2
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v22

    .line 563
    .local v22, "numSippers":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    .line 564
    move-object/from16 v0, v34

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/os/BatterySipper;

    .line 565
    .local v30, "sipper":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v36, v0

    const-wide v38, 0x40ac200000000000L    # 3600.0

    mul-double v36, v36, v38

    const-wide/high16 v38, 0x4014000000000000L    # 5.0

    cmpg-double v36, v36, v38

    if-gez v36, :cond_5

    .line 563
    :cond_2
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 546
    .end local v8    # "averagePower":D
    .end local v13    # "dischargeAmount":I
    .end local v14    # "durationString":Ljava/lang/String;
    .end local v16    # "i":I
    .end local v18    # "mDurationString":Ljava/lang/String;
    .end local v22    # "numSippers":I
    .end local v29    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .end local v30    # "sipper":Lcom/android/internal/os/BatterySipper;
    .end local v32    # "uSecTime":J
    .end local v34    # "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_3
    const-wide/16 v32, 0x0

    goto/16 :goto_1

    .line 561
    .restart local v8    # "averagePower":D
    .restart local v14    # "durationString":Ljava/lang/String;
    .restart local v18    # "mDurationString":Ljava/lang/String;
    .restart local v29    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .restart local v32    # "uSecTime":J
    .restart local v34    # "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    .line 568
    .restart local v13    # "dischargeAmount":I
    .restart local v16    # "i":I
    .restart local v22    # "numSippers":I
    .restart local v30    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_5
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v38

    div-double v36, v36, v38

    int-to-double v0, v13

    move-wide/from16 v38, v0

    mul-double v26, v36, v38

    .line 570
    .local v26, "percentOfTotal":D
    const-wide/high16 v36, 0x3fe0000000000000L    # 0.5

    add-double v36, v36, v26

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_2

    .line 573
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v36, v0

    sget-object v37, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_6

    .line 576
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v38

    const-wide/high16 v40, 0x4000000000000000L    # 2.0

    mul-double v38, v38, v40

    const-wide/high16 v40, 0x4008000000000000L    # 3.0

    div-double v38, v38, v40

    cmpg-double v36, v36, v38

    if-ltz v36, :cond_2

    .line 579
    const-wide/high16 v36, 0x4024000000000000L    # 10.0

    cmpg-double v36, v26, v36

    if-ltz v36, :cond_2

    .line 582
    const-string v36, "user"

    sget-object v37, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_2

    .line 586
    :cond_6
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v36, v0

    sget-object v37, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_7

    .line 589
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v38

    const-wide/high16 v40, 0x4000000000000000L    # 2.0

    div-double v38, v38, v40

    cmpg-double v36, v36, v38

    if-ltz v36, :cond_2

    .line 592
    const-wide/high16 v36, 0x4014000000000000L    # 5.0

    cmpg-double v36, v26, v36

    if-ltz v36, :cond_2

    .line 595
    const-string v36, "user"

    sget-object v37, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_2

    .line 599
    :cond_7
    new-instance v35, Landroid/os/UserHandle;

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v36

    invoke-static/range {v36 .. v36}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v36

    invoke-direct/range {v35 .. v36}, Landroid/os/UserHandle;-><init>(I)V

    .line 600
    .local v35, "userHandle":Landroid/os/UserHandle;
    new-instance v15, Lcom/android/settings/fuelgauge/BatteryEntry;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v30

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 601
    .local v15, "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v36, v0

    invoke-virtual {v15}, Lcom/android/settings/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 603
    .local v10, "badgedIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v36, v0

    invoke-virtual {v15}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 605
    .local v12, "contentDescription":Ljava/lang/CharSequence;
    new-instance v28, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v36

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-direct {v0, v1, v10, v12, v15}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    .line 608
    .local v28, "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v36, v0

    const-wide/high16 v38, 0x4059000000000000L    # 100.0

    mul-double v36, v36, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v38

    div-double v24, v36, v38

    .line 609
    .local v24, "percentOfMax":D
    move-wide/from16 v0, v26

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->percent:D

    .line 610
    invoke-virtual {v15}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 611
    add-int/lit8 v36, v16, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 612
    move-object/from16 v0, v28

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    .line 613
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v36, v0

    if-eqz v36, :cond_8

    .line 614
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 616
    :cond_8
    const/4 v7, 0x1

    .line 618
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v36

    const-string v37, "CscFeature_Setting_ConfigOperatorCallService"

    invoke-virtual/range {v36 .. v37}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v37, "tphone"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_c

    .line 619
    const-string v19, "com.skt.prod.phone"

    .line 620
    .local v19, "mTphone":Ljava/lang/String;
    const-string v20, "com.skt.prod.dialer"

    .line 621
    .local v20, "mTphoneDialer":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    const v37, 0x7f0a1dc7

    invoke-virtual/range {v36 .. v37}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 622
    .local v21, "mTphoneString":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v6

    .line 624
    .local v6, "Sipper_Name":Ljava/lang/String;
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    move-object/from16 v36, v0

    if-eqz v36, :cond_a

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, "com.skt.prod.phone"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_9

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, "com.skt.prod.dialer"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_a

    .line 625
    :cond_9
    const-string v36, "PowerUsageSummary"

    const-string v37, "remove T phone"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 627
    :cond_a
    if-eqz v6, :cond_c

    const-string v36, "com.skt.prod.phone"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_b

    const-string v36, "com.skt.prod.dialer"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_c

    .line 628
    :cond_b
    const-string v36, "PowerUsageSummary"

    const-string v37, "remove T phone"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 632
    .end local v6    # "Sipper_Name":Ljava/lang/String;
    .end local v19    # "mTphone":Ljava/lang/String;
    .end local v20    # "mTphoneDialer":Ljava/lang/String;
    .end local v21    # "mTphoneString":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    move-object/from16 v36, v0

    const/16 v37, -0x3

    invoke-virtual/range {v36 .. v37}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 635
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v36

    if-eqz v36, :cond_d

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 638
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v36

    const/16 v37, 0xb

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_2

    .line 644
    .end local v10    # "badgedIcon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "contentDescription":Ljava/lang/CharSequence;
    .end local v13    # "dischargeAmount":I
    .end local v15    # "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    .end local v16    # "i":I
    .end local v22    # "numSippers":I
    .end local v24    # "percentOfMax":D
    .end local v26    # "percentOfTotal":D
    .end local v28    # "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .end local v29    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .end local v30    # "sipper":Lcom/android/internal/os/BatterySipper;
    .end local v34    # "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    .end local v35    # "userHandle":Landroid/os/UserHandle;
    :cond_e
    if-nez v7, :cond_14

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 647
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v36

    if-eqz v36, :cond_f

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 650
    :cond_f
    invoke-static {}, Lcom/android/settings/Utils;->isGridSimpleMenuEnabled()Z

    move-result v36

    if-eqz v36, :cond_10

    .line 651
    const/16 v36, -0x4

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPowerSavingPreference(I)V

    .line 660
    :cond_10
    :goto_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v36

    const-string v37, "CscFeature_ATT_Device_Health_Enabled"

    invoke-virtual/range {v36 .. v37}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_11

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    move-object/from16 v36, v0

    if-eqz v36, :cond_11

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    move-object/from16 v37, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v38, "display_battery_percentage"

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    if-eqz v36, :cond_15

    const/16 v36, 0x1

    :goto_6
    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 668
    :cond_11
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v36

    const/16 v37, 0x64

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_16

    const/16 v17, 0x1

    .line 669
    .local v17, "isKnoxUser":Z
    :goto_7
    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    move-object/from16 v36, v0

    if-eqz v36, :cond_12

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 673
    :cond_12
    if-nez v7, :cond_13

    .line 674
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    .line 677
    :cond_13
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->startRequestQueue()V

    goto/16 :goto_0

    .line 654
    .end local v17    # "isKnoxUser":Z
    :cond_14
    invoke-static {}, Lcom/android/settings/Utils;->isGridSimpleMenuEnabled()Z

    move-result v36

    if-eqz v36, :cond_10

    .line 655
    const/16 v36, -0x6

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPowerSavingPreference(I)V

    goto/16 :goto_5

    .line 662
    :cond_15
    const/16 v36, 0x0

    goto :goto_6

    .line 668
    :cond_16
    const/16 v17, 0x0

    goto :goto_7
.end method

.method private updateBatteryStatus(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 507
    if-eqz p1, :cond_3

    .line 508
    invoke-static {p1}, Lcom/android/settings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "batteryLevel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/settings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "batteryStatus":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 512
    invoke-static {p1}, Lcom/android/settings/Utils;->isCharger(Landroid/content/Intent;)Z

    move-result v2

    .line 513
    .local v2, "isCharging":Z
    const-string v3, "PowerUsageSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateBatteryStatus, isCharging : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 516
    .end local v2    # "isCharging":Z
    :cond_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLevel:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatus:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 517
    :cond_1
    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLevel:Ljava/lang/String;

    .line 518
    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatus:Ljava/lang/String;

    .line 522
    .end local v0    # "batteryLevel":Ljava/lang/String;
    .end local v1    # "batteryStatus":Ljava/lang/String;
    :goto_1
    return v4

    .restart local v0    # "batteryLevel":Ljava/lang/String;
    .restart local v1    # "batteryStatus":Ljava/lang/String;
    .restart local v2    # "isCharging":Z
    :cond_2
    move v3, v5

    .line 514
    goto :goto_0

    .end local v0    # "batteryLevel":Ljava/lang/String;
    .end local v1    # "batteryStatus":Ljava/lang/String;
    .end local v2    # "isCharging":Z
    :cond_3
    move v4, v5

    .line 522
    goto :goto_1
.end method


# virtual methods
.method public init()V
    .locals 7

    .prologue
    const v4, 0x7f0a0a61

    const v3, 0x7f0a0a60

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 285
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 286
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "display_battery_percentage"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 289
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "adaptive_fast_charging"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->resume()V

    .line 295
    :cond_2
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "psm_switch"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    :goto_2
    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 297
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isDisplayedPowerSaving()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 298
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "powersaving_switch"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v3

    :goto_3
    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 301
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ultra_powersaving_mode"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_9

    :goto_4
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "powersaving_switch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 306
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 286
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 289
    goto :goto_1

    :cond_7
    move v0, v4

    .line 295
    goto :goto_2

    :cond_8
    move v0, v4

    .line 298
    goto :goto_3

    :cond_9
    move v3, v4

    .line 301
    goto :goto_4
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 166
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    .line 167
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 168
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 172
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 173
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 175
    const v1, 0x7f07009e

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 176
    const-string v1, "app_list"

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 177
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v3, "display_battery_level"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    .line 178
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v3, "power_saving_mode_battery"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

    .line 180
    new-instance v1, Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-direct {v1, v3, v4}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    .line 181
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v3, "powersaving"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v3, "ultra_powersaving"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v3, "adaptive_fast_charging"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 195
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v3, 0x64

    if-lt v1, v3, :cond_1

    move v0, v2

    .line 196
    .local v0, "isKnoxUser":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 201
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->setHasOptionsMenu(Z)V

    .line 202
    return-void

    .line 195
    .end local v0    # "isKnoxUser":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v9, 0x7f0a0e58

    const/4 v8, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 408
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/16 v7, 0x64

    if-lt v6, v7, :cond_1

    move v2, v4

    .line 416
    .local v2, "isKnoxUser":Z
    :goto_0
    const/4 v6, 0x2

    const v7, 0x7f0a0b53

    invoke-interface {p1, v5, v6, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x7f0201f6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    const/16 v7, 0x72

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    .line 419
    .local v3, "refresh":Landroid/view/MenuItem;
    invoke-static {}, Lcom/android/settings/Utils;->isOSUpgrade()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 420
    const/4 v6, 0x5

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 429
    :goto_1
    if-nez v2, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isDisplayedPowerSaving()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 431
    invoke-interface {p1, v5, v8, v4, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v6, 0x7f020113

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 442
    :cond_0
    :goto_2
    return-void

    .end local v2    # "isKnoxUser":Z
    .end local v3    # "refresh":Landroid/view/MenuItem;
    :cond_1
    move v2, v5

    .line 408
    goto :goto_0

    .line 422
    .restart local v2    # "isKnoxUser":Z
    .restart local v3    # "refresh":Landroid/view/MenuItem;
    :cond_2
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 436
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0a0e5f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "helpUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 437
    invoke-interface {p1, v5, v8, v5, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 438
    .local v0, "help":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/android/settings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 331
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->storeState()V

    .line 334
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->clearUidCache()V

    .line 336
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 446
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isDisplayedPowerSaving()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 449
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "helphub:appid"

    const-string v4, "power_saving_mode"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 455
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 457
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "helphub:section"

    const-string v4, "power_saving_mode"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 460
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 461
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 464
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    const-string v3, "PowerUsageSummary"

    const-string v4, "There is no help app."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v2, v3

    .line 494
    goto :goto_0

    .line 470
    :pswitch_0
    iget v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v4, :cond_3

    .line 471
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 475
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 473
    :cond_3
    iput v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    .line 478
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 479
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 480
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 310
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->stopRequestQueue()V

    .line 311
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 314
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->pause()V

    .line 317
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 318
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isDisplayedPowerSaving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 321
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 14
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const v4, 0x7f0a0b15

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 341
    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mOpenDetailMenu:Z

    if-eqz v2, :cond_0

    .line 342
    sget v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSettingValue:I

    const/4 v13, -0x1

    if-eq v2, v13, :cond_0

    .line 343
    sget v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSettingValue:I

    if-ne v2, v6, :cond_2

    move v12, v6

    .line 345
    .local v12, "value":Z
    :goto_0
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v8, v0

    .line 346
    .local v8, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    invoke-virtual {v8, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v8    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v12    # "value":Z
    :cond_0
    :goto_1
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    if-eqz v2, :cond_4

    .line 356
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const-string v6, "tmp_bat_history.bin"

    invoke-virtual {v2, v6}, Lcom/android/internal/os/BatteryStatsHelper;->storeStatsHistoryInFile(Ljava/lang/String;)V

    .line 357
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 358
    .local v3, "args":Landroid/os/Bundle;
    const-string v2, "stats"

    const-string v6, "tmp_bat_history.bin"

    invoke-virtual {v3, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v2, "broadcast"

    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_3

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 364
    .local v1, "sa":Lcom/android/settings/SettingsActivity;
    const-class v2, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v6, v5

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 372
    .end local v1    # "sa":Lcom/android/settings/SettingsActivity;
    :cond_1
    :goto_2
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    .line 402
    .end local v3    # "args":Landroid/os/Bundle;
    :goto_3
    return v6

    :cond_2
    move v12, v7

    .line 343
    goto :goto_0

    .line 349
    .restart local v12    # "value":Z
    :catch_0
    move-exception v9

    .line 350
    .local v9, "e":Ljava/lang/ClassCastException;
    const-string v2, "PowerUsageSummary"

    const-string v13, "ClassCastException while trying to get checkBoxStatePreference"

    invoke-static {v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 366
    .end local v9    # "e":Ljava/lang/ClassCastException;
    .end local v12    # "value":Z
    .restart local v3    # "args":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 369
    .local v1, "sa":Landroid/preference/PreferenceActivity;
    const-class v2, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v6, v5

    invoke-virtual/range {v1 .. v7}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_2

    .line 374
    .end local v1    # "sa":Landroid/preference/PreferenceActivity;
    .end local v3    # "args":Landroid/os/Bundle;
    :cond_4
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 375
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    .line 376
    .restart local v12    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "display_battery_percentage"

    if-eqz v12, :cond_5

    move v7, v6

    :cond_5
    invoke-static {v2, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 378
    .end local v12    # "value":Z
    :cond_6
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 379
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    .line 380
    .restart local v12    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "adaptive_fast_charging"

    if-eqz v12, :cond_7

    move v7, v6

    :cond_7
    invoke-static {v2, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 382
    .end local v12    # "value":Z
    :cond_8
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 383
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto :goto_3

    .line 384
    :cond_9
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 385
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto/16 :goto_3

    .line 386
    :cond_a
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 387
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto/16 :goto_3

    .line 390
    :cond_b
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-nez v2, :cond_c

    move v6, v7

    .line 391
    goto/16 :goto_3

    :cond_c
    move-object/from16 v11, p2

    .line 393
    check-cast v11, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 394
    .local v11, "pgp":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v11}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/BatteryEntry;

    move-result-object v10

    .line 395
    .local v10, "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_d

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-static {v2, v4, v5, v10, v6}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startBatteryDetailPage(Lcom/android/settings/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Z)V

    .line 402
    :goto_4
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto/16 :goto_3

    .line 399
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-static {v2, v4, v5, v10, v6}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startBatteryDetailPage(Landroid/preference/PreferenceActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Z)V

    goto :goto_4
.end method

.method public onResume()V
    .locals 15

    .prologue
    .line 213
    const/4 v10, 0x0

    .line 214
    .local v10, "super_mOpenDetailMenu":Z
    iget-boolean v10, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 215
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 217
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "tmp_bat_history.bin"

    invoke-static {v11, v12}, Lcom/android/internal/os/BatteryStatsHelper;->dropFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateBatteryStatus(Landroid/content/Intent;)Z

    .line 221
    iget-object v11, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x64

    invoke-virtual {v11, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 222
    iget-object v11, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x64

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    iget-object v11, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 226
    :cond_0
    const/4 v1, 0x0

    .line 227
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 228
    .local v3, "intent":Landroid/content/Intent;
    const/4 v6, 0x0

    .line 229
    .local v6, "mSearchTargetKey":Ljava/lang/String;
    const/4 v7, -0x1

    .line 231
    .local v7, "mSearchTargetValue":I
    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 232
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 237
    :goto_0
    if-eqz v1, :cond_2

    .line 238
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArrayLinkKey()Ljava/util/ArrayList;

    move-result-object v0

    .line 239
    .local v0, "arryLinkKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "mSearchTargetKey":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 241
    .restart local v6    # "mSearchTargetKey":Ljava/lang/String;
    :cond_1
    const-string v11, "extra_setting_value"

    const/4 v12, -0x1

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 245
    .end local v0    # "arryLinkKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    if-eqz v6, :cond_7

    .line 246
    iput-boolean v10, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 247
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->init()V

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 251
    .local v9, "ps":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 252
    .local v4, "list":Landroid/widget/ListView;
    const/4 v8, 0x0

    .line 253
    .local v8, "position":I
    const/4 v8, 0x0

    :goto_1
    iget-object v11, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v11}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v11

    if-ge v8, v11, :cond_7

    .line 254
    iget-object v11, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v11, v8}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 255
    .local v2, "check_item":Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 256
    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setSelection(I)V

    .line 257
    const/4 v11, -0x1

    if-eq v7, v11, :cond_5

    .line 258
    invoke-virtual {p0, v9, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 259
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mOpenDetailMenu:Z

    .line 264
    :cond_3
    :goto_2
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->removeOneDepthArrayLinkKey()V

    .line 282
    .end local v2    # "check_item":Landroid/preference/Preference;
    .end local v4    # "list":Landroid/widget/ListView;
    .end local v8    # "position":I
    .end local v9    # "ps":Landroid/preference/PreferenceScreen;
    :goto_3
    return-void

    .line 235
    :cond_4
    const-string v11, "extra_second_fragment_bundle_key"

    invoke-virtual {v3, v11}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    .line 260
    .restart local v2    # "check_item":Landroid/preference/Preference;
    .restart local v4    # "list":Landroid/widget/ListView;
    .restart local v8    # "position":I
    .restart local v9    # "ps":Landroid/preference/PreferenceScreen;
    :cond_5
    const-string v11, "display_battery_level"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "adaptive_fast_charging"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 262
    invoke-virtual {p0, v9, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_2

    .line 253
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 272
    .end local v2    # "check_item":Landroid/preference/Preference;
    .end local v4    # "list":Landroid/widget/ListView;
    .end local v8    # "position":I
    .end local v9    # "ps":Landroid/preference/PreferenceScreen;
    :cond_7
    new-instance v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;

    invoke-direct {v5, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    .line 281
    .local v5, "mHandler":Landroid/os/Handler;
    const/4 v11, 0x0

    const-wide/16 v12, 0x64

    invoke-virtual {v5, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_3
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 206
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 207
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 208
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 325
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 326
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 327
    return-void
.end method
