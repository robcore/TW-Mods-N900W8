.class public Lcom/android/settings/notification/ZenModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;,
        Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;,
        Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;
    }
.end annotation


# static fields
.field private static final DAY_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutomationCategory:Landroid/preference/PreferenceCategory;

.field private mCalls:Landroid/preference/CheckBoxPreference;

.field private mConditionProviders:Landroid/preference/Preference;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mContext:Landroid/content/Context;

.field private mDays:Landroid/preference/Preference;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisableListeners:Z

.field private mEnd:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

.field private mEntry:Landroid/preference/Preference;

.field private mEvents:Landroid/preference/CheckBoxPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mMessages:Landroid/preference/CheckBoxPreference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private final mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsObserver:Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;

.field private mSoundMode:Landroid/preference/ListPreference;

.field private mStarred:Lcom/android/settings/notification/DropDownPreference;

.field private mStart:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

.field private zenModeListPreference:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 104
    new-instance v0, Lcom/android/settings/notification/ZenModeSettings$1;

    const/4 v1, 0x1

    const-string v2, "zen_mode"

    const-string v3, "zen_mode"

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/ZenModeSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

    .line 120
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/notification/ZenModeSettings;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    .line 657
    new-instance v0, Lcom/android/settings/notification/ZenModeSettings$17;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeSettings$17;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void

    .line 104
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mHandler:Landroid/os/Handler;

    .line 145
    new-instance v0, Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mSettingsObserver:Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;

    .line 164
    new-instance v0, Lcom/android/settings/notification/ZenModeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenModeSettings$2;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 768
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettings;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateControls()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenModeSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettings;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/notification/ZenModeSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettings;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->zenModeListPreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/notification/ZenModeSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/android/settings/notification/ZenModeSettings;->allKeyTitles(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/notification/ZenModeSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettings;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettings;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettings;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettings;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/settings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/notification/ZenModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettings;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateZenModeConfig()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettings;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/ZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettings;
    .param p1, "x1"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/ZenModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettings;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateDays()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/notification/ZenModeSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettings;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/ZenModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettings;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->refreshAutomationSection()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/notification/ZenModeSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettings;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mSoundMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/notification/ZenModeSettings;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettings;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeSettings;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private static allKeyTitles(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 124
    .local v0, "rt":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const v1, 0x7f0a0f0a

    const-string v2, "important"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const v1, 0x7f0a0f12

    const-string v2, "phone_calls"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    const v1, 0x7f0a0ee5

    const-string v2, "zen_mode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    :goto_0
    const v1, 0x7f0a0f13

    const-string v2, "messages"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    const v1, 0x7f0a0f17

    const-string v2, "starred"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    const v1, 0x7f0a0f18

    const-string v2, "events"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    const v1, 0x7f0a0f19

    const-string v2, "alarm_info"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    const v1, 0x7f0a0f0b

    const-string v2, "downtime"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    const v1, 0x7f0a0f0c

    const-string v2, "days"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    const v1, 0x7f0a0f1e

    const-string v2, "start_time"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    const v1, 0x7f0a0f1f

    const-string v2, "end_time"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    const v1, 0x7f0a0f0e

    const-string v2, "automation"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    const v1, 0x7f0a0eff

    const-string v2, "manage_condition_providers"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    return-object v0

    .line 129
    :cond_0
    const v1, 0x7f0a0ee6

    const-string v2, "zen_mode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private getEntryConditionSummary()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 522
    const-string v7, "notification"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v4

    .line 525
    .local v4, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v4}, Landroid/app/INotificationManager;->getAutomaticZenModeConditions()[Landroid/service/notification/Condition;

    move-result-object v0

    .line 526
    .local v0, "automatic":[Landroid/service/notification/Condition;
    if-eqz v0, :cond_0

    array-length v7, v0

    if-nez v7, :cond_1

    .line 538
    .end local v0    # "automatic":[Landroid/service/notification/Condition;
    :cond_0
    :goto_0
    return-object v6

    .line 529
    .restart local v0    # "automatic":[Landroid/service/notification/Condition;
    :cond_1
    const v7, 0x7f0a0f10

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, "divider":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_3

    .line 532
    if-lez v3, :cond_2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :cond_2
    aget-object v7, v0, v3

    iget-object v7, v7, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 535
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 536
    .end local v0    # "automatic":[Landroid/service/notification/Condition;
    .end local v1    # "divider":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 537
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "ZenModeSettings"

    const-string v8, "Error calling getAutomaticZenModeConditions"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    .prologue
    .line 574
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 577
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 580
    :goto_0
    return-object v2

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ZenModeSettings"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method private refreshAutomationSection()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 497
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->mConditionProviders:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 498
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v3}, Lcom/android/settings/notification/ConditionProviderSettings;->getProviderCount(Landroid/content/pm/PackageManager;)I

    move-result v2

    .line 499
    .local v2, "total":I
    if-nez v2, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings;->mAutomationCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 519
    .end local v2    # "total":I
    :cond_0
    :goto_0
    return-void

    .line 502
    .restart local v2    # "total":I
    :cond_1
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/notification/ConditionProviderSettings;->getEnabledProviderCount(Landroid/content/Context;)I

    move-result v1

    .line 503
    .local v1, "n":I
    if-nez v1, :cond_3

    .line 504
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->mConditionProviders:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0f00

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 511
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->getEntryConditionSummary()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "entrySummary":Ljava/lang/String;
    if-eqz v1, :cond_2

    if-nez v0, :cond_4

    .line 513
    :cond_2
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->mEntry:Landroid/preference/Preference;

    const v4, 0x7f0a0f11

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 507
    .end local v0    # "entrySummary":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->mConditionProviders:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110009

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 515
    .restart local v0    # "entrySummary":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->mEntry:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private refreshSoundMode()V
    .locals 3

    .prologue
    .line 849
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 850
    .local v0, "ringerMode":I
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mSoundMode:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mSoundMode:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 852
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mSoundMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->mSoundMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 853
    invoke-direct {p0, v0}, Lcom/android/settings/notification/ZenModeSettings;->setRingerModeOnSoundDialogPreference(I)V

    .line 855
    :cond_0
    return-void
.end method

.method private refreshZenModeList()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 858
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->zenModeListPreference:Landroid/preference/ListPreference;

    if-eqz v3, :cond_0

    .line 859
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zen_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 860
    .local v0, "val":I
    if-ne v0, v1, :cond_1

    .line 861
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->zenModeListPreference:Landroid/preference/ListPreference;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 864
    :goto_0
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->zenModeListPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings;->zenModeListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->zenModeListPreference:Landroid/preference/ListPreference;

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 867
    .end local v0    # "val":I
    :cond_0
    return-void

    .line 863
    .restart local v0    # "val":I
    :cond_1
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->zenModeListPreference:Landroid/preference/ListPreference;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 865
    goto :goto_1
.end method

.method private setRingerModeOnSoundDialogPreference(I)V
    .locals 5
    .param p1, "ringerMode"    # I

    .prologue
    .line 872
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->mSoundMode:Landroid/preference/ListPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->mSoundMode:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 873
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->mSoundMode:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 874
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 875
    const/4 v1, 0x3

    .line 877
    .local v1, "numberOfSoundModes":I
    sub-int v3, v1, p1

    add-int/lit8 v2, v3, -0x1

    .line 878
    .local v2, "position":I
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 881
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "numberOfSoundModes":I
    .end local v2    # "position":I
    :cond_0
    return-void
.end method

.method private setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 6
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 585
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 588
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    .line 589
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 590
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 591
    const-string v3, "ZenModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved mConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateEndSummary()V

    .line 593
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateStarredEnabled()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    .end local v2    # "success":Z
    :cond_0
    :goto_0
    return v2

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ZenModeSettings"

    const-string v4, "Error calling NoMan"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateControls()V
    .locals 3

    .prologue
    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mDisableListeners:Z

    .line 472
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mCalls:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mCalls:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mMessages:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 476
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 477
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mEvents:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 478
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateStarredEnabled()V

    .line 479
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateDays()V

    .line 480
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mStart:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setTime(II)V

    .line 481
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mEnd:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setTime(II)V

    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mDisableListeners:Z

    .line 483
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->refreshAutomationSection()V

    .line 484
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateEndSummary()V

    .line 487
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->refreshSoundMode()V

    .line 488
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->refreshZenModeList()V

    .line 490
    return-void
.end method

.method private updateDays()V
    .locals 8

    .prologue
    .line 434
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v6, :cond_4

    .line 435
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v6, v6, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v2

    .line 436
    .local v2, "days":[I
    if-eqz v2, :cond_4

    array-length v6, v2

    if-eqz v6, :cond_4

    .line 437
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 439
    .local v0, "c":Ljava/util/Calendar;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v6, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    array-length v6, v6

    if-ge v3, v6, :cond_3

    .line 440
    sget-object v6, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    aget v1, v6, v3

    .line 441
    .local v1, "day":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v6, v2

    if-ge v4, v6, :cond_1

    .line 442
    aget v6, v2, v4

    if-ne v1, v6, :cond_2

    .line 443
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 444
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 445
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0f10

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_0
    sget-object v6, Lcom/android/settings/notification/ZenModeSettings;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 441
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 452
    .end local v1    # "day":I
    .end local v4    # "j":I
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 453
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 461
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "days":[I
    .end local v3    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return-void

    .line 459
    :cond_4
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    const v7, 0x7f0a0f0d

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 460
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    goto :goto_2
.end method

.method private updateEndSummary()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 464
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v4, v4, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    mul-int/lit8 v4, v4, 0x3c

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v5, v5, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    add-int v2, v4, v5

    .line 465
    .local v2, "startMin":I
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v4, v4, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    mul-int/lit8 v4, v4, 0x3c

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v5, v5, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    add-int v0, v4, v5

    .line 466
    .local v0, "endMin":I
    if-lt v2, v0, :cond_1

    const/4 v1, 0x1

    .line 467
    .local v1, "nextDay":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings;->mEnd:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    if-eqz v1, :cond_0

    const v3, 0x7f0a0f20

    :cond_0
    invoke-virtual {v4, v3}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setSummaryFormat(I)V

    .line 468
    return-void

    .end local v1    # "nextDay":Z
    :cond_1
    move v1, v3

    .line 466
    goto :goto_0
.end method

.method private updateStarredEnabled()V
    .locals 2

    .prologue
    .line 493
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    .line 494
    return-void

    .line 493
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateZenModeConfig()V
    .locals 4

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 567
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    :goto_0
    return-void

    .line 568
    :cond_0
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 569
    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateZenModeConfig mConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateControls()V

    goto :goto_0
.end method


# virtual methods
.method protected cancelDialog(I)V
    .locals 2
    .param p1, "oldSettingsValue"    # I

    .prologue
    .line 652
    sget-object v0, Lcom/android/settings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->setValueWithoutCallback(Landroid/content/Context;I)Z

    .line 653
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    .line 654
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 177
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 180
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/ZenModeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    .line 184
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 186
    const v6, 0x7f070106

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/ZenModeSettings;->addPreferencesFromResource(I)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 189
    .local v4, "root":Landroid/preference/PreferenceScreen;
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 190
    const-string v6, "ZenModeSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loaded mConfig="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v6, Lcom/android/settings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

    invoke-virtual {v6, p0}, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    move-result-object v5

    .line 193
    .local v5, "zenMode":Landroid/preference/Preference;
    sget-object v6, Lcom/android/settings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

    new-instance v7, Lcom/android/settings/notification/ZenModeSettings$3;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ZenModeSettings$3;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->setCallback(Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;)V

    .line 202
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 203
    const v6, 0x7f0a0ee6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 206
    :cond_0
    const-string v6, "important"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 209
    .local v1, "important":Landroid/preference/PreferenceCategory;
    const-string v6, "phone_calls"

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mCalls:Landroid/preference/CheckBoxPreference;

    .line 210
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 211
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mCalls:Landroid/preference/CheckBoxPreference;

    new-instance v7, Lcom/android/settings/notification/ZenModeSettings$4;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ZenModeSettings$4;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 228
    :goto_0
    const-string v6, "messages"

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mMessages:Landroid/preference/CheckBoxPreference;

    .line 229
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mMessages:Landroid/preference/CheckBoxPreference;

    new-instance v7, Lcom/android/settings/notification/ZenModeSettings$5;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ZenModeSettings$5;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 242
    const-string v6, "starred"

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/notification/DropDownPreference;

    iput-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    .line 243
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    const v7, 0x7f0a0030

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 244
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    const v7, 0x7f0a0f17

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 245
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    const v7, 0x7f0a0f16

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 246
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    new-instance v7, Lcom/android/settings/notification/ZenModeSettings$6;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ZenModeSettings$6;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/DropDownPreference;->setCallback(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    .line 259
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 261
    const-string v6, "events"

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mEvents:Landroid/preference/CheckBoxPreference;

    .line 262
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mEvents:Landroid/preference/CheckBoxPreference;

    new-instance v7, Lcom/android/settings/notification/ZenModeSettings$7;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ZenModeSettings$7;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 275
    const-string v6, "downtime"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 277
    .local v0, "downtime":Landroid/preference/PreferenceCategory;
    const-string v6, "days"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    .line 278
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    new-instance v7, Lcom/android/settings/notification/ZenModeSettings$8;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ZenModeSettings$8;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 308
    .local v3, "mgr":Landroid/app/FragmentManager;
    new-instance v6, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v7, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v3}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mStart:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    .line 309
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mStart:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    const-string v7, "start_time"

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 310
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mStart:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    const v7, 0x7f0a0f1e

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setTitle(I)V

    .line 311
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mStart:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    new-instance v7, Lcom/android/settings/notification/ZenModeSettings$9;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ZenModeSettings$9;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setCallback(Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;)V

    .line 327
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mStart:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 328
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mStart:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v7, p0, Lcom/android/settings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v7}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 330
    new-instance v6, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v7, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v3}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mEnd:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    .line 331
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mEnd:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    const-string v7, "end_time"

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 332
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mEnd:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    const v7, 0x7f0a0f1f

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setTitle(I)V

    .line 333
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mEnd:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    new-instance v7, Lcom/android/settings/notification/ZenModeSettings$10;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ZenModeSettings$10;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setCallback(Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;)V

    .line 349
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mEnd:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 350
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mEnd:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v7, p0, Lcom/android/settings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v7}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 352
    const-string v6, "automation"

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mAutomationCategory:Landroid/preference/PreferenceCategory;

    .line 353
    const-string v6, "entry"

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mEntry:Landroid/preference/Preference;

    .line 354
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mEntry:Landroid/preference/Preference;

    new-instance v7, Lcom/android/settings/notification/ZenModeSettings$11;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ZenModeSettings$11;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 371
    const-string v6, "manage_condition_providers"

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mConditionProviders:Landroid/preference/Preference;

    .line 374
    const-string v6, "zen_mode"

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/ZenModeSettings;->removePreference(Ljava/lang/String;)V

    .line 376
    const-string v6, "sound_mode"

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mSoundMode:Landroid/preference/ListPreference;

    .line 377
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mSoundMode:Landroid/preference/ListPreference;

    if-eqz v6, :cond_1

    const-string v6, "vibrator"

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/ZenModeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-nez v6, :cond_1

    .line 381
    :cond_1
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mSoundMode:Landroid/preference/ListPreference;

    if-eqz v6, :cond_2

    .line 382
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mSoundMode:Landroid/preference/ListPreference;

    new-instance v7, Lcom/android/settings/notification/ZenModeSettings$12;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ZenModeSettings$12;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 404
    :cond_2
    const-string v6, "zen_mod_list"

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->zenModeListPreference:Landroid/preference/ListPreference;

    .line 405
    new-array v2, v11, [Ljava/lang/CharSequence;

    .line 406
    .local v2, "mZenModeEntries":[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0ee7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v9

    .line 407
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0ee8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v10

    .line 408
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->zenModeListPreference:Landroid/preference/ListPreference;

    if-eqz v6, :cond_3

    .line 409
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->zenModeListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 410
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->zenModeListPreference:Landroid/preference/ListPreference;

    new-array v7, v11, [Ljava/lang/CharSequence;

    const-string v8, "0"

    aput-object v8, v7, v9

    const-string v8, "1"

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 411
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->zenModeListPreference:Landroid/preference/ListPreference;

    new-instance v7, Lcom/android/settings/notification/ZenModeSettings$13;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ZenModeSettings$13;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 430
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateControls()V

    .line 431
    return-void

    .line 224
    .end local v0    # "downtime":Landroid/preference/PreferenceCategory;
    .end local v2    # "mZenModeEntries":[Ljava/lang/CharSequence;
    .end local v3    # "mgr":Landroid/app/FragmentManager;
    :cond_4
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mCalls:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 557
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 558
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mSettingsObserver:Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;->unregister()V

    .line 561
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 563
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 544
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 545
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateControls()V

    .line 546
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mSettingsObserver:Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;->register()V

    .line 549
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 550
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 553
    return-void
.end method

.method protected putZenModeSetting(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 604
    return-void
.end method

.method protected setZenModeConditionToIndefinitely()V
    .locals 4

    .prologue
    .line 607
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 610
    .local v1, "nm":Landroid/app/INotificationManager;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->setZenModeCondition(Landroid/service/notification/Condition;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    :goto_0
    return-void

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ZenModeSettings"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected showConditionSelection(I)V
    .locals 7
    .param p1, "newSettingsValue"    # I

    .prologue
    .line 617
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 648
    :goto_0
    return-void

    .line 619
    :cond_0
    new-instance v3, Lcom/android/settings/notification/ZenModeConditionSelection;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings/notification/ZenModeConditionSelection;-><init>(Landroid/content/Context;)V

    .line 621
    .local v3, "zenModeConditionSelection":Lcom/android/settings/notification/ZenModeConditionSelection;
    new-instance v1, Lcom/android/settings/notification/ZenModeSettings$14;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/notification/ZenModeSettings$14;-><init>(Lcom/android/settings/notification/ZenModeSettings;Lcom/android/settings/notification/ZenModeConditionSelection;)V

    .line 628
    .local v1, "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    sget-object v4, Lcom/android/settings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->getValue(Landroid/content/Context;)I

    move-result v0

    .line 629
    .local v0, "oldSettingsValue":I
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 630
    .local v2, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 631
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/android/settings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a01d6

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a01cf

    new-instance v6, Lcom/android/settings/notification/ZenModeSettings$16;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/notification/ZenModeSettings$16;-><init>(Lcom/android/settings/notification/ZenModeSettings;I)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/notification/ZenModeSettings$15;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/notification/ZenModeSettings$15;-><init>(Lcom/android/settings/notification/ZenModeSettings;I)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    .line 647
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
