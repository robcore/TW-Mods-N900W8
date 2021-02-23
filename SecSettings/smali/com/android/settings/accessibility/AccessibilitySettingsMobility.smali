.class public Lcom/android/settings/accessibility/AccessibilitySettingsMobility;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettingsMobility.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/DialogCreatable;


# instance fields
.field private MobilityCategory:Landroid/preference/PreferenceCategory;

.field private RecognitionCategory:Landroid/preference/PreferenceCategory;

.field private isKioskContainer:Z

.field private final mAccessControlObserver:Landroid/database/ContentObserver;

.field private final mAirWakeUpObserver:Landroid/database/ContentObserver;

.field private mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

.field private final mAssistantMenuObserver:Landroid/database/ContentObserver;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDialogTitle:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

.field private mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private mSingleTapMode:I

.field private mSingleTapModeDialog:Landroid/app/AlertDialog;

.field private mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

.field private final mSmartScrollObserver:Landroid/database/ContentObserver;

.field private mTapAndHoldDelayObserver:Landroid/database/ContentObserver;

.field private mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

.field private mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

.field private sideSyncState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapModeDialog:Landroid/app/AlertDialog;

    .line 97
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mCurConfig:Landroid/content/res/Configuration;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->isKioskContainer:Z

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$1;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$1;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    .line 127
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$2;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAccessControlObserver:Landroid/database/ContentObserver;

    .line 142
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$3;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAirWakeUpObserver:Landroid/database/ContentObserver;

    .line 151
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$4;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScrollObserver:Landroid/database/ContentObserver;

    .line 161
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$5;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mTapAndHoldDelayObserver:Landroid/database/ContentObserver;

    .line 169
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$6;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenuObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->updateExclusiveTalkback()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapMode:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapMode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->isSinglePopupNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->showSingleTapModeDialog()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->setTapAndHoldDelaySummary()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private broadcastAirWakeupChanged(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 586
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_WAKE_UP_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 588
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 589
    return-void
.end method

.method private broadcastStatusChanged(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "intent_type"    # Ljava/lang/String;
    .param p2, "isEnable"    # Z

    .prologue
    .line 738
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 739
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 740
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 741
    return-void
.end method

.method private handleDisplayAccessControlPreferenceScreenClick(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .param p1, "pref"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 592
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 593
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "preference_key"

    const-string v4, "access_control_key"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v3, "title"

    const v4, 0x7f0a0a3e

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v3, "summary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0a0a40

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0a0a41

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_use"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 600
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-super {p0, p1, v1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 601
    return-void

    :cond_0
    move v1, v2

    .line 598
    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 605
    const-string v5, "mobility_preference_key"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->MobilityCategory:Landroid/preference/PreferenceCategory;

    .line 606
    const-string v5, "Recognition_preference_key"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->RecognitionCategory:Landroid/preference/PreferenceCategory;

    .line 609
    const-string v5, "assistant_menu_preference"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    .line 610
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v8, "com.samsung.android.app.assistantmenu"

    invoke-static {v5, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 611
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->MobilityCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 617
    :goto_0
    const-string v5, "select_long_press_timeout_preference"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    .line 618
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 620
    const-string v5, "old_select_long_press_timeout_preference"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    .line 621
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 623
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 624
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0c0079

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 625
    .local v4, "timeoutValues":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0c0078

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 626
    .local v2, "timeoutTitles":[Ljava/lang/String;
    aget-object v5, v4, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mLongPressTimeoutDefault:I

    .line 627
    array-length v3, v4

    .line 628
    .local v3, "timeoutValueCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 629
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    aget-object v8, v4, v0

    aget-object v9, v2, v0

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 613
    .end local v0    # "i":I
    .end local v2    # "timeoutTitles":[Ljava/lang/String;
    .end local v3    # "timeoutValueCount":I
    .end local v4    # "timeoutValues":[Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 633
    :cond_1
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->MobilityCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 636
    const-string v5, "air_wake_up"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    .line 637
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "air_motion_wake_up"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 638
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 640
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v8, "com.samsung.android.app.airwakeupview"

    invoke-static {v5, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 641
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->MobilityCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 645
    :cond_2
    const-string v5, "smartscreen_scroll"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    .line 646
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 654
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->MobilityCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 657
    const-string v5, "access_control_key"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    .line 658
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 660
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0d0004

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-ne v5, v6, :cond_3

    .line 661
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "access_control_use"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_6

    :goto_3
    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 671
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.samsung.android.app.accesscontrol"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 672
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 673
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->RecognitionCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 674
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->RecognitionCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 679
    .end local v1    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->isKioskContainer:Z

    .line 680
    iget-boolean v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->isKioskContainer:Z

    if-eqz v5, :cond_4

    .line 681
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 682
    .restart local v1    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->RecognitionCategory:Landroid/preference/PreferenceCategory;

    if-eqz v5, :cond_4

    .line 683
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->RecognitionCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 684
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->RecognitionCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 688
    .end local v1    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_4
    return-void

    :cond_5
    move v5, v7

    .line 637
    goto/16 :goto_2

    :cond_6
    move v6, v7

    .line 661
    goto :goto_3
.end method

.method private isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 4
    .param p1, "mCtx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 922
    if-nez p1, :cond_1

    .line 932
    :cond_0
    :goto_0
    return v1

    .line 926
    :cond_1
    const-string v2, "isKioskModeEnabled"

    invoke-static {p1, v2}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 928
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "true"

    const-string v3, "isKioskModeEnabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 929
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isSinglePopupNeeded()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_interaction"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapMode:I

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 346
    .local v0, "mAutoAssistPreferences":Landroid/content/SharedPreferences;
    const-string v3, "pref_assistant_noti"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 348
    .local v1, "never_show_assistant_menu_noti":Z
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assistant_menu"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    iget v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapMode:I

    if-nez v3, :cond_0

    .line 350
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 351
    const/4 v2, 0x1

    .line 353
    :cond_0
    return v2
.end method

.method private setTapAndHoldDelaySummary()V
    .locals 4

    .prologue
    const/16 v3, 0x1f4

    .line 715
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "long_press_timeout"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 718
    .local v0, "currentLongPressTimeout":I
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 719
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 720
    if-ne v0, v3, :cond_1

    .line 721
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    .line 724
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 726
    :cond_2
    const/16 v1, 0x5dc

    if-ne v0, v1, :cond_3

    .line 727
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 730
    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 732
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    const/16 v2, 0x2bc

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showSingleTapModeDialog()V
    .locals 9

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 472
    .local v4, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 473
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040186

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 474
    .local v1, "customView":Landroid/view/View;
    const v6, 0x7f10038a

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 475
    .local v5, "mcheck_assistantmenu":Landroid/widget/CheckBox;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 476
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    .local v0, "assistantMenu":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.samsung.android.app.assistantmenu"

    const-string v8, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 480
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mDialogTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0a1e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$9;

    invoke-direct {v8, p0, v2, v5, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$9;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;Landroid/content/Intent;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a01cf

    new-instance v8, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$8;

    invoke-direct {v8, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$8;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapModeDialog:Landroid/app/AlertDialog;

    .line 506
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapModeDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$10;

    invoke-direct {v7, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$10;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 517
    return-void
.end method

.method private updateAllPreferences()V
    .locals 0

    .prologue
    .line 691
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->updateMobilityPreferences()V

    .line 692
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->updateRecognitionPreferences()V

    .line 693
    return-void
.end method

.method private updateExclusiveTalkback()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 526
    const-string v1, "AccessibilitySettings_Mobility"

    const-string v2, "TalkbackOnChagne "

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 529
    .local v0, "settingValue":Z
    const-string v1, "AccessibilitySettings_Mobility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings.Secure.ACCESSIBILITY_ENABLED,  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    if-eqz v0, :cond_0

    .line 531
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 532
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_use"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 533
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 535
    :cond_0
    return-void
.end method

.method private updateMobilityPreferences()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 697
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->setTapAndHoldDelaySummary()V

    .line 699
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "assistant_menu"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 702
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "air_motion_wake_up"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 706
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_scroll"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 707
    return-void

    :cond_0
    move v0, v2

    .line 699
    goto :goto_0

    :cond_1
    move v0, v2

    .line 702
    goto :goto_1

    :cond_2
    move v1, v2

    .line 706
    goto :goto_2
.end method

.method private updateRecognitionPreferences()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 710
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->setTapAndHoldDelaySummary()V

    .line 711
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_use"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 712
    return-void

    :cond_0
    move v0, v1

    .line 711
    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 234
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$7;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$7;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 262
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 522
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 523
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 187
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessibilitySettings_Mobility"

    const-string v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    .line 191
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 192
    const v3, 0x7f070004

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->addPreferencesFromResource(I)V

    .line 194
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->initializeAllPreferences()V

    .line 197
    iget-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOpenDetailMenu:Z

    if-eqz v3, :cond_0

    .line 198
    sget v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingValue:I

    if-eq v3, v4, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 200
    .local v0, "extra_bundle":Landroid/os/Bundle;
    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "targetKey":Ljava/lang/String;
    sget v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingValue:I

    if-ne v3, v2, :cond_1

    .line 202
    .local v2, "value":Z
    :goto_0
    const-string v3, "assistant_menu_preference"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    .line 204
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 206
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 230
    .end local v0    # "extra_bundle":Landroid/os/Bundle;
    .end local v1    # "targetKey":Ljava/lang/String;
    .end local v2    # "value":Z
    :cond_0
    :goto_1
    return-void

    .line 201
    .restart local v0    # "extra_bundle":Landroid/os/Bundle;
    .restart local v1    # "targetKey":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 209
    .restart local v2    # "value":Z
    :cond_2
    const-string v3, "air_wake_up"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 210
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 212
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 214
    :cond_3
    const-string v3, "access_control_key"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 215
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 217
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 219
    :cond_4
    const-string v3, "smartscreen_scroll"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 220
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 222
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 225
    :cond_5
    sput v4, Lcom/android/settings/SettingsPreferenceFragment;->mSettingValue:I

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .param p1, "dialogId"    # I

    .prologue
    const v8, 0x7f0a0a45

    const/4 v7, 0x1

    const v6, 0x104000a

    const/high16 v5, 0x1040000

    const/4 v4, 0x0

    .line 746
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 747
    const/4 v2, 0x0

    .line 916
    :goto_0
    return-object v2

    .line 750
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 916
    const/4 v2, 0x0

    goto :goto_0

    .line 752
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0a43

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0a44

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$12;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$12;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$11;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$11;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 782
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 783
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0a46

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$14;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$14;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$13;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$13;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 813
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 814
    const-string v0, ""

    .line 815
    .local v0, "am_title":Ljava/lang/String;
    const-string v1, ""

    .line 816
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_use"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 818
    const v2, 0x7f0a0a38

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 819
    const v2, 0x7f0a0a3b

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 827
    :cond_1
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$17;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$17;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$16;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$16;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$15;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$15;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 820
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_use"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 821
    const v2, 0x7f0a0a3a

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 822
    const v2, 0x7f0a0a3d

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 823
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 824
    const v2, 0x7f0a0a39

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 825
    const v2, 0x7f0a0a3c

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 882
    .end local v0    # "am_title":Ljava/lang/String;
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0a47

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$20;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$20;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$19;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$19;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$18;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$18;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 750
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mTapAndHoldDelayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAirWakeUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScrollObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenuObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 334
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 335
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const v5, 0x7f0a0a23

    const/16 v1, 0x2bc

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 359
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v8, p2

    .line 360
    check-cast v8, Ljava/lang/String;

    .line 361
    .local v8, "stringValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 362
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 467
    .end local v8    # "stringValue":Ljava/lang/String;
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v10

    .line 364
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v9, p2

    .line 365
    check-cast v9, Ljava/lang/Boolean;

    .line 367
    .local v9, "value":Ljava/lang/Boolean;
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .local v7, "assistantMenu":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.app.assistantmenu"

    const-string v2, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 370
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sidesync_source_connect"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->sideSyncState:I

    .line 373
    iget v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->sideSyncState:I

    if-ne v0, v10, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a1d8f

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v10, v3

    .line 376
    goto :goto_0

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 381
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->isSinglePopupNeeded()Z

    move-result v0

    if-ne v0, v10, :cond_2

    .line 382
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 383
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->showSingleTapModeDialog()V

    goto :goto_0

    .line 385
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 386
    const-string v0, "AccessibilitySettings_Mobility"

    const-string v1, "AssistantMenu Service Start!!"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 390
    :cond_3
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->showDialog(I)V

    goto/16 :goto_0

    .line 393
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 394
    const-string v0, "AccessibilitySettings_Mobility"

    const-string v1, "AssistantMenu Service Stop!!"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 398
    .end local v7    # "assistantMenu":Landroid/content/Intent;
    .end local v9    # "value":Ljava/lang/Boolean;
    :cond_5
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v9, p2

    .line 399
    check-cast v9, Ljava/lang/Boolean;

    .line 401
    .restart local v9    # "value":Ljava/lang/Boolean;
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 402
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_wake_up"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 404
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    const v1, 0x7f0a0a60

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 405
    invoke-direct {p0, v10}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->broadcastAirWakeupChanged(Z)V

    goto/16 :goto_0

    .line 407
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_wake_up"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 408
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    const v1, 0x7f0a0a61

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 409
    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->broadcastAirWakeupChanged(Z)V

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffAirMotionEngine(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 413
    .end local v9    # "value":Ljava/lang/Boolean;
    :cond_7
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v9, p2

    .line 414
    check-cast v9, Ljava/lang/Boolean;

    .line 415
    .restart local v9    # "value":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_scroll"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    move v3, v10

    :cond_8
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 416
    const-string v0, "com.sec.SMART_SCROLL_CHANGED"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->broadcastStatusChanged(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 418
    .end local v9    # "value":Ljava/lang/Boolean;
    :cond_9
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v9, p2

    .line 419
    check-cast v9, Ljava/lang/Boolean;

    .line 421
    .restart local v9    # "value":Ljava/lang/Boolean;
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_a

    .line 423
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->showDialog(I)V

    goto/16 :goto_0

    .line 424
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 425
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->showDialog(I)V

    goto/16 :goto_0

    .line 427
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 428
    const-string v0, "AccessibilitySettings_Mobility"

    const-string v1, "Access Control Use : 1"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 431
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_d

    .line 432
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->showDialog(I)V

    goto/16 :goto_0

    .line 434
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 435
    const-string v0, "AccessibilitySettings_Mobility"

    const-string v1, "Access Control Use : 0"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 440
    .end local v9    # "value":Ljava/lang/Boolean;
    :cond_e
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, p2

    .line 442
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 444
    .local v9, "value":I
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 445
    invoke-static {}, Lcom/android/settings/Utils;->isGridSettingEnabed()Z

    move-result v0

    if-nez v0, :cond_10

    .line 446
    if-ne v9, v1, :cond_f

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 452
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 456
    :cond_10
    if-ne v9, v1, :cond_11

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 462
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .end local v9    # "value":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_12
    move v10, v3

    .line 467
    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 339
    const-string v0, "AccessibilitySettings_Mobility"

    const-string v1, "onPreferenceClick"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 540
    iget-boolean v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOpenDetailMenu:Z

    if-eqz v8, :cond_0

    sget v8, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingValue:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 541
    sget v8, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingValue:I

    if-ne v8, v6, :cond_1

    move v5, v6

    .local v5, "value":Z
    :goto_0
    move-object v2, p2

    .line 542
    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 544
    .local v2, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 545
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 550
    .end local v2    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v5    # "value":Z
    :cond_0
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 551
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->handleDisplayAccessControlPreferenceScreenClick(Landroid/preference/PreferenceScreen;)V

    .line 582
    :goto_1
    return v6

    :cond_1
    move v5, v7

    .line 541
    goto :goto_0

    .line 553
    :cond_2
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 554
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    const-string v9, "com.android.settings.AssistantMenuPreferenceFragment"

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 557
    :cond_3
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 558
    iget-boolean v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOpenDetailMenu:Z

    if-eqz v8, :cond_5

    .line 559
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 560
    .local v0, "args":Landroid/os/Bundle;
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArrayLinkKey()Ljava/util/ArrayList;

    move-result-object v1

    .line 561
    .local v1, "arrayLinkKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 562
    .local v4, "openDetailMenuKey":Ljava/lang/String;
    const-string v8, "extra_from_search"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 563
    const-string v6, "extra_parent_preference_key"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 567
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 568
    const-string v6, "extra_fragment_bundle_key"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 569
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->initArrayLinkKey()V

    .line 570
    iput-boolean v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOpenDetailMenu:Z

    .line 582
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "arrayLinkKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "openDetailMenuKey":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto :goto_1

    .line 572
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 573
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v6, "extra_from_search"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 574
    const-string v6, "extra_parent_preference_key"

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 577
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 578
    const-string v6, "extra_fragment_bundle_key"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public onResume()V
    .locals 11

    .prologue
    const v10, 0x7f0a0a61

    const v9, 0x7f0a0a60

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 267
    const/4 v3, 0x0

    .line 268
    .local v3, "super_mOpenDetailMenu":Z
    iget-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 269
    iput-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 271
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 273
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->updateAllPreferences()V

    .line 275
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 276
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->updateExclusiveTalkback()V

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "long_press_timeout"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mTapAndHoldDelayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "access_control_use"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "assistant_menu"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenuObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "access_control_use"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v5

    .line 285
    .local v0, "accessControlEnabled":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 286
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v9}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 291
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "air_motion_wake_up"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAirWakeUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "air_motion_wake_up"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v1, v5

    .line 296
    .local v1, "airWakeUpEnabled":Z
    :goto_2
    if-eqz v1, :cond_4

    .line 297
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v9}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 302
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "smart_scroll"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScrollObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "smart_scroll"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v2, v5

    .line 307
    .local v2, "smartScrollEnabled":Z
    :goto_4
    if-eqz v2, :cond_6

    .line 308
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v9}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 313
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0d0004

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-ne v4, v5, :cond_0

    .line 314
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "assistant_menu"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_6
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 316
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "access_control_use"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    :goto_7
    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 321
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 322
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 324
    return-void

    .end local v0    # "accessControlEnabled":Z
    .end local v1    # "airWakeUpEnabled":Z
    .end local v2    # "smartScrollEnabled":Z
    :cond_1
    move v0, v6

    .line 282
    goto/16 :goto_0

    .line 288
    .restart local v0    # "accessControlEnabled":Z
    :cond_2
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v10}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_1

    :cond_3
    move v1, v6

    .line 293
    goto :goto_2

    .line 299
    .restart local v1    # "airWakeUpEnabled":Z
    :cond_4
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v10}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_3

    :cond_5
    move v2, v6

    .line 304
    goto :goto_4

    .line 310
    .restart local v2    # "smartScrollEnabled":Z
    :cond_6
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v10}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_5

    :cond_7
    move v4, v6

    .line 314
    goto :goto_6

    :cond_8
    move v5, v6

    .line 316
    goto :goto_7
.end method
