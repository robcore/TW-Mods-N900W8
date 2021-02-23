.class public Lcom/android/settings/SecuritySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SecuritySettings$12;,
        Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;,
        Lcom/android/settings/SecuritySettings$PWState;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;

.field private static rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;


# instance fields
.field private ChangingSIMAlert:Landroid/preference/Preference;

.field private RemoteControls:Landroid/preference/Preference;

.field private isKioskContainer:Z

.field private mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

.field private mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mClickedTrustAgentPreference:Landroid/preference/Preference;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockMyMobile:Landroid/preference/CheckBoxPreference;

.field private mLockMyMobileObserver:Landroid/database/ContentObserver;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNewPassword:Ljava/lang/String;

.field private mPWState:Lcom/android/settings/SecuritySettings$PWState;

.field private mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private mReactivationLockDialog:Landroid/app/AlertDialog;

.field private mRemoteControlsObserver:Landroid/database/ContentObserver;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mSecurityPolicyUpdates:Landroid/preference/Preference;

.field private mSecurityReports:Landroid/preference/CheckBoxPreference;

.field private mSecurityUpdatesMA:Landroid/preference/Preference;

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field mSimCdma:Landroid/telephony/TelephonyManager;

.field mSimGsm:Landroid/telephony/TelephonyManager;

.field private mSimLockPreferences:Landroid/preference/PreferenceScreen;

.field private mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 230
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lock_after_timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lockenabled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "visiblepattern"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "biometric_weak_liveliness"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "power_button_instantly_locks"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "show_password"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "toggle_install_applications"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 1893
    new-instance v0, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 303
    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->isKioskContainer:Z

    .line 325
    sget-object v0, Lcom/android/settings/SecuritySettings$PWState;->CURRENT:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    .line 329
    new-instance v0, Lcom/android/settings/SecuritySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SecuritySettings$1;-><init>(Lcom/android/settings/SecuritySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    .line 339
    new-instance v0, Lcom/android/settings/SecuritySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SecuritySettings$2;-><init>(Lcom/android/settings/SecuritySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockMyMobileObserver:Landroid/database/ContentObserver;

    .line 350
    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->mSimGsm:Landroid/telephony/TelephonyManager;

    .line 351
    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->mSimCdma:Landroid/telephony/TelephonyManager;

    .line 1720
    new-instance v0, Lcom/android/settings/SecuritySettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/SecuritySettings$7;-><init>(Lcom/android/settings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1896
    return-void
.end method

.method private SetFirstTimePhonepassword(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v4, 0x7f0a009c

    const/16 v3, 0x64

    .line 1599
    sget-object v0, Lcom/android/settings/SecuritySettings$12;->$SwitchMap$com$android$settings$SecuritySettings$PWState:[I

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings$PWState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1627
    :goto_0
    return-void

    .line 1601
    :pswitch_0
    const-string v0, ".password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPassword:Ljava/lang/String;

    .line 1602
    const-string v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1new phone password = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    sget-object v0, Lcom/android/settings/SecuritySettings$PWState;->CONFIRM:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    .line 1604
    invoke-virtual {p0, v4}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a009e

    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/SecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1609
    :pswitch_1
    sget-object v0, Lcom/android/settings/SecuritySettings$PWState;->CURRENT:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    .line 1610
    const-string v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2new phone password = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1617
    :pswitch_2
    sget-object v0, Lcom/android/settings/SecuritySettings$PWState;->NEW:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    .line 1618
    invoke-virtual {p0, v4}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a009b

    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a00aa

    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/SecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1599
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private StartPassword()V
    .locals 5

    .prologue
    const v3, 0x7f0a009c

    .line 1575
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1577
    .local v0, "phone_password":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1578
    sget-object v1, Lcom/android/settings/SecuritySettings$PWState;->NEW:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    .line 1579
    invoke-virtual {p0, v3}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a009b

    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a00aa

    invoke-virtual {p0, v3}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings/SecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1586
    :goto_0
    return-void

    .line 1582
    :cond_0
    sget-object v1, Lcom/android/settings/SecuritySettings$PWState;->CURRENT:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    .line 1583
    invoke-virtual {p0, v3}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a009d

    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/settings/SecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/SecuritySettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SecuritySettings;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SecuritySettings;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SecuritySettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SecuritySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SecuritySettings;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SecuritySettings;

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateSIMLockEnable()V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 179
    invoke-static {p0, p1}, Lcom/android/settings/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/PackageManager;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 179
    invoke-static {p0, p1}, Lcom/android/settings/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private checkReactivationLock()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2109
    const/4 v1, 0x0

    .line 2110
    .local v1, "ret":Z
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2111
    sget-object v3, Lcom/android/settings/SecuritySettings;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    .line 2112
    .local v0, "lmmFlag":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 2113
    const/4 v1, 0x1

    .line 2118
    const-string v2, "SecuritySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LMM[getReqiredAuthFlag] in Check= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "lmmFlag":I
    :cond_0
    move v2, v1

    .line 2121
    :cond_1
    return v2
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 57

    .prologue
    .line 418
    const-string v52, "gsm.sim.currentcardstatus"

    const/16 v53, 0x0

    const-string v54, "9"

    invoke-static/range {v52 .. v54}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 419
    .local v13, "cardStatus1":Ljava/lang/String;
    const-string v52, "gsm.sim.currentcardstatus"

    const/16 v53, 0x1

    const-string v54, "9"

    invoke-static/range {v52 .. v54}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 420
    .local v14, "cardStatus2":Ljava/lang/String;
    const-string v52, "gsm.sim.state"

    const/16 v53, 0x0

    const-string v54, "UNKNOWN"

    invoke-static/range {v52 .. v54}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 421
    .local v45, "simState1":Ljava/lang/String;
    const-string v52, "gsm.sim.state"

    const/16 v53, 0x1

    const-string v54, "UNKNOWN"

    invoke-static/range {v52 .. v54}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 422
    .local v46, "simState2":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    .line 423
    .local v38, "root":Landroid/preference/PreferenceScreen;
    if-eqz v38, :cond_0

    .line 424
    invoke-virtual/range {v38 .. v38}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 426
    :cond_0
    const v52, 0x7f0700b5

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v53, v0

    invoke-static/range {v52 .. v53}, Lcom/android/settings/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v37

    .line 435
    .local v37, "resid":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v52

    if-nez v52, :cond_22

    const/16 v52, 0x1

    :goto_0
    move/from16 v0, v52

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    .line 437
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v52, v0

    if-nez v52, :cond_1

    .line 439
    const-string v52, "owner_info_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    .line 440
    .local v32, "ownerInfoPref":Landroid/preference/Preference;
    if-eqz v32, :cond_1

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v52

    if-eqz v52, :cond_23

    .line 442
    const v52, 0x7f0a021d

    move-object/from16 v0, v32

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 449
    .end local v32    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v52, v0

    if-eqz v52, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v52

    const-string v53, "shopdemo"

    const/16 v54, 0x0

    invoke-static/range {v52 .. v54}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v52

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-eq v0, v1, :cond_2

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v52

    packed-switch v52, :pswitch_data_0

    .line 473
    :goto_2
    :pswitch_0
    new-instance v20, Lcom/android/settings/encryption/EncryptionPreferenceManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v52

    move-object/from16 v0, v20

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 474
    .local v20, "epm":Lcom/android/settings/encryption/EncryptionPreferenceManager;
    if-eqz v20, :cond_2

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v52

    if-eqz v52, :cond_2

    .line 475
    const-string v52, "security_category"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v41

    check-cast v41, Landroid/preference/PreferenceGroup;

    .line 476
    .local v41, "securityCategory":Landroid/preference/PreferenceGroup;
    if-eqz v41, :cond_26

    .line 477
    new-instance v39, Landroid/preference/Preference;

    invoke-virtual/range {v41 .. v41}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v52

    move-object/from16 v0, v39

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 478
    .local v39, "sdcardPreference":Landroid/preference/Preference;
    const-string v52, "sdEncpref"

    move-object/from16 v0, v39

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 479
    const v52, 0x7f0a1017

    move-object/from16 v0, v39

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 480
    new-instance v52, Landroid/content/Intent;

    const-string v53, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct/range {v52 .. v53}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 481
    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 490
    .end local v20    # "epm":Lcom/android/settings/encryption/EncryptionPreferenceManager;
    .end local v39    # "sdcardPreference":Landroid/preference/Preference;
    .end local v41    # "securityCategory":Landroid/preference/PreferenceGroup;
    :cond_2
    :goto_3
    const-string v52, "security_category"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v41

    check-cast v41, Landroid/preference/PreferenceGroup;

    .line 518
    .restart local v41    # "securityCategory":Landroid/preference/PreferenceGroup;
    const-string v52, "lock_after_timeout"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    check-cast v52, Landroid/preference/ListPreference;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v52, v0

    if-eqz v52, :cond_3

    .line 520
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->setupLockAfterPreference()V

    .line 521
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 525
    :cond_3
    const-string v52, "biometric_weak_liveliness"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    check-cast v52, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    .line 529
    const-string v52, "visiblepattern"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    check-cast v52, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 532
    const-string v52, "power_button_instantly_locks"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    check-cast v52, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 534
    const-string v52, "trust_agent"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v50

    .line 535
    .local v50, "trustAgentPreference":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    move-object/from16 v52, v0

    if-eqz v52, :cond_4

    if-eqz v50, :cond_4

    invoke-virtual/range {v50 .. v50}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v52

    invoke-interface/range {v52 .. v52}, Ljava/lang/CharSequence;->length()I

    move-result v52

    if-lez v52, :cond_4

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    move-object/from16 v52, v0

    const v53, 0x7f0a08a4

    const/16 v54, 0x1

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    invoke-virtual/range {v50 .. v50}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v56

    aput-object v56, v54, v55

    move-object/from16 v0, p0

    move/from16 v1, v53

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 553
    :cond_4
    const/16 v21, 0x0

    .line 554
    .local v21, "hasFMMDMClient":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    const-string v53, "com.fmm.dm"

    invoke-static/range {v52 .. v53}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v21

    .line 556
    new-instance v6, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-direct {v6, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 557
    .local v6, "LostPhonePreferences":Landroid/preference/PreferenceCategory;
    const v52, 0x7f0a0f53

    move/from16 v0, v52

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 558
    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 560
    new-instance v52, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v53

    invoke-direct/range {v52 .. v53}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    move-object/from16 v52, v0

    const-string v53, "RemoteControls"

    invoke-virtual/range {v52 .. v53}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    move-object/from16 v52, v0

    const v53, 0x7f0a0f5a

    invoke-virtual/range {v52 .. v53}, Landroid/preference/Preference;->setTitle(I)V

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    move-object/from16 v53, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v52

    const-string v54, "remote_control"

    const/16 v55, 0x0

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    move/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v52

    if-eqz v52, :cond_27

    const v52, 0x7f0a0a60

    :goto_4
    move-object/from16 v0, v53

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    move-object/from16 v52, v0

    new-instance v53, Lcom/android/settings/SecuritySettings$3;

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings$3;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual/range {v52 .. v53}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v52

    if-nez v52, :cond_5

    const-string v52, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_5

    .line 585
    new-instance v52, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v53

    invoke-direct/range {v52 .. v53}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v52, v0

    const-string v53, "SIMAlert"

    invoke-virtual/range {v52 .. v53}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v52, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v53

    const v54, 0x7f0a0f54

    invoke-virtual/range {v53 .. v54}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v52, v0

    new-instance v53, Lcom/android/settings/SecuritySettings$4;

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings$4;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual/range {v52 .. v53}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 604
    const-string v52, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_5

    if-eqz v21, :cond_5

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 610
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v52

    if-eqz v52, :cond_28

    .line 611
    const/4 v12, 0x1

    .line 613
    .local v12, "bEnableSIMAlert":Z
    const-string v52, "UNKNOWN"

    move-object/from16 v0, v52

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_6

    const-string v52, "ABSENT"

    move-object/from16 v0, v52

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_8

    :cond_6
    const-string v52, "UNKNOWN"

    move-object/from16 v0, v52

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_7

    const-string v52, "ABSENT"

    move-object/from16 v0, v52

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_8

    .line 615
    :cond_7
    const/4 v12, 0x0

    .line 617
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v52

    if-nez v52, :cond_9

    if-nez v12, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v52, v0

    if-eqz v52, :cond_9

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 649
    .end local v12    # "bEnableSIMAlert":Z
    :cond_9
    :goto_5
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-direct {v5, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 650
    .local v5, "GoToSamsungDive":Landroid/preference/Preference;
    const-string v52, "GoToSamsungDive"

    move-object/from16 v0, v52

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 651
    const v52, 0x7f0a0f6f

    move/from16 v0, v52

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 652
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v52

    if-eqz v52, :cond_2c

    .line 653
    const-string v52, "http://findmymobile.samsung.cn"

    move-object/from16 v0, v52

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 657
    :goto_6
    new-instance v52, Lcom/android/settings/SecuritySettings$5;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings$5;-><init>(Lcom/android/settings/SecuritySettings;)V

    move-object/from16 v0, v52

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 676
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 680
    new-instance v52, Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v53

    invoke-direct/range {v52 .. v53}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v52, v0

    const-string v53, "LockMyMobile"

    invoke-virtual/range {v52 .. v53}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v52, v0

    const v53, 0x7f0a0f70

    invoke-virtual/range {v52 .. v53}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v52, v0

    const v53, 0x7f0a0f71

    invoke-virtual/range {v52 .. v53}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 684
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v52

    const-string v53, "lock_my_mobile"

    const/16 v54, 0x0

    invoke-static/range {v52 .. v54}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v52

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_2d

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v52, v0

    const/16 v53, 0x1

    invoke-virtual/range {v52 .. v53}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 688
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 690
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v52

    if-eqz v52, :cond_a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v52

    if-nez v52, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v52

    const-string v53, "shopdemo"

    const/16 v54, 0x0

    invoke-static/range {v52 .. v54}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v52

    if-eqz v52, :cond_b

    .line 693
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 698
    :cond_b
    const/16 v52, 0x1

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v42, v0

    const/16 v52, 0x0

    const-string v53, "false"

    aput-object v53, v42, v52

    .line 699
    .local v42, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    const-string v53, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v54, "isActivationLockAllowed"

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    move-object/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    .line 700
    .local v25, "isActivationLockAllowed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v52, v0

    if-eqz v52, :cond_c

    if-nez v25, :cond_c

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 706
    :cond_c
    if-eqz v21, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v52

    const-string v53, "shopdemo"

    const/16 v54, 0x0

    invoke-static/range {v52 .. v54}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v52

    if-eqz v52, :cond_e

    .line 707
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 714
    :cond_e
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v52

    if-nez v52, :cond_f

    const-string v52, "ro.product.name"

    invoke-static/range {v52 .. v52}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    const-string v53, "google"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v52

    if-eqz v52, :cond_10

    .line 716
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isNorthAmerica()Z

    move-result v52

    if-eqz v52, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v52

    if-eqz v52, :cond_2e

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v52

    if-nez v52, :cond_2e

    .line 717
    invoke-virtual {v6}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 718
    const v52, 0x7f0a0f70

    move/from16 v0, v52

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 726
    :cond_10
    :goto_8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v52

    if-nez v52, :cond_11

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v52

    const-string v53, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual/range {v52 .. v53}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_11

    .line 728
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v52

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v52, v0

    const v53, 0x7f0a009a

    invoke-virtual/range {v52 .. v53}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v52, v0

    const-string v53, "mPhonePasswordPreference"

    invoke-virtual/range {v52 .. v53}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 732
    new-instance v33, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    move-object/from16 v0, v33

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 733
    .local v33, "phonePasswordCat":Landroid/preference/PreferenceCategory;
    const v52, 0x7f0a0099

    move-object/from16 v0, v33

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 734
    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v52, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 739
    .end local v33    # "phonePasswordCat":Landroid/preference/PreferenceCategory;
    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v52

    if-eqz v52, :cond_13

    .line 740
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v52

    if-nez v52, :cond_2f

    const/16 v31, 0x0

    .line 741
    .local v31, "numActiveSim":I
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v52

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    .line 742
    new-instance v43, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    move-object/from16 v0, v43

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 744
    .local v43, "simLockCat":Landroid/preference/PreferenceCategory;
    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    .line 745
    .local v24, "intent":Landroid/content/Intent;
    const-string v52, "CDMA"

    invoke-static/range {v52 .. v52}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_30

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v52, v0

    const v53, 0x7f0a18ac

    invoke-virtual/range {v52 .. v53}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 747
    const v52, 0x7f0a18ad

    move-object/from16 v0, v43

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v52, v0

    const-string v53, "ruim_lock_settings"

    invoke-virtual/range {v52 .. v53}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 749
    const-string v52, "com.android.settings"

    const-string v53, "com.android.settings.IccLockSettingsTab"

    move-object/from16 v0, v24

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 762
    move-object/from16 v0, v38

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v52, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 764
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v52

    const/16 v53, 0x64

    move/from16 v0, v52

    move/from16 v1, v53

    if-lt v0, v1, :cond_32

    .line 765
    move-object/from16 v0, v38

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 787
    :cond_12
    :goto_b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v52

    const/16 v53, 0x64

    move/from16 v0, v52

    move/from16 v1, v53

    if-lt v0, v1, :cond_13

    .line 788
    if-eqz v43, :cond_13

    .line 789
    move-object/from16 v0, v38

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 796
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v31    # "numActiveSim":I
    .end local v43    # "simLockCat":Landroid/preference/PreferenceCategory;
    :cond_13
    const v52, 0x7f0700bf

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 797
    const-string v52, "device_admin_category"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceCategory;

    .line 798
    .local v17, "deviceAdmin":Landroid/preference/PreferenceCategory;
    const/16 v52, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 800
    const-string v52, "sim_lock"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v44

    check-cast v44, Landroid/preference/PreferenceCategory;

    .line 801
    .local v44, "simLockCat2":Landroid/preference/PreferenceCategory;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    const v53, 0x7f0a06e0

    invoke-virtual/range {v52 .. v53}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 803
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v49

    .line 804
    .local v49, "tm":Landroid/telephony/TelephonyManager;
    const/16 v52, 0x1

    const-string v53, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SECURITY_EMBEDEDSIMCARD"

    invoke-static/range {v53 .. v53}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v53

    move/from16 v0, v52

    move/from16 v1, v53

    if-eq v0, v1, :cond_14

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v52

    const/16 v53, 0x64

    move/from16 v0, v52

    move/from16 v1, v53

    if-lt v0, v1, :cond_3c

    .line 805
    :cond_14
    move-object/from16 v0, v38

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 879
    :cond_15
    :goto_c
    const-string v52, "show_password"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    check-cast v52, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 880
    const-string v52, "credentials_reset"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 883
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    const-string v53, "user"

    invoke-virtual/range {v52 .. v53}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/UserManager;

    .line 884
    .local v51, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 885
    const-string v52, "no_config_credentials"

    invoke-virtual/range {v51 .. v52}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v52

    if-nez v52, :cond_4a

    .line 886
    const-string v52, "credential_storage_type"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 888
    .local v15, "credentialStorageType":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v52

    if-eqz v52, :cond_49

    const v48, 0x7f0a0bd4

    .line 891
    .local v48, "storageSummaryRes":I
    :goto_d
    if-eqz v15, :cond_16

    .line 892
    move/from16 v0, v48

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 904
    .end local v15    # "credentialStorageType":Landroid/preference/Preference;
    .end local v48    # "storageSummaryRes":I
    :cond_16
    :goto_e
    const-string v52, "device_admin_category"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceGroup;

    .line 906
    .local v18, "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    const-string v52, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    check-cast v52, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v52, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v53

    invoke-virtual/range {v52 .. v53}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 911
    const-string v52, "no_install_unknown_sources"

    invoke-virtual/range {v51 .. v52}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v52

    if-nez v52, :cond_17

    const-string v52, "no_install_apps"

    invoke-virtual/range {v51 .. v52}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_18

    .line 913
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 918
    :cond_18
    const-string v52, "security_policy_updates"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    .line 919
    const-string v52, "security_reports"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    check-cast v52, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mSecurityReports:Landroid/preference/CheckBoxPreference;

    .line 920
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v52

    const-string v53, "send_security_reports"

    const/16 v54, -0x1

    invoke-static/range {v52 .. v54}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v52

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_4b

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityReports:Landroid/preference/CheckBoxPreference;

    move-object/from16 v52, v0

    const/16 v53, 0x1

    invoke-virtual/range {v52 .. v53}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 926
    :goto_f
    invoke-static {}, Lcom/android/settings/Utils;->isChinaNAL()Z

    move-result v52

    if-nez v52, :cond_19

    .line 927
    const-string v52, "app_ops"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    if-eqz v52, :cond_19

    .line 928
    const-string v52, "app_ops"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    move-object/from16 v0, v18

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 953
    :cond_19
    const-string v52, "selinux.policy_version"

    const-string v53, "No Policy Version"

    invoke-static/range {v52 .. v53}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 954
    .local v34, "policyVersion":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v52

    if-nez v52, :cond_1a

    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v52

    if-eqz v52, :cond_1a

    const-string v52, "GOOGLE_POLICY"

    move-object/from16 v0, v52

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_1a

    const-string v52, "No Policy Version"

    move-object/from16 v0, v52

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_4c

    .line 955
    :cond_1a
    const-string v52, "new_security_update_service"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 977
    :cond_1b
    :goto_10
    const-string v52, "msa_security_update"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mSecurityUpdatesMA:Landroid/preference/Preference;

    .line 978
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v52

    const-string v53, "android"

    const-string v54, "com.sec.android.app.msa"

    invoke-virtual/range {v52 .. v54}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v52

    if-nez v52, :cond_4f

    const/16 v30, 0x1

    .line 980
    .local v30, "msaInstalled":Z
    :goto_11
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v52

    if-eqz v52, :cond_1c

    const-string v52, "GOOGLE_POLICY"

    move-object/from16 v0, v52

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_1c

    const-string v52, "No Policy Version"

    move-object/from16 v0, v52

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_50

    :cond_1c
    const/16 v40, 0x1

    .line 984
    .local v40, "seAndroidDisabled":Z
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v52

    const-string v53, "msa_settings_enabled"

    const/16 v54, 0x1

    invoke-static/range {v52 .. v54}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 985
    if-eqz v30, :cond_1d

    if-nez v40, :cond_1e

    .line 986
    :cond_1d
    const-string v52, "msa_security_update_service"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 987
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v52

    const-string v53, "msa_settings_enabled"

    const/16 v54, 0x0

    invoke-static/range {v52 .. v54}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 992
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/widget/LockPatternUtils;->isSmartcardAuthInstalled()Z

    move-result v52

    if-nez v52, :cond_1f

    .line 994
    const-string v52, "smartcard_credential_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->removePreference(Ljava/lang/String;)V

    .line 998
    :cond_1f
    const-string v52, "advanced_security"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    .line 1001
    .local v8, "advancedCategory":Landroid/preference/PreferenceGroup;
    if-eqz v8, :cond_51

    .line 1002
    const-string v52, "manage_trust_agents"

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    .line 1003
    .local v28, "manageAgents":Landroid/preference/Preference;
    if-eqz v28, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v52

    if-nez v52, :cond_20

    .line 1004
    const/16 v52, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1005
    const v52, 0x7f0a02c3

    move-object/from16 v0, v28

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1007
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v22

    .line 1008
    .local v22, "hasSecurity":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v53, v0

    invoke-static/range {v52 .. v53}, Lcom/android/settings/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1010
    .local v10, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_13
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v52

    move/from16 v0, v23

    move/from16 v1, v52

    if-ge v0, v1, :cond_51

    .line 1011
    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 1012
    .local v9, "agent":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v47, Landroid/preference/Preference;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v52

    move-object/from16 v0, v47

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1014
    .local v47, "smartlock":Landroid/preference/Preference;
    const-string v52, "trust_agent"

    move-object/from16 v0, v47

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1015
    iget-object v0, v9, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1016
    iget-object v0, v9, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1018
    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    .line 1019
    .restart local v24    # "intent":Landroid/content/Intent;
    iget-object v0, v9, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v52, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1020
    const-string v52, "android.intent.action.MAIN"

    move-object/from16 v0, v24

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1021
    move-object/from16 v0, v47

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 1023
    move-object/from16 v0, v47

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1024
    if-nez v22, :cond_21

    .line 1025
    const/16 v52, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1026
    const v52, 0x7f0a02c3

    move-object/from16 v0, v47

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1010
    :cond_21
    add-int/lit8 v23, v23, 0x1

    goto :goto_13

    .line 435
    .end local v5    # "GoToSamsungDive":Landroid/preference/Preference;
    .end local v6    # "LostPhonePreferences":Landroid/preference/PreferenceCategory;
    .end local v8    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .end local v9    # "agent":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v10    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .end local v17    # "deviceAdmin":Landroid/preference/PreferenceCategory;
    .end local v18    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    .end local v21    # "hasFMMDMClient":Z
    .end local v22    # "hasSecurity":Z
    .end local v23    # "i":I
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v25    # "isActivationLockAllowed":I
    .end local v28    # "manageAgents":Landroid/preference/Preference;
    .end local v30    # "msaInstalled":Z
    .end local v34    # "policyVersion":Ljava/lang/String;
    .end local v40    # "seAndroidDisabled":Z
    .end local v41    # "securityCategory":Landroid/preference/PreferenceGroup;
    .end local v42    # "selectionArgs":[Ljava/lang/String;
    .end local v44    # "simLockCat2":Landroid/preference/PreferenceCategory;
    .end local v47    # "smartlock":Landroid/preference/Preference;
    .end local v49    # "tm":Landroid/telephony/TelephonyManager;
    .end local v50    # "trustAgentPreference":Landroid/preference/Preference;
    .end local v51    # "um":Landroid/os/UserManager;
    :cond_22
    const/16 v52, 0x0

    goto/16 :goto_0

    .line 444
    .restart local v32    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_23
    const v52, 0x7f0a021b

    move-object/from16 v0, v32

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_1

    .line 455
    .end local v32    # "ownerInfoPref":Landroid/preference/Preference;
    :pswitch_1
    const-string v52, "security.mdpp"

    const-string v53, "None"

    invoke-static/range {v52 .. v53}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 456
    .local v7, "MDPP_PROPERTY":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v52

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-eq v0, v1, :cond_24

    const-string v52, "Enabled"

    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_25

    .line 457
    :cond_24
    const v52, 0x7f0700bc

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    .line 459
    :cond_25
    const v52, 0x7f0700bb

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    .line 465
    .end local v7    # "MDPP_PROPERTY":Ljava/lang/String;
    :pswitch_2
    const v52, 0x7f0700c6

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    .line 483
    .restart local v20    # "epm":Lcom/android/settings/encryption/EncryptionPreferenceManager;
    .restart local v41    # "securityCategory":Landroid/preference/PreferenceGroup;
    :cond_26
    const v52, 0x7f0700c4

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_3

    .line 563
    .end local v20    # "epm":Lcom/android/settings/encryption/EncryptionPreferenceManager;
    .restart local v6    # "LostPhonePreferences":Landroid/preference/PreferenceCategory;
    .restart local v21    # "hasFMMDMClient":Z
    .restart local v50    # "trustAgentPreference":Landroid/preference/Preference;
    :cond_27
    const v52, 0x7f0a0a61

    goto/16 :goto_4

    .line 620
    :cond_28
    const-string v52, "UNKNOWN"

    move-object/from16 v0, v52

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_29

    const-string v52, "ABSENT"

    move-object/from16 v0, v52

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2a

    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v52

    if-eqz v52, :cond_2b

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v52

    if-eqz v52, :cond_9

    .line 622
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v52, v0

    if-eqz v52, :cond_9

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 655
    .restart local v5    # "GoToSamsungDive":Landroid/preference/Preference;
    :cond_2c
    const-string v52, "http://findmymobile.samsung.com"

    move-object/from16 v0, v52

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 687
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_7

    .line 721
    .restart local v25    # "isActivationLockAllowed":I
    .restart local v42    # "selectionArgs":[Ljava/lang/String;
    :cond_2e
    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 740
    :cond_2f
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v52

    invoke-interface/range {v52 .. v52}, Ljava/util/List;->size()I

    move-result v31

    goto/16 :goto_9

    .line 750
    .restart local v24    # "intent":Landroid/content/Intent;
    .restart local v31    # "numActiveSim":I
    .restart local v43    # "simLockCat":Landroid/preference/PreferenceCategory;
    :cond_30
    const/16 v52, 0x2

    move/from16 v0, v31

    move/from16 v1, v52

    if-lt v0, v1, :cond_31

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v52, v0

    const-string v53, "sim_lock_settings"

    invoke-virtual/range {v52 .. v53}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v52, v0

    const v53, 0x7f0a06df

    invoke-virtual/range {v52 .. v53}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 753
    const v52, 0x7f0a06e0

    move-object/from16 v0, v43

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 754
    const-string v52, "com.android.settings"

    const-string v53, "com.android.settings.IccLockTabSettings"

    move-object/from16 v0, v24

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_a

    .line 756
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v52, v0

    const-string v53, "sim_lock_settings"

    invoke-virtual/range {v52 .. v53}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v52, v0

    const v53, 0x7f0a06df

    invoke-virtual/range {v52 .. v53}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 758
    const v52, 0x7f0a06e0

    move-object/from16 v0, v43

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 759
    const-string v52, "com.android.settings"

    const-string v53, "com.android.settings.IccLockSettings"

    move-object/from16 v0, v24

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_a

    .line 766
    :cond_32
    const-string v52, "CDMA"

    invoke-static/range {v52 .. v52}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_35

    .line 767
    const-string v52, "3"

    move-object/from16 v0, v52

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_33

    const-string v52, "3"

    move-object/from16 v0, v52

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_33

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_b

    .line 770
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v53, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v52

    if-nez v52, :cond_34

    const/16 v52, 0x1

    :goto_14
    move-object/from16 v0, v53

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_b

    :cond_34
    const/16 v52, 0x0

    goto :goto_14

    .line 774
    :cond_35
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v52

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-gt v0, v1, :cond_37

    .line 775
    const-string v52, "UNKNOWN"

    move-object/from16 v0, v52

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_36

    const-string v52, "ABSENT"

    move-object/from16 v0, v52

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_12

    .line 776
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_b

    .line 778
    :cond_37
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v52

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-le v0, v1, :cond_3a

    .line 779
    const-string v52, "UNKNOWN"

    move-object/from16 v0, v52

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_38

    const-string v52, "ABSENT"

    move-object/from16 v0, v52

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_12

    :cond_38
    const-string v52, "UNKNOWN"

    move-object/from16 v0, v52

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_39

    const-string v52, "ABSENT"

    move-object/from16 v0, v52

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_12

    .line 781
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_b

    .line 784
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v53, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v52

    if-nez v52, :cond_3b

    const/16 v52, 0x1

    :goto_15
    move-object/from16 v0, v53

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_b

    :cond_3b
    const/16 v52, 0x0

    goto :goto_15

    .line 806
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v31    # "numActiveSim":I
    .end local v43    # "simLockCat":Landroid/preference/PreferenceCategory;
    .restart local v17    # "deviceAdmin":Landroid/preference/PreferenceCategory;
    .restart local v44    # "simLockCat2":Landroid/preference/PreferenceCategory;
    .restart local v49    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3c
    const-string v52, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_3d

    const-string v52, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_3d

    const-string v52, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_3d

    const-string v52, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_3d

    const-string v52, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_3e

    .line 808
    :cond_3d
    move-object/from16 v0, v38

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    .line 809
    :cond_3e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v52, v0

    if-eqz v52, :cond_3f

    invoke-virtual/range {v49 .. v49}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v52

    if-nez v52, :cond_40

    .line 810
    :cond_3f
    move-object/from16 v0, v38

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    .line 811
    :cond_40
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v52

    if-eqz v52, :cond_41

    .line 812
    move-object/from16 v0, v38

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    .line 815
    :cond_41
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v52

    const-string v53, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual/range {v52 .. v53}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_43

    .line 818
    const/16 v26, 0x1

    .line 820
    .local v26, "isCellOnly":Z
    :try_start_0
    const-string v52, "com.movial.ipphone.IPPhoneSettings"

    invoke-static/range {v52 .. v52}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v52

    const-string v53, "CELL_ONLY"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v52

    const-class v53, Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 823
    .local v4, "CELL_ONLY":Ljava/lang/String;
    const/16 v52, 0x3

    move/from16 v0, v52

    new-array v11, v0, [Ljava/lang/Class;

    const/16 v52, 0x0

    const-class v53, Landroid/content/ContentResolver;

    aput-object v53, v11, v52

    const/16 v52, 0x1

    const-class v53, Ljava/lang/String;

    aput-object v53, v11, v52

    const/16 v52, 0x2

    sget-object v53, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v53, v11, v52

    .line 825
    .local v11, "argTypes":[Ljava/lang/Class;
    const-string v52, "com.movial.ipphone.IPPhoneSettings"

    invoke-static/range {v52 .. v52}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v52

    const-string v53, "getBoolean"

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    invoke-virtual {v0, v1, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v29

    .line 828
    .local v29, "method":Ljava/lang/reflect/Method;
    const/16 v52, 0x0

    const/16 v53, 0x3

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x1

    aput-object v4, v53, v54

    const/16 v54, 0x2

    const/16 v55, 0x1

    invoke-static/range {v55 .. v55}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, v29

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Boolean;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    .line 833
    .end local v4    # "CELL_ONLY":Ljava/lang/String;
    .end local v11    # "argTypes":[Ljava/lang/Class;
    .end local v29    # "method":Ljava/lang/reflect/Method;
    :goto_16
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v52

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-eq v0, v1, :cond_42

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v52

    if-nez v52, :cond_15

    if-eqz v26, :cond_15

    .line 835
    :cond_42
    const-string v52, "sim_lock"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_c

    .line 830
    :catch_0
    move-exception v19

    .line 831
    .local v19, "e":Ljava/lang/Exception;
    const-string v52, "SecuritySettings"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 838
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v26    # "isCellOnly":Z
    :cond_43
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v52

    const-string v53, "CscFeature_Common_SupportSecWFC"

    invoke-virtual/range {v52 .. v53}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_46

    .line 842
    const/16 v27, 0x0

    .line 846
    .local v27, "isWfcRegistered":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationState(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v36

    .line 848
    .local v36, "registrationStatus":Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;
    sget-object v52, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-object/from16 v0, v36

    move-object/from16 v1, v52

    if-ne v0, v1, :cond_44

    .line 849
    const/16 v27, 0x1

    .line 852
    :cond_44
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v52

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-eq v0, v1, :cond_45

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v52

    if-nez v52, :cond_15

    if-eqz v27, :cond_15

    .line 854
    :cond_45
    const-string v52, "sim_lock"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_c

    .line 857
    .end local v27    # "isWfcRegistered":Z
    .end local v36    # "registrationStatus":Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;
    :cond_46
    const-string v52, "UNKNOWN"

    move-object/from16 v0, v52

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_47

    const-string v52, "ABSENT"

    move-object/from16 v0, v52

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_48

    .line 858
    :cond_47
    const-string v52, "sim_lock"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 861
    :cond_48
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v52

    if-eqz v52, :cond_15

    .line 862
    const-string v52, "UNKNOWN"

    move-object/from16 v0, v52

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_15

    const-string v52, "ABSENT"

    move-object/from16 v0, v52

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_15

    .line 863
    const-string v52, "sim_lock"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    const/16 v53, 0x1

    invoke-virtual/range {v52 .. v53}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_c

    .line 888
    .restart local v15    # "credentialStorageType":Landroid/preference/Preference;
    .restart local v51    # "um":Landroid/os/UserManager;
    :cond_49
    const v48, 0x7f0a0bd5

    goto/16 :goto_d

    .line 896
    .end local v15    # "credentialStorageType":Landroid/preference/Preference;
    :cond_4a
    const-string v52, "credentials_management"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceGroup;

    .line 898
    .local v16, "credentialsManager":Landroid/preference/PreferenceGroup;
    const-string v52, "credentials_reset"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    move-object/from16 v0, v16

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 899
    const-string v52, "credentials_install"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    move-object/from16 v0, v16

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 900
    const-string v52, "credential_storage_type"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    move-object/from16 v0, v16

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    .line 923
    .end local v16    # "credentialsManager":Landroid/preference/PreferenceGroup;
    .restart local v18    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityReports:Landroid/preference/CheckBoxPreference;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_f

    .line 957
    .restart local v34    # "policyVersion":Ljava/lang/String;
    :cond_4c
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isUsaCountryCode()Z

    move-result v52

    if-nez v52, :cond_4d

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v52, v0

    if-eqz v52, :cond_1b

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v52, v0

    const v53, 0x7f0a00ab

    invoke-virtual/range {v52 .. v53}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 962
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v52

    if-nez v52, :cond_4e

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v52, v0

    if-eqz v52, :cond_1b

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v52, v0

    const v53, 0x7f0a00ac

    invoke-virtual/range {v52 .. v53}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 967
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v52, v0

    if-eqz v52, :cond_1b

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v52, v0

    const v53, 0x7f0a00ad

    invoke-virtual/range {v52 .. v53}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 978
    :cond_4f
    const/16 v30, 0x0

    goto/16 :goto_11

    .line 980
    .restart local v30    # "msaInstalled":Z
    :cond_50
    const/16 v40, 0x0

    goto/16 :goto_12

    .line 1034
    .restart local v8    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .restart local v40    # "seAndroidDisabled":Z
    :cond_51
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v52

    const-class v53, Lcom/android/settings/SecuritySettings;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    const/16 v54, 0x1

    const/16 v55, 0x1

    invoke-virtual/range {v52 .. v55}, Lcom/android/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 1037
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_17
    sget-object v52, Lcom/android/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v52

    array-length v0, v0

    move/from16 v52, v0

    move/from16 v0, v23

    move/from16 v1, v52

    if-ge v0, v1, :cond_53

    .line 1038
    sget-object v52, Lcom/android/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v52, v52, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    .line 1039
    .local v35, "pref":Landroid/preference/Preference;
    if-eqz v35, :cond_52

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1037
    :cond_52
    add-int/lit8 v23, v23, 0x1

    goto :goto_17

    .line 1043
    .end local v35    # "pref":Landroid/preference/Preference;
    :cond_53
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SecuritySettings;->isKioskContainer:Z

    .line 1044
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->isKioskContainer:Z

    move/from16 v52, v0

    if-eqz v52, :cond_59

    .line 1045
    const-string v52, "app_ops"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    if-eqz v52, :cond_54

    .line 1046
    const-string v52, "app_ops"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    move-object/from16 v0, v18

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1049
    :cond_54
    if-eqz v41, :cond_55

    .line 1050
    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1054
    :cond_55
    const-string v52, "new_security_update_service"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    if-eqz v52, :cond_56

    .line 1055
    const-string v52, "new_security_update_service"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1058
    :cond_56
    const-string v52, "credentials_management"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    if-eqz v52, :cond_57

    .line 1059
    const-string v52, "credentials_management"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1062
    :cond_57
    const-string v52, "advanced_security"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v52

    if-eqz v52, :cond_58

    .line 1063
    const-string v52, "advanced_security"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1066
    :cond_58
    if-eqz v6, :cond_59

    .line 1067
    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1071
    :cond_59
    return-object v38

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private disableUnusableTimeouts(J)V
    .locals 11
    .param p1, "maxTimeout"    # J

    .prologue
    .line 1263
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 1264
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 1265
    .local v7, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1266
    .local v2, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1267
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    .line 1268
    aget-object v8, v7, v1

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1269
    .local v4, "timeout":J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    .line 1270
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1271
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1274
    .end local v4    # "timeout":J
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v0

    if-ne v8, v9, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v7

    if-eq v8, v9, :cond_3

    .line 1275
    :cond_2
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1277
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1279
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1280
    .local v6, "userPreference":I
    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_3

    .line 1281
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1288
    .end local v6    # "userPreference":I
    :cond_3
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1289
    return-void

    .line 1288
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private static getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1076
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1077
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    sget-object v6, Lcom/android/settings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v7, 0x80

    invoke-virtual {p0, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1079
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents()Ljava/util/List;

    move-result-object v0

    .line 1080
    .local v0, "enabledTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1081
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 1082
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1083
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v6, :cond_1

    .line 1081
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1084
    :cond_1
    invoke-static {v2, p0}, Lcom/android/settings/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1085
    invoke-static {p0, v2}, Lcom/android/settings/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v5

    .line 1087
    .local v5, "trustAgentComponentInfo":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    iget-object v6, v5, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    invoke-static {v2}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1091
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    .end local v1    # "i":I
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "trustAgentComponentInfo":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    :cond_2
    return-object v4
.end method

.method private static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v2, 0x1

    .line 374
    const/4 v1, 0x0

    .line 375
    .local v1, "resid":I
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_2

    .line 377
    const-string v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 378
    .local v0, "mUm":Landroid/os/UserManager;
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 379
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 381
    .local v2, "singleUser":Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 382
    const v1, 0x7f0700be

    .line 408
    .end local v0    # "mUm":Landroid/os/UserManager;
    .end local v2    # "singleUser":Z
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1
    return v1

    .line 379
    .restart local v0    # "mUm":Landroid/os/UserManager;
    .restart local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 384
    .restart local v2    # "singleUser":Z
    :cond_1
    const v1, 0x7f0700b9

    goto :goto_1

    .line 386
    .end local v0    # "mUm":Landroid/os/UserManager;
    .end local v2    # "singleUser":Z
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 388
    const v1, 0x7f0700b6

    goto :goto_1

    .line 390
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 392
    :sswitch_0
    const v1, 0x7f0700c1

    .line 393
    goto :goto_1

    .line 396
    :sswitch_1
    const v1, 0x7f0700c3

    .line 397
    goto :goto_1

    .line 401
    :sswitch_2
    const v1, 0x7f0700c0

    .line 402
    goto :goto_1

    .line 404
    :sswitch_3
    const v1, 0x7f0700b8

    goto :goto_1

    .line 390
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
        0x70000 -> :sswitch_3
    .end sparse-switch
.end method

.method private static getSamsungAccountName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2136
    const-string v2, ""

    .line 2137
    .local v2, "rtn_val":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2139
    .local v0, "FIRST_INDEX":I
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 2140
    .local v1, "manager":Landroid/accounts/AccountManager;
    const-string v4, "com.osp.app.signin"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 2142
    .local v3, "samsungAccnts":[Landroid/accounts/Account;
    array-length v4, v3

    if-lez v4, :cond_0

    .line 2143
    const/4 v4, 0x0

    aget-object v4, v3, v4

    iget-object v2, v4, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2149
    .end local v1    # "manager":Landroid/accounts/AccountManager;
    .end local v3    # "samsungAccnts":[Landroid/accounts/Account;
    :cond_0
    :goto_0
    return-object v2

    .line 2145
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private isCCMEmpty()Z
    .locals 5

    .prologue
    .line 1432
    :try_start_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 1433
    .local v1, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    const-string v3, "knox_ccm_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SecuritySettings;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    .line 1434
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    invoke-interface {v3}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v0

    .line 1436
    .local v0, "ccmVersion":Ljava/lang/String;
    :goto_0
    const-string v3, "3.0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1437
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    invoke-interface {v3, v1}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->isCCMEmptyForKeyChain(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1438
    const-string v3, "SecuritySettings"

    const-string v4, "CCM is NOT empty"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    const/4 v3, 0x0

    .line 1449
    .end local v0    # "ccmVersion":Ljava/lang/String;
    .end local v1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :goto_1
    return v3

    .line 1434
    .restart local v1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1441
    .restart local v0    # "ccmVersion":Ljava/lang/String;
    :cond_1
    const-string v3, "SecuritySettings"

    const-string v4, "CCM is empty"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    .end local v0    # "ccmVersion":Ljava/lang/String;
    .end local v1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :goto_2
    const/4 v3, 0x1

    goto :goto_1

    .line 1444
    .restart local v0    # "ccmVersion":Ljava/lang/String;
    .restart local v1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_2
    const-string v3, "SecuritySettings"

    const-string v4, "CCM is NOT available on this device"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1446
    .end local v0    # "ccmVersion":Ljava/lang/String;
    .end local v1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :catch_0
    move-exception v2

    .line 1447
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SecuritySettings"

    const-string v4, "Failed at ClientCertificateManager API isCCMEmptyForKeyChain-Exception "

    invoke-static {v3, v4, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 4
    .param p1, "mCtx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 2154
    if-nez p1, :cond_1

    .line 2164
    :cond_0
    :goto_0
    return v1

    .line 2158
    :cond_1
    const-string v2, "isKioskModeEnabled"

    invoke-static {p1, v2}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 2160
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "true"

    const-string v3, "isKioskModeEnabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2161
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1145
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isNorthAmerica()Z
    .locals 3

    .prologue
    .line 1132
    const/4 v0, 0x0

    .line 1133
    .local v0, "ret":Z
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1139
    :cond_0
    const/4 v0, 0x1

    .line 1141
    :cond_1
    return v0
.end method

.method private isUsaCountryCode()Z
    .locals 3

    .prologue
    .line 1114
    const/4 v0, 0x0

    .line 1115
    .local v0, "ret":Z
    const-string v1, "USA"

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1116
    const/4 v0, 0x1

    .line 1118
    :cond_0
    return v0
.end method

.method private removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 1
    .param p1, "root"    # Landroid/preference/PreferenceScreen;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1100
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1101
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 1102
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1104
    :cond_0
    return-void
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1150
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1151
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1157
    :goto_0
    return-void

    .line 1155
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 1231
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1233
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1234
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1235
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 1236
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 1238
    .local v4, "displayTimeout":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 1242
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings/SecuritySettings;->disableUnusableTimeouts(J)V

    .line 1244
    :cond_0
    return-void

    .end local v0    # "adminTimeout":J
    .end local v4    # "displayTimeout":J
    :cond_1
    move-wide v0, v6

    .line 1235
    goto :goto_0
.end method

.method private showReactivationLockDialog()V
    .locals 3

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2043
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2044
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    .line 2047
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0f72

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0f70

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a08f6

    new-instance v2, Lcom/android/settings/SecuritySettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/SecuritySettings$9;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a01cf

    new-instance v2, Lcom/android/settings/SecuritySettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/SecuritySettings$8;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    .line 2077
    return-void
.end method

.method private showReactivationLockDisableDialog()V
    .locals 3

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2082
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2083
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    .line 2086
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a1e86

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1e85

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a08f6

    new-instance v2, Lcom/android/settings/SecuritySettings$11;

    invoke-direct {v2, p0}, Lcom/android/settings/SecuritySettings$11;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a01cf

    new-instance v2, Lcom/android/settings/SecuritySettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings/SecuritySettings$10;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    .line 2104
    return-void
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 12

    .prologue
    .line 1248
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1250
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1251
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 1252
    .local v5, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 1253
    .local v0, "best":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v5

    if-ge v4, v8, :cond_1

    .line 1254
    aget-object v8, v5, v4

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1255
    .local v6, "timeout":J
    cmp-long v8, v2, v6

    if-ltz v8, :cond_0

    .line 1256
    move v0, v4

    .line 1253
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1260
    .end local v6    # "timeout":J
    :cond_1
    return-void
.end method

.method private updateSIMLockEnable()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1728
    const-string v4, "gsm.sim.currentcardstatus"

    const-string v7, "9"

    invoke-static {v4, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1729
    .local v0, "cardStatus1":Ljava/lang/String;
    const-string v4, "gsm.sim.currentcardstatus"

    const-string v7, "9"

    invoke-static {v4, v5, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1730
    .local v1, "cardStatus2":Ljava/lang/String;
    const-string v4, "gsm.sim.state"

    const-string v7, "UNKNOWN"

    invoke-static {v4, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1731
    .local v2, "simState1":Ljava/lang/String;
    const-string v4, "gsm.sim.state"

    const-string v7, "UNKNOWN"

    invoke-static {v4, v5, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1732
    .local v3, "simState2":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_0

    .line 1733
    const-string v4, "CDMA"

    invoke-static {v4}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1734
    const-string v4, "3"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "3"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1736
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1737
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1761
    :cond_0
    :goto_0
    return-void

    .line 1739
    :cond_1
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1740
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    :goto_2
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v4, v6

    .line 1739
    goto :goto_1

    :cond_3
    move v5, v6

    .line 1740
    goto :goto_2

    .line 1744
    :cond_4
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v4

    if-gt v4, v5, :cond_6

    .line 1745
    const-string v4, "UNKNOWN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "ABSENT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1746
    :cond_5
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1747
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1749
    :cond_6
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v4

    if-le v4, v5, :cond_9

    .line 1750
    const-string v4, "UNKNOWN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "ABSENT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_7
    const-string v4, "UNKNOWN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1752
    :cond_8
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1753
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1756
    :cond_9
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_a

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1757
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_b

    :goto_4
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_a
    move v4, v6

    .line 1756
    goto :goto_3

    :cond_b
    move v5, v6

    .line 1757
    goto :goto_4
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 1161
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a08b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a08b4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 1168
    return-void
.end method

.method private warnAppInstallationFromPackageInstaller()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 1176
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1177
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040016

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1178
    .local v1, "layout":Landroid/view/View;
    const v4, 0x7f100051

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1179
    .local v2, "mCheck":Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "one_time_operate"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1181
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a08b4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/SecuritySettings$6;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/SecuritySettings$6;-><init>(Lcom/android/settings/SecuritySettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 1209
    return-void

    .line 1179
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public SetReactivationFlag(I)I
    .locals 3
    .param p1, "setFlag"    # I

    .prologue
    const/4 v0, 0x0

    .line 2125
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2126
    sget-object v1, Lcom/android/settings/SecuritySettings;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->getSamsungAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->setFlag(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2128
    const-string v1, "SecuritySettings"

    const-string v2, "SetReactivationFlag() returns error!! "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1838
    const v0, 0x7f0a0e67

    return v0
.end method

.method public moveRemoteControls()V
    .locals 14

    .prologue
    const v3, 0x7f0a0f5e

    const/4 v1, 0x1

    const v5, 0x7f0a0f5a

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1843
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1845
    .local v8, "mSharedPreferences":Landroid/content/SharedPreferences;
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 1846
    .local v9, "mTime":Landroid/text/format/Time;
    invoke-virtual {v9}, Landroid/text/format/Time;->setToNow()V

    .line 1847
    invoke-virtual {v9, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1849
    const-string v0, "pref_due_date"

    invoke-interface {v8, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1850
    .local v7, "mDueDate":I
    invoke-virtual {v9, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iget-wide v12, v9, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v10

    .line 1851
    .local v10, "timeJulianDay":I
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_3

    .line 1853
    if-eqz v7, :cond_0

    if-ge v7, v10, :cond_1

    .line 1855
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fmm/Introduction;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1881
    :goto_0
    return-void

    .line 1858
    :cond_1
    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1859
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fmm/TabletRemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move v3, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 1862
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fmm/RemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move v3, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 1868
    :cond_3
    if-eqz v7, :cond_4

    if-ge v7, v10, :cond_5

    .line 1870
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/fmm/Introduction;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 1873
    :cond_5
    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1874
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/fmm/TabletRemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move v3, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 1877
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/fmm/RemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move v3, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const v3, 0x7f0a0f54

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, -0x1

    .line 1639
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1640
    const/16 v0, 0x7c

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_1

    .line 1642
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->startBiometricWeakImprove()V

    .line 1718
    :cond_0
    :goto_0
    return-void

    .line 1644
    :cond_1
    const/16 v0, 0x7d

    if-ne p1, v0, :cond_2

    if-ne p2, v2, :cond_2

    .line 1646
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v9

    .line 1647
    .local v9, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v9, v6}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 1652
    .end local v9    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_4

    if-ne p2, v2, :cond_4

    .line 1653
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mClickedTrustAgentPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    .line 1654
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mClickedTrustAgentPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 1655
    .local v8, "intent":Landroid/content/Intent;
    if-eqz v8, :cond_3

    .line 1656
    invoke-virtual {p0, v8}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1658
    :cond_3
    iput-object v4, p0, Lcom/android/settings/SecuritySettings;->mClickedTrustAgentPreference:Landroid/preference/Preference;

    .line 1663
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1664
    const/16 v0, 0x64

    if-eq p1, v0, :cond_5

    const/16 v0, 0x66

    if-ne p1, v0, :cond_6

    .line 1666
    :cond_5
    if-ne p2, v2, :cond_6

    .line 1667
    invoke-direct {p0, p3}, Lcom/android/settings/SecuritySettings;->SetFirstTimePhonepassword(Landroid/content/Intent;)V

    .line 1673
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 1676
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_8

    .line 1677
    if-ne p2, v2, :cond_0

    .line 1678
    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1679
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 1683
    :cond_7
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1684
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v0, "android.settings.SIM_CHANGE_ALERT"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1685
    invoke-virtual {p0, v8}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1686
    .end local v8    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 1687
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 1692
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :cond_8
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_9

    .line 1693
    if-ne p2, v2, :cond_0

    .line 1694
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->moveRemoteControls()V

    goto/16 :goto_0

    .line 1698
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_0

    .line 1699
    if-ne p2, v2, :cond_0

    .line 1700
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_my_mobile"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_b

    .line 1701
    invoke-virtual {p0, v6}, Lcom/android/settings/SecuritySettings;->SetReactivationFlag(I)I

    move-result v0

    if-ne v0, v5, :cond_a

    .line 1702
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_my_mobile"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1703
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.settings.reactivationlock_off"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1704
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v0, "SecuritySettings"

    const-string v1, " onActivityResult[reactivationlock_off]"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1715
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_a
    :goto_1
    const-string v0, "SecuritySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LMM[RequiredAuthFlag] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->checkReactivationLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1708
    :cond_b
    invoke-virtual {p0, v5}, Lcom/android/settings/SecuritySettings;->SetReactivationFlag(I)I

    move-result v0

    if-ne v0, v5, :cond_a

    .line 1709
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_my_mobile"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1710
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.settings.reactivationlock_on"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1711
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v0, "SecuritySettings"

    const-string v1, " onActivityResult[reactivationlock_on]"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1212
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    .line 1213
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 1214
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 1215
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 1216
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1219
    .end local v0    # "turnOn":Z
    :cond_0
    return-void

    .line 1213
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 355
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 357
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/SecuritySettings;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    .line 363
    :cond_0
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 365
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 370
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1223
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 1224
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1227
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1453
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 1454
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1455
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mLockMyMobileObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1456
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1457
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1459
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 1765
    const/4 v5, 0x1

    .line 1766
    .local v5, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 1767
    .local v3, "key":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v8}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    .line 1768
    .local v4, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v8, "lock_after_timeout"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1769
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1771
    .local v6, "timeout":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_lock_after_timeout"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1776
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 1833
    .end local v6    # "timeout":I
    :cond_0
    :goto_1
    return v5

    .line 1773
    .restart local v6    # "timeout":I
    :catch_0
    move-exception v0

    .line 1774
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v7, "SecuritySettings"

    const-string v8, "could not persist lockAfter timeout setting"

    invoke-static {v7, v8, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1806
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "timeout":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v8, "show_password"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1807
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "show_password"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v7, 0x1

    :cond_2
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 1809
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const-string v8, "toggle_install_applications"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1810
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1811
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1812
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1813
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_5

    .line 1814
    const-string v7, "sec.android.intent.extra.INSTALL_INTENT"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1815
    .local v2, "installIntent":Landroid/content/Intent;
    if-eqz v2, :cond_4

    .line 1816
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->warnAppInstallationFromPackageInstaller()V

    .line 1818
    const/4 v5, 0x0

    goto :goto_1

    .line 1820
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->warnAppInstallation()V

    .line 1822
    const/4 v5, 0x0

    goto :goto_1

    .line 1825
    .end local v2    # "installIntent":Landroid/content/Intent;
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->warnAppInstallation()V

    .line 1827
    const/4 v5, 0x0

    goto :goto_1

    .line 1830
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_6
    invoke-direct {p0, v7}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 15
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1463
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    .line 1466
    .local v13, "key":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings;->mOpenDetailMenu:Z

    if-eqz v1, :cond_1

    .line 1467
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sim_lock_settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1468
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1470
    .local v12, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimCount()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 1471
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.IccLockTabSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1476
    :goto_0
    const-string v1, "extra_from_search"

    iget-boolean v2, p0, Lcom/android/settings/SecuritySettings;->mOpenDetailMenu:Z

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1477
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1479
    .local v7, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getArrayLinkKey()Ljava/util/ArrayList;

    move-result-object v8

    .line 1480
    .local v8, "arrayLink":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "extra_parent_preference_key"

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    const-string v1, "extra_setting_value"

    iget v2, p0, Lcom/android/settings/SecuritySettings;->mSecondSettingValue:I

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1482
    const-string v1, "extra_second_fragment_bundle_key"

    invoke-virtual {v12, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1483
    invoke-virtual {p0, v12}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1484
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->initArrayLinkKey()V

    .line 1485
    const/4 v1, 0x1

    .line 1567
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v8    # "arrayLink":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "intent":Landroid/content/Intent;
    :goto_1
    return v1

    .line 1473
    .restart local v12    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.IccLockSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 1489
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings;->mOpenDetailMenu:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/android/settings/SecuritySettings;->mSettingValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1490
    sget v1, Lcom/android/settings/SecuritySettings;->mSettingValue:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v9, 0x1

    .local v9, "bValue":Z
    :goto_2
    move-object/from16 v10, p2

    .line 1491
    check-cast v10, Landroid/preference/CheckBoxPreference;

    .line 1492
    .local v10, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1493
    invoke-virtual {v10, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1499
    .end local v9    # "bValue":Z
    .end local v10    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    :cond_2
    const-string v1, "unlock_set_or_change"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1500
    const-string v3, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v4, 0x7f0a024b

    const/16 v5, 0x7b

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 1567
    :cond_3
    :goto_3
    const/4 v1, 0x1

    goto :goto_1

    .line 1490
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 1502
    :cond_5
    const-string v1, "biometric_weak_improve_matching"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1503
    new-instance v11, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v11, v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 1505
    .local v11, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v1, 0x7c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v11, v1, v2, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1511
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->startBiometricWeakImprove()V

    goto :goto_3

    .line 1513
    .end local v11    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_6
    const-string v1, "trust_agent"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1514
    new-instance v11, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v11, v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 1516
    .restart local v11    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mClickedTrustAgentPreference:Landroid/preference/Preference;

    .line 1517
    const/16 v1, 0x7e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v11, v1, v2, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1520
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1521
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mClickedTrustAgentPreference:Landroid/preference/Preference;

    goto :goto_3

    .line 1523
    .end local v11    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_7
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1525
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->StartPassword()V

    goto :goto_3

    .line 1528
    :cond_8
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mSecurityReports:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_b

    .line 1529
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "send_security_reports"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    const/4 v14, 0x1

    .line 1530
    .local v14, "state":Z
    :goto_4
    const-string v1, "SecuritySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state in db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    if-eqz v14, :cond_a

    .line 1533
    const/4 v14, 0x0

    .line 1534
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "send_security_reports"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1541
    :goto_5
    const-string v1, "SecuritySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state for intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    new-instance v12, Landroid/content/Intent;

    const-string v1, "com.android.setting.intent.send_security_report_checked"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1543
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v1, "IS_SEND_SECURITY_REPORT"

    invoke-virtual {v12, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1544
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1529
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "state":Z
    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    .line 1537
    .restart local v14    # "state":Z
    :cond_a
    const/4 v14, 0x1

    .line 1538
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "send_security_reports"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    .line 1547
    .end local v14    # "state":Z
    :cond_b
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1548
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1549
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->showReactivationLockDialog()V

    goto/16 :goto_3

    .line 1551
    :cond_c
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->showReactivationLockDisableDialog()V

    goto/16 :goto_3

    .line 1556
    :cond_d
    const-string v1, "smartCardConfig"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1557
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1558
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v1, "com.sec.smartcard.pinservice.action.SMARTCARDCREDENTIALSETTINGSPAGE"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1559
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1564
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_e
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 21

    .prologue
    .line 1294
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    move/from16 v16, v0

    .line 1295
    .local v16, "super_mOpenDetailMenu":Z
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 1297
    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 1301
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 1304
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v19, "isNonMarketAppAllowed"

    invoke-static/range {v17 .. v19}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 1305
    .local v10, "isNonMarketAppAllowed":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v19, "isPasswordVisibilityEnabled"

    invoke-static/range {v17 .. v19}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 1307
    .local v11, "isPasswordVisibilityEnabled":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_0

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_d

    const/16 v17, 0x1

    :goto_0
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_e

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1315
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/admin/DevicePolicyManager;->getAllowUnsignedInstallationPkg(Landroid/content/ComponentName;)Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/admin/DevicePolicyManager;->getAllowUnsignedApp(Landroid/content/ComponentName;)Z

    move-result v17

    if-nez v17, :cond_f

    :cond_1
    const/4 v5, 0x1

    .line 1316
    .local v5, "blockUnsignedAppInstall":Z
    :goto_2
    if-nez v5, :cond_2

    .line 1317
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1318
    .local v4, "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/admin/DevicePolicyManager;->getAllowAppListThirdParty(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1319
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1320
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_10

    const/4 v5, 0x1

    .line 1323
    .end local v4    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    :goto_3
    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x10407a8

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1328
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 1342
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v14

    .line 1343
    .local v14, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1347
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1350
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1354
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1357
    if-eqz v11, :cond_13

    .line 1358
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "show_password"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    const/4 v6, 0x1

    .line 1359
    .local v6, "checked":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1369
    .end local v6    # "checked":Z
    :cond_7
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->checkReactivationLock()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 1370
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "lock_my_mobile"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1375
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 1376
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "lock_my_mobile"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1384
    :cond_8
    :goto_8
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "false"

    aput-object v18, v15, v17

    .line 1385
    .local v15, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v19, "isActivationLockAllowed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2, v15}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 1386
    .local v9, "isActivationLockAllowed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    if-nez v9, :cond_9

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1391
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    move-object/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isCCMEmpty()Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_16

    :cond_a
    const/16 v17, 0x1

    :goto_9
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1400
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 1403
    .local v7, "context":Landroid/content/Context;
    const-string v17, "content://com.sec.knox.provider/CertificatePolicy"

    const-string v18, "isUserRemoveCertificatesAllowed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v7, v0, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 1404
    .local v13, "isUserRemoveCertificatesAllowed":I
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    .end local v15    # "selectionArgs":[Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "false"

    aput-object v18, v15, v17

    .line 1405
    .restart local v15    # "selectionArgs":[Ljava/lang/String;
    const-string v17, "content://com.sec.knox.provider2/vpnPolicy"

    const-string v18, "isUserChangeProfilesAllowed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v7, v0, v1, v15}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 1407
    .local v12, "isUserChangeProfilesAllowed":I
    if-eqz v13, :cond_b

    if-nez v12, :cond_c

    .line 1409
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1415
    .end local v7    # "context":Landroid/content/Context;
    .end local v12    # "isUserChangeProfilesAllowed":I
    .end local v13    # "isUserRemoveCertificatesAllowed":I
    :cond_c
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 1416
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v17, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1417
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1419
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "remote_control"

    invoke-static/range {v18 .. v18}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1422
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "lock_my_mobile"

    invoke-static/range {v18 .. v18}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobileObserver:Landroid/database/ContentObserver;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1424
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 1425
    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 1427
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->updateSIMLockEnable()V

    .line 1428
    return-void

    .line 1308
    .end local v5    # "blockUnsignedAppInstall":Z
    .end local v8    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "isActivationLockAllowed":I
    .end local v14    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v15    # "selectionArgs":[Ljava/lang/String;
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1310
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1315
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1320
    .restart local v4    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5    # "blockUnsignedAppInstall":Z
    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 1329
    .end local v4    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_11
    if-nez v5, :cond_3

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a08b7

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 1333
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_3

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_4

    .line 1358
    .restart local v14    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 1362
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 1372
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "lock_my_mobile"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    .line 1379
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 1397
    .restart local v9    # "isActivationLockAllowed":I
    .restart local v15    # "selectionArgs":[Ljava/lang/String;
    :cond_16
    const/16 v17, 0x0

    goto/16 :goto_9
.end method

.method protected queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "requestCode"    # I

    .prologue
    .line 1590
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1591
    .local v0, "pickIntent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1592
    const-string v1, ".title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1593
    const-string v1, ".subject"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1594
    const-string v1, ".password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1595
    invoke-virtual {p0, v0, p4}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1596
    return-void
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 1885
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1886
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1887
    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1888
    return-void
.end method
