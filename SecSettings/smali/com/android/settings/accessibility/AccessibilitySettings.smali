.class public Lcom/android/settings/accessibility/AccessibilitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/DialogCreatable;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static KEY_NOTIFICATION_REMINDER:Ljava/lang/String;

.field private static KEY_SHARING_ACC_SETTINGS_MENU:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field static isBraillebackInstalled:Z

.field private static final isReminderTwo:Z

.field static isTalkbackInstalled:Z

.field static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkSetupWizard:Z

.field private isDANotCheck:Z

.field private isKioskContainer:Z

.field private mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDirectAccess:Landroid/preference/SwitchPreferenceScreen;

.field private final mDirectAccessObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mManageAccessibility:Z

.field private mMoresettingsCategory:Landroid/preference/PreferenceCategory;

.field private mNoServicesMessagePreference:Landroid/preference/PreferenceScreen;

.field private mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

.field private final mNotificationReminderObserver:Landroid/database/ContentObserver;

.field private mRotation2ndObserver:Landroid/database/ContentObserver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mServicesCategory:Landroid/preference/PreferenceCategory;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

.field mSupportFolderType:Z

.field private mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleEasyInteractionPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 103
    sput-boolean v0, Lcom/android/settings/accessibility/AccessibilitySettings;->isTalkbackInstalled:Z

    .line 104
    sput-boolean v0, Lcom/android/settings/accessibility/AccessibilitySettings;->isBraillebackInstalled:Z

    .line 119
    const-string v0, "share_acc_setting_menu"

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_SHARING_ACC_SETTINGS_MENU:Ljava/lang/String;

    .line 121
    const-string v0, "notification_preference"

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_NOTIFICATION_REMINDER:Ljava/lang/String;

    .line 150
    invoke-static {}, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->isPersistantAlert()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/accessibility/AccessibilitySettings;->isReminderTwo:Z

    .line 152
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 995
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$8;

    invoke-direct {v0}, Lcom/android/settings/accessibility/AccessibilitySettings$8;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 133
    iput-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isKioskContainer:Z

    .line 146
    iput-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->checkSetupWizard:Z

    .line 147
    iput-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDANotCheck:Z

    .line 153
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 156
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$1;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 164
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 190
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$3;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 212
    iput-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mManageAccessibility:Z

    .line 215
    iput-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFolderType:Z

    .line 223
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$4;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotation2ndObserver:Landroid/database/ContentObserver;

    .line 234
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$5;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDirectAccessObserver:Landroid/database/ContentObserver;

    .line 249
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$6;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminderObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->loadInstalledServices()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDirectAccess:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 658
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v3}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 659
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    invoke-static {v3, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    .line 669
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 659
    goto :goto_0

    .line 660
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v3, :cond_5

    .line 661
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 662
    .local v0, "value":Z
    if-nez v0, :cond_3

    .line 663
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user_rotation"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 665
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation"

    if-eqz v0, :cond_4

    :goto_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 667
    .end local v0    # "value":Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_6

    :goto_3
    invoke-static {v3, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_3
.end method

.method private handleToggleAutoRotateScreen2ndPreferenceClick()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 672
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 673
    .local v0, "AutoRotateScreen2ndvalue":Z
    if-nez v0, :cond_0

    .line 674
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_rotation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 676
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation_second"

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 677
    return-void
.end method

.method private handleToggleEasyInteractionPreferenceClick()V
    .locals 3

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_interaction"

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 682
    return-void

    .line 680
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 10

    .prologue
    const v9, 0x7f0d0004

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 686
    const-string v3, "services_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    .line 687
    const-string v3, "moresettings_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    .line 690
    const-string v3, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    .line 692
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 693
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 697
    :cond_0
    const-string v3, "toggle_auto_rotate_screen_2nd_preference"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    .line 701
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 702
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 705
    sget-object v3, Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_NOTIFICATION_REMINDER:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    .line 706
    sget-boolean v3, Lcom/android/settings/accessibility/AccessibilitySettings;->isReminderTwo:Z

    if-nez v3, :cond_b

    .line 707
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 713
    :goto_0
    const-string v3, "call_answering_ending"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

    .line 714
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    if-eqz v3, :cond_1

    .line 715
    const-string v3, "AccessibilitySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallAnsweringEning getCurrentUser : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 720
    :cond_1
    const-string v3, "toggle_easy_interaction_preference"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/CheckBoxPreference;

    .line 721
    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 722
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 723
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 724
    :cond_2
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f0a1464

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 734
    .end local v0    # "context":Landroid/content/Context;
    :cond_3
    :goto_1
    const-string v3, "direct_access"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDirectAccess:Landroid/preference/SwitchPreferenceScreen;

    .line 735
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDirectAccess:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 736
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateDirectAccessStatus()V

    .line 739
    sget-object v3, Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_SHARING_ACC_SETTINGS_MENU:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    .line 740
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "com.samsung.android.app.shareaccessibilitysettings"

    invoke-static {v3, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    if-eqz v3, :cond_5

    .line 742
    :cond_4
    const-string v3, "AccessibilitySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Manage accessiblity getCurrentUser : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 746
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 747
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 751
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-ne v3, v4, :cond_7

    .line 752
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 753
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 757
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "firstRun"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->checkSetupWizard:Z

    .line 758
    iget-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->checkSetupWizard:Z

    if-ne v3, v4, :cond_8

    .line 759
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 761
    const-string v3, "moresettings_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 762
    .local v2, "preferenceRoot":Landroid/preference/Preference;
    invoke-virtual {v2, v8, v8}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 763
    .local v1, "layoutRoot":Landroid/view/View;
    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v3}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 764
    const/high16 v3, 0x1a40000

    invoke-virtual {v1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 779
    .end local v1    # "layoutRoot":Landroid/view/View;
    .end local v2    # "preferenceRoot":Landroid/preference/Preference;
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFolderType:Z

    .line 780
    iget-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v3, :cond_9

    .line 781
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0a17be

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 785
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isKioskContainer:Z

    .line 786
    iget-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isKioskContainer:Z

    if-eqz v3, :cond_a

    .line 787
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_a

    .line 788
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 792
    :cond_a
    return-void

    .line 709
    :cond_b
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 726
    .restart local v0    # "context":Landroid/content/Context;
    :cond_c
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f0a1463

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 770
    .end local v0    # "context":Landroid/content/Context;
    .restart local v1    # "layoutRoot":Landroid/view/View;
    .restart local v2    # "preferenceRoot":Landroid/preference/Preference;
    :cond_d
    const/high16 v3, 0x1e40000

    invoke-virtual {v1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2

    .end local v1    # "layoutRoot":Landroid/view/View;
    .end local v2    # "preferenceRoot":Landroid/preference/Preference;
    :cond_e
    move v3, v5

    .line 779
    goto :goto_3
.end method

.method private isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 4
    .param p1, "mCtx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1135
    if-nez p1, :cond_1

    .line 1145
    :cond_0
    :goto_0
    return v1

    .line 1139
    :cond_1
    const-string v2, "isKioskModeEnabled"

    invoke-static {p1, v2}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1141
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "true"

    const-string v3, "isKioskModeEnabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1142
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isPackageExists(Ljava/lang/String;)Z
    .locals 10
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 337
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "easy_mode_switch"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    move v3, v5

    .line 339
    .local v3, "state":Z
    :goto_0
    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->getInitialOSversion()D

    move-result-wide v6

    const-wide v8, 0x401199999999999aL    # 4.4

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    .line 352
    :cond_0
    :goto_1
    return v4

    .end local v3    # "state":Z
    :cond_1
    move v3, v4

    .line 337
    goto :goto_0

    .line 344
    .restart local v3    # "state":Z
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 345
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget v6, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v6, v6, 0xa
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    move v4, v5

    .line 346
    goto :goto_1

    .line 347
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private loadInstalledServices()V
    .locals 8

    .prologue
    .line 975
    sget-object v4, Lcom/android/settings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 976
    .local v4, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 978
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 981
    .local v3, "installedServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-nez v3, :cond_1

    .line 993
    :cond_0
    return-void

    .line 985
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 986
    .local v2, "installedServiceInfoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 987
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 988
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    .local v1, "installedService":Landroid/content/ComponentName;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 986
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateAllPreferences()V
    .locals 0

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateDefaultPreferences()V

    .line 807
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    .line 808
    return-void
.end method

.method private updateDefaultPreferences()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 813
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    .line 816
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation_second"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 818
    .local v0, "autoRotation2ndEnabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 821
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateDirectAccessStatus()V

    .line 822
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_interaction"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 824
    return-void

    .end local v0    # "autoRotation2ndEnabled":Z
    :cond_0
    move v0, v2

    .line 816
    goto :goto_0

    .restart local v0    # "autoRotation2ndEnabled":Z
    :cond_1
    move v1, v2

    .line 822
    goto :goto_1
.end method

.method private updateDirectAccessStatus()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 827
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "direct_accessibility"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "direct_talkback"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "direct_negative"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "direct_access_control"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDANotCheck:Z

    .line 832
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->isDANotCheck:Z

    if-eqz v0, :cond_0

    .line 833
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "direct_access"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDirectAccess:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "direct_access"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 838
    return-void

    :cond_1
    move v0, v2

    .line 827
    goto :goto_0

    :cond_2
    move v1, v2

    .line 836
    goto :goto_1
.end method

.method private updateLockScreenRotationCheckbox()V
    .locals 3

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 968
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 969
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 972
    :cond_0
    return-void

    .line 969
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateManageAccessibilityMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 601
    const-string v1, "AccessibilitySettings"

    const-string v2, "updateManageAccessibilityMenu() "

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iput-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mManageAccessibility:Z

    .line 603
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 604
    .local v0, "fromManageAccessibilityIntent":Landroid/content/Intent;
    const-string v1, "importNotification"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mManageAccessibility:Z

    .line 606
    iget-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mManageAccessibility:Z

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 611
    :goto_0
    return-void

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateServicesPreferences()V
    .locals 20

    .prologue
    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    .line 850
    .local v3, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v11

    .line 852
    .local v11, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v7

    .line 855
    .local v7, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "accessibility_enabled"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/4 v2, 0x1

    .line 858
    .local v2, "accessibilityEnabled":Z
    :goto_0
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "count":I
    :goto_1
    if-ge v9, v5, :cond_0

    .line 859
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 860
    .local v10, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v10, :cond_4

    .line 918
    .end local v10    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v17

    if-nez v17, :cond_2

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 920
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/PreferenceScreen;

    .line 921
    const v17, 0x7f0a0a9e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 922
    .local v16, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->setSelectable(Z)V

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 927
    .end local v16    # "title":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 929
    :cond_2
    return-void

    .line 855
    .end local v2    # "accessibilityEnabled":Z
    .end local v5    # "count":I
    .end local v9    # "i":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 863
    .restart local v2    # "accessibilityEnabled":Z
    .restart local v5    # "count":I
    .restart local v9    # "i":I
    .restart local v10    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v12

    .line 865
    .local v12, "preference":Landroid/preference/PreferenceScreen;
    invoke-virtual {v10}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    .line 867
    .restart local v16    # "title":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 868
    .local v14, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    .local v4, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 873
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 874
    if-eqz v2, :cond_7

    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/4 v13, 0x1

    .line 877
    .local v13, "serviceEnabled":Z
    :goto_2
    if-eqz v13, :cond_8

    .line 878
    const v17, 0x7f0a0a60

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 883
    :goto_3
    invoke-virtual {v12, v9}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 884
    const-class v17, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 885
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 887
    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 888
    .local v8, "extras":Landroid/os/Bundle;
    const-string v17, "preference_key"

    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string v17, "checked"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 890
    const-string v17, "title"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v6

    .line 893
    .local v6, "description":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 894
    const v17, 0x7f0a0aa4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 896
    :cond_5
    const-string v17, "summary"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-virtual {v10}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v15

    .line 899
    .local v15, "settingsClassName":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 900
    const-string v17, "settings_title"

    const v18, 0x7f0a0a34

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const-string v17, "settings_component_name"

    new-instance v18, Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    :cond_6
    const-string v17, "component_name"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 909
    invoke-virtual {v10}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.google.android.marvin.talkback"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 910
    const-string v17, "AccessibilitySettings"

    const-string v18, "updateServicesPreferences : talkback"

    invoke-static/range {v17 .. v18}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 874
    .end local v6    # "description":Ljava/lang/String;
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v13    # "serviceEnabled":Z
    .end local v15    # "settingsClassName":Ljava/lang/String;
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 880
    .restart local v13    # "serviceEnabled":Z
    :cond_8
    const v17, 0x7f0a0a61

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 911
    .restart local v6    # "description":Ljava/lang/String;
    .restart local v8    # "extras":Landroid/os/Bundle;
    .restart local v15    # "settingsClassName":Ljava/lang/String;
    :cond_9
    invoke-virtual {v10}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.googlecode.eyesfree.brailleback"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 912
    const-string v17, "AccessibilitySettings"

    const-string v18, "updateServicesPreferences : BRAILLEBACK"

    invoke-static/range {v17 .. v18}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 914
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4
.end method

.method private updateSettingsScreen()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 588
    const-string v3, "AccessibilitySettings"

    const-string v4, "onChange() "

    invoke-static {v3, v4}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 590
    .local v0, "settingValue":Z
    :goto_0
    const-string v3, "AccessibilitySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACCESS_CONTROL_ENABLED = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    if-eqz v0, :cond_1

    .line 593
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 597
    :goto_1
    return-void

    .end local v0    # "settingValue":Z
    :cond_0
    move v0, v2

    .line 589
    goto :goto_0

    .line 595
    .restart local v0    # "settingValue":Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 409
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$7;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 437
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 584
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 585
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 363
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessibilitySettings"

    const-string v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 367
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 368
    const v6, 0x7f070002

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 369
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializeAllPreferences()V

    .line 373
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.samsung.helphub"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 374
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget v6, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v6, v6, 0xa

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    iget v6, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v6, v6, 0xa

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 375
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->setHasOptionsMenu(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    iget-boolean v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mOpenDetailMenu:Z

    if-eqz v6, :cond_2

    .line 383
    sget v6, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 385
    .local v1, "extra_bundle":Landroid/os/Bundle;
    const-string v6, "extra_parent_preference_key"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, "targetKey":Ljava/lang/String;
    sget v6, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingValue:I

    if-ne v6, v4, :cond_3

    .line 387
    .local v4, "value":Z
    :goto_1
    const-string v5, "direct_access"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 388
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDirectAccess:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_2

    .line 389
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDirectAccess:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 390
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDirectAccess:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 391
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDirectAccess:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 405
    .end local v1    # "extra_bundle":Landroid/os/Bundle;
    .end local v3    # "targetKey":Ljava/lang/String;
    .end local v4    # "value":Z
    :cond_2
    :goto_2
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "extra_bundle":Landroid/os/Bundle;
    .restart local v3    # "targetKey":Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 386
    goto :goto_1

    .line 394
    .restart local v4    # "value":Z
    :cond_4
    sget-object v5, Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_NOTIFICATION_REMINDER:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 395
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_2

    .line 396
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 397
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 398
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 264
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 265
    const-string v0, "finish"

    const-string v1, "persist.sys.setupwizard"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    const-string v0, "com.samsung.helphub"

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x1

    const v1, 0x7f0a0e58

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020113

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 277
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 329
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    :pswitch_0
    return v3

    .line 281
    :pswitch_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 282
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v4, v4, 0xa

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 294
    :pswitch_2
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.samsung.helpplugin"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 296
    const-string v4, "default"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 299
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "helphub:section"

    const-string v5, "accessibility"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 313
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v4, "helphub:appid"

    const-string v5, "accessibility"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 282
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 503
    :cond_0
    sget-boolean v0, Lcom/android/settings/accessibility/AccessibilitySettings;->isReminderTwo:Z

    if-eqz v0, :cond_1

    .line 504
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 507
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_2

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotation2ndObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 510
    :cond_2
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 511
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 521
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDirectAccess:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v2, p2

    .line 522
    check-cast v2, Ljava/lang/Boolean;

    .line 524
    .local v2, "value":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "direct_accessibility"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "direct_talkback"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "direct_negative"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "direct_access_control"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    move v0, v4

    .line 530
    .local v0, "isDANotCheck":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 531
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a0aeb

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 532
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "direct_access"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 578
    .end local v0    # "isDANotCheck":Z
    .end local v2    # "value":Ljava/lang/Boolean;
    :cond_0
    :goto_1
    return v3

    .restart local v2    # "value":Ljava/lang/Boolean;
    :cond_1
    move v0, v3

    .line 525
    goto :goto_0

    .line 535
    .restart local v0    # "isDANotCheck":Z
    :cond_2
    const-string v3, "Accessibility"

    const-string v5, "Direct access ON"

    invoke-static {v3, v5}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "direct_access"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v0    # "isDANotCheck":Z
    :goto_2
    move v3, v4

    .line 542
    goto :goto_1

    .line 539
    :cond_3
    const-string v5, "Accessibility"

    const-string v6, "Direct access OFF"

    invoke-static {v5, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "direct_access"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 543
    .end local v2    # "value":Ljava/lang/Boolean;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, p2

    .line 544
    check-cast v2, Ljava/lang/Boolean;

    .line 546
    .restart local v2    # "value":Ljava/lang/Boolean;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    .local v1, "notificationReminder":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.settings.accessibility.notificationreminder"

    const-string v7, "com.android.settings.accessibility.notificationreminder.NotificationReminderPreferenceFragment"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 549
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 550
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_reminder_selectable"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_7

    .line 555
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "time_key_selectable"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_6

    .line 556
    const-string v5, "notification reminder"

    const-string v6, "Time interval value has not been set yet"

    invoke-static {v5, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "time_key_selectable"

    const/16 v7, 0x1f4

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 562
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 563
    const-string v5, "Notification Reminder"

    const-string v6, "NotificationReminder Service Start!!"

    invoke-static {v5, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    const v6, 0x7f0a0a60

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 574
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_reminder_selectable"

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    move v3, v4

    :cond_5
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v3, v4

    .line 575
    goto/16 :goto_1

    .line 559
    :cond_6
    const-string v5, "notification reminder"

    const-string v6, "Time interval value has already been set and written to DB"

    invoke-static {v5, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 566
    :cond_7
    const-string v5, "AccessibilitySettings"

    const-string v6, "Notification Reminder service could not start"

    invoke-static {v5, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 569
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 570
    const-string v5, "NotificationReminder"

    const-string v6, "NotificationReminder Service Stop!!"

    invoke-static {v5, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    const v6, 0x7f0a0a61

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_4
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 515
    const-string v0, "AccessibilitySettings"

    const-string v1, "onPreferenceClick"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 616
    iget-boolean v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mOpenDetailMenu:Z

    if-eqz v6, :cond_0

    .line 617
    sget v6, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 618
    sget v6, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingValue:I

    if-ne v6, v4, :cond_1

    move v3, v4

    .local v3, "value":Z
    :goto_0
    move-object v0, p2

    .line 619
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 620
    .local v0, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 621
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 627
    .end local v0    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v3    # "value":Z
    :cond_0
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 628
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleLockScreenRotationPreferenceClick()V

    .line 654
    :goto_1
    return v4

    :cond_1
    move v3, v5

    .line 618
    goto :goto_0

    .line 630
    :cond_2
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 631
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleAutoRotateScreen2ndPreferenceClick()V

    goto :goto_1

    .line 633
    :cond_3
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 636
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 637
    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v6, "com.android.phone"

    const-string v7, "com.android.phone.callsettings.AnsweringCall"

    invoke-direct {v4, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 639
    const-string v4, "FROM_ACCESSIBILITY"

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 640
    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "intent":Landroid/content/Intent;
    :goto_2
    move v4, v5

    .line 644
    goto :goto_1

    .line 641
    :catch_0
    move-exception v1

    .line 642
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "AccessibilitySettings"

    const-string v6, "Unable to start callsettings.AnsweringCall"

    invoke-static {v4, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 645
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleEasyInteractionPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 646
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleEasyInteractionPreferenceClick()V

    goto :goto_1

    .line 650
    :cond_5
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 651
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSharingAccSettingsMenu:Landroid/preference/PreferenceScreen;

    const-class v5, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 654
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_1
.end method

.method public onResume()V
    .locals 10

    .prologue
    const v9, 0x7f0a0a61

    const v8, 0x7f0a0a60

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 442
    const/4 v2, 0x0

    .line 443
    .local v2, "super_mOpenDetailMenu":Z
    iget-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 444
    iput-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 446
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 447
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->loadInstalledServices()V

    .line 448
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v5, v6}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 455
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateSettingsScreen()V

    .line 456
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "direct_access"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDirectAccessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 458
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "direct_access"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    move v0, v4

    .line 461
    .local v0, "directAccessEnabled":Z
    :goto_0
    if-eqz v0, :cond_6

    .line 462
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDirectAccess:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 467
    :goto_1
    sget-boolean v5, Lcom/android/settings/accessibility/AccessibilitySettings;->isReminderTwo:Z

    if-eqz v5, :cond_2

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_reminder_selectable"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_reminder_selectable"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    move v1, v4

    .line 472
    .local v1, "notificationReminderEnabled":Z
    :goto_2
    if-eqz v1, :cond_8

    .line 473
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 477
    :goto_3
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_reminder_selectable"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 481
    .end local v1    # "notificationReminderEnabled":Z
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v3, :cond_3

    .line 482
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "accelerometer_rotation_second"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotation2ndObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 487
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.android.app.shareaccessibilitysettings"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 488
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateManageAccessibilityMenu()V

    .line 492
    :cond_4
    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 493
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 495
    return-void

    .end local v0    # "directAccessEnabled":Z
    :cond_5
    move v0, v3

    .line 458
    goto :goto_0

    .line 464
    .restart local v0    # "directAccessEnabled":Z
    :cond_6
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDirectAccess:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v9}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_1

    :cond_7
    move v1, v3

    .line 470
    goto :goto_2

    .line 475
    .restart local v1    # "notificationReminderEnabled":Z
    :cond_8
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v9}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_3
.end method
