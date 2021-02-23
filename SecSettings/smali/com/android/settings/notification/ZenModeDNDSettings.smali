.class public Lcom/android/settings/notification/ZenModeDNDSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;,
        Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;,
        Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;
    }
.end annotation


# static fields
.field private static final PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private DAY_FORMAT:Ljava/text/SimpleDateFormat;

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAlarm:Landroid/preference/CheckBoxPreference;

.field private mAllowException:Landroid/preference/PreferenceScreen;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutomationCategory:Landroid/preference/PreferenceCategory;

.field private mCalls:Landroid/preference/CheckBoxPreference;

.field private mConditionProviders:Landroid/preference/Preference;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mContext:Landroid/content/Context;

.field private mDays:Landroid/preference/Preference;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisableListeners:Z

.field private mEnd:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

.field private mEntry:Landroid/preference/Preference;

.field private mEvents:Landroid/preference/CheckBoxPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mMessages:Landroid/preference/CheckBoxPreference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mRevertSleepMode:Ljava/lang/String;

.field private final mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mScheduling:Landroid/preference/CheckBoxPreference;

.field private final mSettingsObserver:Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;

.field private mStarred:Lcom/android/settings/notification/DropDownPreference;

.field private mStart:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

.field private zenModeSwtich:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 113
    new-instance v0, Lcom/android/settings/notification/ZenModeDNDSettings$1;

    const/4 v1, 0x1

    const-string v2, "zen_mode"

    const-string v3, "zen_mode"

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/ZenModeDNDSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/ZenModeDNDSettings;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;

    .line 716
    new-instance v0, Lcom/android/settings/notification/ZenModeDNDSettings$18;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeDNDSettings$18;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeDNDSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void

    .line 113
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 129
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    .line 153
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mHandler:Landroid/os/Handler;

    .line 154
    new-instance v0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSettingsObserver:Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;

    .line 173
    new-instance v0, Lcom/android/settings/notification/ZenModeDNDSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$2;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 853
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateControls()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenModeDNDSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/settings/notification/ZenModeDNDSettings;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateZenModeConfig()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/ZenModeDNDSettings;Landroid/service/notification/ZenModeConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;
    .param p1, "x1"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeDNDSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/ZenModeDNDSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRevertSleepMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/notification/ZenModeDNDSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRevertSleepMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateDays()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->refreshAutomationSection()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/notification/ZenModeDNDSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 8

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 226
    .local v3, "root":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_0

    .line 227
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 229
    :cond_0
    const v5, 0x7f070105

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeDNDSettings;->addPreferencesFromResource(I)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 232
    sget-object v5, Lcom/android/settings/notification/ZenModeDNDSettings;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;

    invoke-virtual {v5, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    move-result-object v4

    .line 233
    .local v4, "zenMode":Landroid/preference/Preference;
    sget-object v5, Lcom/android/settings/notification/ZenModeDNDSettings;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;

    new-instance v6, Lcom/android/settings/notification/ZenModeDNDSettings$3;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$3;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->setCallback(Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback$Callback;)V

    .line 241
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 242
    const v5, 0x7f0a0ee6

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 245
    :cond_1
    const-string v5, "important"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 248
    .local v1, "important":Landroid/preference/PreferenceCategory;
    const-string v5, "phone_calls"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mCalls:Landroid/preference/CheckBoxPreference;

    .line 249
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 250
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mCalls:Landroid/preference/CheckBoxPreference;

    new-instance v6, Lcom/android/settings/notification/ZenModeDNDSettings$4;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$4;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 267
    :goto_0
    const-string v5, "messages"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mMessages:Landroid/preference/CheckBoxPreference;

    .line 268
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mMessages:Landroid/preference/CheckBoxPreference;

    new-instance v6, Lcom/android/settings/notification/ZenModeDNDSettings$5;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$5;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 281
    const-string v5, "starred"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/notification/DropDownPreference;

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    .line 282
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    const v6, 0x7f0a0f15

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 283
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    const v6, 0x7f0a0f17

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 284
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    const v6, 0x7f0a0f16

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 285
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    new-instance v6, Lcom/android/settings/notification/ZenModeDNDSettings$6;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$6;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/DropDownPreference;->setCallback(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    .line 298
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 300
    const-string v5, "events"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEvents:Landroid/preference/CheckBoxPreference;

    .line 301
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEvents:Landroid/preference/CheckBoxPreference;

    new-instance v6, Lcom/android/settings/notification/ZenModeDNDSettings$7;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$7;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 313
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 314
    const-string v5, "zen_mode_switch"

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeDNDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const v6, 0x7f0a0fff

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 315
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEvents:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f0a1004

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 318
    :cond_2
    const-string v5, "downtime"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 320
    .local v0, "downtime":Landroid/preference/PreferenceCategory;
    const-string v5, "days"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    .line 321
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    new-instance v6, Lcom/android/settings/notification/ZenModeDNDSettings$8;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$8;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 367
    .local v2, "mgr":Landroid/app/FragmentManager;
    new-instance v5, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v2}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    .line 368
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    const-string v6, "start_time"

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 369
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    const v6, 0x7f0a0f1e

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setTitle(I)V

    .line 370
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    new-instance v6, Lcom/android/settings/notification/ZenModeDNDSettings$9;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$9;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setCallback(Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;)V

    .line 386
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 387
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 389
    new-instance v5, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v2}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    .line 390
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    const-string v6, "end_time"

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 391
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    const v6, 0x7f0a0f1f

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setTitle(I)V

    .line 392
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    new-instance v6, Lcom/android/settings/notification/ZenModeDNDSettings$10;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$10;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setCallback(Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;)V

    .line 408
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 409
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 411
    const-string v5, "automation"

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeDNDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mAutomationCategory:Landroid/preference/PreferenceCategory;

    .line 412
    const-string v5, "entry"

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeDNDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEntry:Landroid/preference/Preference;

    .line 413
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEntry:Landroid/preference/Preference;

    new-instance v6, Lcom/android/settings/notification/ZenModeDNDSettings$11;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$11;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 430
    const-string v5, "manage_condition_providers"

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeDNDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConditionProviders:Landroid/preference/Preference;

    .line 432
    const-string v5, "zen_mode"

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeDNDSettings;->removePreference(Ljava/lang/String;)V

    .line 434
    const-string v5, "zen_mode_switch"

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeDNDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->zenModeSwtich:Landroid/preference/CheckBoxPreference;

    .line 435
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->zenModeSwtich:Landroid/preference/CheckBoxPreference;

    new-instance v6, Lcom/android/settings/notification/ZenModeDNDSettings$12;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$12;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 447
    const-string v5, "alarm_switch"

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeDNDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    .line 448
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    new-instance v6, Lcom/android/settings/notification/ZenModeDNDSettings$13;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$13;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 461
    const-string v5, "scheduling_switch"

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeDNDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mScheduling:Landroid/preference/CheckBoxPreference;

    .line 462
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mScheduling:Landroid/preference/CheckBoxPreference;

    new-instance v6, Lcom/android/settings/notification/ZenModeDNDSettings$14;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$14;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 481
    const-string v5, "allow_exceptions"

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeDNDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/preference/PreferenceScreen;

    .line 483
    const-string v5, "important"

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeDNDSettings;->removePreference(Ljava/lang/String;)V

    .line 485
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateControls()V

    .line 487
    return-object v3

    .line 263
    .end local v0    # "downtime":Landroid/preference/PreferenceCategory;
    .end local v2    # "mgr":Landroid/app/FragmentManager;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 264
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mCalls:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_0
.end method

.method private getEntryConditionSummary()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 581
    const-string v7, "notification"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v4

    .line 584
    .local v4, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v4}, Landroid/app/INotificationManager;->getAutomaticZenModeConditions()[Landroid/service/notification/Condition;

    move-result-object v0

    .line 585
    .local v0, "automatic":[Landroid/service/notification/Condition;
    if-eqz v0, :cond_0

    array-length v7, v0

    if-nez v7, :cond_1

    .line 597
    .end local v0    # "automatic":[Landroid/service/notification/Condition;
    :cond_0
    :goto_0
    return-object v6

    .line 588
    .restart local v0    # "automatic":[Landroid/service/notification/Condition;
    :cond_1
    const v7, 0x7f0a0f10

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/ZenModeDNDSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, "divider":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_3

    .line 591
    if-lez v3, :cond_2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    :cond_2
    aget-object v7, v0, v3

    iget-object v7, v7, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 594
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 595
    .end local v0    # "automatic":[Landroid/service/notification/Condition;
    .end local v1    # "divider":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 596
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "ZenModeSettings"

    const-string v8, "Error calling getAutomaticZenModeConditions"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    .prologue
    .line 633
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 636
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 639
    :goto_0
    return-object v2

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ZenModeSettings"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 639
    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method private refreshAutomationSection()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 556
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConditionProviders:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 557
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v3}, Lcom/android/settings/notification/ConditionProviderSettings;->getProviderCount(Landroid/content/pm/PackageManager;)I

    move-result v2

    .line 558
    .local v2, "total":I
    if-nez v2, :cond_1

    .line 559
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mAutomationCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 578
    .end local v2    # "total":I
    :cond_0
    :goto_0
    return-void

    .line 561
    .restart local v2    # "total":I
    :cond_1
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/notification/ConditionProviderSettings;->getEnabledProviderCount(Landroid/content/Context;)I

    move-result v1

    .line 562
    .local v1, "n":I
    if-nez v1, :cond_3

    .line 563
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConditionProviders:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0f00

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 570
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getEntryConditionSummary()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "entrySummary":Ljava/lang/String;
    if-eqz v1, :cond_2

    if-nez v0, :cond_4

    .line 572
    :cond_2
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEntry:Landroid/preference/Preference;

    const v4, 0x7f0a0f11

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 566
    .end local v0    # "entrySummary":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConditionProviders:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getResources()Landroid/content/res/Resources;

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

    .line 574
    .restart local v0    # "entrySummary":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEntry:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 6
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 644
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 647
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    .line 648
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 649
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 650
    const-string v3, "ZenModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved mConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateEndSummary()V

    .line 652
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateStarredEnabled()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    .end local v2    # "success":Z
    :cond_0
    :goto_0
    return v2

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ZenModeSettings"

    const-string v4, "Error calling NoMan"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 657
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateControls()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 528
    iput-boolean v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z

    .line 529
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mCalls:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mCalls:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v3, v3, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mMessages:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v3, v3, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 533
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 534
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEvents:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v3, v3, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 535
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateStarredEnabled()V

    .line 536
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateDays()V

    .line 537
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v4, v4, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setTime(II)V

    .line 538
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v4, v4, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setTime(II)V

    .line 539
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "zen_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 541
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->zenModeSwtich:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dnd_allowexception"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 542
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 543
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mScheduling:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 544
    iput-boolean v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z

    .line 545
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->refreshAutomationSection()V

    .line 546
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateEndSummary()V

    .line 547
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateEnable()V

    .line 548
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateAllowSummary()V

    .line 549
    return-void

    :cond_1
    move v0, v2

    .line 539
    goto :goto_0

    :cond_2
    move v1, v2

    .line 541
    goto :goto_1
.end method

.method private updateDays()V
    .locals 8

    .prologue
    .line 491
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v6, :cond_4

    .line 492
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v6, v6, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v2

    .line 493
    .local v2, "days":[I
    if-eqz v2, :cond_4

    array-length v6, v2

    if-eqz v6, :cond_4

    .line 494
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 496
    .local v0, "c":Ljava/util/Calendar;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v6, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    array-length v6, v6

    if-ge v3, v6, :cond_3

    .line 497
    sget-object v6, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    aget v1, v6, v3

    .line 498
    .local v1, "day":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v6, v2

    if-ge v4, v6, :cond_1

    .line 499
    aget v6, v2, v4

    if-ne v1, v6, :cond_2

    .line 500
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 501
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 502
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0f10

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_0
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 498
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 509
    .end local v1    # "day":I
    .end local v4    # "j":I
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 510
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 518
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "days":[I
    .end local v3    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return-void

    .line 516
    :cond_4
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    const v7, 0x7f0a0f0d

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 517
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    goto :goto_2
.end method

.method private updateEndSummary()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 521
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v4, v4, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    mul-int/lit8 v4, v4, 0x3c

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v5, v5, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    add-int v2, v4, v5

    .line 522
    .local v2, "startMin":I
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v4, v4, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    mul-int/lit8 v4, v4, 0x3c

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v5, v5, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    add-int v0, v4, v5

    .line 523
    .local v0, "endMin":I
    if-lt v2, v0, :cond_1

    const/4 v1, 0x1

    .line 524
    .local v1, "nextDay":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    if-eqz v1, :cond_0

    const v3, 0x7f0a0f20

    :cond_0
    invoke-virtual {v4, v3}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setSummaryFormat(I)V

    .line 525
    return-void

    .end local v1    # "nextDay":Z
    :cond_1
    move v1, v3

    .line 523
    goto :goto_0
.end method

.method private updateStarredEnabled()V
    .locals 2

    .prologue
    .line 552
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    .line 553
    return-void

    .line 552
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateZenModeConfig()V
    .locals 4

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 626
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    :goto_0
    return-void

    .line 627
    :cond_0
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 628
    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateZenModeConfig mConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateControls()V

    goto :goto_0
.end method


# virtual methods
.method protected cancelDialog(I)V
    .locals 2
    .param p1, "oldSettingsValue"    # I

    .prologue
    .line 711
    sget-object v0, Lcom/android/settings/notification/ZenModeDNDSettings;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->setValueWithoutCallback(Landroid/content/Context;I)Z

    .line 712
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDialog:Landroid/app/AlertDialog;

    .line 713
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    .line 935
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z

    if-nez v0, :cond_0

    .line 936
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateZenMode()V

    .line 938
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v2, 0x0

    .line 191
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    .line 198
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 200
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 201
    const-string v1, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded mConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v1, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 205
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f0054

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 207
    .local v0, "padding":I
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2, v2, v0, v2}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mActionBarLayout:Landroid/view/View;

    .line 216
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "zen_mode"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 218
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 220
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 222
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRevertSleepMode:Ljava/lang/String;

    .line 223
    return-void

    :cond_0
    move v1, v2

    .line 216
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 616
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 617
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSettingsObserver:Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->unregister()V

    .line 620
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 622
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 603
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 604
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateControls()V

    .line 605
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSettingsObserver:Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->register()V

    .line 608
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 609
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 612
    return-void
.end method

.method protected putZenModeSetting(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 663
    return-void
.end method

.method protected setZenModeConditionToIndefinitely()V
    .locals 4

    .prologue
    .line 666
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 669
    .local v1, "nm":Landroid/app/INotificationManager;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->setZenModeCondition(Landroid/service/notification/Condition;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :goto_0
    return-void

    .line 670
    :catch_0
    move-exception v0

    .line 671
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
    .line 676
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 707
    :goto_0
    return-void

    .line 678
    :cond_0
    new-instance v3, Lcom/android/settings/notification/ZenModeConditionSelection;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings/notification/ZenModeConditionSelection;-><init>(Landroid/content/Context;)V

    .line 680
    .local v3, "zenModeConditionSelection":Lcom/android/settings/notification/ZenModeConditionSelection;
    new-instance v1, Lcom/android/settings/notification/ZenModeDNDSettings$15;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/notification/ZenModeDNDSettings$15;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;Lcom/android/settings/notification/ZenModeConditionSelection;)V

    .line 687
    .local v1, "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    sget-object v4, Lcom/android/settings/notification/ZenModeDNDSettings;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->getValue(Landroid/content/Context;)I

    move-result v0

    .line 688
    .local v0, "oldSettingsValue":I
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 689
    .local v2, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 690
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/android/settings/notification/ZenModeDNDSettings;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lcom/android/settings/notification/ZenModeDNDSettings$SettingPrefWithCallback;->getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a01d2

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a01d0

    new-instance v6, Lcom/android/settings/notification/ZenModeDNDSettings$17;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/notification/ZenModeDNDSettings$17;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;I)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/notification/ZenModeDNDSettings$16;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/notification/ZenModeDNDSettings$16;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;I)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDialog:Landroid/app/AlertDialog;

    .line 706
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public updateAllowSummary()V
    .locals 5

    .prologue
    const v4, 0x7f0a0f10

    .line 962
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dnd_allowexception"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 964
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0a1001

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 968
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v1, :cond_0

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 970
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-eqz v1, :cond_3

    .line 971
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 972
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    :cond_2
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0a068a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    :cond_3
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v1, :cond_5

    .line 976
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 977
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    :cond_4
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0f12

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    :cond_5
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v1, :cond_7

    .line 981
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 982
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    :cond_6
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0f13

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    :cond_7
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v1, :cond_9

    .line 986
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 987
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    :cond_8
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0f18

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    :cond_9
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 991
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 992
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0a1002

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_0
.end method

.method public updateEnable()V
    .locals 2

    .prologue
    .line 953
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v1, :cond_0

    .line 954
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v1, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    .line 955
    .local v0, "mIsEnable":Z
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 956
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setEnabled(Z)V

    .line 957
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setEnabled(Z)V

    .line 959
    .end local v0    # "mIsEnable":Z
    :cond_0
    return-void
.end method

.method public updateZenMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 941
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 942
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dnd_allowexception"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->putZenModeSetting(I)V

    .line 946
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->setZenModeConditionToIndefinitely()V

    .line 950
    :goto_1
    return-void

    .line 945
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->putZenModeSetting(I)V

    goto :goto_0

    .line 948
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ZenModeDNDSettings;->putZenModeSetting(I)V

    goto :goto_1
.end method
