.class public Lcom/android/settings/LockscreenMenuSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/OwnerInfoSettings$DialogFragmentListener;


# static fields
.field public static mContext:Landroid/content/Context;


# instance fields
.field private bRegisterReceiver:Z

.field private isDeviceLockTime:Z

.field private isMyprofile:I

.field private layoutType:I

.field private mAdditionalInfo:Landroid/preference/PreferenceScreen;

.field private mAdditionalInfoForWeather:Landroid/preference/CheckBoxPreference;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAutoSwipe:Landroid/preference/CheckBoxPreference;

.field private mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

.field private mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

.field private mCameraShortcut:Landroid/preference/CheckBoxPreference;

.field private mChargingEffect_with_preview:Landroid/preference/PreferenceScreen;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mClockSize:Landroid/preference/ListPreference;

.field private mClockSize_with_preview:Landroid/preference/PreferenceScreen;

.field private mClockWidgetOptions:Landroid/preference/PreferenceScreen;

.field private mCoverCategory:Landroid/preference/PreferenceCategory;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDateAndYear:Landroid/preference/CheckBoxPreference;

.field private mDeviceLockDialog:Landroid/app/AlertDialog;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private mDualclock:Landroid/preference/SwitchPreferenceScreen;

.field private mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

.field private mFavoriteApps:Landroid/preference/PreferenceScreen;

.field private mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

.field private mFlipCoverCategory:Landroid/preference/PreferenceCategory;

.field private mHelpText:Landroid/preference/CheckBoxPreference;

.field private mInkEffect:Landroid/preference/PreferenceScreen;

.field mInkEffectSummary:[I

.field mInkEffectSummaryForTablet:[I

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

.field private mMagazineCard:Landroid/preference/PreferenceScreen;

.field private mMotionCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

.field private mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

.field private mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

.field private mPatternType:Landroid/preference/ListPreference;

.field private mPatternType_with_preview:Landroid/preference/PreferenceScreen;

.field private mPhoneShortcut:Landroid/preference/CheckBoxPreference;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private mQuicknote:Landroid/preference/CheckBoxPreference;

.field private mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

.field private mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

.field private mSafetyZoneLocktype:Ljava/lang/String;

.field private mSafetyZoneObserver:Landroid/database/ContentObserver;

.field private mSayCommand:Landroid/preference/CheckBoxPreference;

.field private mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

.field private mSelectInfo:Landroid/preference/Preference;

.field private mSetShortcuts:Landroid/preference/ListPreference;

.field private mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

.field private mShowInformation:Landroid/preference/PreferenceScreen;

.field private mSignatureVerificationLevel:Landroid/preference/ListPreference;

.field private mStartFromSearch:Z

.field private mSviewColor:Landroid/preference/Preference;

.field private mTactileFeedback:Landroid/preference/CheckBoxPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUnlockEffect:Landroid/preference/ListPreference;

.field private mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

.field private mVibrationFeedback:Landroid/preference/CheckBoxPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mVisibleSignature:Landroid/preference/CheckBoxPreference;

.field private setWakeupCommand:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 195
    iput-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 241
    iput-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 252
    iput-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    .line 253
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    .line 254
    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->bRegisterReceiver:Z

    .line 256
    iput v1, p0, Lcom/android/settings/LockscreenMenuSettings;->isMyprofile:I

    .line 264
    iput v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    .line 265
    iput-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    .line 269
    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mStartFromSearch:Z

    .line 281
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffectSummary:[I

    .line 293
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffectSummaryForTablet:[I

    .line 305
    new-instance v0, Lcom/android/settings/LockscreenMenuSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/LockscreenMenuSettings$1;-><init>(Lcom/android/settings/LockscreenMenuSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneObserver:Landroid/database/ContentObserver;

    .line 312
    new-instance v0, Lcom/android/settings/LockscreenMenuSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/LockscreenMenuSettings$2;-><init>(Lcom/android/settings/LockscreenMenuSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    return-void

    .line 281
    :array_0
    .array-data 4
        0x7f0a16a3    # 1.83551E38f
        0x7f0a16a4
        0x7f0a16a6
        0x7f0a16a7
        0x7f0a16a9
        0x7f0a16aa
        0x7f0a16ab
        0x7f0a16a8
        0x7f0a16ad
    .end array-data

    .line 293
    :array_1
    .array-data 4
        0x7f0a16a3    # 1.83551E38f
        0x7f0a16a4
        0x7f0a16a6
        0x7f0a16a7
        0x7f0a16a9
        0x7f0a16aa
        0x7f0a16ab
        0x7f0a16a8
        0x7f0a16ad
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/LockscreenMenuSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/LockscreenMenuSettings;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/LockscreenMenuSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/LockscreenMenuSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/LockscreenMenuSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/settings/LockscreenMenuSettings;->broadcastMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/LockscreenMenuSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMotionCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/LockscreenMenuSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->showSafetyZoneEnableDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/LockscreenMenuSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->saveCameraShortcutSharedPreferences()V

    return-void
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 2920
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2921
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2922
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2923
    return-void
.end method

.method private checkCameraShortcutGuidePopupAvailable()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3150
    const/4 v0, 0x0

    .line 3151
    .local v0, "doNotShow":Z
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.android.settings.LockscreenMenuSettings.CameraShortcut"

    invoke-virtual {v4, v5, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3153
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 3154
    const-string v4, "DoNotShowDialog"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3155
    :cond_0
    if-nez v0, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 29

    .prologue
    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    .line 357
    .local v19, "root":Landroid/preference/PreferenceScreen;
    if-eqz v19, :cond_0

    .line 358
    invoke-virtual/range {v19 .. v19}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 360
    :cond_0
    const v25, 0x7f0700b5

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    .line 362
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    if-eqz v25, :cond_95

    const/4 v10, 0x1

    .line 364
    .local v10, "isSecondaryUser":Z
    :goto_0
    const/16 v18, 0x0

    .line 365
    .local v18, "resid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v25

    if-nez v25, :cond_97

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v25

    if-eqz v25, :cond_96

    .line 367
    const v18, 0x7f0700be

    .line 413
    :goto_1
    if-eqz v18, :cond_1

    .line 414
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 417
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 418
    if-eqz v19, :cond_2

    .line 419
    invoke-virtual/range {v19 .. v19}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 421
    :cond_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/LockscreenMenuSettings;->layoutType:I

    .line 422
    const v25, 0x7f0700ba

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    .line 428
    :cond_3
    const-string v25, "show_information"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mShowInformation:Landroid/preference/PreferenceScreen;

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShowInformation:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    .line 430
    const-string v25, "1"

    const-string v26, "0"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShowInformation:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 434
    :cond_4
    const-string v25, "lock_screen_options_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 436
    .local v6, "ca":Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v25

    if-nez v25, :cond_5

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 463
    :cond_5
    const-string v25, "lock_after_timeout"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/ListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    .line 466
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0a008d

    invoke-virtual/range {v25 .. v26}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0a008d

    invoke-virtual/range {v25 .. v26}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0c0024

    invoke-virtual/range {v25 .. v26}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0c0025

    invoke-virtual/range {v25 .. v26}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 473
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->setupLockAfterPreference()V

    .line 474
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updateLockAfterPreferenceSummary()V

    .line 478
    :cond_7
    const-string v25, "biometric_weak_liveliness"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    .line 482
    const-string v25, "visiblepattern"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 484
    const-string v25, "power_button_instantly_locks"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 488
    const v25, 0x7f0700b6

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    const v25, 0x7f0700c5

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v25

    const/high16 v26, 0x10000

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9

    .line 492
    const-string v25, "visiblepattern"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 497
    :cond_9
    const-string v25, "keyguard_enable_widgets"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 522
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_b

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result v25

    if-eqz v25, :cond_b

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 530
    :cond_b
    const-string v25, "owner_info_settings"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-nez v25, :cond_c

    const-string v25, "1"

    const-string v26, "0"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 532
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 535
    :cond_d
    const-string v25, "lock_screen_widget_options"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    .line 538
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_e

    const-string v25, "ro.product.name"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "u0lte"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isSupportStart_J_project()Z

    move-result v25

    if-eqz v25, :cond_f

    .line 540
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const v26, 0x7f0a16fe

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v27, "easy_mode_switch"

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_9a

    const/16 v25, 0x1

    :goto_2
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 545
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v27, "easy_mode_switch"

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_9b

    const/16 v25, 0x1

    :goto_3
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 550
    :cond_10
    const-string v25, "quick_note"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11

    sget-object v25, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    const-string v26, "com.samsung.android.quickmemo"

    invoke-static/range {v25 .. v26}, Lcom/android/settings/Utils;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_11

    const-string v25, "1"

    const-string v26, "0"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_11

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0a1722

    invoke-virtual/range {v25 .. v26}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0a1723

    invoke-virtual/range {v25 .. v26}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 556
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12

    const-string v25, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v25 .. v25}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_12

    const v25, 0x7f0700be

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_12

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 560
    :cond_12
    const-string v25, "auto_swipe"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 562
    .local v17, "res":Landroid/content/res/Resources;
    const/16 v22, 0x0

    .line 563
    .local v22, "temp_max_attempts":I
    const/4 v5, 0x0

    .line 565
    .local v5, "auto_swipe_summary":Ljava/lang/String;
    const v25, 0x7f0700c3

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_9c

    .line 567
    const/16 v22, 0xa

    .line 579
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13

    .line 580
    if-nez v10, :cond_9f

    .line 581
    const v25, 0x7f0a1bc5

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 585
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 588
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14

    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_14

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 592
    :cond_14
    const-string v25, "visiblesignature"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    .line 593
    const-string v25, "signature_verification_level"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/ListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_15

    .line 595
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->setupSignatureVerificationLevelPreference(Z)V

    .line 599
    :cond_15
    const-string v25, "unlock_tactile_feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    .line 600
    const-string v25, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/Vibrator;

    invoke-virtual/range {v25 .. v25}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v25

    if-nez v25, :cond_16

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_16

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 621
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "lock_motion_tilt_to_unlock"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 622
    const-string v25, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static/range {v25 .. v25}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_17

    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    .line 626
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v25

    if-eqz v25, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v25

    if-eqz v25, :cond_19

    .line 627
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "lock_screen_face_with_voice"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 628
    .local v11, "isfacevalue":I
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v11, v0, :cond_18

    .line 629
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    .line 630
    .local v7, "configureLockScreenPreference":Landroid/preference/PreferenceScreen;
    const v25, 0x7f0a025b

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 631
    const v25, 0x7f0a025b

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    .line 633
    .end local v7    # "configureLockScreenPreference":Landroid/preference/PreferenceScreen;
    :cond_18
    const-string v25, "LockScreenMenu"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mLockPatternUtils.usingBiometricWeak(): "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    .end local v11    # "isfacevalue":I
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1a

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 640
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1b

    .line 641
    const-string v25, "LockScreenMenu"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mLockPatternUtils.isSecureForSetting(): "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "is_secured_lock"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v25

    if-eqz v25, :cond_a0

    const/16 v25, 0x1

    :goto_6
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 646
    :cond_1b
    const-string v25, "dualclock_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1c

    .line 648
    const-string v25, "1"

    const-string v26, "0"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_a3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-eqz v25, :cond_a3

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v27, "dualclock_menu_settings"

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_a1

    const/16 v25, 0x1

    :goto_7
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v27, "dualclock_menu_settings"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_a2

    const v25, 0x7f0a0a60

    :goto_8
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 657
    :cond_1c
    :goto_9
    const-string v25, "safetyzone_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1d

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v27, "easy_mode_switch"

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_a4

    const/16 v25, 0x1

    :goto_a
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 672
    :cond_1d
    const-string v25, "set_shortcuts"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/ListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1e

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 677
    :cond_1e
    const-string v25, "lock_screen_favorite_apps"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1f

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 685
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_20

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 690
    :cond_20
    const-string v25, "lock_screen_shortcut_menu"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_22

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_21

    invoke-static {}, Lcom/android/settings/Utils;->hasDAForLockscreenShortcut()Z

    move-result v25

    if-nez v25, :cond_21

    invoke-static {}, Lcom/android/settings/Utils;->hasDAForCameraShortcut()Z

    move-result v25

    if-eqz v25, :cond_22

    .line 697
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_22

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 701
    :cond_22
    const-string v25, "lock_screen_menu_phone_shortcut"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_23

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v25

    if-nez v25, :cond_23

    .line 703
    const-string v25, "lock_screen_menu_phone_shortcut"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 705
    :cond_23
    const-string v25, "lock_screen_camera_shortcut"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    .line 706
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_24

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_24

    const-string v25, "lock_screen_camera_shortcut"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 710
    :cond_24
    const-string v25, "lock_screen_finger_print"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "lock_screen_fingerprint_shortcut"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 712
    .local v13, "mDefaultFS":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_25

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v26, v0

    if-eqz v13, :cond_a5

    const/16 v25, 0x1

    :goto_b
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 717
    :cond_25
    const-string v25, "unlock_effect"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/ListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    .line 718
    const-string v25, "unlock_effect_with_preview"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_26

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 725
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    .line 728
    :cond_26
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_27

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 731
    :cond_27
    const-string v25, "charging_effect_with_preview"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mChargingEffect_with_preview:Landroid/preference/PreferenceScreen;

    .line 732
    const-string v25, "2"

    sget-object v26, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->getFestivalType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_28

    const-string v25, "1.5"

    sget-object v26, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->getFestivalType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_28

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mChargingEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_28

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mChargingEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 735
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mChargingEffect_with_preview:Landroid/preference/PreferenceScreen;

    .line 739
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "lockscreen_ripple_effect"

    const/16 v27, 0x1

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 740
    .local v14, "mDefaultUnlock":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_31

    .line 741
    const-string v25, "NONE,WATERCOLOUR,RIPPLE"

    const-string v26, "WATERCOLOUR"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_29

    const-string v25, "NONE,WATERCOLOUR,RIPPLE"

    const-string v26, "BLIND"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_29

    const-string v25, "NONE,WATERCOLOUR,RIPPLE"

    const-string v26, "BRILLIANTRING"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_29

    const-string v25, "NONE,WATERCOLOUR,RIPPLE"

    const-string v26, "BRILLIANTCUT"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_29

    const-string v25, "NONE,WATERCOLOUR,RIPPLE"

    const-string v26, "POPPINGCOLOURS"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_a6

    .line 746
    :cond_29
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 747
    .local v3, "aChangedEffectEntry":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v4, "aChangedEffectEntryValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a16a3    # 1.83551E38f

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a00a8

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    const-string v25, "NONE,WATERCOLOUR,RIPPLE"

    const-string v26, "BLIND"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v25

    if-nez v25, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v25

    if-nez v25, :cond_2a

    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a1bfd

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a00a3

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    :cond_2a
    const-string v25, "NONE,WATERCOLOUR,RIPPLE"

    const-string v26, "BRILLIANTRING"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2b

    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a1c01

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a00a6

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_2b
    const-string v25, "NONE,WATERCOLOUR,RIPPLE"

    const-string v26, "BRILLIANTCUT"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2c

    .line 773
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a1c02

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a00a7

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    :cond_2c
    const-string v25, "NONE,WATERCOLOUR,RIPPLE"

    const-string v26, "POPPINGCOLOURS"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v25

    if-nez v25, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v25

    if-nez v25, :cond_2d

    .line 779
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a1bfe

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a00a1

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    :cond_2d
    const-string v25, "NONE,WATERCOLOUR,RIPPLE"

    const-string v26, "WATERCOLOUR"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2e

    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a1bfc

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a00a2

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    :cond_2e
    const-string v25, "NONE,WATERCOLOUR,RIPPLE"

    const-string v26, "RIPPLE"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v25

    if-nez v25, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v25

    if-nez v25, :cond_2f

    .line 795
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a1c18

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a009f

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Ljava/lang/CharSequence;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Ljava/lang/CharSequence;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 809
    .end local v3    # "aChangedEffectEntry":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "aChangedEffectEntryValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_30
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 811
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updateRippleEffectPreferenceSummary()V

    .line 814
    :cond_31
    const-string v25, "ink_effect"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_33

    .line 816
    const-string v25, "hltejs01dcm"

    const-string v26, "ro.product.device"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_32

    const-string v25, "SC-02F"

    const-string v26, "ro.product.model"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_32

    const-string v25, "NONE,WATERCOLOUR,RIPPLE"

    const-string v26, "INK"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_33

    .line 818
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 822
    :cond_33
    const-string v25, "help_text"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_34

    .line 824
    const-string v25, "1"

    const-string v26, "0"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_34

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 829
    :cond_34
    const-string v25, "camera_short_cut"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mMotionCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMotionCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_36

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMotionCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 832
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v25

    if-nez v25, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_35

    .line 834
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMotionCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 836
    :cond_36
    const-string v25, "say_your_wakeup"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    .line 838
    const-string v25, "cover"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    .line 839
    const-string v25, "flip_cover"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mFlipCoverCategory:Landroid/preference/PreferenceCategory;

    .line 840
    const-string v25, "automatic_unlock"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    .line 841
    const-string v25, "sview_color"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    .line 842
    const-string v25, "select_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v8

    .line 845
    .local v8, "coverType":I
    const-string v25, "LockScreenMenu"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "coverType"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v8, v0, :cond_37

    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v8, v0, :cond_3c

    :cond_37
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_3c

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFlipCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFlipCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 849
    :cond_38
    const-string v25, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_UNLOCK"

    invoke-static/range {v25 .. v25}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_3c

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 851
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 852
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 853
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 855
    :cond_3c
    const/16 v25, 0x6

    move/from16 v0, v25

    if-ne v8, v0, :cond_a8

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_a8

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFlipCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFlipCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 857
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 858
    :cond_3e
    const-string v25, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_UNLOCK"

    invoke-static/range {v25 .. v25}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_41

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 860
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 861
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 881
    :cond_41
    :goto_d
    const v25, 0x7f0700b9

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_49

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_42

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a1743

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 888
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_43

    .line 893
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_44

    .line 898
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_45

    .line 899
    const-string v25, "NONE,WATERCOLOUR,RIPPLE"

    const-string v26, "INK"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_45

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 905
    :cond_45
    const-string v25, "set_wakeup_command"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_47

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v20

    .line 908
    .local v20, "set_wakeup_commant_intent":Landroid/content/Intent;
    if-eqz v20, :cond_47

    .line 909
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 910
    .local v16, "pm":Landroid/content/pm/PackageManager;
    const/16 v25, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 911
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_47

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_46

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 914
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_47

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 920
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    .end local v20    # "set_wakeup_commant_intent":Landroid/content/Intent;
    :cond_47
    const-string v25, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SVOICE"

    invoke-static/range {v25 .. v25}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_49

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_48

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 923
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_49

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 928
    :cond_49
    invoke-static {}, Lcom/android/settings/Utils;->hasNewVoiceControlConcept()Z

    move-result v25

    if-nez v25, :cond_4a

    sget-object v25, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_4b

    .line 929
    :cond_4a
    const-string v25, "lock_screen_wakeup_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4b

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 935
    :cond_4b
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v25

    if-eqz v25, :cond_93

    .line 938
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_4d

    .line 939
    const-string v25, "multiple_lock_screenswitch"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4c

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    const-string v26, "com.android.settings.LockScreenSettings"

    invoke-virtual/range {v25 .. v26}, Landroid/preference/SwitchPreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/settings/LockscreenMenuSettings$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings$3;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual/range {v25 .. v26}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 953
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4d

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 959
    :cond_4d
    const-string v25, "lock_screen_magazine_card"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 971
    const-string v25, "lock_screen_clock_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mClockWidgetOptions:Landroid/preference/PreferenceScreen;

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4f

    .line 973
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-eqz v25, :cond_4e

    .line 974
    const-string v25, "lock_screen_clock_settings"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 976
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const-string v26, "com.android.settings.LockScreenSettings"

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/settings/LockscreenMenuSettings$4;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings$4;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 987
    :cond_4f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "my_profile_enabled"

    const/16 v27, 0x1

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/LockscreenMenuSettings;->isMyprofile:I

    .line 988
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isMyprofile:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b3

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_50

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 997
    :cond_50
    :goto_e
    const-string v25, "clock_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/ListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    .line 998
    const-string v25, "clock_size_with_preview"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    .line 999
    const-string v25, "1"

    const-string v26, "0"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b4

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1007
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_52

    .line 1008
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_51

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1010
    :cond_51
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isMyprofile:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b5

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1015
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v27, "my_profile_enabled"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-nez v25, :cond_b6

    const/16 v25, 0x1

    :goto_11
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1017
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_54

    .line 1018
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_53

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1021
    :cond_53
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isMyprofile:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b7

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1026
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v27, "my_profile_enabled"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-nez v25, :cond_b8

    const/16 v25, 0x1

    :goto_13
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1029
    :cond_54
    const-string v25, "pattern_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/ListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    .line 1030
    const-string v25, "pattern_type_with_preview"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_55

    .line 1036
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_55

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1042
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_56

    .line 1043
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_56

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1049
    :cond_56
    const-string v25, "lock_screen_date_and_year"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_59

    .line 1051
    const-string v25, "1"

    const-string v26, "0"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_57

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_58

    .line 1052
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1053
    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v27, "lock_screen_date_and_year"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_b9

    const/16 v25, 0x1

    :goto_14
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1057
    :cond_59
    const-string v25, "lock_screen_myprofile_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5a

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_ba

    .line 1062
    :cond_5a
    :goto_15
    const-string v25, "vibration_feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    .line 1063
    const-string v25, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/Vibrator;

    .line 1065
    .local v24, "vibrator":Landroid/os/Vibrator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5c

    if-eqz v24, :cond_5b

    invoke-virtual/range {v24 .. v24}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v25

    if-nez v25, :cond_5c

    .line 1066
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1068
    :cond_5c
    const-string v25, "additional_information"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    .line 1069
    const-string v25, "additional_information_for_weather"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfoForWeather:Landroid/preference/CheckBoxPreference;

    .line 1070
    const-string v25, "1"

    const-string v26, "0"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_5e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5d

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_5d

    invoke-static {}, Lcom/android/settings/Utils;->isH_Device()Z

    move-result v25

    if-eqz v25, :cond_5e

    :cond_5d
    sget-object v25, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_5e

    sget-object v25, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_bb

    .line 1073
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfoForWeather:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5f

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfoForWeather:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1098
    :cond_5f
    :goto_16
    const-string v25, "lock_screen_wakeup_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_60

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-eqz v25, :cond_60

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1102
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_61

    sget-object v25, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->isVoiceControlEnabled(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_61

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1104
    const-string v25, "LockScreenMenu"

    const-string v26, "removePreference lock_screen_wakeup_settings if Svoice is not supported"

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_62

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1109
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_63

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1112
    :cond_63
    const-string v25, "biometric_weak_improve_matching"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 1114
    .local v15, "mImproveFace":Landroid/preference/Preference;
    const-string v25, "1"

    const-string v26, "0"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_64

    if-nez v10, :cond_64

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1118
    :cond_64
    const-string v25, "LockScreenMenu"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "lock type :"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move-object/from16 v25, v0

    const v26, 0x7f0a0257

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_c1

    .line 1121
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a029d

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 1122
    const-string v25, "lock_screen_options_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a16f6

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(I)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_65

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1127
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_66

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1129
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_67

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1131
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_68

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1133
    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_69

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1135
    :cond_69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6a

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1137
    :cond_6a
    if-eqz v15, :cond_6b

    .line 1138
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1139
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6c

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1141
    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6d

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1143
    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6e

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1145
    :cond_6e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6f

    sget-object v25, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_c0

    .line 1148
    :cond_6f
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_71

    sget-object v25, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_70

    .line 1149
    :cond_70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1543
    :cond_71
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v25

    if-eqz v25, :cond_93

    .line 1545
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a029c

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_72

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1549
    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_73

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1551
    :cond_73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_74

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1553
    :cond_74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_75

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1555
    :cond_75
    if-eqz v15, :cond_76

    .line 1556
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1557
    :cond_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_77

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1559
    :cond_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_78

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1561
    :cond_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_79

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1563
    :cond_79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7a

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1565
    :cond_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7b

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1567
    :cond_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7c

    .line 1568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1569
    :cond_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7d

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1571
    :cond_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7e

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1573
    :cond_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7f

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1575
    :cond_7f
    if-eqz v6, :cond_80

    .line 1576
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1577
    :cond_80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_81

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1579
    :cond_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_82

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1581
    :cond_82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_83

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1583
    :cond_83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_84

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1585
    :cond_84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_85

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1587
    :cond_85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_86

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1589
    :cond_86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_87

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1591
    :cond_87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_88

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1593
    :cond_88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_89

    .line 1594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1595
    :cond_89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8a

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1597
    :cond_8a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8b

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1599
    :cond_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8c

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1601
    :cond_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8d

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1603
    :cond_8d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8e

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1605
    :cond_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8f

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1607
    :cond_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_90

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1609
    :cond_90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_91

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1611
    :cond_91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShowInformation:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_92

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShowInformation:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1613
    :cond_92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mChargingEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_93

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mChargingEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1615
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mChargingEffect_with_preview:Landroid/preference/PreferenceScreen;

    .line 1622
    .end local v15    # "mImproveFace":Landroid/preference/Preference;
    .end local v24    # "vibrator":Landroid/os/Vibrator;
    :cond_93
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mStartFromSearch:Z

    move/from16 v25, v0

    if-eqz v25, :cond_94

    .line 1623
    sget v25, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_94

    .line 1624
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    .line 1625
    .local v9, "extra_bundle":Landroid/os/Bundle;
    const-string v25, "extra_parent_preference_key"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1626
    .local v21, "targetKey":Ljava/lang/String;
    sget v25, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_161

    const/16 v23, 0x1

    .line 1627
    .local v23, "value":Z
    :goto_19
    const-string v25, "lock_screen_shortcut_menu"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_162

    .line 1628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v25

    if-eqz v25, :cond_94

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1647
    .end local v9    # "extra_bundle":Landroid/os/Bundle;
    .end local v21    # "targetKey":Ljava/lang/String;
    .end local v23    # "value":Z
    :cond_94
    :goto_1a
    return-object v19

    .line 362
    .end local v5    # "auto_swipe_summary":Ljava/lang/String;
    .end local v6    # "ca":Landroid/preference/PreferenceCategory;
    .end local v8    # "coverType":I
    .end local v10    # "isSecondaryUser":Z
    .end local v13    # "mDefaultFS":I
    .end local v14    # "mDefaultUnlock":I
    .end local v17    # "res":Landroid/content/res/Resources;
    .end local v18    # "resid":I
    .end local v22    # "temp_max_attempts":I
    :cond_95
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 369
    .restart local v10    # "isSecondaryUser":Z
    .restart local v18    # "resid":I
    :cond_96
    const v18, 0x7f0700b9

    .line 370
    const v25, 0x7f0a0257

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto/16 :goto_1

    .line 372
    :cond_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v25

    if-eqz v25, :cond_98

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v25

    if-eqz v25, :cond_98

    .line 374
    const v18, 0x7f0700b6

    .line 375
    const v25, 0x7f0a029e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto/16 :goto_1

    .line 376
    :cond_98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v25

    if-eqz v25, :cond_99

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v25

    if-eqz v25, :cond_99

    .line 378
    const v18, 0x7f0700c5

    .line 379
    const v25, 0x7f0a029f

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto/16 :goto_1

    .line 381
    :cond_99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v25

    sparse-switch v25, :sswitch_data_0

    .line 411
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "lock_motion_tilt_to_unlock"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 383
    :sswitch_0
    const v18, 0x7f0700c1

    .line 384
    const v25, 0x7f0a025e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_1b

    .line 387
    :sswitch_1
    const v18, 0x7f0700bd

    .line 388
    const v25, 0x7f0a1a8a

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_1b

    .line 392
    :sswitch_2
    const v18, 0x7f0700c3

    .line 393
    const v25, 0x7f0a0297

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_1b

    .line 397
    :sswitch_3
    const v18, 0x7f0700b7

    .line 398
    const v25, 0x7f0a026f

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_1b

    .line 403
    :sswitch_4
    const v18, 0x7f0700c0

    .line 404
    const v25, 0x7f0a0299

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_1b

    .line 407
    :sswitch_5
    const v18, 0x7f0700b8

    .line 408
    const v25, 0x7f0a0260

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto/16 :goto_1b

    .line 542
    .restart local v6    # "ca":Landroid/preference/PreferenceCategory;
    :cond_9a
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 546
    :cond_9b
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 569
    .restart local v5    # "auto_swipe_summary":Ljava/lang/String;
    .restart local v17    # "res":Landroid/content/res/Resources;
    .restart local v22    # "temp_max_attempts":I
    :cond_9c
    const v25, 0x7f0700c1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_9d

    .line 570
    const v25, 0x7f0e0016

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v22

    goto/16 :goto_4

    .line 572
    :cond_9d
    const v25, 0x7f0700bd

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_9e

    .line 573
    const/16 v22, 0xf

    goto/16 :goto_4

    .line 576
    :cond_9e
    const/16 v22, 0xa

    goto/16 :goto_4

    .line 583
    :cond_9f
    const v25, 0x7f0a1bc6

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5

    .line 642
    :cond_a0
    const/16 v25, 0x0

    goto/16 :goto_6

    .line 649
    :cond_a1
    const/16 v25, 0x0

    goto/16 :goto_7

    .line 651
    :cond_a2
    const v25, 0x7f0a0a61

    goto/16 :goto_8

    .line 653
    :cond_a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    .line 659
    :cond_a4
    const/16 v25, 0x0

    goto/16 :goto_a

    .line 714
    .restart local v13    # "mDefaultFS":I
    :cond_a5
    const/16 v25, 0x0

    goto/16 :goto_b

    .line 802
    .restart local v14    # "mDefaultUnlock":I
    :cond_a6
    const-string v25, "NONE,WATERCOLOUR,RIPPLE"

    const-string v26, "RIPPLE"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_a7

    .line 803
    const-string v25, "1"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->removeUnsupportedEffect(Ljava/lang/CharSequence;)V

    .line 805
    :cond_a7
    const-string v25, "NONE,WATERCOLOUR,RIPPLE"

    const-string v26, "POPPINGCOLOURS"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_30

    .line 806
    const-string v25, "3"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->removeUnsupportedEffect(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 863
    .restart local v8    # "coverType":I
    :cond_a8
    if-eqz v8, :cond_a9

    const/16 v25, 0x5

    move/from16 v0, v25

    if-eq v8, v0, :cond_a9

    const/16 v25, 0x7

    move/from16 v0, v25

    if-ne v8, v0, :cond_ae

    :cond_a9
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_ae

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_aa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 865
    :cond_aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 866
    :cond_ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ac

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 867
    :cond_ac
    const-string v25, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_UNLOCK"

    invoke-static/range {v25 .. v25}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_41

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFlipCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ad

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFlipCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 869
    :cond_ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_d

    .line 872
    :cond_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFlipCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_af

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFlipCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 875
    :cond_af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_b0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 876
    :cond_b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_b1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 877
    :cond_b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_b2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 878
    :cond_b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_d

    .line 994
    :cond_b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_50

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_e

    .line 1006
    :cond_b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_f

    .line 1013
    :cond_b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_10

    .line 1015
    :cond_b6
    const/16 v25, 0x0

    goto/16 :goto_11

    .line 1024
    :cond_b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_12

    .line 1026
    :cond_b8
    const/16 v25, 0x0

    goto/16 :goto_13

    .line 1053
    :cond_b9
    const/16 v25, 0x0

    goto/16 :goto_14

    .line 1059
    :cond_ba
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_15

    .line 1079
    .restart local v24    # "vibrator":Landroid/os/Vibrator;
    :cond_bb
    sget-object v25, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    const-string v26, "com.sec.android.app.shealth"

    invoke-static/range {v25 .. v26}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_bc

    const-string v25, "ro.config.rm_preload_enabled"

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_bd

    :cond_bc
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isPedometerSupported(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_bf

    .line 1081
    :cond_bd
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "lock_additional_steps"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_be

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1084
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    .line 1091
    :cond_be
    :goto_1c
    const v25, 0x7f0700be

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_5f

    .line 1092
    const-string v25, "additional_information"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->removePreference(Ljava/lang/String;)V

    .line 1093
    const-string v25, "additional_information_for_weather"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1087
    :cond_bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfoForWeather:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_be

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfoForWeather:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1c

    .line 1146
    .restart local v15    # "mImproveFace":Landroid/preference/Preference;
    :cond_c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_17

    .line 1151
    :cond_c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move-object/from16 v25, v0

    const v26, 0x7f0a025e

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_d1

    .line 1153
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a02a0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 1154
    const-string v25, "lock_screen_options_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a16f7

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(I)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c3

    const-string v25, "NONE,WATERCOLOUR,RIPPLE"

    const-string v26, "WATERCOLOUR"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_c2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_c2

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_c3

    .line 1159
    :cond_c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1160
    :cond_c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c5

    const-string v25, "NONE,WATERCOLOUR,RIPPLE"

    const-string v26, "WATERCOLOUR"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_c4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_c4

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_c5

    .line 1163
    :cond_c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1165
    :cond_c5
    if-eqz v15, :cond_c6

    .line 1166
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1167
    :cond_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c7

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1169
    :cond_c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c8

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1171
    :cond_c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c9

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1173
    :cond_c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ca

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1175
    :cond_ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_cb

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1177
    :cond_cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_cc

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1179
    :cond_cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_cd

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1181
    :cond_cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ce

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1183
    :cond_ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_cf

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1185
    :cond_cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d0

    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_d0

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1187
    :cond_d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_71

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_18

    .line 1191
    :cond_d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move-object/from16 v25, v0

    const v26, 0x7f0a1a8a

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_e3

    .line 1193
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a02a2

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 1194
    const-string v25, "lock_screen_options_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a02a2

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(I)V

    .line 1196
    if-eqz v15, :cond_d2

    .line 1197
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1198
    :cond_d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d3

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1200
    :cond_d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d4

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1202
    :cond_d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d5

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1204
    :cond_d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d6

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1206
    :cond_d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d7

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1208
    :cond_d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d8

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1210
    :cond_d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d9

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1212
    :cond_d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_da

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1214
    :cond_da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_db

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1216
    :cond_db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_dc

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1218
    :cond_dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_dd

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1220
    :cond_dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_de

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1222
    :cond_de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_df

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1224
    :cond_df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e0

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1226
    :cond_e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e1

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1228
    :cond_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e2

    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_e2

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1230
    :cond_e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_71

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_18

    .line 1234
    :cond_e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move-object/from16 v25, v0

    const v26, 0x7f0a0297

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_f5

    .line 1236
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a02a1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 1237
    const-string v25, "lock_screen_options_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a16f8

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(I)V

    .line 1239
    if-eqz v15, :cond_e4

    .line 1240
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1241
    :cond_e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e5

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1243
    :cond_e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e6

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1245
    :cond_e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e7

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1247
    :cond_e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e8

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1249
    :cond_e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e9

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1251
    :cond_e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ea

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1253
    :cond_ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_eb

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1255
    :cond_eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ec

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1257
    :cond_ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ed

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1259
    :cond_ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ee

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1261
    :cond_ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ef

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1263
    :cond_ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f0

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1265
    :cond_f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f1

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1267
    :cond_f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f2

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1269
    :cond_f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f3

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1271
    :cond_f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f4

    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_f4

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1273
    :cond_f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_71

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_18

    .line 1277
    :cond_f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move-object/from16 v25, v0

    const v26, 0x7f0a0260

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_107

    .line 1279
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a028c

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 1280
    const-string v25, "lock_screen_options_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a028c

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(I)V

    .line 1282
    if-eqz v15, :cond_f6

    .line 1283
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1284
    :cond_f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f7

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1286
    :cond_f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f8

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1288
    :cond_f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f9

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1290
    :cond_f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_fa

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1292
    :cond_fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_fb

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1294
    :cond_fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_fc

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1296
    :cond_fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_fd

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1298
    :cond_fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_fe

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1300
    :cond_fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ff

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1302
    :cond_ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_100

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1304
    :cond_100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_101

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1306
    :cond_101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_102

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1308
    :cond_102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_103

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1310
    :cond_103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_104

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1312
    :cond_104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_105

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1314
    :cond_105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_106

    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_106

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1316
    :cond_106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_71

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_18

    .line 1320
    :cond_107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move-object/from16 v25, v0

    const v26, 0x7f0a0299

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_119

    .line 1322
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a02a3

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 1323
    const-string v25, "lock_screen_options_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a16fb

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(I)V

    .line 1325
    if-eqz v15, :cond_108

    .line 1326
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1327
    :cond_108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_109

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1329
    :cond_109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10a

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1331
    :cond_10a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10b

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1333
    :cond_10b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10c

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1335
    :cond_10c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10d

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1337
    :cond_10d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10e

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1339
    :cond_10e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10f

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1341
    :cond_10f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_110

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1343
    :cond_110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_111

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1345
    :cond_111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_112

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1347
    :cond_112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_113

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1349
    :cond_113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_114

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1351
    :cond_114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_115

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1353
    :cond_115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_116

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1355
    :cond_116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_117

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1357
    :cond_117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_118

    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_118

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1359
    :cond_118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_71

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_18

    .line 1363
    :cond_119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move-object/from16 v25, v0

    const v26, 0x7f0a026f

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_12e

    .line 1365
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a026f

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 1366
    const-string v25, "lock_screen_options_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a026f

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(I)V

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11a

    const-string v25, "NONE,WATERCOLOUR,RIPPLE"

    const-string v26, "WATERCOLOUR"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_11a

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1370
    :cond_11a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11b

    const-string v25, "NONE,WATERCOLOUR,RIPPLE"

    const-string v26, "WATERCOLOUR"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_11b

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1374
    :cond_11b
    if-eqz v15, :cond_11c

    .line 1375
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1376
    :cond_11c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11d

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1378
    :cond_11d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11e

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1380
    :cond_11e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11f

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1382
    :cond_11f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_120

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1384
    :cond_120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_121

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1386
    :cond_121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_122

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1388
    :cond_122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_123

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1390
    :cond_123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_124

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1392
    :cond_124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_125

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1394
    :cond_125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_126

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1396
    :cond_126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_127

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1398
    :cond_127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_128

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1400
    :cond_128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_129

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1402
    :cond_129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12a

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1404
    :cond_12a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12b

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1406
    :cond_12b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12d

    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_12c

    if-eqz v10, :cond_12d

    .line 1407
    :cond_12c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1408
    :cond_12d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_71

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_18

    .line 1412
    :cond_12e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move-object/from16 v25, v0

    const v26, 0x7f0a029e

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_140

    .line 1414
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a029e

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 1415
    const-string v25, "lock_screen_options_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a16f9

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(I)V

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12f

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1419
    :cond_12f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_130

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1421
    :cond_130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_131

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1423
    :cond_131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_132

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1425
    :cond_132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_133

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1427
    :cond_133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_134

    .line 1428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1429
    :cond_134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_135

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1431
    :cond_135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_136

    .line 1432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1433
    :cond_136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_137

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1435
    :cond_137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_138

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1438
    :cond_138
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v25

    if-eqz v25, :cond_13f

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v25

    const/high16 v26, 0x10000

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_139

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_139

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1449
    :cond_139
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13a

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1451
    :cond_13a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13b

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1453
    :cond_13b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13c

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1455
    :cond_13c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13d

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1457
    :cond_13d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13e

    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_13e

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1459
    :cond_13e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_71

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_18

    .line 1445
    :cond_13f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_139

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1d

    .line 1463
    :cond_140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move-object/from16 v25, v0

    const v26, 0x7f0a025b

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_151

    .line 1465
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a025b

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 1466
    const-string v25, "lock_screen_options_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a16f9

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(I)V

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_141

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1470
    :cond_141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_142

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1472
    :cond_142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_143

    .line 1473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1474
    :cond_143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_144

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1476
    :cond_144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_145

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1478
    :cond_145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_146

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1480
    :cond_146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_147

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1482
    :cond_147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_148

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1484
    :cond_148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_149

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1486
    :cond_149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14a

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1488
    :cond_14a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14b

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1490
    :cond_14b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14c

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1492
    :cond_14c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14d

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1494
    :cond_14d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14e

    .line 1495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1496
    :cond_14e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14f

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1498
    :cond_14f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_150

    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_150

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1500
    :cond_150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_71

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_18

    .line 1504
    :cond_151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move-object/from16 v25, v0

    const v26, 0x7f0a029f

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_71

    .line 1505
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a029f

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 1506
    const-string v25, "lock_screen_options_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a16fa

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(I)V

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_152

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1510
    :cond_152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_153

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1512
    :cond_153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_154

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1514
    :cond_154
    if-eqz v15, :cond_155

    .line 1515
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1516
    :cond_155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_156

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1518
    :cond_156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_157

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1520
    :cond_157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_158

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1522
    :cond_158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_159

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1524
    :cond_159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_15a

    .line 1525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1526
    :cond_15a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_15b

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1528
    :cond_15b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_15c

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1530
    :cond_15c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_15d

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1532
    :cond_15d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_15e

    .line 1533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1534
    :cond_15e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_15f

    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_15f

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1536
    :cond_15f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_160

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1538
    :cond_160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_71

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_18

    .line 1626
    .end local v15    # "mImproveFace":Landroid/preference/Preference;
    .end local v24    # "vibrator":Landroid/os/Vibrator;
    .restart local v9    # "extra_bundle":Landroid/os/Bundle;
    .restart local v21    # "targetKey":Ljava/lang/String;
    :cond_161
    const/16 v23, 0x0

    goto/16 :goto_19

    .line 1632
    .restart local v23    # "value":Z
    :cond_162
    const-string v25, "dualclock_settings"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_163

    .line 1633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v25

    if-eqz v25, :cond_94

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1a

    .line 1637
    :cond_163
    const-string v25, "safetyzone_settings"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_94

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v25

    if-eqz v25, :cond_94

    .line 1639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1a

    .line 381
    :sswitch_data_0
    .sparse-switch
        0x9100 -> :sswitch_3
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_2
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x61000 -> :sswitch_1
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_3
    .end sparse-switch
.end method

.method private disableUnusableTimeouts(J)V
    .locals 19
    .param p1, "maxTimeout"    # J

    .prologue
    .line 1796
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 1797
    .local v4, "entries":[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v13

    .line 1798
    .local v13, "values":[Ljava/lang/CharSequence;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1799
    .local v8, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1801
    .local v9, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "screen_off_timeout"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-long v2, v14

    .line 1804
    .local v2, "displayTimeout":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v14, v13

    if-ge v5, v14, :cond_1

    .line 1805
    aget-object v14, v13, v5

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1806
    .local v10, "timeout":J
    cmp-long v14, v10, p1

    if-gtz v14, :cond_0

    .line 1807
    aget-object v14, v4, v5

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1808
    aget-object v14, v13, v5

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1804
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1813
    .end local v10    # "timeout":J
    :cond_1
    const-string v14, "LockScreenMenu"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "revisedValues.size() : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long v6, p1, v14

    .line 1815
    .local v6, "last_timeout":J
    const-string v14, "LockScreenMenu"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "last_timeout : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-lez v14, :cond_2

    array-length v14, v13

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v13, v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v14, p1, v14

    if-gez v14, :cond_2

    .line 1817
    const v14, 0x7f0a14eb

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/LockscreenMenuSettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1818
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1822
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1824
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1826
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1827
    .local v12, "userPreference":I
    int-to-long v14, v12

    cmp-long v14, v14, p1

    if-gtz v14, :cond_3

    .line 1828
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1837
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_4

    const/4 v14, 0x1

    :goto_2
    invoke-virtual {v15, v14}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1839
    return-void

    .line 1830
    :cond_3
    const-string v14, "LockScreenMenu"

    const-string v15, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 1837
    :cond_4
    const/4 v14, 0x0

    goto :goto_2
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 11
    .param p1, "time"    # J

    .prologue
    .line 3011
    const-wide/16 v6, 0x3e8

    div-long v4, p1, v6

    .line 3012
    .local v4, "second":J
    const-wide/16 v6, 0x3c

    div-long v0, v4, v6

    .line 3013
    .local v0, "minute":J
    const-wide/16 v6, 0x3c

    rem-long/2addr v4, v6

    .line 3015
    const-string v2, ""

    .line 3016
    .local v2, "result":Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    .line 3017
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f11000a

    long-to-int v7, v0

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    long-to-int v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3019
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 3020
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3022
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 3023
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f11000b

    long-to-int v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    long-to-int v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3026
    :cond_2
    const-string v3, "LockScreenMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimeoutNewEntry : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    return-object v2
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 7
    .param p1, "timeout"    # J

    .prologue
    const/4 v2, 0x0

    .line 3056
    const/4 v1, 0x0

    .line 3057
    .local v1, "values":[Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v3, :cond_1

    .line 3058
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 3064
    :goto_0
    if-nez v1, :cond_2

    .line 3070
    :cond_0
    :goto_1
    return v2

    .line 3060
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3066
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 3067
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    .line 3066
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private isRippleEffect()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1871
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_ripple_effect"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1872
    .local v0, "effect":I
    if-ne v0, v1, :cond_0

    .line 1875
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 2604
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private isVoiceControlEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1673
    const/4 v1, 0x1

    .line 1676
    .local v1, "isSVoiceInstalled":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.vlingo.midas"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1677
    const-string v2, "LockScreenMenu"

    const-string v3, "SVoice is installed."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1683
    :goto_0
    return v1

    .line 1678
    :catch_0
    move-exception v0

    .line 1679
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "LockScreenMenu"

    const-string v3, "SVoice is not installed."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeUnsupportedEffect(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "entryValue"    # Ljava/lang/CharSequence;

    .prologue
    .line 1651
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1652
    .local v2, "revisedUnlockEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1654
    .local v3, "revisedUnlockValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    const v6, 0x7f0c0010

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1655
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    const v6, 0x7f0c0012

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 1657
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 1658
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 1660
    .local v4, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 1662
    aget-object v5, v4, v1

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1660
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1664
    :cond_0
    aget-object v5, v0, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1665
    aget-object v5, v4, v1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1668
    :cond_1
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1669
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1670
    return-void
.end method

.method private saveCameraShortcutSharedPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3159
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.settings.LockscreenMenuSettings.CameraShortcut"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3161
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3162
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "DoNotShowDialog"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3163
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3164
    return-void
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 1724
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1726
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1727
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1728
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 1729
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 1731
    .local v4, "displayTimeout":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 1737
    iget-boolean v8, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v8, :cond_2

    .end local v0    # "adminTimeout":J
    :goto_1
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings/LockscreenMenuSettings;->disableUnusableTimeouts(J)V

    .line 1740
    :cond_0
    return-void

    .end local v4    # "displayTimeout":J
    :cond_1
    move-wide v0, v6

    .line 1728
    goto :goto_0

    .line 1737
    .restart local v0    # "adminTimeout":J
    .restart local v4    # "displayTimeout":J
    :cond_2
    sub-long/2addr v0, v4

    goto :goto_1
.end method

.method private setupSignatureVerificationLevelPreference(Z)V
    .locals 13
    .param p1, "isUpdate"    # Z

    .prologue
    .line 1842
    if-nez p1, :cond_0

    .line 1843
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    const v9, 0x7f0401cf

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 1844
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1847
    :cond_0
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getSignatureVerificationLevel()I

    move-result v1

    .line 1849
    .local v1, "currentLevel":I
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1851
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1852
    .local v2, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 1854
    .local v7, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 1855
    .local v0, "best":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_2

    .line 1856
    aget-object v8, v7, v3

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1857
    .local v4, "level":J
    int-to-long v8, v1

    cmp-long v8, v8, v4

    if-nez v8, :cond_1

    .line 1858
    move v0, v3

    .line 1855
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1862
    .end local v4    # "level":J
    :cond_2
    aget-object v8, v2, v0

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1863
    .local v6, "levelString":Ljava/lang/String;
    const-string v8, "SecuritySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get signature verification level: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    const v9, 0x7f0a151a

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1868
    return-void
.end method

.method private showCameraShortcutGuidePopup()V
    .locals 7

    .prologue
    .line 3168
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3169
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 3171
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040085

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3172
    .local v3, "layout":Landroid/view/View;
    const v5, 0x7f100168

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3173
    .local v4, "message":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3174
    const v5, 0x7f0a0f86

    invoke-virtual {p0, v5}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3177
    :goto_0
    const v5, 0x7f100169

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 3178
    .local v1, "check":Landroid/widget/CheckBox;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3179
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3180
    const v5, 0x7f0a15b0

    invoke-virtual {p0, v5}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3182
    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/settings/LockscreenMenuSettings$13;

    invoke-direct {v6, p0}, Lcom/android/settings/LockscreenMenuSettings$13;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3188
    new-instance v5, Lcom/android/settings/LockscreenMenuSettings$14;

    invoke-direct {v5, p0}, Lcom/android/settings/LockscreenMenuSettings$14;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 3194
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/LockscreenMenuSettings$15;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/LockscreenMenuSettings$15;-><init>(Lcom/android/settings/LockscreenMenuSettings;Landroid/view/View;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3202
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 3203
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3204
    return-void

    .line 3176
    .end local v1    # "check":Landroid/widget/CheckBox;
    :cond_0
    const v5, 0x7f0a0f87

    invoke-virtual {p0, v5}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showSafetyZoneEnableDialog()V
    .locals 3

    .prologue
    .line 2941
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a1062

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/LockscreenMenuSettings$11;

    invoke-direct {v2, p0}, Lcom/android/settings/LockscreenMenuSettings$11;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/LockscreenMenuSettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings/LockscreenMenuSettings$10;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2962
    return-void
.end method

.method private showSafetyZoneInfoDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2966
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2968
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 2969
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 2970
    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    .line 2973
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 2974
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040084

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2975
    .local v2, "layout":Landroid/view/View;
    const v4, 0x7f100075

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2977
    .local v3, "message":Landroid/widget/TextView;
    const v4, 0x7f0a1061

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2978
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2979
    const v4, 0x7f0a105b

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2980
    const v4, 0x7f0a08f6

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2981
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    .line 2982
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 2983
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/LockscreenMenuSettings$12;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/LockscreenMenuSettings$12;-><init>(Lcom/android/settings/LockscreenMenuSettings;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3001
    return-void
.end method

.method private updateClockSizeSummary()V
    .locals 5

    .prologue
    .line 2541
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 2542
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_clock_size"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2543
    .local v0, "State":I
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2544
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    aget-object v3, v1, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2545
    return-void
.end method

.method private updateClockSizeSummaryK()V
    .locals 5

    .prologue
    .line 2548
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2549
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_clock_size"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2550
    .local v0, "State":I
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    aget-object v3, v1, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2551
    return-void
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 22

    .prologue
    .line 1744
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "lock_screen_lock_after_timeout"

    const-wide/16 v20, 0x1388

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 1746
    .local v6, "currentTimeout":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 1747
    .local v5, "entries":[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v15

    .line 1748
    .local v15, "values":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 1749
    .local v4, "best":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_1

    .line 1750
    aget-object v18, v15, v10

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1751
    .local v16, "timeout":J
    cmp-long v18, v6, v16

    if-ltz v18, :cond_0

    .line 1752
    move v4, v10

    .line 1749
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1757
    .end local v16    # "timeout":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 1758
    .local v2, "adminTimeout":J
    :goto_1
    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "screen_off_timeout"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    int-to-long v8, v0

    .line 1760
    .local v8, "displayTimeout":J
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .end local v2    # "adminTimeout":J
    :goto_2
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 1764
    .local v12, "maxTimeout":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    const v14, 0x7f0a008e

    .line 1765
    .local v14, "summaryResID":I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    const v11, 0x7f0a008f

    .line 1768
    .local v11, "immeResID":I
    :goto_4
    aget-object v18, v15, v4

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v18, v18, v12

    if-gez v18, :cond_7

    cmp-long v18, v12, v6

    if-gez v18, :cond_7

    .line 1769
    const-string v18, "LockScreenMenu"

    const-string v19, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    cmp-long v18, v12, v8

    if-gez v18, :cond_6

    .line 1772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v5, v4

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1793
    :goto_5
    return-void

    .line 1757
    .end local v8    # "displayTimeout":J
    .end local v11    # "immeResID":I
    .end local v12    # "maxTimeout":J
    .end local v14    # "summaryResID":I
    :cond_2
    const-wide/16 v2, 0x0

    goto/16 :goto_1

    .line 1760
    .restart local v2    # "adminTimeout":J
    .restart local v8    # "displayTimeout":J
    :cond_3
    sub-long/2addr v2, v8

    goto :goto_2

    .line 1764
    .end local v2    # "adminTimeout":J
    .restart local v12    # "maxTimeout":J
    :cond_4
    const v14, 0x7f0a0212

    goto :goto_3

    .line 1765
    .restart local v14    # "summaryResID":I
    :cond_5
    const v11, 0x7f0a14ea

    goto :goto_4

    .line 1774
    .restart local v11    # "immeResID":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings/LockscreenMenuSettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1779
    :cond_7
    if-nez v4, :cond_8

    .line 1780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v5, v4

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    aget-object v19, v15, v4

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_5

    .line 1783
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/settings/LockscreenMenuSettings;->isInDefaultTimeoutList(J)Z

    move-result v18

    if-eqz v18, :cond_a

    cmp-long v18, v6, v12

    if-ltz v18, :cond_9

    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-nez v18, :cond_a

    .line 1784
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v5, v4

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1786
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings/LockscreenMenuSettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method private updatePatternTypeSummary()V
    .locals 2

    .prologue
    .line 2554
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2555
    .local v0, "summary":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2556
    return-void
.end method

.method private updatePatternTypeSummaryK()V
    .locals 7

    .prologue
    .line 2559
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0125

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2560
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2561
    .local v3, "values":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_pattern_type"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2562
    .local v0, "State":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 2563
    aget-object v4, v3, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 2564
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    aget-object v5, v1, v2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2562
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2566
    :cond_1
    return-void
.end method

.method private updateRippleEffectPreferenceSummary()V
    .locals 7

    .prologue
    .line 2927
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 2928
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 2930
    .local v3, "values":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_ripple_effect"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2931
    .local v0, "State":I
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2933
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 2934
    aget-object v4, v3, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 2935
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    aget-object v5, v1, v2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2933
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2938
    :cond_1
    return-void
.end method

.method private updateSetSchortcutsMenu()V
    .locals 8

    .prologue
    .line 3081
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 3082
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 3083
    .local v4, "values":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "set_shortcuts_mode"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3085
    .local v2, "mode":I
    const/4 v3, 0x0

    .line 3086
    .local v3, "setShortcuts":Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "set_shortcuts"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .end local v3    # "setShortcuts":Landroid/preference/ListPreference;
    check-cast v3, Landroid/preference/ListPreference;

    .line 3089
    .restart local v3    # "setShortcuts":Landroid/preference/ListPreference;
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_0

    .line 3090
    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    .line 3091
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3097
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 3098
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 3099
    aget-object v5, v4, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_3

    .line 3100
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    aget-object v6, v0, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3104
    :cond_1
    return-void

    .line 3093
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 3098
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public changeSwitchForOnlyWeatherOnAddInfo(Z)V
    .locals 5
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3129
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_additional_info"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3130
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_additional_weather"

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3131
    return-void

    :cond_0
    move v0, v2

    .line 3129
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3130
    goto :goto_1
.end method

.method protected isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2578
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2580
    .local v0, "enable":I
    const/4 v3, 0x2

    if-eq v3, v0, :cond_0

    const/4 v3, 0x3

    if-ne v3, v0, :cond_1

    .line 2587
    .end local v0    # "enable":I
    :cond_0
    :goto_0
    return v2

    .line 2584
    .restart local v0    # "enable":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2586
    .end local v0    # "enable":I
    :catch_0
    move-exception v1

    .line 2587
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method protected makeDisablePopup(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2569
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2570
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.popupuireceiver"

    const-string v2, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2572
    const-string v1, "app_package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2573
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2574
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1688
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1689
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1690
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/LockscreenMenuSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/LockscreenMenuSettings$5;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1713
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1714
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenMenuSettings;->setHasOptionsMenu(Z)V

    .line 1715
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 2654
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2655
    const/16 v2, 0x7c

    if-ne p1, v2, :cond_1

    if-ne p2, v3, :cond_1

    .line 2657
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->startBiometricWeakImprove()V

    .line 2698
    :cond_0
    :goto_0
    return-void

    .line 2659
    :cond_1
    const/16 v2, 0x7d

    if-ne p1, v2, :cond_2

    if-ne p2, v3, :cond_2

    .line 2661
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 2662
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 2663
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 2664
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 2669
    .end local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    const-string v2, "NONE,WATERCOLOUR,RIPPLE"

    const-string v3, "WATERCOLOUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "NONE,WATERCOLOUR,RIPPLE"

    const-string v3, "BLIND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "NONE,WATERCOLOUR,RIPPLE"

    const-string v3, "POPPINGCOLOURS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2683
    :cond_3
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    const/high16 v3, 0x10000

    if-ne v2, v3, :cond_5

    .line 2685
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2686
    .local v1, "nUnlockeffect":I
    if-eq v1, v5, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 2690
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2691
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2697
    .end local v1    # "nUnlockeffect":I
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 3078
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 325
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    .line 329
    const-string v1, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    .line 330
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    .line 333
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 335
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 337
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 340
    .local v0, "activity":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    .line 341
    const-string v1, "LockScreenMenu"

    const-string v2, " LockScreen : onCreateCalled"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    .line 344
    const-string v1, "LockScreenMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDirect LockScreen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    sget-object v1, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 350
    iget-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mOpenDetailMenu:Z

    if-eqz v1, :cond_1

    .line 351
    iget-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mOpenDetailMenu:Z

    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mStartFromSearch:Z

    .line 353
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 2609
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2611
    sget-object v0, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2613
    const/4 v0, 0x1

    const v1, 0x7f0a1652

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201f4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2617
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1719
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 1720
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2621
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2645
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 2623
    :pswitch_0
    sget-object v2, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2624
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2625
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "helphub:appid"

    const-string v3, "lock_screen"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2628
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2642
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2629
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2630
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "LockScreenMenu"

    const-string v3, "Activity not found do not anyting"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2633
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    sget-object v2, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2634
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2635
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "helphub:section"

    const-string v3, "unlock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2637
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2638
    :catch_1
    move-exception v0

    .line 2639
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "LockScreenMenu"

    const-string v3, "Activity not found do not anyting"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2621
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 2381
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 2382
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2384
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2385
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2386
    const-string v0, "LockScreenMenu"

    const-string v1, "onPause(), dismiss mUnlockEffect dialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2389
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2390
    const-string v0, "LockScreenMenu"

    const-string v1, "onPause(), dismiss mClockSize dialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    :cond_1
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2393
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2394
    const-string v0, "LockScreenMenu"

    const-string v1, "onPause(), dismiss mPatternType dialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    :cond_2
    return-void
.end method

.method public onPositiveClick()V
    .locals 5

    .prologue
    const/16 v3, 0x41

    .line 3134
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    .line 3135
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 3136
    .local v1, "mUserId":I
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 3137
    .local v0, "info":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 3139
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3141
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 3142
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 3147
    .end local v0    # "info":Ljava/lang/String;
    .end local v1    # "mUserId":I
    :cond_1
    :goto_0
    return-void

    .line 3144
    .restart local v0    # "info":Ljava/lang/String;
    .restart local v1    # "mUserId":I
    :cond_2
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0218

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 29
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_4

    move-object/from16 v24, p2

    .line 2702
    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 2704
    .local v23, "timeout":I
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings/LockscreenMenuSettings;->isInDefaultTimeoutList(J)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 2705
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "lock_after_timeout_rollback"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2711
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "lock_screen_lock_after_timeout"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2717
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "screen_off_timeout"

    const-wide/16 v26, 0x7530

    invoke-static/range {v24 .. v27}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 2719
    .local v6, "currentScreenTimeout":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    if-eqz v23, :cond_0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v24, v24, v6

    if-gez v24, :cond_0

    .line 2720
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->showDeviceLockDialog()V

    .line 2723
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updateLockAfterPreferenceSummary()V

    .line 2860
    .end local v6    # "currentScreenTimeout":J
    .end local v23    # "timeout":I
    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 2861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_20

    .line 2862
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_1e

    const/16 v21, 0x1

    .line 2863
    .local v21, "setValue":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "my_profile_enabled"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2864
    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_1f

    .line 2865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 2866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2880
    .end local v21    # "setValue":I
    :cond_2
    :goto_4
    const/16 v24, 0x1

    return v24

    .line 2707
    .restart local v23    # "timeout":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const v23, 0x1b7741

    goto :goto_0

    .line 2713
    :catch_0
    move-exception v9

    .line 2714
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-string v24, "SecuritySettings"

    const-string v25, "could not persist lockAfter timeout setting"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2724
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v23    # "timeout":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_5

    move-object/from16 v24, p2

    .line 2725
    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 2727
    .local v14, "level":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/LockPatternUtils;->setSignatureVerificationLevel(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2732
    :goto_5
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->setupSignatureVerificationLevelPreference(Z)V

    goto/16 :goto_2

    .line 2728
    :catch_1
    move-exception v9

    .line 2729
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-string v24, "SecuritySettings"

    const-string v25, "could not persist signature verification level setting"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 2733
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v14    # "level":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 2734
    const-string v24, "oversea"

    const-string v25, "ril.currentplmn"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 2735
    .local v13, "isRoamingArea":Z
    if-nez v13, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 2736
    new-instance v15, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2737
    .local v15, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v24, 0x7f0a1376

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2738
    const v24, 0x7f0a1a21

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2739
    const v24, 0x104000a

    new-instance v25, Lcom/android/settings/LockscreenMenuSettings$7;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings$7;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2745
    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 2747
    .end local v15    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "dualclock_menu_settings"

    move-object/from16 v24, p2

    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_7

    const/16 v24, 0x1

    :goto_6
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_7
    const/16 v24, 0x0

    goto :goto_6

    .line 2749
    .end local v13    # "isRoamingArea":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 2750
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "lock_screen_clock_size"

    move-object/from16 v24, p2

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2751
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updateClockSizeSummary()V

    goto/16 :goto_2

    .line 2752
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_a

    move-object/from16 v24, p2

    .line 2753
    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 2755
    .local v16, "numValue":I
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "lock_screen_pattern_type"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2760
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updatePatternTypeSummary()V

    goto/16 :goto_2

    .line 2757
    :catch_2
    move-exception v9

    .line 2758
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-string v24, "LockScreenMenu"

    const-string v25, "could not persist Pattern type setting"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 2761
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v16    # "numValue":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    move-object/from16 v24, p2

    .line 2762
    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 2764
    .local v5, "checked":Z
    if-eqz v5, :cond_d

    .line 2765
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    const-string v25, "safetyzone_settings"

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2766
    .local v4, "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    if-eqz v4, :cond_1

    .line 2767
    const/4 v8, 0x0

    .line 2768
    .local v8, "doNotShow":Z
    const-string v24, "DoNotShowDialogOn"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 2769
    if-nez v8, :cond_b

    .line 2770
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->showSafetyZoneInfoDialog()V

    goto/16 :goto_2

    .line 2772
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "safety_zone_list"

    invoke-static/range {v24 .. v25}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2773
    .local v17, "safety_zone_list":Ljava/lang/String;
    const-string v24, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 2774
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->showSafetyZoneEnableDialog()V

    goto/16 :goto_2

    .line 2776
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "safety_zone_enable"

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 2780
    .end local v4    # "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    .end local v8    # "doNotShow":Z
    .end local v17    # "safety_zone_list":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "safety_zone_enable"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_f

    .line 2781
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    const v25, 0x7f0a1064

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    .line 2782
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "safety_zone_enable"

    if-eqz v5, :cond_e

    const/16 v24, 0x1

    :goto_8
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_e
    const/16 v24, 0x0

    goto :goto_8

    .line 2784
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "safety_zone_enable"

    if-eqz v5, :cond_10

    const/16 v24, 0x1

    :goto_9
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_10
    const/16 v24, 0x0

    goto :goto_9

    .line 2786
    .end local v5    # "checked":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_13

    .line 2787
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "lockscreen_ripple_effect"

    move-object/from16 v24, p2

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2788
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updateRippleEffectPreferenceSummary()V

    .line 2789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    if-eqz v24, :cond_12

    .line 2790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->isRippleEffect()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2791
    :cond_12
    const-string v25, "LockScreenMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " LockScreen : lockscreen_ripple_effect :"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v24, p2

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2792
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_14

    .line 2793
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "set_shortcuts_mode"

    move-object/from16 v24, p2

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2794
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updateSetSchortcutsMenu()V

    .line 2795
    const-string v25, "LockScreenMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " SET_SHORTCUTS_MODE :"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v24, p2

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2796
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_16

    move-object/from16 v24, p2

    .line 2797
    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 2798
    .restart local v5    # "checked":Z
    if-eqz v5, :cond_15

    .line 2799
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "lock_screen_fingerprint_shortcut"

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 2801
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "lock_screen_fingerprint_shortcut"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 2802
    .end local v5    # "checked":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_17

    move-object/from16 v24, p2

    .line 2803
    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 2814
    .restart local v5    # "checked":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "lock_screen_card_enabled"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 2817
    .end local v5    # "checked":Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1b

    .line 2819
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v19, v24

    .line 2820
    .local v19, "selectionArgs_widgetView":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    const-string v25, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v26, "isLockScreenViewAllowed"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 2821
    .local v12, "isLockScreenViewAllowed_widgetView":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v12, v0, :cond_1

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v12, v0, :cond_1

    move-object/from16 v24, p2

    .line 2824
    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_19

    const/16 v21, 0x1

    .restart local v21    # "setValue":I
    :goto_a
    move-object/from16 v24, p2

    .line 2825
    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_1a

    const/16 v20, 0x2

    .line 2826
    .local v20, "setNewValue":I
    :goto_b
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 2827
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "set_shortcuts_mode"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2829
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "lock_screen_shortcut"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2830
    new-instance v10, Landroid/content/Intent;

    const-string v24, "com.android.settings.LOCK_SCREEN_SHORTCUT_CHANGED"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2831
    .local v10, "intent":Landroid/content/Intent;
    const-string v25, "isEnable"

    move-object/from16 v24, p2

    check-cast v24, Ljava/lang/Boolean;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2832
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2834
    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    if-eqz v24, :cond_1

    .line 2835
    new-instance v22, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;-><init>(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V

    .line 2836
    .local v22, "shortcutListMgr":Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;
    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->InitShortcutList(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 2824
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v20    # "setNewValue":I
    .end local v21    # "setValue":I
    .end local v22    # "shortcutListMgr":Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;
    :cond_19
    const/16 v21, 0x0

    goto :goto_a

    .line 2825
    .restart local v21    # "setValue":I
    :cond_1a
    const/16 v20, 0x0

    goto :goto_b

    .line 2841
    .end local v12    # "isLockScreenViewAllowed_widgetView":I
    .end local v19    # "selectionArgs_widgetView":[Ljava/lang/String;
    .end local v21    # "setValue":I
    :cond_1b
    const-string v24, "multiple_lock_screen"

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1d

    .line 2843
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v24, 0x0

    const/16 v25, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v18, v24

    .line 2844
    .local v18, "selectionArgs_shortcutView":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    const-string v25, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v26, "isLockScreenViewAllowed"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 2846
    .local v11, "isLockScreenViewAllowed_shortcutView":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v11, v0, :cond_1

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v11, v0, :cond_1

    move-object/from16 v24, p2

    .line 2849
    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_1c

    const/16 v21, 0x1

    .line 2850
    .restart local v21    # "setValue":I
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "kg_multiple_lockscreen"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2851
    const-string v24, "LockScreenMenu"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Multiple lock screen : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "kg_multiple_lockscreen"

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2849
    .end local v21    # "setValue":I
    :cond_1c
    const/16 v21, 0x0

    goto :goto_c

    .line 2855
    .end local v11    # "isLockScreenViewAllowed_shortcutView":I
    .end local v18    # "selectionArgs_shortcutView":[Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMotionCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 2856
    const-string v24, "LockScreenMenu"

    const-string v25, "onPreferenceChange, mMotionCameraShortCut"

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v24, p2

    .line 2857
    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->setMotionCameraShortCut(Z)V

    goto/16 :goto_2

    .line 2862
    .end local p2    # "value":Ljava/lang/Object;
    :cond_1e
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 2868
    .restart local v21    # "setValue":I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 2869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_4

    .line 2871
    .end local v21    # "setValue":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_22

    .line 2872
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_21

    const/16 v21, 0x1

    .line 2873
    .restart local v21    # "setValue":I
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "wake_up_lock_screen"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 2872
    .end local v21    # "setValue":I
    :cond_21
    const/16 v21, 0x0

    goto :goto_d

    .line 2874
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 2875
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_23

    const/16 v21, 0x1

    .line 2876
    .restart local v21    # "setValue":I
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "kg_multiple_lockscreen"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 2875
    .end local v21    # "setValue":I
    :cond_23
    const/16 v21, 0x0

    goto :goto_e
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 22
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 2400
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v15

    .line 2402
    .local v15, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mOpenDetailMenu:Z

    if-eqz v3, :cond_0

    .line 2403
    sget v3, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2404
    sget v3, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/16 v21, 0x1

    .local v21, "value":Z
    :goto_0
    move-object/from16 v9, p2

    .line 2405
    check-cast v9, Landroid/preference/CheckBoxPreference;

    .line 2406
    .local v9, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2407
    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2413
    .end local v9    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v21    # "value":Z
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_wallpaper"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v12, 0x0

    .line 2414
    .local v12, "isLiveWallpaper":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_motion_tilt_to_unlock"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 2415
    .local v13, "isMotionLock":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_ink_effect"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 2417
    .local v18, "mInkEffectColor":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v16

    .line 2418
    .local v16, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v3, "unlock_set_or_change"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2419
    const-string v4, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v5, 0x7f0a024b

    const/16 v6, 0x7b

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 2537
    :cond_1
    :goto_2
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    :goto_3
    return v3

    .line 2404
    .end local v12    # "isLiveWallpaper":Z
    .end local v13    # "isMotionLock":I
    .end local v16    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v18    # "mInkEffectColor":I
    :cond_2
    const/16 v21, 0x0

    goto :goto_0

    .line 2413
    :cond_3
    const/4 v12, 0x1

    goto :goto_1

    .line 2422
    .restart local v12    # "isLiveWallpaper":Z
    .restart local v13    # "isMotionLock":I
    .restart local v16    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v18    # "mInkEffectColor":I
    :cond_4
    const-string v3, "biometric_weak_improve_matching"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2423
    new-instance v10, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v10, v3, v0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 2425
    .local v10, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v3, 0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v4, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2431
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->startBiometricWeakImprove()V

    goto :goto_2

    .line 2433
    .end local v10    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_5
    const-string v3, "biometric_weak_liveliness"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2434
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2435
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_2

    .line 2440
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2441
    new-instance v10, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v10, v3, v0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 2443
    .restart local v10    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v3, 0x7d

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v4, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2449
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 2450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    .line 2453
    .end local v10    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_7
    const-string v3, "lockenabled"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2454
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto/16 :goto_2

    .line 2455
    :cond_8
    const-string v3, "visiblepattern"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2456
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto/16 :goto_2

    .line 2457
    :cond_9
    const-string v3, "vibration_feedback"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2458
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_vibration_feedback"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    :goto_4
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_a
    const/4 v3, 0x0

    goto :goto_4

    .line 2459
    :cond_b
    const-string v3, "quick_note"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2460
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_quick_note"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    :goto_5
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_c
    const/4 v3, 0x0

    goto :goto_5

    .line 2461
    :cond_d
    const-string v3, "visiblesignature"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2462
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisibleSignatureEnabled(Z)V

    goto/16 :goto_2

    .line 2463
    :cond_e
    const-string v3, "unlock_tactile_feedback"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2465
    const-string v3, "lock_screen_camera_shortcut"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2466
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->checkCameraShortcutGuidePopupAvailable()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->hasCoverStyleClock(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getSviewCoverAppLevel(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_f

    .line 2468
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->showCameraShortcutGuidePopup()V

    goto/16 :goto_2

    .line 2470
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "set_shortcuts_mode"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    :goto_6
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_10
    const/4 v3, 0x0

    goto :goto_6

    .line 2471
    :cond_11
    const-string v3, "lock_screen_menu_phone_shortcut"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2472
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "set_shortcuts_phone"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    :goto_7
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_12
    const/4 v3, 0x0

    goto :goto_7

    .line 2473
    :cond_13
    const-string v3, "power_button_instantly_locks"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2474
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto/16 :goto_2

    .line 2475
    :cond_14
    const-string v3, "keyguard_enable_widgets"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2476
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setWidgetsEnabled(Z)V

    goto/16 :goto_2

    .line 2477
    :cond_15
    const-string v3, "owner_info_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_16

    .line 2478
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->showDialog()V

    goto/16 :goto_2

    .line 2479
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2480
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_1

    .line 2481
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->isRippleEffect()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_2

    .line 2482
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2483
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "unlock_text"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    :goto_8
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_18
    const/4 v3, 0x0

    goto :goto_8

    .line 2484
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mMotionCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2485
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_unlock_camera_short_cut"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mMotionCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    :goto_9
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_1a
    const/4 v3, 0x0

    goto :goto_9

    .line 2486
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2487
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "automatic_unlock"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    :goto_a
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_1c
    const/4 v3, 0x0

    goto :goto_a

    .line 2488
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2489
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wake_up_lock_screen"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    :goto_b
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_1e
    const/4 v3, 0x0

    goto :goto_b

    .line 2490
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2491
    const-string v3, "oversea"

    const-string v4, "ril.currentplmn"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 2492
    .local v14, "isRoamingArea":Z
    if-nez v14, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2493
    new-instance v17, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2494
    .local v17, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a1376

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2495
    const v3, 0x7f0a1a21

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2496
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/LockscreenMenuSettings$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/settings/LockscreenMenuSettings$6;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2501
    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2502
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 2504
    .end local v14    # "isRoamingArea":Z
    .end local v17    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2505
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_date_and_year"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v3, 0x1

    :goto_c
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_21
    const/4 v3, 0x0

    goto :goto_c

    .line 2506
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2507
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 2508
    .local v11, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2509
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.settings.InkeffectPreviewTablet"

    invoke-direct {v11, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2510
    .restart local v11    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 2512
    :cond_23
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.settings.InkeffectPreview"

    invoke-direct {v11, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2513
    .restart local v11    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 2517
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 2518
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_swipe_main_user"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    :goto_d
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_25
    const/4 v3, 0x0

    goto :goto_d

    .line 2519
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 2520
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    .line 2521
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 2522
    .local v2, "preferenceActivity":Landroid/preference/PreferenceActivity;
    const-string v3, "com.android.settings.MagazineCard"

    const/4 v4, 0x0

    const v5, 0x7f0a1726

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_2

    .line 2524
    .end local v2    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 2525
    const-string v20, "com.vlingo.midas"

    .line 2526
    .local v20, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/settings/LockscreenMenuSettings;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 2527
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.VOICE_SETTING_SET_WAKEUP_COMMAND"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2528
    .local v19, "mIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 2530
    .end local v19    # "mIntent":Landroid/content/Intent;
    :cond_28
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->makeDisablePopup(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2532
    .end local v20    # "pkgName":Ljava/lang/String;
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfoForWeather:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2533
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfoForWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/LockscreenMenuSettings;->changeSwitchForOnlyWeatherOnAddInfo(Z)V

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 39

    .prologue
    .line 1884
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    move/from16 v35, v0

    .line 1885
    .local v35, "super_mOpenDetailMenu":Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 1887
    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 1891
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 1892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    .line 1893
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v30

    .line 1894
    .local v30, "mUserId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v10

    .line 1895
    .local v10, "info":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 1896
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x41

    if-le v2, v3, :cond_0

    .line 1897
    const/4 v2, 0x0

    const/16 v3, 0x41

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1899
    :cond_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_36

    .line 1900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1905
    .end local v10    # "info":Ljava/lang/String;
    .end local v30    # "mUserId":I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v25

    .line 1906
    .local v25, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 1907
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1910
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    .line 1911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1913
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    .line 1914
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "lock_screen_vibration_feedback"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_37

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1916
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    .line 1917
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "lock_screen_quick_note"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_38

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1919
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_6

    .line 1920
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "auto_swipe_main_user"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_39

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_3a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v2

    if-lez v2, :cond_3a

    .line 1923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1927
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_7

    .line 1928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleSignatureEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1930
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_8

    .line 1931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1933
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_9

    .line 1934
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1935
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1936
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0a18b0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1940
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_a

    .line 1941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->getWidgetsEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1944
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_wallpaper"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b

    const/4 v15, 0x0

    .line 1945
    .local v15, "isLiveWallpaper":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_motion_tilt_to_unlock"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 1946
    .local v20, "isMotionLock":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_ink_effect"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    .line 1949
    .local v27, "mInkEffectColor":I
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v34, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v34, v2

    .line 1950
    .local v34, "selectionArgs_widgetView":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v4, "isLockScreenViewAllowed"

    move-object/from16 v0, v34

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 1951
    .local v18, "isLockScreenViewAllowed_widgetView":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_3c

    const/4 v2, 0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_3c

    .line 1953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_b

    .line 1954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1971
    :cond_b
    :goto_6
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v33, v2

    .line 1972
    .local v33, "selectionArgs_shortcutView":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v4, "isLockScreenViewAllowed"

    move-object/from16 v0, v33

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 1973
    .local v17, "isLockScreenViewAllowed_shortcutView":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_3f

    const/4 v2, 0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_3f

    .line 1975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_c

    .line 1976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 1979
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_d

    .line 1980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1997
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_e

    .line 1998
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mPhoneShortcut:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "set_shortcuts_phone"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_44

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2001
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_f

    .line 2002
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "set_shortcuts_mode"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_45

    const/4 v2, 0x1

    :goto_9
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2015
    const-string v2, "DCM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2016
    sget-object v2, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_f

    .line 2018
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2023
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "my_profile_enabled"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/LockscreenMenuSettings;->isMyprofile:I

    .line 2024
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/LockscreenMenuSettings;->isMyprofile:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_46

    .line 2026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_10

    .line 2027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2033
    :cond_10
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v2, :cond_15

    .line 2034
    if-nez v15, :cond_11

    if-lez v20, :cond_47

    .line 2035
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2054
    :goto_b
    const-string v2, "NONE,WATERCOLOUR,RIPPLE"

    const-string v3, "WATERCOLOUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "NONE,WATERCOLOUR,RIPPLE"

    const-string v3, "BLIND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "NONE,WATERCOLOUR,RIPPLE"

    const-string v3, "POPPINGCOLOURS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2068
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    const/high16 v3, 0x10000

    if-ne v2, v3, :cond_14

    .line 2070
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    .line 2071
    .local v31, "nUnlockeffect":I
    const/4 v2, 0x1

    move/from16 v0, v31

    if-eq v0, v2, :cond_13

    const/4 v2, 0x5

    move/from16 v0, v31

    if-eq v0, v2, :cond_13

    const/4 v2, 0x3

    move/from16 v0, v31

    if-ne v0, v2, :cond_14

    .line 2075
    :cond_13
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-nez v2, :cond_14

    .line 2076
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2081
    .end local v31    # "nUnlockeffect":I
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updateRippleEffectPreferenceSummary()V

    .line 2083
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_17

    .line 2084
    const/16 v2, 0xd

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 2086
    .local v28, "mModeItem":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_zoom_panning_effect"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    .line 2088
    .local v24, "isZoomPanningEffect":I
    if-nez v15, :cond_16

    if-gtz v20, :cond_16

    const/4 v2, 0x1

    move/from16 v0, v24

    if-ne v0, v2, :cond_4e

    .line 2089
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2111
    :goto_c
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a16a3    # 1.83551E38f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2112
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1c18

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2113
    const/4 v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a16a3    # 1.83551E38f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2114
    const/4 v2, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1bfe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2115
    const/4 v2, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1bfc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2116
    const/4 v2, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1bfd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2117
    const/4 v2, 0x6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a16a3    # 1.83551E38f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2118
    const/4 v2, 0x7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1bff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2119
    const/16 v2, 0x8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1c01

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2120
    const/16 v2, 0x9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1c02

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2121
    const/16 v2, 0xa

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0fb2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2122
    const/16 v2, 0xb

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1c03

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2123
    const/16 v2, 0xc

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1c04

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2125
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 2126
    .local v8, "State":I
    const-string v2, "2"

    sget-object v3, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getFestivalType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string v2, "1.5"

    sget-object v3, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getFestivalType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 2127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    aget-object v3, v28, v8

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2150
    .end local v8    # "State":I
    .end local v24    # "isZoomPanningEffect":I
    .end local v28    # "mModeItem":[Ljava/lang/String;
    :cond_17
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mChargingEffect_with_preview:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_18

    .line 2151
    const/4 v2, 0x6

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 2153
    .restart local v28    # "mModeItem":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d1d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2154
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d19

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2155
    const/4 v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d1a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2156
    const/4 v2, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d1b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2157
    const/4 v2, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d1c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2158
    const/4 v2, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d26

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2159
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "festival_charging_effect"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 2160
    .restart local v8    # "State":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mChargingEffect_with_preview:Landroid/preference/PreferenceScreen;

    aget-object v3, v28, v8

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2162
    .end local v8    # "State":I
    .end local v28    # "mModeItem":[Ljava/lang/String;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_clock_size"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    .line 2163
    .local v26, "mClockSizeValue":I
    const-string v2, "LockScreenMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mClockSizeValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v2, :cond_19

    .line 2165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2167
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updateClockSizeSummary()V

    .line 2169
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1a

    .line 2170
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updateClockSizeSummaryK()V

    .line 2173
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_pattern_type"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    .line 2174
    .local v29, "mPatternTypeValue":I
    const-string v2, "LockScreenMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPatternTypeValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    if-eqz v2, :cond_1b

    .line 2176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2178
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updatePatternTypeSummary()V

    .line 2181
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1c

    .line 2182
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updatePatternTypeSummaryK()V

    .line 2185
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1f

    .line 2186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->isRippleEffect()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2187
    if-nez v15, :cond_1d

    if-lez v20, :cond_1e

    .line 2188
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2190
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 2191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffectSummaryForTablet:[I

    aget v4, v4, v27

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2196
    :cond_1f
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_20

    .line 2197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "unlock_text"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_57

    const/4 v2, 0x1

    :goto_f
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2198
    const-string v2, "DCM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2199
    sget-object v2, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2206
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMotionCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_21

    .line 2207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mMotionCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "motion_unlock_camera_short_cut"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_58

    const/4 v2, 0x1

    :goto_10
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2209
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_22

    .line 2210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "automatic_unlock"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_59

    const/4 v2, 0x1

    :goto_11
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2213
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_23

    .line 2214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wake_up_lock_screen"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5a

    const/4 v2, 0x1

    :goto_12
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5b

    const/4 v2, 0x1

    :goto_13
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2218
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_24

    .line 2219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5c

    const/4 v2, 0x1

    :goto_14
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2222
    :cond_24
    const/16 v36, 0x1

    .line 2223
    .local v36, "svoice_state":Z
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v32, v0

    const/4 v2, 0x0

    const-string v3, "false"

    aput-object v3, v32, v2

    .line 2225
    .local v32, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSVoiceAllowed"

    move-object/from16 v0, v32

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v23

    .line 2226
    .local v23, "isSVoiceAllowed":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v4, "isMicrophoneEnabled"

    move-object/from16 v0, v32

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    .line 2227
    .local v19, "isMicrophoneEnabled":I
    const/4 v2, -0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_25

    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_25

    .line 2228
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_5d

    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_5d

    const/16 v36, 0x1

    .line 2230
    :cond_25
    :goto_15
    if-nez v36, :cond_27

    .line 2231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_26

    .line 2232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2233
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_27

    .line 2234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2240
    :cond_27
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_5e

    .line 2241
    const-string v4, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v5, 0x7f0a024b

    const/16 v6, 0x7b

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 2243
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    .line 2253
    :cond_28
    :goto_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    if-eqz v2, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 2254
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updateSetSchortcutsMenu()V

    .line 2258
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v4, "isLockScreenEnabled"

    move-object/from16 v0, v32

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 2259
    .local v16, "isLockScreenEnabled":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_2a

    if-nez v16, :cond_2a

    .line 2260
    const-string v2, "LockScreenMenu"

    const-string v3, "onResume(): isLockScreenEnabled = false"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->finish()V

    .line 2264
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "safety_zone_enable"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2268
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2270
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_5f

    const/4 v2, 0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_5f

    .line 2272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_2b

    .line 2273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 2287
    :cond_2b
    :goto_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_2c

    .line 2288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "kg_multiple_lockscreen"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_62

    const/4 v2, 0x1

    :goto_18
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2292
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockWidgetOptions:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_2d

    .line 2293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockWidgetOptions:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_63

    const/4 v2, 0x1

    :goto_19
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2296
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_2e

    .line 2297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "my_profile_enabled"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_64

    const/4 v2, 0x1

    :goto_1a
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_65

    const/4 v2, 0x1

    :goto_1b
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 2302
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_2f

    .line 2303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2306
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_30

    .line 2307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wake_up_lock_screen"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_66

    const/4 v2, 0x1

    :goto_1c
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_67

    const/4 v2, 0x1

    :goto_1d
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 2312
    :cond_30
    if-nez v36, :cond_31

    .line 2313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_31

    .line 2314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 2317
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_69

    .line 2318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "lock_additional_info"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_68

    const v2, 0x7f0a0a60

    :goto_1e
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 2333
    :cond_32
    :goto_1f
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 2334
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mOpenDetailMenu:Z

    if-eqz v2, :cond_35

    .line 2335
    sget v2, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_35

    .line 2336
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    .line 2337
    .local v9, "extra_bundle":Landroid/os/Bundle;
    const-string v2, "extra_parent_preference_key"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 2338
    .local v37, "targetKey":Ljava/lang/String;
    sget v2, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6d

    const/16 v38, 0x1

    .line 2339
    .local v38, "value":Z
    :goto_20
    const-string v2, "multiple_lock_screenswitch"

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 2340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_33

    .line 2341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 2346
    :cond_33
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mOpenDetailMenu:Z

    .line 2372
    :cond_34
    :goto_21
    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->initArrayLinkKey()V

    .line 2375
    .end local v9    # "extra_bundle":Landroid/os/Bundle;
    .end local v37    # "targetKey":Ljava/lang/String;
    .end local v38    # "value":Z
    :cond_35
    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 2377
    return-void

    .line 1902
    .end local v15    # "isLiveWallpaper":Z
    .end local v16    # "isLockScreenEnabled":I
    .end local v17    # "isLockScreenViewAllowed_shortcutView":I
    .end local v18    # "isLockScreenViewAllowed_widgetView":I
    .end local v19    # "isMicrophoneEnabled":I
    .end local v20    # "isMotionLock":I
    .end local v23    # "isSVoiceAllowed":I
    .end local v25    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v26    # "mClockSizeValue":I
    .end local v27    # "mInkEffectColor":I
    .end local v29    # "mPatternTypeValue":I
    .end local v32    # "selectionArgs":[Ljava/lang/String;
    .end local v33    # "selectionArgs_shortcutView":[Ljava/lang/String;
    .end local v34    # "selectionArgs_widgetView":[Ljava/lang/String;
    .end local v36    # "svoice_state":Z
    .restart local v10    # "info":Ljava/lang/String;
    .restart local v30    # "mUserId":I
    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0218

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1914
    .end local v10    # "info":Ljava/lang/String;
    .end local v30    # "mUserId":I
    .restart local v25    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_37
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1917
    :cond_38
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1920
    :cond_39
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1925
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_4

    .line 1944
    :cond_3b
    const/4 v15, 0x1

    goto/16 :goto_5

    .line 1959
    .restart local v15    # "isLiveWallpaper":Z
    .restart local v18    # "isLockScreenViewAllowed_widgetView":I
    .restart local v20    # "isMotionLock":I
    .restart local v27    # "mInkEffectColor":I
    .restart local v34    # "selectionArgs_widgetView":[Ljava/lang/String;
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kg_multiple_lockscreen"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3d

    const/16 v21, 0x1

    .line 1961
    .local v21, "isMultiple":Z
    :goto_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_b

    .line 1962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1963
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3e

    const/4 v2, 0x1

    :goto_23
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 1959
    .end local v21    # "isMultiple":Z
    :cond_3d
    const/16 v21, 0x0

    goto :goto_22

    .line 1963
    .restart local v21    # "isMultiple":Z
    :cond_3e
    const/4 v2, 0x0

    goto :goto_23

    .line 1985
    .end local v21    # "isMultiple":Z
    .restart local v17    # "isLockScreenViewAllowed_shortcutView":I
    .restart local v33    # "selectionArgs_shortcutView":[Ljava/lang/String;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_d

    .line 1986
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "lock_screen_shortcut"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, 0x1

    :goto_24
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1987
    const-string v2, "DCM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 1988
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_41

    const/4 v2, 0x1

    :goto_25
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_7

    .line 1986
    :cond_40
    const/4 v2, 0x0

    goto :goto_24

    .line 1988
    :cond_41
    const/4 v2, 0x0

    goto :goto_25

    .line 1990
    :cond_42
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_43

    sget-object v2, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_43

    const/4 v2, 0x1

    :goto_26
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_43
    const/4 v2, 0x0

    goto :goto_26

    .line 1998
    :cond_44
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 2002
    :cond_45
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 2030
    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_10

    .line 2031
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_a

    .line 2037
    :cond_47
    const-string v2, "DCM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 2038
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "festival_effect_home_lock_screen"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4a

    const/4 v14, 0x1

    .line 2039
    .local v14, "isFestivalLockEnabled":Z
    :goto_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "festival_effect_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4b

    const/4 v13, 0x1

    .line 2041
    .local v13, "isFestivalEnabled":Z
    :goto_28
    sget-object v2, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isJpnFestivalToday(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_48

    if-eqz v14, :cond_48

    if-nez v13, :cond_49

    :cond_48
    sget-object v2, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 2045
    :cond_49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_b

    .line 2038
    .end local v13    # "isFestivalEnabled":Z
    .end local v14    # "isFestivalLockEnabled":Z
    :cond_4a
    const/4 v14, 0x0

    goto :goto_27

    .line 2039
    .restart local v14    # "isFestivalLockEnabled":Z
    :cond_4b
    const/4 v13, 0x0

    goto :goto_28

    .line 2047
    .restart local v13    # "isFestivalEnabled":Z
    :cond_4c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_b

    .line 2050
    .end local v13    # "isFestivalEnabled":Z
    .end local v14    # "isFestivalLockEnabled":Z
    :cond_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_b

    .line 2092
    .restart local v24    # "isZoomPanningEffect":I
    .restart local v28    # "mModeItem":[Ljava/lang/String;
    :cond_4e
    const-string v2, "DCM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 2093
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "festival_effect_home_lock_screen"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_51

    const/4 v14, 0x1

    .line 2094
    .restart local v14    # "isFestivalLockEnabled":Z
    :goto_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "festival_effect_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_52

    const/4 v13, 0x1

    .line 2096
    .restart local v13    # "isFestivalEnabled":Z
    :goto_2a
    sget-object v2, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isJpnFestivalToday(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4f

    if-eqz v14, :cond_4f

    if-nez v13, :cond_50

    :cond_4f
    sget-object v2, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 2100
    :cond_50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_c

    .line 2093
    .end local v13    # "isFestivalEnabled":Z
    .end local v14    # "isFestivalLockEnabled":Z
    :cond_51
    const/4 v14, 0x0

    goto :goto_29

    .line 2094
    .restart local v14    # "isFestivalLockEnabled":Z
    :cond_52
    const/4 v13, 0x0

    goto :goto_2a

    .line 2102
    .restart local v13    # "isFestivalEnabled":Z
    :cond_53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_c

    .line 2105
    .end local v13    # "isFestivalEnabled":Z
    .end local v14    # "isFestivalLockEnabled":Z
    :cond_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_c

    .line 2129
    .restart local v8    # "State":I
    :cond_55
    packed-switch v8, :pswitch_data_0

    .line 2146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    aget-object v3, v28, v8

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 2131
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d19

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 2134
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d1a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 2137
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d1b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 2140
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d1c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 2143
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d26

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 2193
    .end local v8    # "State":I
    .end local v24    # "isZoomPanningEffect":I
    .end local v28    # "mModeItem":[Ljava/lang/String;
    .restart local v26    # "mClockSizeValue":I
    .restart local v29    # "mPatternTypeValue":I
    :cond_56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffectSummary:[I

    aget v4, v4, v27

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 2197
    :cond_57
    const/4 v2, 0x0

    goto/16 :goto_f

    .line 2207
    :cond_58
    const/4 v2, 0x0

    goto/16 :goto_10

    .line 2210
    :cond_59
    const/4 v2, 0x0

    goto/16 :goto_11

    .line 2214
    :cond_5a
    const/4 v2, 0x0

    goto/16 :goto_12

    .line 2215
    :cond_5b
    const/4 v2, 0x0

    goto/16 :goto_13

    .line 2219
    :cond_5c
    const/4 v2, 0x0

    goto/16 :goto_14

    .line 2228
    .restart local v19    # "isMicrophoneEnabled":I
    .restart local v23    # "isSVoiceAllowed":I
    .restart local v32    # "selectionArgs":[Ljava/lang/String;
    .restart local v36    # "svoice_state":Z
    :cond_5d
    const/16 v36, 0x0

    goto/16 :goto_15

    .line 2244
    :cond_5e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_28

    .line 2249
    const-string v2, "LockScreenMenu"

    const-string v3, "LockScreenMenuSettings : onResumeCalled -> finish()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->finish()V

    goto/16 :goto_16

    .line 2278
    .restart local v16    # "isLockScreenEnabled":I
    :cond_5f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kg_multiple_lockscreen"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_60

    const/16 v22, 0x1

    .line 2280
    .local v22, "isMultipleEnable":Z
    :goto_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_2b

    .line 2281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_61

    const/4 v2, 0x1

    :goto_2c
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_17

    .line 2278
    .end local v22    # "isMultipleEnable":Z
    :cond_60
    const/16 v22, 0x0

    goto :goto_2b

    .line 2282
    .restart local v22    # "isMultipleEnable":Z
    :cond_61
    const/4 v2, 0x0

    goto :goto_2c

    .line 2289
    .end local v22    # "isMultipleEnable":Z
    :cond_62
    const/4 v2, 0x0

    goto/16 :goto_18

    .line 2293
    :cond_63
    const/4 v2, 0x0

    goto/16 :goto_19

    .line 2298
    :cond_64
    const/4 v2, 0x0

    goto/16 :goto_1a

    .line 2299
    :cond_65
    const/4 v2, 0x0

    goto/16 :goto_1b

    .line 2308
    :cond_66
    const/4 v2, 0x0

    goto/16 :goto_1c

    .line 2309
    :cond_67
    const/4 v2, 0x0

    goto/16 :goto_1d

    .line 2318
    :cond_68
    const v2, 0x7f0a0a61

    goto/16 :goto_1e

    .line 2320
    :cond_69
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfoForWeather:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_32

    .line 2321
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_additional_info"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6a

    const/4 v12, 0x1

    .line 2322
    .local v12, "isCheckedMasterSwitchAddInfo":Z
    :goto_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_additional_weather"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6b

    const/4 v11, 0x1

    .line 2323
    .local v11, "isCheckedForWeather":Z
    :goto_2e
    const/4 v2, 0x1

    if-ne v12, v2, :cond_6c

    const/4 v2, 0x1

    if-ne v11, v2, :cond_6c

    .line 2324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfoForWeather:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1f

    .line 2321
    .end local v11    # "isCheckedForWeather":Z
    .end local v12    # "isCheckedMasterSwitchAddInfo":Z
    :cond_6a
    const/4 v12, 0x0

    goto :goto_2d

    .line 2322
    .restart local v12    # "isCheckedMasterSwitchAddInfo":Z
    :cond_6b
    const/4 v11, 0x0

    goto :goto_2e

    .line 2326
    .restart local v11    # "isCheckedForWeather":Z
    :cond_6c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfoForWeather:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1f

    .line 2338
    .end local v11    # "isCheckedForWeather":Z
    .end local v12    # "isCheckedMasterSwitchAddInfo":Z
    .restart local v9    # "extra_bundle":Landroid/os/Bundle;
    .restart local v37    # "targetKey":Ljava/lang/String;
    :cond_6d
    const/16 v38, 0x0

    goto/16 :goto_20

    .line 2347
    .restart local v38    # "value":Z
    :cond_6e
    const-string v2, "lock_screen_shortcut_menu"

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 2348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_6f

    .line 2349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 2350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 2354
    :cond_6f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mOpenDetailMenu:Z

    goto/16 :goto_21

    .line 2355
    :cond_70
    const-string v2, "lock_screen_myprofile_settings"

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 2356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_71

    .line 2357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 2358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    move/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 2362
    :cond_71
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mOpenDetailMenu:Z

    goto/16 :goto_21

    .line 2363
    :cond_72
    const-string v2, "lock_screen_wakeup_settings"

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_73

    .line 2365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 2366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 2370
    :cond_73
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mOpenDetailMenu:Z

    goto/16 :goto_21

    .line 2129
    nop

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setMotionCameraShortCut(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2885
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2886
    .local v0, "int_value":I
    :goto_0
    if-eqz p1, :cond_3

    .line 2887
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 2888
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_unlock_camera_short_cut"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2917
    :goto_1
    return-void

    .end local v0    # "int_value":I
    :cond_0
    move v0, v1

    .line 2885
    goto :goto_0

    .line 2890
    .restart local v0    # "int_value":I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 2891
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2892
    iput-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 2895
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a120e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a11a0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a08f6

    new-instance v3, Lcom/android/settings/LockscreenMenuSettings$8;

    invoke-direct {v3, p0}, Lcom/android/settings/LockscreenMenuSettings$8;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a01cf

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 2908
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/LockscreenMenuSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/LockscreenMenuSettings$9;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    .line 2915
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_unlock_camera_short_cut"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public showDeviceLockDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3033
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3035
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 3036
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 3037
    iput-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 3040
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 3041
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040176

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3042
    .local v2, "layout":Landroid/view/View;
    const v4, 0x7f100357

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3043
    .local v3, "tv":Landroid/widget/TextView;
    const v4, 0x7f0a0090

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 3045
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3046
    const v4, 0x7f0a06b6

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3047
    const v4, 0x104000a

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3049
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 3050
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 3051
    return-void
.end method

.method showDialog()V
    .locals 4

    .prologue
    .line 2592
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/OwnerInfoSettings;

    .line 2593
    .local v1, "oldFrag":Lcom/android/settings/OwnerInfoSettings;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2594
    invoke-virtual {v1}, Lcom/android/settings/OwnerInfoSettings;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2601
    :goto_0
    return-void

    .line 2598
    :cond_0
    const v2, 0x7f0a0215

    invoke-static {v2}, Lcom/android/settings/OwnerInfoSettings;->newInstance(I)Lcom/android/settings/OwnerInfoSettings;

    move-result-object v0

    .line 2599
    .local v0, "newFragment":Lcom/android/settings/OwnerInfoSettings;
    invoke-virtual {v0, p0}, Lcom/android/settings/OwnerInfoSettings;->setDialogFragmentListener(Lcom/android/settings/OwnerInfoSettings$DialogFragmentListener;)V

    .line 2600
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/OwnerInfoSettings;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 3004
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3005
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3006
    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V

    .line 3007
    return-void
.end method
