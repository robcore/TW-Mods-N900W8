.class public Lcom/android/settings/location/LocationSettings;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private enabledGps:Z

.field private injector:Lcom/android/settings/location/SettingsInjector;

.field private isMsapInstalled:Z

.field private mAgpsFunctionSwitch:Landroid/preference/PreferenceScreen;

.field private mAgpsMenu:Landroid/preference/PreferenceCategory;

.field private mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

.field private mClockSync:Landroid/preference/CheckBoxPreference;

.field private mIsEmerMode:Z

.field private mLocationMode:Landroid/preference/Preference;

.field private mMsap:Landroid/preference/CheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSatelliteView:Landroid/preference/PreferenceScreen;

.field private mSp:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitch:Landroid/widget/Switch;

.field private mTagCamera:Landroid/preference/CheckBoxPreference;

.field private mTagCurrentLocation:Landroid/preference/PreferenceCategory;

.field private mTagScrapbook:Landroid/preference/CheckBoxPreference;

.field private mTagSnote:Landroid/preference/CheckBoxPreference;

.field private mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

.field private mValidListener:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    .line 82
    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->enabledGps:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->isMsapInstalled:Z

    .line 149
    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mIsEmerMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/location/LocationSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/LocationSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/location/LocationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/LocationSettings;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/location/LocationSettings;)Lcom/android/settings/location/SettingsInjector;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/LocationSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/location/LocationSettings;ILjava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/location/LocationSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Boolean;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/LocationSettings;->setTagCurrentLocation(ILjava/lang/Boolean;)V

    return-void
.end method

.method private addCurrentTagLocation(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 730
    const/4 v0, 0x0

    .line 731
    .local v0, "isCameraInstalled":Z
    const/4 v3, 0x0

    .line 732
    .local v3, "isSnoteInstalled":Z
    const/4 v2, 0x0

    .line 733
    .local v2, "isScrapbookInstalled":Z
    const/4 v4, 0x0

    .line 735
    .local v4, "isVoicerecorderInstalled":Z
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.sec.android.app.camera"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 736
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.samsung.android.snote"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 737
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.samsung.android.app.pinboard"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 738
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.sec.android.app.voicenote"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 740
    const-string v5, "tag_current_location"

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagCurrentLocation:Landroid/preference/PreferenceCategory;

    .line 741
    const-string v5, "tag_camera"

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    .line 742
    const-string v5, "tag_snote"

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    .line 743
    const-string v5, "tag_scrapbook"

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    .line 744
    const-string v5, "tag_voice_recorder"

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    .line 746
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_5

    const/4 v1, 0x1

    .line 749
    .local v1, "isKnoxMode":Z
    :goto_0
    if-nez v1, :cond_7

    .line 750
    if-nez v0, :cond_0

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    if-eqz v4, :cond_6

    .line 751
    :cond_0
    const-string v5, "LocationSettings"

    const-string v6, "TagCurrentLocation has a elements"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :goto_1
    if-nez v0, :cond_1

    .line 756
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 757
    :cond_1
    if-nez v3, :cond_2

    .line 758
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 759
    :cond_2
    if-nez v2, :cond_3

    .line 760
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 761
    :cond_3
    if-nez v4, :cond_4

    .line 762
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 771
    :cond_4
    :goto_2
    return-void

    .line 746
    .end local v1    # "isKnoxMode":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 753
    .restart local v1    # "isKnoxMode":Z
    :cond_6
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagCurrentLocation:Landroid/preference/PreferenceCategory;

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 764
    :cond_7
    const-string v5, "LocationSettings"

    const-string v6, "TagCurrentLocation is not supported in this model"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagCurrentLocation:Landroid/preference/PreferenceCategory;

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 766
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 767
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 768
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 769
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 422
    const-string v3, "location_services"

    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 424
    .local v0, "categoryLocationServices":Landroid/preference/PreferenceCategory;
    new-instance v3, Lcom/android/settings/location/SettingsInjector;

    invoke-direct {v3, p1}, Lcom/android/settings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    .line 425
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {v3}, Lcom/android/settings/location/SettingsInjector;->getInjectedSettings()Ljava/util/List;

    move-result-object v2

    .line 427
    .local v2, "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v3, Lcom/android/settings/location/LocationSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/location/LocationSettings$4;-><init>(Lcom/android/settings/location/LocationSettings;)V

    iput-object v3, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 437
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 438
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 439
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 441
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 442
    invoke-direct {p0, v2, v0}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 447
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p2, "container"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v2, Lcom/android/settings/location/LocationSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/location/LocationSettings$1;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 239
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 240
    .local v0, "entry":Landroid/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 242
    .end local v0    # "entry":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 17

    .prologue
    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 247
    .local v1, "activity":Landroid/preference/PreferenceActivity;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    .line 248
    .local v10, "root":Landroid/preference/PreferenceScreen;
    if-eqz v10, :cond_0

    .line 249
    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 251
    :cond_0
    const v11, 0x7f07006c

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/location/LocationSettings;->addPreferencesFromResource(I)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    .line 254
    const-string v11, "location_e911"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 258
    .local v5, "e911":Landroid/preference/Preference;
    if-eqz v5, :cond_1

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 263
    :cond_1
    const-string v11, "msap_service"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/location/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    .line 266
    const-string v11, "clock_sync"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/CheckBoxPreference;

    .line 267
    const-string v11, "assisted_gps_function_switch"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/location/LocationSettings;->mAgpsFunctionSwitch:Landroid/preference/PreferenceScreen;

    .line 268
    const-string v11, "satellite_view"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/location/LocationSettings;->mSatelliteView:Landroid/preference/PreferenceScreen;

    .line 269
    const-string v11, "cmcc_agpsmenu"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/location/LocationSettings;->mAgpsMenu:Landroid/preference/PreferenceCategory;

    .line 271
    const-string v11, "CHM"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/location/LocationSettings;->mAgpsFunctionSwitch:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/location/LocationSettings;->mSatelliteView:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/location/LocationSettings;->mAgpsMenu:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 280
    :cond_2
    const/4 v4, 0x1

    .line 281
    .local v4, "defaultValue":I
    const-string v11, "com.android.smsaplocationservice"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/location/LocationSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v11

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/settings/location/LocationSettings;->isMsapInstalled:Z

    .line 289
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/location/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    if-eqz v11, :cond_4

    .line 290
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/settings/location/LocationSettings;->isMsapInstalled:Z

    if-nez v11, :cond_7

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/location/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 295
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/location/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 296
    new-instance v6, Landroid/content/Intent;

    const-string v11, "android.settings.MSAP_START"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v6, "i":Landroid/content/Intent;
    const/16 v11, 0x20

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 298
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/location/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_msap_saved_state"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 301
    .end local v6    # "i":Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/location/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    new-instance v12, Lcom/android/settings/location/LocationSettings$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/settings/location/LocationSettings$2;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 327
    :cond_4
    const-string v11, "location_mode"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    .line 328
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    new-instance v12, Lcom/android/settings/location/LocationSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v1}, Lcom/android/settings/location/LocationSettings$3;-><init>(Lcom/android/settings/location/LocationSettings;Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 340
    const-string v11, "recent_location_requests"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    .line 347
    new-instance v8, Lcom/android/settings/location/RecentLocationApps;

    invoke-direct {v8, v1}, Lcom/android/settings/location/RecentLocationApps;-><init>(Landroid/preference/PreferenceActivity;)V

    .line 348
    .local v8, "recentApps":Lcom/android/settings/location/RecentLocationApps;
    invoke-virtual {v8}, Lcom/android/settings/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v9

    .line 349
    .local v9, "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_9

    .line 350
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 364
    :goto_1
    const-string v11, "location_services"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 365
    .local v3, "categoryLocationServices":Landroid/preference/PreferenceCategory;
    const-string v11, "location_history"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/location/LocationSettings;->mSp:Landroid/preference/SwitchPreferenceScreen;

    .line 366
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/location/LocationSettings;->mSp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v11, :cond_5

    .line 367
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/location/LocationSettings;->mSp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 391
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v10}, Lcom/android/settings/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 394
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v10}, Lcom/android/settings/location/LocationSettings;->addCurrentTagLocation(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 396
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0f0054

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 398
    .local v7, "padding":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v7, v14}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 399
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v11

    if-nez v11, :cond_6

    .line 400
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0205fa

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0205fb

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 403
    :cond_6
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v11

    const/16 v12, 0x10

    const/16 v13, 0x10

    invoke-virtual {v11, v12, v13}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 405
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v13, Landroid/app/ActionBar$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    const v16, 0x800015

    invoke-direct/range {v13 .. v16}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v11, v12, v13}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->refreshLocationMode()V

    .line 411
    return-object v10

    .line 293
    .end local v3    # "categoryLocationServices":Landroid/preference/PreferenceCategory;
    .end local v7    # "padding":I
    .end local v8    # "recentApps":Lcom/android/settings/location/RecentLocationApps;
    .end local v9    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/location/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "wifi_msap_saved_state"

    invoke-static {v11, v13, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_8

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_8
    const/4 v11, 0x0

    goto :goto_2

    .line 353
    .restart local v8    # "recentApps":Lcom/android/settings/location/RecentLocationApps;
    .restart local v9    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_9
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 354
    .local v2, "banner":Landroid/preference/Preference;
    const v11, 0x7f0400fc

    invoke-virtual {v2, v11}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 355
    const v11, 0x7f0a0845

    invoke-virtual {v2, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 356
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 357
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1
.end method

.method private setTagCurrentLocation(ILjava/lang/Boolean;)V
    .locals 3
    .param p1, "selectedId"    # I
    .param p2, "enable"    # Ljava/lang/Boolean;

    .prologue
    const/4 v1, 0x1

    .line 684
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 686
    .local v0, "nEnable":I
    :goto_0
    if-nez p1, :cond_1

    .line 687
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tag_current_location_camera"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 688
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 701
    :goto_1
    return-void

    .line 684
    .end local v0    # "nEnable":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 689
    .restart local v0    # "nEnable":I
    :cond_1
    if-ne p1, v1, :cond_2

    .line 690
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tag_current_location_snote"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 691
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 692
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 693
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tag_current_location_scrapbook"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 694
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 695
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 696
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tag_current_location_voicerecorder"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 697
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 699
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->updateTagCurrentLocation()V

    goto :goto_1
.end method

.method private updateTagCurrentLocation()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 704
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "tag_current_location_camera"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 706
    .local v0, "tagCameraDB":I
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "tag_current_location_snote"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 708
    .local v2, "tagSnoteDB":I
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "tag_current_location_scrapbook"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 710
    .local v1, "tagScrapbookDB":I
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "tag_current_location_voicerecorder"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 713
    .local v3, "tagVoicerecorderDB":I
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 714
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 715
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 716
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    if-nez v3, :cond_4

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 718
    const-string v4, "CHM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 719
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    .line 721
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "clock_sync_enabled"

    const/4 v9, 0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_5

    :goto_4
    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 725
    :cond_0
    return-void

    :cond_1
    move v4, v6

    .line 713
    goto :goto_0

    :cond_2
    move v4, v6

    .line 714
    goto :goto_1

    :cond_3
    move v4, v6

    .line 715
    goto :goto_2

    :cond_4
    move v4, v6

    .line 716
    goto :goto_3

    :cond_5
    move v6, v5

    .line 721
    goto :goto_4
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 454
    const v0, 0x7f0a0e66

    return v0
.end method

.method public isPackageExists(Ljava/lang/String;)Z
    .locals 8
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 568
    const-string v5, "LocationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " inside isPackageExists and targetPackage is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 572
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-nez v3, :cond_1

    .line 580
    :cond_0
    :goto_0
    return v4

    .line 574
    :cond_1
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 575
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 576
    .local v1, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 577
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 175
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    .line 176
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 544
    if-eqz p2, :cond_0

    .line 556
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettings;->setLocationMode(I)V

    .line 557
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->refreshLocationMode()V

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettings;->setLocationMode(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 163
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "dialogId"    # I

    .prologue
    .line 639
    const/4 v1, 0x0

    .line 641
    .local v1, "nTitle":I
    packed-switch p1, :pswitch_data_0

    .line 658
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a1b51

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a1a6e

    invoke-virtual {p0, v3}, Lcom/android/settings/location/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/location/LocationSettings$6;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/location/LocationSettings$6;-><init>(Lcom/android/settings/location/LocationSettings;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a01cf

    invoke-virtual {p0, v3}, Lcom/android/settings/location/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/location/LocationSettings$5;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/location/LocationSettings$5;-><init>(Lcom/android/settings/location/LocationSettings;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 673
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/settings/location/LocationSettings$7;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/location/LocationSettings$7;-><init>(Lcom/android/settings/location/LocationSettings;I)V

    invoke-virtual {p0, v2}, Lcom/android/settings/location/LocationSettings;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 680
    return-object v0

    .line 643
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :pswitch_0
    const v1, 0x7f0a15c5

    .line 644
    goto :goto_0

    .line 646
    :pswitch_1
    const v1, 0x7f0a12da

    .line 647
    goto :goto_0

    .line 649
    :pswitch_2
    const v1, 0x7f0a1b4f

    .line 650
    goto :goto_0

    .line 652
    :pswitch_3
    const v1, 0x7f0a1b50

    .line 653
    goto :goto_0

    .line 641
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onDestroyView()V

    .line 182
    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const v6, 0x7f0a0842

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 459
    packed-switch p1, :pswitch_data_0

    .line 483
    :goto_0
    if-eqz p1, :cond_5

    move v0, v1

    .line 487
    .local v0, "enabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    if-nez p2, :cond_6

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 488
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    if-eqz v0, :cond_7

    if-nez p2, :cond_7

    :goto_3
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 489
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 491
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 493
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 499
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 502
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 507
    :cond_1
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    if-eqz v1, :cond_2

    .line 508
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {v1}, Lcom/android/settings/location/SettingsInjector;->reloadStatusMessages()V

    .line 510
    :cond_2
    return-void

    .line 461
    .end local v0    # "enabled":Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0a0843

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 464
    :pswitch_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "iw"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "he"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 465
    :cond_3
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u200f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/android/settings/location/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 467
    :cond_4
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 471
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0a0841

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 474
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0a0840

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 483
    goto/16 :goto_1

    .restart local v0    # "enabled":Z
    :cond_6
    move v3, v2

    .line 487
    goto/16 :goto_2

    :cond_7
    move v1, v2

    .line 488
    goto/16 :goto_3

    .line 459
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 215
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 224
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 226
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 228
    :cond_1
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onPause()V

    .line 229
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "LocationSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    const-string v1, "LocationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swallowing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 585
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 586
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 587
    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettings;->showDialog(I)V

    .line 618
    :goto_0
    return v1

    .line 589
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/settings/location/LocationSettings;->setTagCurrentLocation(ILjava/lang/Boolean;)V

    goto :goto_0

    .line 591
    :cond_1
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 592
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-ne v2, v1, :cond_2

    .line 593
    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationSettings;->showDialog(I)V

    goto :goto_0

    .line 595
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/location/LocationSettings;->setTagCurrentLocation(ILjava/lang/Boolean;)V

    goto :goto_0

    .line 597
    :cond_3
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    .line 598
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-ne v2, v1, :cond_4

    .line 599
    invoke-virtual {p0, v3}, Lcom/android/settings/location/LocationSettings;->showDialog(I)V

    goto :goto_0

    .line 601
    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/settings/location/LocationSettings;->setTagCurrentLocation(ILjava/lang/Boolean;)V

    goto :goto_0

    .line 603
    :cond_5
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 604
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-ne v2, v1, :cond_6

    .line 605
    invoke-virtual {p0, v4}, Lcom/android/settings/location/LocationSettings;->showDialog(I)V

    goto :goto_0

    .line 607
    :cond_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/android/settings/location/LocationSettings;->setTagCurrentLocation(ILjava/lang/Boolean;)V

    goto :goto_0

    .line 609
    :cond_7
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 611
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "clock_sync_enabled"

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 615
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/settings/location/LocationSettingsBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mOpenDetailMenu:Z

    .line 188
    .local v0, "super_mOpenDetailMenu":Z
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mOpenDetailMenu:Z

    .line 192
    :cond_0
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onResume()V

    .line 196
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 197
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->updateTagCurrentLocation()V

    .line 198
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-nez v1, :cond_1

    .line 200
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 202
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 205
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mOpenDetailMenu:Z

    .line 207
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->openSearchDetailMenu()V

    .line 210
    :cond_2
    return-void
.end method
