.class public Lcom/android/settings/FeatureSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FeatureSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static mPackageName:[Ljava/lang/String;


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mAdapt:Landroid/preference/SwitchPreferenceScreen;

.field private mAirMotion:Landroid/preference/SwitchPreferenceScreen;

.field private mAirView:Landroid/preference/SwitchPreferenceScreen;

.field private mEasyMode:Landroid/preference/SwitchPreferenceScreen;

.field private mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mMulti:Landroid/preference/SwitchPreferenceScreen;

.field private mMultiUser:Landroid/preference/Preference;

.field private mOPMode:Landroid/preference/SwitchPreferenceScreen;

.field private mPm:Landroid/content/pm/PackageManager;

.field mResolver:Landroid/content/ContentResolver;

.field private mSBeam:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartPause:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartStay:Landroid/preference/SwitchPreferenceScreen;

.field private mSupportFolderType:Z

.field protected mSwitchUncheckHandler:Landroid/os/Handler;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;

.field private mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.sbrowser"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.samsung.everglades.video"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "tv.peel.samsung.app"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sec.readershub"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.android.apps.books"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/FeatureSettings;->mPackageName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 98
    iput-object v0, p0, Lcom/android/settings/FeatureSettings;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 100
    iput-object v0, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 101
    iput-object v0, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 114
    new-instance v0, Lcom/android/settings/FeatureSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/FeatureSettings$1;-><init>(Lcom/android/settings/FeatureSettings;)V

    iput-object v0, p0, Lcom/android/settings/FeatureSettings;->mSwitchUncheckHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/FeatureSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/FeatureSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/FeatureSettings;->turnOnEasyMode(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/FeatureSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/FeatureSettings;->turnOnOPMode(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FeatureSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private initUI()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    .line 175
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 176
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "air_view_master_onoff"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_12

    move v8, v9

    :goto_0
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 180
    :goto_1
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "air_motion_engine"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_15

    move v8, v9

    :goto_2
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 181
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "voice_input_control"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_16

    move v8, v9

    :goto_3
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 182
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "intelligent_sleep_mode"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_17

    move v8, v9

    :goto_4
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 183
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "smart_pause"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_18

    move v8, v9

    :goto_5
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 184
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "smart_scroll"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_19

    move v8, v9

    :goto_6
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 185
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "easy_mode_switch"

    invoke-static {v8, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_1a

    move v8, v9

    :goto_7
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 186
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "key_spam_smart"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_1b

    move v8, v9

    :goto_8
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 187
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "screen_mode_automatic_setting"

    invoke-static {v8, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_1c

    move v8, v9

    :goto_9
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 189
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v11, "CscFeature_Setting_ConfigOpeartorHomeMode"

    invoke-virtual {v8, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "teasymode"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 190
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "op_mode_switch"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 192
    .local v5, "mOPModestate":I
    if-ne v5, v9, :cond_0

    .line 193
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 194
    :cond_0
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    if-ne v5, v9, :cond_1d

    move v8, v9

    :goto_a
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 195
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 196
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    .end local v5    # "mOPModestate":I
    :cond_1
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "multi_window_enabled"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_1e

    :goto_b
    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 200
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 202
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 203
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 205
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 207
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 208
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 209
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 210
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 211
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 212
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 213
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 214
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 215
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 216
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 217
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 218
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 219
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 220
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 221
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 222
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mMultiUser:Landroid/preference/Preference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 225
    .local v6, "ps":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamSupported(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 226
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    :cond_2
    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v8}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 229
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 231
    :cond_3
    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v8}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 232
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 237
    :cond_4
    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-static {v8}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->hasDCMhome(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 238
    :cond_5
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 240
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_ConfigOpeartorHomeMode"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "teasymode"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 241
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 243
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    .line 244
    .local v1, "cscFeature":Lcom/sec/android/app/CscFeature;
    const-string v8, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v1, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    .line 245
    .local v3, "enableBlackListForCHN":Z
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    .line 246
    .local v7, "salesCode":Ljava/lang/String;
    if-eqz v3, :cond_8

    const-string v8, "CTC"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 247
    :cond_8
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 249
    :cond_9
    invoke-static {}, Lcom/android/settings/Utils;->isSupportStart_J_project()Z

    move-result v8

    if-nez v8, :cond_a

    .line 250
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportStart_J_project()Z

    move-result v8

    if-nez v8, :cond_b

    .line 254
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 257
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 267
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.vlingo.midas"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_c
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v8, :cond_c

    const-string v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SVOICE"

    invoke-static {v8}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 272
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 275
    :cond_c
    new-instance v4, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v4}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    .line 276
    .local v4, "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v8, :cond_d

    if-eqz v4, :cond_d

    iget-boolean v8, v4, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-nez v8, :cond_d

    .line 277
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 280
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.multiwindow"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 281
    .local v0, "UseMultiWindow":Z
    if-eqz v0, :cond_e

    const-string v8, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 282
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 285
    :cond_f
    const-string v8, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "ro.product.name"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "lt02"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 286
    :cond_10
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mMultiUser:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 289
    :cond_11
    return-void

    .end local v0    # "UseMultiWindow":Z
    .end local v1    # "cscFeature":Lcom/sec/android/app/CscFeature;
    .end local v3    # "enableBlackListForCHN":Z
    .end local v4    # "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    .end local v6    # "ps":Landroid/preference/PreferenceScreen;
    .end local v7    # "salesCode":Ljava/lang/String;
    :cond_12
    move v8, v10

    .line 176
    goto/16 :goto_0

    .line 178
    :cond_13
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "finger_air_view"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_14

    move v8, v9

    :goto_d
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto/16 :goto_1

    :cond_14
    move v8, v10

    goto :goto_d

    :cond_15
    move v8, v10

    .line 180
    goto/16 :goto_2

    :cond_16
    move v8, v10

    .line 181
    goto/16 :goto_3

    :cond_17
    move v8, v10

    .line 182
    goto/16 :goto_4

    :cond_18
    move v8, v10

    .line 183
    goto/16 :goto_5

    :cond_19
    move v8, v10

    .line 184
    goto/16 :goto_6

    :cond_1a
    move v8, v10

    .line 185
    goto/16 :goto_7

    :cond_1b
    move v8, v10

    .line 186
    goto/16 :goto_8

    :cond_1c
    move v8, v10

    .line 187
    goto/16 :goto_9

    .restart local v5    # "mOPModestate":I
    :cond_1d
    move v8, v10

    .line 194
    goto/16 :goto_a

    .end local v5    # "mOPModestate":I
    :cond_1e
    move v9, v10

    .line 198
    goto/16 :goto_b

    .line 268
    .restart local v1    # "cscFeature":Lcom/sec/android/app/CscFeature;
    .restart local v3    # "enableBlackListForCHN":Z
    .restart local v6    # "ps":Landroid/preference/PreferenceScreen;
    .restart local v7    # "salesCode":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 269
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v8, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c
.end method

.method private showTalkBackDisableDialog(IILjava/lang/String;)V
    .locals 4
    .param p1, "title_res_id"    # I
    .param p2, "message_res_id"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1230
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1231
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1232
    iput-object v2, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 1235
    :cond_0
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 1236
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1237
    iput-object v2, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 1240
    :cond_1
    move-object v0, p3

    .line 1241
    .local v0, "setting_type":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/FeatureSettings$11;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/FeatureSettings$11;-><init>(Lcom/android/settings/FeatureSettings;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/FeatureSettings$10;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/FeatureSettings$10;-><init>(Lcom/android/settings/FeatureSettings;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 1312
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1314
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/FeatureSettings$12;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/FeatureSettings$12;-><init>(Lcom/android/settings/FeatureSettings;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1335
    return-void
.end method

.method private turnOnEasyMode(Z)V
    .locals 9
    .param p1, "value"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1149
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1150
    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "easy_mode_switch"

    if-eqz p1, :cond_2

    move v4, v5

    :goto_0
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1152
    if-ne p1, v6, :cond_1

    .line 1153
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_scroll"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1154
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1155
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1156
    .local v3, "smart_scroll_changed":Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1157
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1159
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_pause"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1160
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1161
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1162
    .local v2, "smart_pause_changed":Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1163
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1165
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1166
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_view_master_onoff"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1170
    :goto_1
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1172
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1173
    .local v0, "finger_air_view_changed":Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1174
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1176
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "multi_window_enabled"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1178
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_OPERATOR_MODE"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1179
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "op_mode_switch"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1180
    .local v1, "mOPModecurrent":I
    if-ne v1, v6, :cond_0

    .line 1181
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f0a16f2

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1183
    :cond_0
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "op_mode_switch"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1184
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1187
    .end local v0    # "finger_air_view_changed":Landroid/content/Intent;
    .end local v1    # "mOPModecurrent":I
    .end local v2    # "smart_pause_changed":Landroid/content/Intent;
    .end local v3    # "smart_scroll_changed":Landroid/content/Intent;
    :cond_1
    return-void

    :cond_2
    move v4, v6

    .line 1150
    goto/16 :goto_0

    .line 1168
    .restart local v2    # "smart_pause_changed":Landroid/content/Intent;
    .restart local v3    # "smart_scroll_changed":Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "finger_air_view"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private turnOnOPMode(Z)V
    .locals 9
    .param p1, "value"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1190
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1191
    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "op_mode_switch"

    if-eqz p1, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1192
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "easy_mode_switch"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1194
    .local v1, "mEasymodecurrent":I
    if-ne p1, v5, :cond_3

    .line 1195
    if-nez v1, :cond_0

    .line 1196
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a16dc

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1198
    :cond_0
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "easy_mode_switch"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1199
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1200
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_scroll"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1201
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1202
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1203
    .local v3, "smart_scroll_changed":Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1204
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1206
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_pause"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1207
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1208
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1209
    .local v2, "smart_pause_changed":Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1210
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1212
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1213
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_view_master_onoff"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1217
    :goto_1
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1219
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1220
    .local v0, "finger_air_view_changed":Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1221
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1223
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "multi_window_enabled"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1227
    .end local v0    # "finger_air_view_changed":Landroid/content/Intent;
    .end local v2    # "smart_pause_changed":Landroid/content/Intent;
    .end local v3    # "smart_scroll_changed":Landroid/content/Intent;
    :goto_2
    return-void

    .end local v1    # "mEasymodecurrent":I
    :cond_1
    move v4, v6

    .line 1191
    goto/16 :goto_0

    .line 1215
    .restart local v1    # "mEasymodecurrent":I
    .restart local v2    # "smart_pause_changed":Landroid/content/Intent;
    .restart local v3    # "smart_scroll_changed":Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 1225
    .end local v2    # "smart_pause_changed":Landroid/content/Intent;
    .end local v3    # "smart_scroll_changed":Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "easy_mode_switch"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method


# virtual methods
.method public makeAdaptDisplayLayout()Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 882
    const/4 v2, 0x0

    .line 883
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400b9

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 884
    const v3, 0x7f1001cf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 886
    .local v1, "helpContent":Landroid/widget/LinearLayout;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v3, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v3}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 887
    .local v0, "first":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 888
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 889
    const v3, 0x7f0a0fb6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeContentsString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/FeatureSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 890
    const v3, 0x7f0204cf

    invoke-virtual {v0, v3}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 891
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 893
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 895
    return-object v2
.end method

.method public makeAirMotionLayout()Landroid/view/View;
    .locals 23

    .prologue
    .line 484
    const/16 v17, 0x0

    .line 485
    .local v17, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f0400b9

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 486
    const v18, 0x7f1001cf

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 488
    .local v5, "helpContent":Landroid/widget/LinearLayout;
    new-instance v3, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 489
    .local v3, "first":Lcom/android/settings/HelpItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 490
    const v18, 0x7f0a1260

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 493
    .local v13, "res":Landroid/content/res/Resources;
    const v18, 0x7f0a1278

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 494
    .local v10, "part1":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x2e

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x3002

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 495
    :cond_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 499
    :goto_0
    const v18, 0x7f0e0010

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 500
    .local v12, "proper_distance":I
    const v18, 0x7f0a127a

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 501
    .local v11, "part3":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v14

    .line 502
    .local v14, "salesCode":Ljava/lang/String;
    const-string v18, "ATT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "SPR"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "VZW"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "TMB"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "USC"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "CRI"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "VMU"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "BST"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "XAS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "TFN"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "XAR"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "CSP"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 505
    :cond_1
    const v18, 0x7f0e0011

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 506
    const v18, 0x7f0a127b

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 508
    :cond_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x2e

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x3002

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 509
    :cond_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 513
    :goto_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a1279

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 514
    .local v8, "original_str":Ljava/lang/String;
    const-string v18, "ja"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, "hi"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 515
    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const v19, 0x7f0a1278

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a127a

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x7

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a1279

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 519
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/FeatureSettings;->mSupportFolderType:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 520
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a1279

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a1bd6

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 522
    :cond_6
    const v18, 0x7f020020

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v8, v0}, Lcom/android/settings/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v7

    .line 523
    .local v7, "message_str":Landroid/text/SpannableString;
    if-eqz v7, :cond_e

    .line 524
    invoke-virtual {v3, v7}, Lcom/android/settings/HelpItem;->setContentText(Landroid/text/SpannableString;)V

    .line 528
    :goto_2
    const v18, 0x7f02062b

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 530
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 532
    new-instance v16, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 533
    .local v16, "third":Lcom/android/settings/HelpItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 534
    const v18, 0x7f0a1267

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 535
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const v19, 0x7f0a1281

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a1273

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a12bd

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a12c6

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 539
    .local v6, "mGuideContent":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 540
    const v18, 0x7f020021

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 541
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 542
    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 544
    new-instance v15, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 545
    .local v15, "second":Lcom/android/settings/HelpItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 546
    const v18, 0x7f0a1269

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 548
    const/4 v9, 0x0

    .line 549
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const-string v19, "com.samsung.android.snote"

    const/16 v20, 0x5

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 551
    if-eqz v9, :cond_f

    .line 552
    const-string v18, "FeatureSettings"

    const-string v19, "S note is Installed."

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const v19, 0x7f0a1283

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a1273

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a12ce

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a12d1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a12d4

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a12d6

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a12db

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 580
    :goto_3
    invoke-virtual {v15, v6}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 581
    const v18, 0x7f020023

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 582
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 583
    invoke-virtual {v15}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 586
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v18

    if-nez v18, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_8

    :cond_7
    const-string v18, "jflterefreshspr"

    const-string v19, "ro.product.name"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 587
    :cond_8
    new-instance v4, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 588
    .local v4, "fourth":Lcom/android/settings/HelpItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 589
    const v18, 0x7f0a1286

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 590
    const-string v18, "ATT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "SPR"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "VZW"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "TMB"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "USC"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "BMC"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "CRI"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "LRA"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "CSP"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "XAR"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "XAC"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 592
    :cond_9
    const v18, 0x7f0a1288

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 595
    :cond_a
    const v18, 0x7f0a126b

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 596
    invoke-virtual {v4, v6}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 597
    const v18, 0x7f02001d

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 598
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 599
    invoke-virtual {v4}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 602
    .end local v4    # "fourth":Lcom/android/settings/HelpItem;
    :cond_b
    return-object v17

    .line 497
    .end local v6    # "mGuideContent":Ljava/lang/String;
    .end local v7    # "message_str":Landroid/text/SpannableString;
    .end local v8    # "original_str":Ljava/lang/String;
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v11    # "part3":Ljava/lang/String;
    .end local v12    # "proper_distance":I
    .end local v14    # "salesCode":Ljava/lang/String;
    .end local v15    # "second":Lcom/android/settings/HelpItem;
    .end local v16    # "third":Lcom/android/settings/HelpItem;
    :cond_c
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ". "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 511
    .restart local v11    # "part3":Ljava/lang/String;
    .restart local v12    # "proper_distance":I
    .restart local v14    # "salesCode":Ljava/lang/String;
    :cond_d
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 526
    .restart local v7    # "message_str":Landroid/text/SpannableString;
    .restart local v8    # "original_str":Ljava/lang/String;
    :cond_e
    const v18, 0x7f0a1277

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/settings/HelpItem;->setContentText(I)V

    goto/16 :goto_2

    .line 561
    .restart local v6    # "mGuideContent":Ljava/lang/String;
    .restart local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v15    # "second":Lcom/android/settings/HelpItem;
    .restart local v16    # "third":Lcom/android/settings/HelpItem;
    :cond_f
    :try_start_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const v19, 0x7f0a1283

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a1273

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a12ce

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a12d1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a12d4

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a12d6

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a12d9

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto/16 :goto_3

    .line 569
    :catch_0
    move-exception v2

    .line 570
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 571
    const-string v18, "FeatureSettings"

    const-string v19, "S note is NOT Installed"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const v19, 0x7f0a1283

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a1273

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a12ce

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a12d1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a12d4

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a12d6

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a12d9

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3
.end method

.method public makeAirViewLayout()Landroid/view/View;
    .locals 10

    .prologue
    .line 414
    const/4 v6, 0x0

    .line 415
    .local v6, "view":Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400b9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 416
    const v7, 0x7f1001cf

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 428
    .local v1, "helpContent":Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v2, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 429
    .local v2, "infoPreview":Lcom/android/settings/HelpItem;
    const v7, 0x7f0a133b

    invoke-virtual {v2, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 430
    const v7, 0x7f0a133c

    invoke-virtual {v2, v7}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 431
    const v7, 0x7f020586

    invoke-virtual {v2, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 434
    invoke-virtual {v2}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 437
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 438
    .local v0, "barPreview":Lcom/android/settings/HelpItem;
    const v7, 0x7f0a1344

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 439
    const v7, 0x7f0a1345

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 440
    const v7, 0x7f020583

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 443
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 446
    new-instance v5, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v5, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 447
    .local v5, "speedPreview":Lcom/android/settings/HelpItem;
    const v7, 0x7f0a1346

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 448
    const v7, 0x7f0a1347

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 449
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 450
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    .line 451
    .local v4, "salesCode":Ljava/lang/String;
    const-string v7, "ATT"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "SPR"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "VZW"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "TMB"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "USC"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 453
    :cond_0
    const v7, 0x7f020585

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 458
    :goto_0
    invoke-virtual {v5}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 461
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 462
    .local v3, "magniPreview":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 463
    const v7, 0x7f0a1337

    invoke-virtual {v3, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 464
    const v7, 0x7f0a1338

    invoke-virtual {v3, v7}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 465
    const v7, 0x7f020582

    invoke-virtual {v3, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 467
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 479
    return-object v6

    .line 455
    .end local v3    # "magniPreview":Lcom/android/settings/HelpItem;
    :cond_1
    const v7, 0x7f020584

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    goto :goto_0
.end method

.method public makeContentsString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 900
    .local v0, "b":Ljava/lang/StringBuilder;
    sget-object v7, Lcom/android/settings/FeatureSettings;->mPackageName:[Ljava/lang/String;

    array-length v5, v7

    .line 901
    .local v5, "length":I
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 902
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 903
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    .line 905
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 907
    :try_start_0
    sget-object v7, Lcom/android/settings/FeatureSettings;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v3

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 908
    if-lez v1, :cond_0

    .line 909
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    add-int/lit8 v1, v1, 0x1

    .line 905
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 912
    :catch_0
    move-exception v2

    .line 913
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "FeatureSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package not found : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/settings/FeatureSettings;->mPackageName:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 916
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public makeEasyModeLayout()Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 835
    const/4 v3, 0x0

    .line 836
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400b9

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 837
    const v4, 0x7f1001cf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 839
    .local v1, "helpContent":Landroid/widget/LinearLayout;
    const v4, 0x7f0a004b

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 841
    .local v2, "s":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 842
    .local v0, "first":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 844
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 845
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 846
    invoke-virtual {v0, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 847
    const v4, 0x7f020593

    invoke-virtual {v0, v4}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 849
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 851
    return-object v3
.end method

.method public makeMultiWindowLayout()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 920
    const/4 v4, 0x0

    .line 921
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400b9

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 922
    const v5, 0x7f1001cf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 924
    .local v1, "helpContent":Landroid/widget/LinearLayout;
    const v5, 0x7f0a06d1

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 926
    .local v2, "s":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v5}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 927
    .local v0, "first":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 928
    invoke-virtual {v0, v8}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 929
    invoke-virtual {v0, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 930
    const v5, 0x7f020434

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 931
    invoke-virtual {v0, v8}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 933
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 935
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v5}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 936
    .local v3, "second":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 937
    invoke-virtual {v3, v8}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 938
    invoke-virtual {v3, v8}, Lcom/android/settings/HelpItem;->setContentVisibility(I)V

    .line 939
    const v5, 0x7f020435

    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 940
    invoke-virtual {v3, v8}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 942
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 944
    return-object v4
.end method

.method public makeOPModeLayout()Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 856
    const/4 v3, 0x0

    .line 857
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400b9

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 858
    const v4, 0x7f1001cf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 860
    .local v1, "helpContent":Landroid/widget/LinearLayout;
    const v4, 0x7f0a16f1

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 862
    .local v2, "s":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 863
    .local v0, "first":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 865
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 866
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 867
    invoke-virtual {v0, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 868
    const v4, 0x7f020594

    invoke-virtual {v0, v4}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 869
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 871
    return-object v3
.end method

.method public makeSBeamLayout()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 393
    const/4 v3, 0x0

    .line 394
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400b9

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 395
    const v4, 0x7f1001cf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 397
    .local v1, "helpContent":Landroid/widget/LinearLayout;
    const v4, 0x7f0a03a0

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 399
    .local v2, "s":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 400
    .local v0, "first":Lcom/android/settings/HelpItem;
    invoke-virtual {v0, v8}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 401
    invoke-virtual {v0, v8}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 402
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 403
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setImageMarginTop(I)V

    .line 404
    invoke-virtual {v0, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 405
    const v4, 0x7f050009

    invoke-virtual {v0, v4}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 406
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 407
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 409
    return-object v3
.end method

.method public makeSmartBlockLayout()Landroid/view/View;
    .locals 4

    .prologue
    .line 875
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400d8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 877
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public makeSmartPauseLayout()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 749
    const/4 v4, 0x0

    .line 750
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400b9

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 751
    const v5, 0x7f1001cf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 753
    .local v1, "helpContent":Landroid/widget/LinearLayout;
    const v5, 0x7f0a14b0

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 755
    .local v2, "s":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v5}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 756
    .local v0, "first":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 757
    invoke-virtual {v0, v8}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 758
    invoke-virtual {v0, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 759
    const v5, 0x7f0205ce

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 760
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 761
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 763
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0a14b1

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 764
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v5, 0x7f0a14b2

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 765
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v5, 0x7f0a14b3

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 766
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v5, 0x7f0a14b4

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 767
    iget-boolean v5, p0, Lcom/android/settings/FeatureSettings;->mSupportFolderType:Z

    if-eqz v5, :cond_0

    .line 768
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v5, 0x7f0a1bd6

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 770
    :cond_0
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v5}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 771
    .local v3, "second":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 772
    invoke-virtual {v3, v8}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 773
    invoke-virtual {v3, v8}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 774
    invoke-virtual {v3, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 777
    return-object v4
.end method

.method public makeSmartScrollLayout()Landroid/view/View;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 782
    const/4 v6, 0x0

    .line 783
    .local v6, "view":Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400b9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 784
    const v7, 0x7f1001cf

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 786
    .local v2, "helpContent":Landroid/widget/LinearLayout;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0a14b8

    invoke-virtual {p0, v7}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 787
    .local v4, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v7, 0x7f0a14b9

    invoke-virtual {p0, v7}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 788
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a14ba

    invoke-virtual {p0, v8}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 789
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a14bb

    invoke-virtual {p0, v8}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 790
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v7, 0x7f0a14bc

    invoke-virtual {p0, v7}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 791
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a14bd

    invoke-virtual {p0, v8}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 793
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 794
    .local v3, "helpTop":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 795
    invoke-virtual {v3, v10}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 796
    invoke-virtual {v3, v10}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 797
    invoke-virtual {v3, v4}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 801
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 802
    .local v0, "first":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 803
    const v7, 0x7f0a14c8

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 804
    const v7, 0x7f0a14be

    invoke-virtual {p0, v7}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 805
    const v7, 0x7f0205d1

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 806
    invoke-virtual {v0, v11}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 807
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 809
    new-instance v5, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v5, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 810
    .local v5, "second":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 811
    const v7, 0x7f0a14c7

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 812
    const v7, 0x7f0a14bf

    invoke-virtual {p0, v7}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 813
    const v7, 0x7f0205d0

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 814
    invoke-virtual {v5, v11}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 815
    invoke-virtual {v5}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 817
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0a14c0

    invoke-virtual {p0, v7}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 818
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v7, 0x7f0a14c1

    invoke-virtual {p0, v7}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 819
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v7, 0x7f0a14c2

    invoke-virtual {p0, v7}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 820
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v7, 0x7f0a14c3

    invoke-virtual {p0, v7}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 821
    iget-boolean v7, p0, Lcom/android/settings/FeatureSettings;->mSupportFolderType:Z

    if-eqz v7, :cond_0

    .line 822
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v7, 0x7f0a1bd6

    invoke-virtual {p0, v7}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 824
    :cond_0
    new-instance v1, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v1, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 825
    .local v1, "helpBottom":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 826
    invoke-virtual {v1, v10}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 827
    invoke-virtual {v1, v10}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 828
    invoke-virtual {v1, v4}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v1}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 831
    return-object v6
.end method

.method public makeSmartStayLayout()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 716
    const/4 v4, 0x0

    .line 717
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400b9

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 718
    const v5, 0x7f1001cf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 720
    .local v1, "helpContent":Landroid/widget/LinearLayout;
    const v5, 0x7f0a1487

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 722
    .local v2, "s":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v5}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 723
    .local v0, "first":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 724
    invoke-virtual {v0, v8}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 725
    invoke-virtual {v0, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 726
    const v5, 0x7f0205c7

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 727
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 728
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 730
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0a1488

    invoke-virtual {p0, v6}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 731
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a1489

    invoke-virtual {p0, v6}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 732
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a148a

    invoke-virtual {p0, v6}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 733
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a148b

    invoke-virtual {p0, v6}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 734
    iget-boolean v5, p0, Lcom/android/settings/FeatureSettings;->mSupportFolderType:Z

    if-eqz v5, :cond_0

    .line 735
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a1bd6

    invoke-virtual {p0, v6}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 737
    :cond_0
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v5}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 738
    .local v3, "second":Lcom/android/settings/HelpItem;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 739
    invoke-virtual {v3, v8}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 740
    invoke-virtual {v3, v8}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 741
    invoke-virtual {v3, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 742
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 744
    return-object v4
.end method

.method public makeVoiceCmdLayout()Landroid/view/View;
    .locals 18

    .prologue
    .line 619
    const/4 v14, 0x0

    .line 620
    .local v14, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v16, 0x7f0400b9

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 621
    const v15, 0x7f1001cf

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 622
    .local v9, "helpContent":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .line 624
    .local v1, "c":Landroid/content/Context;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "com.vlingo.midas"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 630
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0014

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 631
    .local v2, "cmds":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a15c0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 632
    .local v13, "title":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a15cb

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 633
    .local v11, "templ":Ljava/lang/String;
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 635
    .local v3, "contents":Ljava/lang/String;
    new-instance v7, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v7, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 636
    .local v7, "first":Lcom/android/settings/HelpItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v7, v15}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 637
    invoke-virtual {v7, v13}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v7, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 639
    const/16 v15, 0x8

    invoke-virtual {v7, v15}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 640
    const-string v15, ""

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 641
    invoke-virtual {v7}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 644
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "com.coolots.chaton"

    invoke-static/range {v15 .. v16}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v15

    if-nez v15, :cond_1

    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0014

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 646
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a15c1

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 647
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a15cc

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 648
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 650
    new-instance v5, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v5, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 651
    .local v5, "extra":Lcom/android/settings/HelpItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 652
    invoke-virtual {v5, v13}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v5, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 654
    const/16 v15, 0x8

    invoke-virtual {v5, v15}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 655
    const-string v15, ""

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 656
    invoke-virtual {v5}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 661
    .end local v5    # "extra":Lcom/android/settings/HelpItem;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0015

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a15c3

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 663
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a15cd

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 664
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 666
    new-instance v10, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v10, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 667
    .local v10, "second":Lcom/android/settings/HelpItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 668
    invoke-virtual {v10, v13}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v10, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 670
    const/16 v15, 0x8

    invoke-virtual {v10, v15}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 671
    const-string v15, ""

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 672
    invoke-virtual {v10}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 675
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0016

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a15c5

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a15ce

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 678
    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x2

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x3

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 680
    new-instance v12, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v12, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 681
    .local v12, "third":Lcom/android/settings/HelpItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 682
    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v12, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 684
    const/16 v15, 0x8

    invoke-virtual {v12, v15}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 685
    const-string v15, ""

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 686
    invoke-virtual {v12}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 689
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0017

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 690
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a15c7

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 691
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a15d0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 692
    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x2

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x3

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const/16 v17, 0x4

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    const/16 v17, 0x5

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 694
    new-instance v8, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v8, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 695
    .local v8, "fourth":Lcom/android/settings/HelpItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 696
    invoke-virtual {v8, v13}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v8, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 698
    const/16 v15, 0x8

    invoke-virtual {v8, v15}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 699
    const-string v15, ""

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 700
    invoke-virtual {v8}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 703
    :cond_4
    new-instance v6, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v6, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 704
    .local v6, "fifth":Lcom/android/settings/HelpItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/android/settings/HelpItem;->changePaddingForPopup(Landroid/content/Context;)V

    .line 705
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 706
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 707
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Lcom/android/settings/HelpItem;->setContentVisibility(I)V

    .line 708
    const v15, 0x7f020747

    invoke-virtual {v6, v15}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 709
    invoke-virtual {v6}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 711
    return-object v14

    .line 625
    .end local v2    # "cmds":[Ljava/lang/String;
    .end local v3    # "contents":Ljava/lang/String;
    .end local v6    # "fifth":Lcom/android/settings/HelpItem;
    .end local v7    # "first":Lcom/android/settings/HelpItem;
    .end local v8    # "fourth":Lcom/android/settings/HelpItem;
    .end local v10    # "second":Lcom/android/settings/HelpItem;
    .end local v11    # "templ":Ljava/lang/String;
    .end local v12    # "third":Lcom/android/settings/HelpItem;
    .end local v13    # "title":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 627
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 310
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/FeatureSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/FeatureSettings$2;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 334
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const-string v1, "FeatureSettings"

    const-string v3, "talkback is enabled, so samsung features are off"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "option_flag"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 143
    .local v0, "mDisableExclusiveOptionsFlag":I
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 146
    .end local v0    # "mDisableExclusiveOptionsFlag":I
    :cond_0
    const v1, 0x7f070055

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->addPreferencesFromResource(I)V

    .line 148
    const-string v1, "sbeam"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 149
    const-string v1, "air_view"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    .line 150
    const-string v1, "air_motion"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    .line 151
    const-string v1, "voice_cmd"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    .line 152
    const-string v1, "smart_stay"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    .line 153
    const-string v1, "smart_pause"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    .line 154
    const-string v1, "smart_scroll"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    .line 155
    const-string v1, "easy_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    .line 156
    const-string v1, "op_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    .line 157
    const-string v1, "smart_block"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    .line 158
    const-string v1, "adapt_display"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    .line 159
    const-string v1, "multi_window"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    .line 160
    const-string v1, "multi_user"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mMultiUser:Landroid/preference/Preference;

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    new-instance v1, Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-direct {v1, v3, v4}, Lcom/android/settings/nfc/SBeamEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;)V

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/FeatureSettings;->mSupportFolderType:Z

    .line 170
    return-void

    :cond_2
    move v1, v2

    .line 169
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 303
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnPause()V

    .line 306
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 14
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 999
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 1000
    .local v9, "value":Z
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1001
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "sbeam_mode"

    if-eqz v9, :cond_1

    const/4 v10, 0x1

    :goto_0
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1145
    :cond_0
    :goto_1
    const/4 v10, 0x1

    return v10

    .line 1001
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 1002
    :cond_2
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1003
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1004
    const v10, 0x7f0a1331

    const v11, 0x7f0a1126

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v11, v12}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto :goto_1

    .line 1006
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1007
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "air_view_master_onoff"

    if-eqz v9, :cond_4

    const/4 v10, 0x1

    :goto_2
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1012
    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-string v10, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1013
    .local v0, "finger_air_view_changed":Landroid/content/Intent;
    const-string v10, "isEnable"

    invoke-virtual {v0, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1014
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 1007
    .end local v0    # "finger_air_view_changed":Landroid/content/Intent;
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 1009
    :cond_5
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "finger_air_view"

    if-eqz v9, :cond_6

    const/4 v10, 0x1

    :goto_4
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    .line 1016
    :cond_7
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1017
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1018
    const v10, 0x7f0a125b

    const v11, 0x7f0a125f

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v11, v12}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto :goto_1

    .line 1020
    :cond_8
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "air_motion_engine"

    if-eqz v9, :cond_9

    const/4 v10, 0x1

    :goto_5
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1021
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1022
    .local v4, "motion_changed":Landroid/content/Intent;
    const-string v10, "isEnable"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1023
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1025
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "air_motion_scroll"

    if-eqz v9, :cond_a

    const/4 v10, 0x1

    :goto_6
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1026
    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v6, "motion_scroll_changed":Landroid/content/Intent;
    const-string v10, "isEnable"

    invoke-virtual {v6, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1028
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1030
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "air_motion_turn"

    if-eqz v9, :cond_b

    const/4 v10, 0x1

    :goto_7
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1031
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1032
    .local v3, "motion_browse_changed":Landroid/content/Intent;
    const-string v10, "isEnable"

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1033
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1035
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "air_motion_item_move"

    if-eqz v9, :cond_c

    const/4 v10, 0x1

    :goto_8
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1036
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.sec.gesture.AIR_MOVE_SETTINGS_CHANGED"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1037
    .local v5, "motion_move_changed":Landroid/content/Intent;
    const-string v10, "isEnable"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1038
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1020
    .end local v3    # "motion_browse_changed":Landroid/content/Intent;
    .end local v4    # "motion_changed":Landroid/content/Intent;
    .end local v5    # "motion_move_changed":Landroid/content/Intent;
    .end local v6    # "motion_scroll_changed":Landroid/content/Intent;
    :cond_9
    const/4 v10, 0x0

    goto :goto_5

    .line 1025
    .restart local v4    # "motion_changed":Landroid/content/Intent;
    :cond_a
    const/4 v10, 0x0

    goto :goto_6

    .line 1030
    .restart local v6    # "motion_scroll_changed":Landroid/content/Intent;
    :cond_b
    const/4 v10, 0x0

    goto :goto_7

    .line 1035
    .restart local v3    # "motion_browse_changed":Landroid/content/Intent;
    :cond_c
    const/4 v10, 0x0

    goto :goto_8

    .line 1041
    .end local v3    # "motion_browse_changed":Landroid/content/Intent;
    .end local v4    # "motion_changed":Landroid/content/Intent;
    .end local v6    # "motion_scroll_changed":Landroid/content/Intent;
    :cond_d
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1042
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "voice_input_control"

    if-eqz v9, :cond_e

    const/4 v10, 0x1

    :goto_9
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_e
    const/4 v10, 0x0

    goto :goto_9

    .line 1043
    :cond_f
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1044
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1045
    const v10, 0x7f0a1483

    const v11, 0x7f0a14dd

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v11, v12}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 1047
    :cond_10
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "intelligent_sleep_mode"

    if-eqz v9, :cond_11

    const/4 v10, 0x1

    :goto_a
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_11
    const/4 v10, 0x0

    goto :goto_a

    .line 1049
    :cond_12
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1050
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1051
    const v10, 0x7f0a1490

    const v11, 0x7f0a14dd

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v11, v12}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 1053
    :cond_13
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "smart_pause"

    if-eqz v9, :cond_14

    const/4 v10, 0x1

    :goto_b
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1055
    new-instance v7, Landroid/content/Intent;

    const-string v10, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1056
    .local v7, "smart_pause_changed":Landroid/content/Intent;
    const-string v10, "isEnable"

    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1057
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1053
    .end local v7    # "smart_pause_changed":Landroid/content/Intent;
    :cond_14
    const/4 v10, 0x0

    goto :goto_b

    .line 1059
    :cond_15
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 1060
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 1061
    const v10, 0x7f0a1492

    const v11, 0x7f0a14dd

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v11, v12}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 1063
    :cond_16
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "smart_scroll"

    if-eqz v9, :cond_17

    const/4 v10, 0x1

    :goto_c
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1065
    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1066
    .local v8, "smart_scroll_changed":Landroid/content/Intent;
    const-string v10, "isEnable"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1067
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1063
    .end local v8    # "smart_scroll_changed":Landroid/content/Intent;
    :cond_17
    const/4 v10, 0x0

    goto :goto_c

    .line 1069
    :cond_18
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 1070
    if-eqz v9, :cond_19

    .line 1072
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1073
    .local v1, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0a16e6

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1074
    const v10, 0x7f0a004b

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1075
    const v10, 0x104000a

    new-instance v11, Lcom/android/settings/FeatureSettings$5;

    invoke-direct {v11, p0}, Lcom/android/settings/FeatureSettings$5;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1081
    const/high16 v10, 0x1040000

    new-instance v11, Lcom/android/settings/FeatureSettings$6;

    invoke-direct {v11, p0}, Lcom/android/settings/FeatureSettings$6;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1087
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 1089
    .end local v1    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_19
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings/FeatureSettings;->turnOnEasyMode(Z)V

    goto/16 :goto_1

    .line 1092
    :cond_1a
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1093
    if-eqz v9, :cond_1b

    .line 1095
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1096
    .restart local v1    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0a16ee

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1097
    const v10, 0x7f0a16f1

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1098
    const v10, 0x104000a

    new-instance v11, Lcom/android/settings/FeatureSettings$7;

    invoke-direct {v11, p0}, Lcom/android/settings/FeatureSettings$7;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1104
    const/high16 v10, 0x1040000

    new-instance v11, Lcom/android/settings/FeatureSettings$8;

    invoke-direct {v11, p0}, Lcom/android/settings/FeatureSettings$8;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1110
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 1112
    .end local v1    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_1b
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings/FeatureSettings;->turnOnOPMode(Z)V

    goto/16 :goto_1

    .line 1115
    :cond_1c
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 1116
    iget-object v11, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "key_spam_smart"

    if-eqz v9, :cond_1d

    const/4 v10, 0x1

    :goto_d
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_1d
    const/4 v10, 0x0

    goto :goto_d

    .line 1118
    :cond_1e
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 1119
    if-eqz v9, :cond_1f

    .line 1121
    const/4 v10, 0x4

    invoke-static {v10}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 1125
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "screen_mode_automatic_setting"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1127
    :cond_1f
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "screen_mode_setting"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 1128
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "screen_mode_automatic_setting"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1131
    :cond_20
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1132
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 1133
    const v10, 0x7f0a1123

    const v11, 0x7f0a1124

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v11, v12}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 1135
    :cond_21
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "multi_window_enabled"

    if-eqz v9, :cond_22

    const/4 v10, 0x1

    :goto_e
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1136
    iget-object v10, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 1137
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 1138
    .local v2, "mHandler":Landroid/os/Handler;
    new-instance v10, Lcom/android/settings/FeatureSettings$9;

    invoke-direct {v10, p0}, Lcom/android/settings/FeatureSettings$9;-><init>(Lcom/android/settings/FeatureSettings;)V

    const-wide/16 v12, 0x3e8

    invoke-virtual {v2, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 1135
    .end local v2    # "mHandler":Landroid/os/Handler;
    :cond_22
    const/4 v10, 0x0

    goto :goto_e
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 950
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 951
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSBeamLayout()Landroid/view/View;

    move-result-object v0

    .line 952
    .local v0, "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a039b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    .line 993
    .end local v0    # "layout":Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 953
    :cond_1
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 954
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeAirViewLayout()Landroid/view/View;

    move-result-object v0

    .line 955
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1127

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 956
    .end local v0    # "layout":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 957
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeAirMotionLayout()Landroid/view/View;

    move-result-object v0

    .line 958
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a125b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 959
    .end local v0    # "layout":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 960
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeVoiceCmdLayout()Landroid/view/View;

    move-result-object v0

    .line 961
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a15b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 962
    .end local v0    # "layout":Landroid/view/View;
    :cond_4
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 963
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSmartStayLayout()Landroid/view/View;

    move-result-object v0

    .line 964
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1483

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 965
    .end local v0    # "layout":Landroid/view/View;
    :cond_5
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 966
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSmartPauseLayout()Landroid/view/View;

    move-result-object v0

    .line 967
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1490

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 968
    .end local v0    # "layout":Landroid/view/View;
    :cond_6
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 969
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSmartScrollLayout()Landroid/view/View;

    move-result-object v0

    .line 970
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1492

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 971
    .end local v0    # "layout":Landroid/view/View;
    :cond_7
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 972
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeEasyModeLayout()Landroid/view/View;

    move-result-object v0

    .line 973
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a16d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 975
    .end local v0    # "layout":Landroid/view/View;
    :cond_8
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 976
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSmartBlockLayout()Landroid/view/View;

    move-result-object v0

    .line 977
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1498

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 979
    .end local v0    # "layout":Landroid/view/View;
    :cond_9
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 980
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeAdaptDisplayLayout()Landroid/view/View;

    move-result-object v0

    .line 981
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0fb3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 983
    .end local v0    # "layout":Landroid/view/View;
    :cond_a
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 984
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeOPModeLayout()Landroid/view/View;

    move-result-object v0

    .line 985
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a16ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 987
    .end local v0    # "layout":Landroid/view/View;
    :cond_b
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 988
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeMultiWindowLayout()Landroid/view/View;

    move-result-object v0

    .line 989
    .restart local v0    # "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a06cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 990
    .end local v0    # "layout":Landroid/view/View;
    :cond_c
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mMultiUser:Landroid/preference/Preference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 991
    const v1, 0x7f0a1df6

    const v2, 0x7f0a1df8

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/FeatureSettings;->showMessageOnlyGuideDialog(II)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 293
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 294
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnResume()V

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/FeatureSettings;->initUI()V

    .line 298
    return-void
.end method

.method public showGuideDialog(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "layout"    # Landroid/view/View;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 366
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 368
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 370
    iput-object v2, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 375
    iput-object v2, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 378
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 379
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 381
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/FeatureSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureSettings$4;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 387
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 388
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 389
    return-void
.end method

.method public showMessageOnlyGuideDialog(II)V
    .locals 3
    .param p1, "title_resID"    # I
    .param p2, "message_resID"    # I

    .prologue
    const/4 v2, 0x0

    .line 339
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 341
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 343
    iput-object v2, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 348
    iput-object v2, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 351
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 352
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 354
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/FeatureSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureSettings$3;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 360
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 361
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 362
    return-void
.end method
