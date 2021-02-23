.class public Lcom/android/settings/notification/NotificationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationSettings$H;,
        Lcom/android/settings/notification/NotificationSettings$SettingsObserver;,
        Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final SEEKBAR_MUTED_RES_ID:[I

.field private static final SEEKBAR_UNMUTED_RES_ID:[I


# instance fields
.field private isKioskContainer:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioOutput:Landroid/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private final mHandler:Lcom/android/settings/notification/NotificationSettings$H;

.field private mHandlerForMode:Landroid/os/Handler;

.field private mInterruptions:Landroid/preference/Preference;

.field private mLockscreen:Landroid/preference/ListPreference;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mMediaVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mMySound:Landroid/preference/PreferenceScreen;

.field private mNotiVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mNotificationPulse:Landroid/preference/TwoStatePreference;

.field private mNotificationRingtonePreference:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPhoneProfile:Landroid/preference/Preference;

.field private mPhoneRingtone2Preference:Landroid/preference/Preference;

.field private mPhoneRingtonePreference:Landroid/preference/Preference;

.field private mPhoneVibration:Landroid/preference/Preference;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mRingVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mRingtone:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtonePreference_DS:Landroid/preference/Preference;

.field private mRingtoyou:Landroid/preference/Preference;

.field private final mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

.field private mSoundMode:Landroid/preference/ListPreference;

.field private mSysVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mTcoloring:Landroid/preference/Preference;

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

.field private mVoiceCapable:Z

.field private final mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

.field private mWaitToneVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private notification:Landroid/preference/PreferenceCategory;

.field private offset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 181
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/notification/NotificationSettings;->SEEKBAR_MUTED_RES_ID:[I

    .line 189
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/notification/NotificationSettings;->SEEKBAR_UNMUTED_RES_ID:[I

    .line 1124
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$9;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationSettings$9;-><init>()V

    sput-object v0, Lcom/android/settings/notification/NotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void

    .line 181
    nop

    :array_0
    .array-data 4
        0x1080a69
        0x1080a5a
        0x1080a53
        0x1080a65
        0x1080a58
    .end array-data

    .line 189
    :array_1
    .array-data 4
        0x1080a69
        0x1080a58
        0x1080a51
        0x1080a63
        0x1080a58
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 141
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings/notification/NotificationSettings;Lcom/android/settings/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    .line 142
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/NotificationSettings$H;-><init>(Lcom/android/settings/notification/NotificationSettings;Lcom/android/settings/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mHandler:Lcom/android/settings/notification/NotificationSettings$H;

    .line 143
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    .line 198
    iput v2, p0, Lcom/android/settings/notification/NotificationSettings;->mDirect:I

    .line 199
    iput-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mDirectUri:Landroid/net/Uri;

    .line 214
    iput-boolean v2, p0, Lcom/android/settings/notification/NotificationSettings;->isKioskContainer:Z

    .line 730
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettings$4;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 946
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettings$8;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mHandlerForMode:Landroid/os/Handler;

    .line 1093
    return-void
.end method

.method public static SupportDockSettings(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 501
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

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

.method static synthetic access$1000(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/notification/NotificationSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshSoundMode()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/notification/NotificationSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mHandlerForMode:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshVolumePrefs()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->startRingtoneSetting()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updatePulse()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateLockscreenNotifications()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/NotificationSettings;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 99
    invoke-static {p0, p1}, Lcom/android/settings/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mHandler:Lcom/android/settings/notification/NotificationSettings$H;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtone2Preference:Landroid/preference/Preference;

    return-object v0
.end method

.method private getImgIndexOfStream(I)I
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 988
    const/4 v0, 0x0

    .line 989
    .local v0, "index":I
    packed-switch p1, :pswitch_data_0

    .line 1006
    :goto_0
    :pswitch_0
    return v0

    .line 991
    :pswitch_1
    const/4 v0, 0x0

    .line 992
    goto :goto_0

    .line 994
    :pswitch_2
    const/4 v0, 0x1

    .line 995
    goto :goto_0

    .line 997
    :pswitch_3
    const/4 v0, 0x2

    .line 998
    goto :goto_0

    .line 1000
    :pswitch_4
    const/4 v0, 0x3

    .line 1001
    goto :goto_0

    .line 1003
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 989
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 894
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 889
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getPhoneSilentModeSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1019
    const-string v0, "off"

    :goto_0
    return-object v0

    .line 1012
    :pswitch_0
    const-string v0, "off"

    goto :goto_0

    .line 1014
    :pswitch_1
    const-string v0, "vibrate"

    goto :goto_0

    .line 1016
    :pswitch_2
    const-string v0, "mute"

    goto :goto_0

    .line 1010
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V
    .locals 3
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 861
    const-string v1, "lock_screen_notifications"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    .line 862
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    if-nez v1, :cond_0

    .line 863
    const-string v1, "NotificationSettings"

    const-string v2, "Preference not found: lock_screen_notifications"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :goto_0
    return-void

    .line 866
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 867
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const v2, 0x7f0a0eed

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0a0eee

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0a0eef

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 871
    .local v0, "entryValues":[Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 872
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateLockscreenNotifications()V

    goto :goto_0
.end method

.method private initPulse(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 824
    const-string v0, "notification_pulse"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    .line 825
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 826
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: notification_pulse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :goto_0
    return-void

    .line 829
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 833
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updatePulse()V

    .line 834
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings/notification/NotificationSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$6;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initRingtones(Landroid/preference/PreferenceCategory;)V
    .locals 1
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 717
    const-string v0, "ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 718
    const-string v0, "ringtone2"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtone2Preference:Landroid/preference/Preference;

    .line 719
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 721
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 723
    :cond_0
    const-string v0, "notification_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    .line 724
    return-void
.end method

.method private initSoundMode(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 690
    const-string v0, "sound_mode"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    .line 692
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/settings/notification/NotificationSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$3;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 714
    :cond_1
    return-void
.end method

.method private initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 792
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    .line 793
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    .line 794
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :goto_0
    return-void

    .line 797
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 798
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    goto :goto_0

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 803
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateVibrateWhenRinging()V

    .line 804
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/notification/NotificationSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$5;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initVolumePreference(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 575
    const-string v0, "media_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mMediaVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 576
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mMediaVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 577
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mMediaVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 579
    const-string v0, "notification_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotiVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 580
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotiVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 581
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotiVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 583
    const-string v0, "system_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSysVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 584
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSysVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 585
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSysVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 587
    const-string v0, "alarm_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 588
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    if-eqz v0, :cond_1

    .line 589
    const-string v0, "ring_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 590
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 591
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 596
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    :cond_0
    const-string v0, "waiting_tone_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 603
    :goto_1
    return-void

    .line 593
    :cond_1
    const-string v0, "ring_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 599
    :cond_2
    const-string v0, "waiting_tone_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mWaitToneVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 600
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mWaitToneVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 601
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mWaitToneVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    goto :goto_1
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1333
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1336
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_3

    .line 1337
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1339
    .local v3, "wifiNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1341
    .local v2, "mobileNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1343
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1351
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "mobileNetwork":Landroid/net/NetworkInfo;
    .end local v3    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v4

    .line 1345
    .restart local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .restart local v2    # "mobileNetwork":Landroid/net/NetworkInfo;
    .restart local v3    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1347
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_0

    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "mobileNetwork":Landroid/net/NetworkInfo;
    .end local v3    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_3
    move v4, v5

    .line 1351
    goto :goto_0
.end method

.method private isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 4
    .param p1, "mCtx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1356
    if-nez p1, :cond_1

    .line 1366
    :cond_0
    :goto_0
    return v1

    .line 1360
    :cond_1
    const-string v2, "isKioskModeEnabled"

    invoke-static {p1, v2}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1362
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "true"

    const-string v3, "isKioskModeEnabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1363
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 728
    return-void
.end method

.method private refreshNotificationListeners()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1032
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 1033
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v2}, Lcom/android/settings/notification/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v1

    .line 1034
    .local v1, "total":I
    if-nez v1, :cond_1

    .line 1035
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1048
    .end local v1    # "total":I
    :cond_0
    :goto_0
    return-void

    .line 1037
    .restart local v1    # "total":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 1038
    .local v0, "n":I
    if-nez v0, :cond_2

    .line 1039
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1042
    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110007

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private refreshSoundMode()V
    .locals 3

    .prologue
    .line 899
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 900
    .local v0, "ringerMode":I
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 901
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 902
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 903
    invoke-direct {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->setRingerModeOnSoundDialogPreference(I)V

    .line 905
    :cond_0
    return-void
.end method

.method private refreshVolumePrefs()V
    .locals 2

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mMediaVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/NotificationSettings;->updateVolumePref(Lcom/android/settings/notification/VolumeSeekBarPreference;I)V

    .line 954
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/NotificationSettings;->updateVolumePref(Lcom/android/settings/notification/VolumeSeekBarPreference;I)V

    .line 955
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotiVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/NotificationSettings;->updateVolumePref(Lcom/android/settings/notification/VolumeSeekBarPreference;I)V

    .line 956
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSysVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/NotificationSettings;->updateVolumePref(Lcom/android/settings/notification/VolumeSeekBarPreference;I)V

    .line 957
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mWaitToneVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mWaitToneVolPref:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/NotificationSettings;->updateVolumePref(Lcom/android/settings/notification/VolumeSeekBarPreference;I)V

    .line 958
    :cond_0
    return-void
.end method

.method private registerListeners()V
    .locals 3

    .prologue
    .line 921
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 922
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 923
    .local v0, "mfilter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 924
    new-instance v1, Lcom/android/settings/notification/NotificationSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$7;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    iput-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 942
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 944
    .end local v0    # "mfilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private releaseListeners()V
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1024
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1025
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1027
    :cond_0
    return-void
.end method

.method private setRingerModeOnSoundDialogPreference(I)V
    .locals 5
    .param p1, "ringerMode"    # I

    .prologue
    .line 909
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 910
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 911
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 912
    const/4 v1, 0x3

    .line 914
    .local v1, "numberOfSoundModes":I
    sub-int v3, v1, p1

    add-int/lit8 v2, v3, -0x1

    .line 915
    .local v2, "position":I
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 918
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "numberOfSoundModes":I
    .end local v2    # "position":I
    :cond_0
    return-void
.end method

.method private startRingtoneSetting()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 479
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 480
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.android.settings"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const-string v5, "sound title"

    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 482
    const-string v5, "gsm.sim.state"

    const-string v6, "UNKNOWN"

    invoke-static {v5, v7, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, "simState1":Ljava/lang/String;
    const-string v5, "gsm.sim.state"

    const-string v6, "UNKNOWN"

    invoke-static {v5, v8, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, "simState2":Ljava/lang/String;
    const-string v5, "gsm.sim.currentcardstatus"

    const-string v6, "9"

    invoke-static {v5, v7, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "cardStatus1":Ljava/lang/String;
    const-string v5, "gsm.sim.currentcardstatus"

    const-string v6, "9"

    invoke-static {v5, v8, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "cardStatus2":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 487
    const-string v5, "sound title"

    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings.RingtoneSettingTabActivity"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    .line 498
    return-void

    .line 489
    :cond_0
    const-string v5, "3"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-string v5, "READY"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 491
    :cond_2
    const-string v5, "sim Id"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 494
    :cond_3
    const-string v5, "sim Id"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 495
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateLockscreenNotifications()V
    .locals 5

    .prologue
    .line 876
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    if-nez v3, :cond_0

    .line 886
    :goto_0
    return-void

    .line 879
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    .line 880
    .local v0, "allowPrivate":Z
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 881
    .local v1, "enabled":Z
    if-nez v1, :cond_1

    const v2, 0x7f0a0eef

    .line 884
    .local v2, "selectedVal":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 885
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 881
    .end local v2    # "selectedVal":I
    :cond_1
    if-eqz v0, :cond_2

    const v2, 0x7f0a0eed

    goto :goto_1

    :cond_2
    const v2, 0x7f0a0eee

    goto :goto_1
.end method

.method private updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 12
    .param p1, "originalUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 1255
    const-string v9, "NotificationSettings"

    const-string v10, "UpdateMediaDB"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1257
    .local v3, "filePath":Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1258
    .local v2, "extension":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1259
    const/16 v9, 0x2e

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1260
    .local v0, "dotPos":I
    if-ltz v0, :cond_0

    .line 1261
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1266
    .end local v0    # "dotPos":I
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1267
    .local v4, "mimeType":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1268
    const-string v9, "NotificationSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateMediaDB - extension("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), mimeType("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_1
    if-nez v4, :cond_3

    const-string v9, "3ga"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1274
    const-string v9, "NotificationSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateMediaDB - no mimeType, but it\'s audio file extension - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1300
    .local v5, "newSoundFile":Ljava/io/File;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1301
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "_data"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const-string v9, "title"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    const-string v9, "mime_type"

    const-string v10, "audio/*"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    const-string v9, "_size"

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1306
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1307
    .local v7, "tempUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_data=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1308
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1309
    .local v6, "newUri":Landroid/net/Uri;
    const-string v9, "NotificationSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateMediaDB - tempUri("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), newUri("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "newSoundFile":Ljava/io/File;
    .end local v6    # "newUri":Landroid/net/Uri;
    .end local v7    # "tempUri":Landroid/net/Uri;
    .end local v8    # "values":Landroid/content/ContentValues;
    :goto_0
    return-object v6

    .line 1275
    .restart local v4    # "mimeType":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v9, "audio"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1276
    const-string v9, "NotificationSettings"

    const-string v10, "updateMediaDB - mimeType is not audio - return null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1279
    .end local v4    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1280
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "NotificationSettings"

    const-string v10, "updateMediaDB - exception is Occured - return null"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updatePulse()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 847
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v2, :cond_0

    .line 856
    :goto_0
    return-void

    .line 851
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_light_pulse"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 853
    :catch_0
    move-exception v0

    .line 854
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "NotificationSettings"

    const-string v2, "notification_light_pulse not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 851
    .end local v0    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateRingtoneData(I)V
    .locals 1
    .param p1, "ringtoneType"    # I

    .prologue
    .line 1315
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1316
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    .line 1317
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->lookupRingtoneNames()V

    .line 1324
    :cond_0
    :goto_0
    return-void

    .line 1320
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    .line 1321
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->lookupRingtoneNames()V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x0

    .line 758
    if-nez p0, :cond_1

    .line 759
    const-string v0, "NotificationSettings"

    const-string v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_0
    :goto_0
    return-object v7

    .line 762
    :cond_1
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 763
    .local v1, "ringtoneUri":Landroid/net/Uri;
    const v0, 0x10404b5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 765
    .local v7, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 766
    const v0, 0x10404b3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 769
    :cond_2
    const/4 v6, 0x0

    .line 771
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 773
    if-eqz v6, :cond_3

    .line 774
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 775
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 781
    :cond_3
    if-eqz v6, :cond_0

    .line 782
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 778
    :catch_0
    move-exception v0

    .line 781
    if-eqz v6, :cond_0

    .line 782
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 781
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 782
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 816
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_0

    .line 819
    :goto_0
    return-void

    .line 817
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateVolumePref(Lcom/android/settings/notification/VolumeSeekBarPreference;I)V
    .locals 8
    .param p1, "volSeekbarPref"    # Lcom/android/settings/notification/VolumeSeekBarPreference;
    .param p2, "streamType"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 961
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, p2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    .line 962
    .local v2, "muted":Z
    if-ne p2, v7, :cond_1

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 964
    const v3, 0x1080a5e

    invoke-virtual {p1, v3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setIcon(I)V

    .line 972
    :goto_0
    if-eqz p1, :cond_0

    const/16 v3, 0x8

    if-eq p2, v3, :cond_0

    .line 975
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v3

    if-eq p2, v3, :cond_3

    if-eqz v2, :cond_3

    .line 976
    invoke-virtual {p1, v5}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    .line 985
    :cond_0
    :goto_1
    return-void

    .line 967
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/notification/NotificationSettings;->getImgIndexOfStream(I)I

    move-result v0

    .line 968
    .local v0, "iconIndex":I
    if-eqz v2, :cond_2

    sget-object v3, Lcom/android/settings/notification/NotificationSettings;->SEEKBAR_MUTED_RES_ID:[I

    aget v3, v3, v0

    :goto_2
    invoke-virtual {p1, v3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setIcon(I)V

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/settings/notification/NotificationSettings;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v3, v3, v0

    goto :goto_2

    .line 978
    .end local v0    # "iconIndex":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "zen_mode"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_4

    move v1, v4

    .line 979
    .local v1, "isZenModeNone":Z
    :goto_3
    if-ne p2, v7, :cond_5

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v3

    if-nez v3, :cond_5

    .line 980
    invoke-virtual {p1, v5}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    goto :goto_1

    .end local v1    # "isZenModeNone":Z
    :cond_4
    move v1, v5

    .line 978
    goto :goto_3

    .line 982
    .restart local v1    # "isZenModeNone":Z
    :cond_5
    invoke-virtual {p1, v4}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public handleRingtonePicked(Landroid/net/Uri;I)V
    .locals 7
    .param p1, "pickedUri"    # Landroid/net/Uri;
    .param p2, "ringtoneType"    # I

    .prologue
    const v6, 0x7f0a0690

    const/4 v5, 0x0

    .line 1215
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1250
    :cond_0
    :goto_0
    const-string v2, "NotificationSettings"

    const-string v3, "updateRingtoneData(ringtoneType)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    invoke-direct {p0, p2}, Lcom/android/settings/notification/NotificationSettings;->updateRingtoneData(I)V

    .line 1252
    :goto_1
    return-void

    .line 1220
    :cond_1
    const-string v2, "NotificationSettings"

    const-string v3, "handleRingtonePicked updating media DB"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1222
    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationSettings;->updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 1224
    if-nez p1, :cond_2

    .line 1225
    const-string v2, "NotificationSettings"

    const-string v3, "handleRingtonePicked - pickedUri is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1231
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1232
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "is_ringtone"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1235
    const-string v2, "NotificationSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRingtonePicked - pickedUri("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), ringtoneType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    :goto_2
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1243
    const/16 v2, 0x8

    if-ne p2, v2, :cond_3

    .line 1244
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "recommendation_time_2"

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1237
    :catch_0
    move-exception v0

    .line 1239
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1246
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "recommendation_time"

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 537
    const-string v0, "NotificationSettings"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/NotificationSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$2;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 570
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 571
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 1150
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1152
    packed-switch p1, :pswitch_data_0

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1154
    :pswitch_0
    if-ne p2, v4, :cond_0

    .line 1155
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1156
    .local v2, "pickedUri":Landroid/net/Uri;
    const-string v4, "highlight_offset"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    .line 1162
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/notification/NotificationSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 1166
    .end local v2    # "pickedUri":Landroid/net/Uri;
    :pswitch_1
    if-ne p2, v4, :cond_0

    .line 1167
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1168
    .restart local v2    # "pickedUri":Landroid/net/Uri;
    const-string v4, "highlight_offset"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    .line 1174
    const/16 v4, 0x8

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/notification/NotificationSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 1178
    .end local v2    # "pickedUri":Landroid/net/Uri;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/notification/NotificationSettings;->isConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1179
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1180
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_ConfigOpRngToneLink"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1182
    .local v1, "mRingtoneType":Ljava/lang/String;
    const-string v4, "Tcoloring"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1183
    const-string v4, "http://www.tcoloring.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1184
    .local v3, "u":Landroid/net/Uri;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1185
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1186
    .end local v3    # "u":Landroid/net/Uri;
    :cond_1
    const-string v4, "Ringtoyou"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1187
    const-string v4, "http://ringtoyou.olleh.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1188
    .restart local v3    # "u":Landroid/net/Uri;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1189
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1191
    .end local v3    # "u":Landroid/net/Uri;
    :cond_2
    const-string v4, "NotificationSettings"

    const-string v5, "Preference not found: "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 220
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    .line 222
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 223
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    .line 224
    const-string v7, "audio"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 225
    const v7, 0x7f070087

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->addPreferencesFromResource(I)V

    .line 228
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/notification/NotificationSettings;->isKioskContainer:Z

    .line 231
    const-string v7, "sound"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 232
    .local v5, "sound":Landroid/preference/PreferenceCategory;
    invoke-direct {p0, v5}, Lcom/android/settings/notification/NotificationSettings;->initVolumePreference(Landroid/preference/PreferenceCategory;)V

    .line 234
    invoke-direct {p0, v5}, Lcom/android/settings/notification/NotificationSettings;->initSoundMode(Landroid/preference/PreferenceCategory;)V

    .line 236
    const-string v7, "phone_vibration"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneVibration:Landroid/preference/Preference;

    .line 237
    const-string v7, "ds_ring_tone"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    .line 239
    invoke-direct {p0, v5}, Lcom/android/settings/notification/NotificationSettings;->initRingtones(Landroid/preference/PreferenceCategory;)V

    .line 240
    invoke-direct {p0, v5}, Lcom/android/settings/notification/NotificationSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V

    .line 242
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    .line 243
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->initPulse(Landroid/preference/PreferenceCategory;)V

    .line 244
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V

    .line 247
    const-string v7, "zen_mode"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mInterruptions:Landroid/preference/Preference;

    .line 248
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mInterruptions:Landroid/preference/Preference;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/settings/notification/NotificationSettings;->mInterruptions:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    :cond_0
    const-string v7, "manage_notification_access"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 255
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshNotificationListeners()V

    .line 257
    const-string v7, "phone_profile"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneProfile:Landroid/preference/Preference;

    .line 259
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneProfile:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 264
    const-string v7, "notification_ringtone"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    .line 268
    :goto_0
    const-string v7, "ringtone2"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    .line 270
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v7, p0}, Lcom/android/settings/DefaultRingtonePreference;->setObject(Lcom/android/settings/notification/NotificationSettings;)V

    .line 272
    const-string v7, "tcoloring"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mTcoloring:Landroid/preference/Preference;

    .line 273
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_ConfigOpRngToneLink"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "mRingtoneType":Ljava/lang/String;
    const-string v7, "Tcoloring"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 275
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mTcoloring:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 278
    :cond_1
    const-string v7, "ringtoyou"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtoyou:Landroid/preference/Preference;

    .line 279
    const-string v7, "Ringtoyou"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 280
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtoyou:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 284
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 285
    .local v0, "activity":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mDirectUri:Landroid/net/Uri;

    .line 286
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mDirectUri:Landroid/net/Uri;

    if-eqz v7, :cond_3

    .line 287
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mDirectUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/settings/notification/NotificationSettings;->mDirect:I

    .line 290
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    iget-boolean v7, p0, Lcom/android/settings/notification/NotificationSettings;->isKioskContainer:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    if-eqz v7, :cond_4

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/notification/NotificationSettings;->notification:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 299
    :cond_4
    const-string v7, "vibrator"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    .line 300
    .local v6, "vibrator":Landroid/os/Vibrator;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-nez v7, :cond_c

    .line 301
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "vibration_feedback_intensity"

    invoke-virtual {p0, v8}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneVibration:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 310
    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 311
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 312
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 313
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 318
    :goto_2
    const-string v7, "ds_ring_tone"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    .line 319
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    if-eqz v7, :cond_7

    .line 320
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    new-instance v8, Lcom/android/settings/notification/NotificationSettings$1;

    invoke-direct {v8, p0}, Lcom/android/settings/notification/NotificationSettings$1;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 328
    :cond_7
    const-string v7, "audio_output"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    .line 329
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/16 v8, 0x64

    if-ge v7, v8, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/notification/NotificationSettings;->SupportDockSettings(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 332
    :cond_8
    const-string v7, "hdmi"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 333
    .local v2, "hdmiSettingsCategory":Landroid/preference/PreferenceGroup;
    if-eqz v2, :cond_9

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 335
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "audio_output"

    invoke-virtual {p0, v8}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 339
    .end local v2    # "hdmiSettingsCategory":Landroid/preference/PreferenceGroup;
    :goto_3
    const-string v7, "my_sound"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mMySound:Landroid/preference/PreferenceScreen;

    .line 399
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "all_sound_off"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 400
    .local v1, "allSoundOff":I
    const/4 v7, 0x1

    if-ne v1, v7, :cond_a

    .line 401
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SOUND_OFF_TOAST"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .local v3, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 404
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_a
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshSoundMode()V

    .line 405
    return-void

    .line 266
    .end local v0    # "activity":Landroid/content/Intent;
    .end local v1    # "allSoundOff":I
    .end local v4    # "mRingtoneType":Ljava/lang/String;
    .end local v6    # "vibrator":Landroid/os/Vibrator;
    :cond_b
    const-string v7, "ringtone"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    goto/16 :goto_0

    .line 304
    .restart local v0    # "activity":Landroid/content/Intent;
    .restart local v4    # "mRingtoneType":Ljava/lang/String;
    .restart local v6    # "vibrator":Landroid/os/Vibrator;
    :cond_c
    const-string v7, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-static {v7}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "vibration_feedback_intensity"

    invoke-virtual {p0, v8}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 307
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v7}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 308
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneVibration:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 315
    :cond_f
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 316
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 337
    :cond_10
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_3
.end method

.method public onMusicPickerChosen(I)V
    .locals 4
    .param p1, "ringtoneType"    # I

    .prologue
    const v3, 0x7f0a0661

    const/4 v2, 0x1

    .line 1201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1202
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1203
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1204
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1205
    const-string v1, "enable_ringtone_recommender"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1206
    const-string v1, "DocumentsUIPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1207
    if-ne p1, v2, :cond_0

    .line 1208
    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/notification/NotificationSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1212
    :goto_0
    return-void

    .line 1210
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/notification/NotificationSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 528
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 529
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->releaseListeners()V

    .line 530
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->stopSample()V

    .line 531
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 532
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 409
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "key":Ljava/lang/String;
    const-string v6, "lock_screen_notifications"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 413
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 414
    .local v3, "value":I
    const v6, 0x7f0a0eef

    if-eq v3, v6, :cond_2

    move v0, v4

    .line 415
    .local v0, "enabled":Z
    :goto_0
    const v6, 0x7f0a0eed

    if-ne v3, v6, :cond_3

    move v2, v4

    .line 416
    .local v2, "show":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_allow_private_notifications"

    if-eqz v2, :cond_4

    move v6, v4

    :goto_2
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_show_notifications"

    if-eqz v0, :cond_0

    move v5, v4

    :cond_0
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 420
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 429
    .end local v0    # "enabled":Z
    .end local v2    # "show":Z
    .end local v3    # "value":I
    :cond_1
    :goto_3
    return v4

    .restart local v3    # "value":I
    :cond_2
    move v0, v5

    .line 414
    goto :goto_0

    .restart local v0    # "enabled":Z
    :cond_3
    move v2, v5

    .line 415
    goto :goto_1

    .restart local v2    # "show":Z
    :cond_4
    move v6, v5

    .line 416
    goto :goto_2

    .line 421
    .end local v0    # "enabled":Z
    .end local v2    # "show":Z
    .end local v3    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_5
    const-string v5, "audio_output"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 422
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 423
    .restart local v3    # "value":I
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hdmi_audio_output"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 425
    :cond_6
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 426
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 607
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v3}, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->stopSample()V

    .line 608
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mTcoloring:Landroid/preference/Preference;

    if-eq p2, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtoyou:Landroid/preference/Preference;

    if-ne p2, v3, :cond_5

    .line 609
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/notification/NotificationSettings;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 610
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "extra_prefs_show_button_bar"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 612
    const-string v3, "extra_prefs_set_back_text"

    const v4, 0x7f0a0c2a

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/NotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    const-string v3, "wifi_enable_next_on_connect"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 615
    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/notification/NotificationSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 635
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 617
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mTcoloring:Landroid/preference/Preference;

    if-ne p2, v3, :cond_3

    .line 620
    const-string v3, "http://www.tcoloring.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 621
    .local v2, "u":Landroid/net/Uri;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 622
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 623
    .end local v2    # "u":Landroid/net/Uri;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtoyou:Landroid/preference/Preference;

    if-ne p2, v3, :cond_4

    .line 624
    const-string v3, "http://ringtoyou.olleh.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 625
    .restart local v2    # "u":Landroid/net/Uri;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 626
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 628
    .end local v2    # "u":Landroid/net/Uri;
    :cond_4
    const-string v3, "NotificationSettings"

    const-string v4, "Preference not found: "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 631
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mMySound:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_1

    .line 632
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.hearingadjust.launch"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 633
    .local v1, "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 506
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 507
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshSoundMode()V

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hdmi_audio_output"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 509
    .local v0, "mHdmiValue":I
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 513
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->registerListeners()V

    .line 514
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshNotificationListeners()V

    .line 515
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->updateDeviceVibrationName()V

    .line 516
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->lookupRingtoneNames()V

    .line 517
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 523
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 524
    return-void
.end method

.method public updateDeviceVibrationName()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 669
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 672
    .local v7, "temp":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 673
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 674
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneVibration:Landroid/preference/Preference;

    const-string v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 679
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 681
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 682
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 683
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneVibration:Landroid/preference/Preference;

    const-string v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 684
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
