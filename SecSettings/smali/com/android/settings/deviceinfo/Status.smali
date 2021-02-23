.class public Lcom/android/settings/deviceinfo/Status;
.super Landroid/preference/PreferenceActivity;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/Status$MyHandler;
    }
.end annotation


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static buf:[B

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private NAI_length:I

.field private isResetFileExist:Ljava/lang/Boolean;

.field private isSysScopeStatus:I

.field private mActivePhone:I

.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mBtAddress:Landroid/preference/Preference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentFilter:Landroid/content/IntentFilter;

.field private final mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mEthernetMacAddressPref:Landroid/preference/Preference;

.field private mFirstCall:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mImsRegistered:Z

.field private mIpAddress:Landroid/preference/Preference;

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mPhoneCount:I

.field private mPhoneHandler:Landroid/os/Handler;

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mSecPhoneServiceConnectionVZW:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:[Landroid/preference/Preference;

.field private mSvcModeMessenger:Landroid/os/Messenger;

.field private mSysScopeReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:[Landroid/telephony/TelephonyManager;

.field private mUnavailable:Ljava/lang/String;

.field private mUnknown:Ljava/lang/String;

.field private mUptime:Landroid/preference/Preference;

.field private mUserName:Landroid/preference/Preference;

.field private mWifiMacAddress:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWimaxMacAddress:Landroid/preference/Preference;

.field private rilHandler:Landroid/os/Handler;

.field private user_name:Ljava/lang/String;

.field private zero_eight:Ljava/lang/String;

.field private zero_five:Ljava/lang/String;

.field private zero_four:Ljava/lang/String;

.field private zero_nine:Ljava/lang/String;

.field private zero_seven:Ljava/lang/String;

.field private zero_six:Ljava/lang/String;

.field private zero_three:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 188
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data_state"

    aput-object v1, v0, v3

    const-string v1, "service_state"

    aput-object v1, v0, v4

    const-string v1, "operator_name"

    aput-object v1, v0, v5

    const-string v1, "roaming_state"

    aput-object v1, v0, v6

    const-string v1, "user_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "latest_area_info"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "number"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "eri_version"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sid_number"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "nid_number"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "first_call_date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .line 221
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v1, v0, v3

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    aput-object v1, v0, v4

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    aput-object v1, v0, v5

    const-string v1, "android.net.wifi.STATE_CHANGE"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    .line 173
    const-string v0, "000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    .line 174
    const-string v0, "0000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    .line 175
    const-string v0, "00000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    .line 176
    const-string v0, "000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    .line 177
    const-string v0, "0000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    .line 178
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_eight:Ljava/lang/String;

    .line 179
    const-string v0, "000000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_nine:Ljava/lang/String;

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    .line 184
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->isResetFileExist:Ljava/lang/Boolean;

    .line 264
    iput v1, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    .line 275
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    .line 318
    new-instance v0, Lcom/android/settings/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$1;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 331
    new-instance v0, Lcom/android/settings/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$2;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    .line 376
    new-instance v0, Lcom/android/settings/deviceinfo/Status$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$4;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 395
    new-instance v0, Lcom/android/settings/deviceinfo/Status$5;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$5;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 480
    new-instance v0, Lcom/android/settings/deviceinfo/Status$6;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$6;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->rilHandler:Landroid/os/Handler;

    .line 576
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->rilHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSvcModeMessenger:Landroid/os/Messenger;

    .line 1528
    new-instance v0, Lcom/android/settings/deviceinfo/Status$8;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$8;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1820
    new-instance v0, Lcom/android/settings/deviceinfo/Status$9;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$9;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 1862
    new-instance v0, Lcom/android/settings/deviceinfo/Status$10;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$10;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSecPhoneServiceConnectionVZW:Landroid/content/ServiceConnection;

    .line 1905
    new-instance v0, Lcom/android/settings/deviceinfo/Status$11;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$11;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/Status;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100()[B
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/android/settings/deviceinfo/Status;->buf:[B

    return-object v0
.end method

.method static synthetic access$1102([B)[B
    .locals 0
    .param p0, "x0"    # [B

    .prologue
    .line 128
    sput-object p0, Lcom/android/settings/deviceinfo/Status;->buf:[B

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mUserName:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings/deviceinfo/Status;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status;->mUserName:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings/deviceinfo/Status;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 128
    iget v0, p0, Lcom/android/settings/deviceinfo/Status;->NAI_length:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/settings/deviceinfo/Status;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/android/settings/deviceinfo/Status;->NAI_length:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1484(Lcom/android/settings/deviceinfo/Status;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/deviceinfo/Status;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # [B

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->setActivationDateStatus([B)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/settings/deviceinfo/Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/Status;->mImsRegistered:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/settings/deviceinfo/Status;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->getOemData()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/deviceinfo/Status;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/Status;->getOemData(II)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mFirstCall:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/deviceinfo/Status;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->changeSysScopeStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateDataState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/Status;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 128
    iget v0, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/Status;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/Status;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/android/settings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object v0
.end method

.method private changeSysScopeStatus()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const v9, 0x7f0a01cd

    const/4 v8, -0x1

    .line 1475
    const-string v6, "sysscope_status"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1476
    .local v2, "pref":Landroid/preference/Preference;
    const/4 v3, 0x0

    .line 1477
    .local v3, "status":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    div-long v0, v6, v10

    .line 1478
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    div-long v4, v6, v10

    .line 1480
    .local v4, "ut":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 1481
    const-wide/16 v4, 0x1

    .line 1484
    :cond_0
    iget v6, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    if-ne v6, v8, :cond_1

    const-wide/16 v6, 0x78

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    .line 1485
    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1496
    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1497
    return-void

    .line 1487
    :cond_1
    iget v6, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 1488
    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1489
    :cond_2
    iget v6, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    if-ne v6, v8, :cond_3

    .line 1490
    const v6, 0x7f0a01ce

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1492
    :cond_3
    const v6, 0x7f0a01cc

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private connectToRilService()V
    .locals 3

    .prologue
    .line 1814
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1815
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1816
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1817
    return-void
.end method

.method private connectToRilServiceVZW()V
    .locals 3

    .prologue
    .line 1835
    const-string v1, "Status"

    const-string v2, "connect To Secphone service"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1837
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1838
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mSecPhoneServiceConnectionVZW:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1839
    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 9
    .param p1, "t"    # J

    .prologue
    const-wide/16 v6, 0x3c

    .line 1520
    rem-long v4, p1, v6

    long-to-int v2, v4

    .line 1521
    .local v2, "s":I
    div-long v4, p1, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 1522
    .local v1, "m":I
    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    long-to-int v0, v4

    .line 1524
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "devID"    # Ljava/lang/String;

    .prologue
    .line 1572
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1573
    .local v0, "len":I
    const/4 v1, 0x0

    .line 1576
    .local v1, "out":Ljava/lang/StringBuilder;
    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 1577
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1582
    :cond_0
    :goto_0
    return-object v1

    .line 1578
    :cond_1
    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    .line 1579
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0
.end method

.method private convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 8
    .param p1, "esnno"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x2

    .line 1592
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1593
    .local v1, "dmfcode":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 1594
    .local v2, "dserialno":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1596
    .local v0, "decESN":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1605
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1630
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    return-object v3

    .line 1598
    :pswitch_0
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1601
    :pswitch_1
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1609
    :pswitch_2
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1612
    :pswitch_3
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1615
    :pswitch_4
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1618
    :pswitch_5
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1621
    :pswitch_6
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1624
    :pswitch_7
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1627
    :pswitch_8
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1596
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1607
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 8
    .param p1, "meidno"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    .line 1640
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1641
    .local v1, "dmfcode":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 1642
    .local v2, "dserialno":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1644
    .local v0, "decMEID":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1674
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1699
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    return-object v3

    .line 1646
    :pswitch_0
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1649
    :pswitch_1
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1652
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1655
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1658
    :pswitch_4
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1661
    :pswitch_5
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1664
    :pswitch_6
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1667
    :pswitch_7
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_eight:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1670
    :pswitch_8
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_nine:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1678
    :pswitch_9
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1681
    :pswitch_a
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1684
    :pswitch_b
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1687
    :pswitch_c
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1690
    :pswitch_d
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1693
    :pswitch_e
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1696
    :pswitch_f
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1644
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1676
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private getOemData()V
    .locals 7

    .prologue
    .line 442
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 443
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 446
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 447
    .local v3, "fileSize":I
    const/16 v4, 0x51

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 448
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 449
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 450
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 456
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 461
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v2

    .line 458
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 451
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 455
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 456
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 457
    :catch_2
    move-exception v2

    .line 458
    const-string v4, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 454
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 455
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 456
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 459
    :goto_1
    throw v4

    .line 457
    :catch_3
    move-exception v2

    .line 458
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getOemData(II)V
    .locals 7
    .param p1, "mainOemid"    # I
    .param p2, "subOemid"    # I

    .prologue
    .line 1843
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1844
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1847
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 1848
    .local v3, "fileSize":I
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1849
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1850
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1851
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1852
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1858
    const-string v4, "Status"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getOemData with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1860
    :goto_0
    return-void

    .line 1853
    :catch_0
    move-exception v2

    .line 1854
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "Status"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOemData(int, int).. exception occured during operation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 347
    new-instance v0, Lcom/android/settings/deviceinfo/Status$3;

    invoke-direct {v0, p0, p1, p1}, Lcom/android/settings/deviceinfo/Status$3;-><init>(Lcom/android/settings/deviceinfo/Status;II)V

    .line 373
    .local v0, "mPhoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private getServiceStateString(I)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1152
    packed-switch p1, :pswitch_data_0

    .line 1164
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0a00e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1154
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0a00d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1158
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0a00d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1161
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0a00da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hasBluetooth()Z
    .locals 1

    .prologue
    .line 406
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasWimax()Z
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 464
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 465
    .local v0, "req":Landroid/os/Bundle;
    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 466
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 467
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 470
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 477
    :goto_0
    return-void

    .line 473
    :cond_0
    const-string v1, "Status"

    const-string v2, "mServiceMessenger is null. Do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 475
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 1512
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 1513
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1515
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1121
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1122
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1125
    :cond_0
    return-void
.end method

.method private setActivationDateStatus([B)V
    .locals 14
    .param p1, "data"    # [B

    .prologue
    .line 542
    const/4 v12, 0x2

    new-array v8, v12, [B

    .line 543
    .local v8, "newBytes":[B
    const/4 v12, 0x0

    const/4 v13, 0x1

    aget-byte v13, p1, v13

    aput-byte v13, v8, v12

    .line 544
    const/4 v12, 0x1

    const/4 v13, 0x0

    aget-byte v13, p1, v13

    aput-byte v13, v8, v12

    .line 545
    const/4 v10, 0x0

    .line 547
    .local v10, "value":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v12, v8

    if-ge v5, v12, :cond_0

    .line 548
    shl-int/lit8 v12, v10, 0x8

    aget-byte v13, v8, v5

    and-int/lit16 v13, v13, 0xff

    add-int v10, v12, v13

    .line 547
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 551
    :cond_0
    move v11, v10

    .line 552
    .local v11, "year":I
    const/4 v12, 0x2

    aget-byte v7, p1, v12

    .line 553
    .local v7, "month":I
    const/4 v12, 0x3

    aget-byte v2, p1, v12

    .line 554
    .local v2, "day":I
    const/4 v12, 0x4

    aget-byte v4, p1, v12

    .line 555
    .local v4, "hour":I
    const/4 v12, 0x5

    aget-byte v6, p1, v12

    .line 556
    .local v6, "minute":I
    const/4 v12, 0x6

    aget-byte v9, p1, v12

    .line 559
    .local v9, "second":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 560
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v12, 0x1

    invoke-virtual {v0, v12, v11}, Ljava/util/Calendar;->set(II)V

    .line 561
    const/4 v12, 0x2

    invoke-virtual {v0, v12, v7}, Ljava/util/Calendar;->set(II)V

    .line 562
    const/4 v12, 0x5

    invoke-virtual {v0, v12, v2}, Ljava/util/Calendar;->set(II)V

    .line 563
    const/16 v12, 0xa

    invoke-virtual {v0, v12, v4}, Ljava/util/Calendar;->set(II)V

    .line 564
    const/16 v12, 0xc

    invoke-virtual {v0, v12, v6}, Ljava/util/Calendar;->set(II)V

    .line 565
    const/16 v12, 0xd

    invoke-virtual {v0, v12, v9}, Ljava/util/Calendar;->set(II)V

    .line 567
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "date_format"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, "dateFormatSetting":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v12

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 569
    .local v3, "formatted_date":Ljava/lang/String;
    const-string v12, "factorydatareset"

    invoke-direct {p0, v12, v3}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v12, p0, Lcom/android/settings/deviceinfo/Status;->mSecPhoneServiceConnectionVZW:Landroid/content/ServiceConnection;

    if-eqz v12, :cond_1

    .line 572
    iget-object v12, p0, Lcom/android/settings/deviceinfo/Status;->mSecPhoneServiceConnectionVZW:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v12}, Lcom/android/settings/deviceinfo/Status;->unbindService(Landroid/content/ServiceConnection;)V

    .line 574
    :cond_1
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 1454
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 1455
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    .line 1456
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1457
    .local v0, "address":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1459
    :cond_1
    return-void

    .line 1456
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFirstCallstatus()V
    .locals 8

    .prologue
    const/16 v7, 0xe

    .line 1882
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1883
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1884
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v3, 0x0

    .line 1887
    .local v3, "mFactoryPhone":Lcom/samsung/android/sec_platform_library/FactoryPhone;
    const/4 v4, 0x4

    .line 1888
    .local v4, "size":I
    const/16 v5, 0x16

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1889
    const/16 v5, 0xe

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1890
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1895
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1901
    :goto_0
    new-instance v3, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .end local v3    # "mFactoryPhone":Lcom/samsung/android/sec_platform_library/FactoryPhone;
    invoke-direct {v3, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    .line 1902
    .restart local v3    # "mFactoryPhone":Lcom/samsung/android/sec_platform_library/FactoryPhone;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1903
    return-void

    .line 1896
    :catch_0
    move-exception v2

    .line 1897
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "Status"

    const-string v6, "IOException in getOemData!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1891
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 1892
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1895
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1896
    :catch_2
    move-exception v2

    .line 1897
    const-string v5, "Status"

    const-string v6, "IOException in getOemData!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1894
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 1895
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1898
    :goto_1
    throw v5

    .line 1896
    :catch_3
    move-exception v2

    .line 1897
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "Status"

    const-string v7, "IOException in getOemData!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 1445
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    invoke-static {v1}, Lcom/android/settings/Utils;->getDefaultIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v0

    .line 1446
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1447
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1451
    :goto_0
    return-void

    .line 1449
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setRssiNoti(I)V
    .locals 7
    .param p1, "onOff"    # I

    .prologue
    const/4 v6, 0x0

    .line 415
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 416
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 419
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 420
    .local v3, "fileSize":I
    const/16 v4, 0x18

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 421
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 422
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 423
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    if-eqz v1, :cond_0

    .line 429
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 435
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v6

    if-eqz v4, :cond_1

    .line 436
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v6

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 438
    :cond_1
    return-void

    .line 431
    :catch_0
    move-exception v2

    .line 432
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "Status"

    const-string v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 424
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 425
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 428
    if-eqz v1, :cond_0

    .line 429
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 431
    :catch_2
    move-exception v2

    .line 432
    const-string v4, "Status"

    const-string v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 427
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 428
    if-eqz v1, :cond_2

    .line 429
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 433
    :cond_2
    :goto_1
    throw v4

    .line 431
    :catch_3
    move-exception v2

    .line 432
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "Status"

    const-string v6, "setRssiNoti : dos.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1142
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    iget-object p2, p0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 1146
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1147
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1149
    :cond_1
    return-void
.end method

.method private setSysScopeStatus()V
    .locals 2

    .prologue
    .line 1470
    const-string v1, "sysscope_status"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1471
    .local v0, "pref":Landroid/preference/Preference;
    const v1, 0x7f0a01ce

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1472
    return-void
.end method

.method private setWifiStatus()V
    .locals 4

    .prologue
    .line 1404
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1405
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1406
    .local v0, "macAddress":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mWifiMacAddress:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1407
    return-void

    .line 1405
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setWimaxStatus()V
    .locals 3

    .prologue
    .line 1397
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 1398
    const-string v1, "net.wimax.mac.address"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1399
    .local v0, "macAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1401
    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    .line 1316
    if-eqz p1, :cond_0

    .line 1317
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 6

    .prologue
    .line 1232
    iget v3, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v2

    .line 1233
    .local v2, "subId":[J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getDataState(J)I

    move-result v1

    .line 1235
    .local v1, "state":I
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a00e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1237
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 1252
    :goto_0
    const-string v3, "data_state"

    invoke-direct {p0, v3, v0}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    return-void

    .line 1239
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a00e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1240
    goto :goto_0

    .line 1242
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a00e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1243
    goto :goto_0

    .line 1245
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a00e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1246
    goto :goto_0

    .line 1248
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a00e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 5

    .prologue
    .line 1169
    const-string v2, "gsm.network.type"

    iget v3, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1172
    .local v0, "networkType":Ljava/lang/String;
    const-string v2, "Status"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkType() => networkType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1175
    const-string v2, "gsm.voice.network.type"

    iget v3, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1178
    .local v1, "voiceNetworkType":Ljava/lang/String;
    const-string v2, "Unknown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Unknown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1179
    move-object v0, v1

    .line 1180
    const-string v2, "Status"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Replace networkType with voiceNetworkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_0
    const-string v2, "CDMA-IS95A"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CDMA-IS95B"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1183
    :cond_1
    const-string v0, "CDMA 1x"

    .line 1223
    .end local v1    # "voiceNetworkType":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v2, "Status"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkType() => networkType name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    const-string v2, "Unknown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1226
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 1228
    :cond_3
    const-string v2, "network_type"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    return-void

    .line 1184
    .restart local v1    # "voiceNetworkType":Ljava/lang/String;
    :cond_4
    const-string v2, "EvDo-rev.0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1185
    const-string v0, "CDMA EVDO"

    goto :goto_0

    .line 1186
    :cond_5
    const-string v2, "EvDo-rev.A"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1187
    const-string v0, "CDMA EVDO"

    goto :goto_0

    .line 1188
    :cond_6
    const-string v2, "EvDo-rev.B"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1189
    const-string v0, "CDMA EVDO"

    goto :goto_0

    .line 1190
    :cond_7
    const-string v2, "1xRTT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1191
    const-string v0, "CDMA 1x"

    goto :goto_0

    .line 1192
    :cond_8
    const-string v2, "UMTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1193
    const-string v0, "WCDMA"

    goto :goto_0

    .line 1194
    :cond_9
    const-string v2, "HSDPA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "HSUPA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "HSPA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1195
    :cond_a
    const-string v0, "HSPA"

    goto :goto_0

    .line 1196
    :cond_b
    const-string v2, "HSPAP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1197
    const-string v0, "HSPA+"

    goto/16 :goto_0

    .line 1198
    :cond_c
    const-string v2, "eHRPD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1199
    const-string v0, "eHRPD"

    goto/16 :goto_0

    .line 1200
    :cond_d
    const-string v2, "LTE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1201
    const-string v0, "LTE"

    goto/16 :goto_0

    .line 1202
    :cond_e
    const-string v2, "GPRS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "EDGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "GSM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1203
    const-string v2, "TD-SCDMA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1204
    const-string v0, "TD-SCDMA"

    goto/16 :goto_0

    .line 1206
    :cond_f
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    goto/16 :goto_0

    .line 1209
    .end local v1    # "voiceNetworkType":Ljava/lang/String;
    :cond_10
    iget v2, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkType(I)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 1212
    const-string v2, "VZW"

    sget-object v3, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1214
    const-string v2, "false"

    const-string v3, "ro.ril.svlte1x"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->getDataState(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const-string v2, "LTE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1217
    const-string v0, "1x RTT"

    goto/16 :goto_0

    .line 1219
    :cond_11
    const-string v2, "OMN"

    sget-object v3, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "O2U"

    sget-object v3, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1220
    :cond_12
    const-string v2, "LTE"

    const-string v3, "4G"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 9
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const v8, 0x7f0a00dd

    const v7, 0x7f0a00dc

    .line 1257
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 1258
    .local v3, "voiceState":I
    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v2

    .line 1260
    .local v2, "voiceDisplay":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1261
    const-string v4, "service_state"

    invoke-direct {p0, v4, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_UseChameleon"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1269
    const-string v4, "persist.sys.roaming_menu"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1270
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1271
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    :cond_0
    :goto_1
    const-string v4, "DCM"

    sget-object v5, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1286
    const-string v4, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    :cond_1
    :goto_2
    return-void

    .line 1263
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    .line 1264
    .local v1, "dataState":I
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v0

    .line 1265
    .local v0, "dataDisplay":Ljava/lang/String;
    const-string v4, "service_state"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Voice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / Data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1273
    .end local v0    # "dataDisplay":Ljava/lang/String;
    .end local v1    # "dataState":I
    :cond_3
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1277
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportStatusRoamingMenu()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1278
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1279
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1281
    :cond_5
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1287
    :cond_6
    const-string v4, "TGY"

    sget-object v5, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1288
    :cond_7
    iget v4, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1289
    iget v4, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "China Telecom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1290
    const-string v4, "operator_name"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0a14fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1291
    :cond_8
    iget v4, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CU GSM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    iget v4, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "China Unicom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    iget v4, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CHN-UNICOM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    iget v4, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CHN-CUGSM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1295
    :cond_9
    const-string v4, "operator_name"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0a14ef

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1296
    :cond_a
    iget v4, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CMCC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    iget v4, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CHINA MOBILE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1298
    :cond_b
    const-string v4, "operator_name"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0a14ee

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1299
    :cond_c
    iget v4, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PCCW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    iget v4, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PCCW-HKT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1301
    :cond_d
    const-string v4, "operator_name"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0a14f6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1303
    :cond_e
    const-string v4, "operator_name"

    iget v5, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v5}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1306
    :cond_f
    const-string v4, "KDI"

    sget-object v5, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1307
    const-string v4, "kddi"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1308
    const-string v4, "operator_name"

    const-string v5, "au"

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1311
    :cond_10
    const-string v4, "operator_name"

    iget v5, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v5}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private updateStatus(I)V
    .locals 36
    .param p1, "selectSim"    # I

    .prologue
    .line 718
    const/16 v27, 0x0

    .line 719
    .local v27, "selectPhone":Lcom/android/internal/telephony/Phone;
    const/16 v20, 0x0

    .line 721
    .local v20, "manager":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v32, v0

    if-eqz v32, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_1

    .line 722
    :cond_0
    sget-object v4, Lcom/android/settings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    move/from16 v0, v17

    if-ge v9, v0, :cond_2d

    aget-object v16, v4, v9

    .line 723
    .local v16, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 722
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 726
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v17    # "len$":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v32, v0

    aget-object v27, v32, p1

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v32, v0

    aget-object v20, v32, p1

    .line 731
    const-string v32, "CDMA"

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v32

    if-nez v32, :cond_2

    const-string v32, "VZW"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_22

    .line 732
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v32

    const-string v33, "CscFeature_Setting_EnableConversion4MEIDAndESN"

    invoke-virtual/range {v32 .. v33}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 734
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 735
    .local v6, "devId":Ljava/lang/String;
    const-string v32, "Status"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "KEY_MEID_NUMBER() : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    if-eqz v6, :cond_b

    .line 737
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    .local v21, "meid":Ljava/lang/StringBuilder;
    const-string v32, "Dec:"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/settings/deviceinfo/Status;->convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\nHex:0x"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    const-string v32, "meid_number"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v32, "Status"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "KEY_MEID_NUMBER() : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    .end local v6    # "devId":Ljava/lang/String;
    .end local v21    # "meid":Ljava/lang/StringBuilder;
    :goto_1
    const-string v32, "VZW"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v32

    if-eqz v32, :cond_4

    .line 750
    :cond_3
    const-string v32, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 753
    :cond_4
    const-string v32, "VZW"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_5

    const-string v32, "CDMA"

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_5

    .line 754
    const-string v32, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 755
    const-string v32, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 758
    :cond_5
    const-string v32, "min_number"

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f0d0036

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 761
    const-string v32, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    const v33, 0x7f0a0756

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setTitle(I)V

    .line 763
    :cond_6
    const-string v32, "prl_version"

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v32, "VZW"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v32

    if-nez v32, :cond_d

    const-string v32, "TMB"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_d

    .line 766
    const-string v32, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 771
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v32

    if-nez v32, :cond_7

    const-string v32, "TMB"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 772
    :cond_7
    const-string v32, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 773
    const-string v32, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 774
    const-string v32, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 777
    :cond_8
    const-string v32, "SGH-T999N"

    const-string v33, "ro.product.model"

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v32

    if-nez v32, :cond_9

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_9

    const-string v32, "VZW"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_9

    const-string v32, "TMB"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1d

    .line 782
    :cond_9
    const-string v32, "VZW"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_14

    .line 783
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v10

    .line 785
    .local v10, "icc_id":Ljava/lang/String;
    if-eqz v10, :cond_13

    .line 786
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    .line 787
    .local v11, "icc_id_arr":[C
    const-string v12, ""

    .line 789
    .local v12, "icc_id_vzw":Ljava/lang/String;
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_3
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    if-ge v8, v0, :cond_e

    .line 790
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    add-int/lit8 v33, v8, -0x1

    aget-char v33, v11, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 792
    rem-int/lit8 v32, v8, 0x4

    if-nez v32, :cond_a

    .line 793
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 789
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 743
    .end local v8    # "i":I
    .end local v10    # "icc_id":Ljava/lang/String;
    .end local v11    # "icc_id_arr":[C
    .end local v12    # "icc_id_vzw":Ljava/lang/String;
    .restart local v6    # "devId":Ljava/lang/String;
    :cond_b
    const-string v32, "meid_number"

    const-string v33, "Unknown"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 746
    .end local v6    # "devId":Ljava/lang/String;
    :cond_c
    const-string v32, "meid_number"

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 768
    :cond_d
    const-string v33, "imei_sv"

    const-string v32, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 796
    .restart local v8    # "i":I
    .restart local v10    # "icc_id":Ljava/lang/String;
    .restart local v11    # "icc_id_arr":[C
    .restart local v12    # "icc_id_vzw":Ljava/lang/String;
    :cond_e
    const-string v32, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v12}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    .end local v8    # "i":I
    .end local v10    # "icc_id":Ljava/lang/String;
    .end local v11    # "icc_id_arr":[C
    .end local v12    # "icc_id_vzw":Ljava/lang/String;
    :goto_4
    const-string v32, "USC"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_f

    const-string v32, "XAR"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v32

    if-eqz v32, :cond_17

    .line 805
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aget-object v32, v32, v33

    invoke-interface/range {v32 .. v32}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0xd

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_16

    .line 806
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v32

    if-nez v32, :cond_15

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v32

    if-eqz v32, :cond_15

    .line 807
    const-string v32, "imei"

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/telephony/MultiSimManager;->getImei(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v32

    if-eqz v32, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aget-object v32, v32, v33

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v32

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_20

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aget-object v32, v32, v33

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    check-cast v5, Landroid/telephony/cdma/CdmaCellLocation;

    .line 844
    .local v5, "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    if-eqz v5, :cond_10

    .line 845
    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v30

    .line 846
    .local v30, "sid":I
    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v22

    .line 847
    .local v22, "nid":I
    const-string v33, "sid_number"

    const/16 v32, -0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    move-object/from16 v32, v0

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v33, "nid_number"

    const/16 v32, -0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    move-object/from16 v32, v0

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    .end local v5    # "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v22    # "nid":I
    .end local v30    # "sid":I
    :cond_10
    :goto_8
    const-string v32, "SPR"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_21

    .line 856
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->connectToRilService()V

    .line 908
    :goto_9
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v23

    .line 909
    .local v23, "rawNumber":Ljava/lang/String;
    const/4 v7, 0x0

    .line 911
    .local v7, "formattedNumber":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_12

    .line 912
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v32

    if-eqz v32, :cond_11

    .line 913
    const-string v32, "\\+82"

    const-string v33, "0"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 916
    :cond_11
    invoke-static/range {v23 .. v23}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 919
    :cond_12
    const-string v32, "number"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v7}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 922
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->updateDataState()V

    .line 924
    const/16 v31, 0x0

    .local v31, "simSlotNum":I
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_2b

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v33

    aput-object v33, v32, v31

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    move-object/from16 v32, v0

    aget-object v32, v32, v31

    const/16 v33, 0x141

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 924
    add-int/lit8 v31, v31, 0x1

    goto :goto_a

    .line 798
    .end local v7    # "formattedNumber":Ljava/lang/String;
    .end local v23    # "rawNumber":Ljava/lang/String;
    .end local v31    # "simSlotNum":I
    .restart local v10    # "icc_id":Ljava/lang/String;
    :cond_13
    const-string v32, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v10}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 801
    .end local v10    # "icc_id":Ljava/lang/String;
    :cond_14
    const-string v32, "icc_id"

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 809
    :cond_15
    const-string v32, "imei"

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/telephony/MultiSimManager;->getImei(I)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    const/16 v35, 0xe

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 811
    :cond_16
    const-string v32, "imei"

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/telephony/MultiSimManager;->getImei(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 813
    :cond_17
    const-string v32, "VZW"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1b

    .line 814
    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/telephony/MultiSimManager;->getImei(I)Ljava/lang/String;

    move-result-object v13

    .line 815
    .local v13, "imei":Ljava/lang/String;
    if-eqz v13, :cond_1a

    .line 816
    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    .line 817
    .local v14, "imei_arr":[C
    const-string v15, ""

    .line 818
    .local v15, "imei_vzw":Ljava/lang/String;
    const/4 v8, 0x1

    .restart local v8    # "i":I
    :goto_b
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    if-ge v8, v0, :cond_19

    .line 819
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    add-int/lit8 v33, v8, -0x1

    aget-char v33, v14, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 820
    rem-int/lit8 v32, v8, 0x4

    if-nez v32, :cond_18

    .line 821
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 818
    :cond_18
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 824
    :cond_19
    const-string v32, "imei"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v15}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 826
    .end local v8    # "i":I
    .end local v14    # "imei_arr":[C
    .end local v15    # "imei_vzw":Ljava/lang/String;
    :cond_1a
    const-string v32, "imei"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v13}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 829
    .end local v13    # "imei":Ljava/lang/String;
    :cond_1b
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v32

    if-eqz v32, :cond_1c

    .line 830
    const-string v32, "imei"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/telephony/MultiSimManager;->getImei(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 832
    :cond_1c
    const-string v32, "imei"

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/telephony/MultiSimManager;->getImei(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 838
    :cond_1d
    const-string v32, "imei"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 839
    const-string v32, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 847
    .restart local v5    # "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v22    # "nid":I
    .restart local v30    # "sid":I
    :cond_1e
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_6

    .line 848
    :cond_1f
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_7

    .line 851
    .end local v5    # "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v22    # "nid":I
    .end local v30    # "sid":I
    :cond_20
    const-string v32, "sid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 852
    const-string v32, "nid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 858
    :cond_21
    const-string v32, "user_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 862
    :cond_22
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v32

    if-nez v32, :cond_23

    const-string v32, "KDI"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_25

    .line 863
    :cond_23
    const-string v32, "imei"

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/telephony/MultiSimManager;->getImei(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    :goto_c
    const-string v33, "imei_sv"

    const-string v32, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    const-string v32, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 895
    const-string v32, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 896
    const-string v32, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 899
    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v32

    if-nez v32, :cond_24

    .line 900
    const-string v32, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 903
    :cond_24
    const-string v32, "sid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 904
    const-string v32, "nid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 905
    const-string v32, "user_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 864
    :cond_25
    const-string v32, "VZW"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_29

    .line 865
    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/telephony/MultiSimManager;->getImei(I)Ljava/lang/String;

    move-result-object v13

    .line 867
    .restart local v13    # "imei":Ljava/lang/String;
    if-eqz v13, :cond_28

    .line 868
    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    .line 869
    .restart local v14    # "imei_arr":[C
    const-string v15, ""

    .line 871
    .restart local v15    # "imei_vzw":Ljava/lang/String;
    const/4 v8, 0x1

    .restart local v8    # "i":I
    :goto_d
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    if-ge v8, v0, :cond_27

    .line 872
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    add-int/lit8 v33, v8, -0x1

    aget-char v33, v14, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 874
    rem-int/lit8 v32, v8, 0x4

    if-nez v32, :cond_26

    .line 875
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 871
    :cond_26
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 878
    :cond_27
    const-string v32, "imei"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v15}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 880
    .end local v8    # "i":I
    .end local v14    # "imei_arr":[C
    .end local v15    # "imei_vzw":Ljava/lang/String;
    :cond_28
    const-string v32, "imei"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v13}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 883
    .end local v13    # "imei":Ljava/lang/String;
    :cond_29
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v32

    if-eqz v32, :cond_2a

    .line 884
    const-string v32, "imei"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/telephony/MultiSimManager;->getImei(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 886
    :cond_2a
    const-string v32, "imei"

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/telephony/MultiSimManager;->getImei(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 933
    .restart local v7    # "formattedNumber":Ljava/lang/String;
    .restart local v23    # "rawNumber":Ljava/lang/String;
    .restart local v31    # "simSlotNum":I
    :cond_2b
    const-string v32, "br"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget-object v33, v33, v34

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2c

    .line 934
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/deviceinfo/Status;->mShowLatestAreaInfo:Z

    .line 936
    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/Status;->mShowLatestAreaInfo:Z

    move/from16 v32, v0

    if-nez v32, :cond_2d

    .line 937
    const-string v32, "latest_area_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 947
    .end local v7    # "formattedNumber":Ljava/lang/String;
    .end local v23    # "rawNumber":Ljava/lang/String;
    .end local v31    # "simSlotNum":I
    :cond_2d
    const-string v32, "ethernet_mac_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 951
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->setSysScopeStatus()V

    .line 954
    const-string v32, "ril.serialnumber"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 955
    .local v19, "mRilSerial":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_2e

    const-string v32, "00000000000"

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_38

    :cond_2e
    const-string v28, "ro.serialno"

    .line 956
    .local v28, "serial":Ljava/lang/String;
    :goto_e
    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 957
    .local v29, "serialNum":Ljava/lang/String;
    const-string v32, "Status"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "serial:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const-string v32, "Status"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "serialNum:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const-string v32, "VZW"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_39

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->isResetFileExist:Ljava/lang/Boolean;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    if-nez v32, :cond_2f

    .line 962
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->connectToRilServiceVZW()V

    .line 969
    :cond_2f
    :goto_f
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_3a

    .line 970
    const-string v32, "Status"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "serialNum : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const-string v32, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    :goto_10
    const-string v32, "KDI"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_30

    .line 979
    const-string v32, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 982
    :cond_30
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v32

    if-eqz v32, :cond_32

    .line 983
    const-string v32, "signal_strength"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 984
    const-string v32, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 985
    const-string v32, "wifi_ip_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 986
    const-string v32, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 988
    const-string v32, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 989
    const-string v32, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 992
    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v32

    if-nez v32, :cond_31

    .line 993
    const-string v32, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 995
    :cond_31
    const-string v32, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 998
    :cond_32
    const-string v32, "GT-P3113"

    sget-object v33, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_34

    const-string v32, "GT-P5113"

    sget-object v33, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_34

    const-string v32, "VZW"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_33

    const-string v32, "SPR"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_33

    const-string v32, "USC"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_33

    const-string v32, "VMU"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_33

    const-string v32, "BST"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_33

    const-string v32, "XAS"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_33

    const-string v32, "ACG"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_33

    const-string v32, "LRA"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_34

    .line 1001
    :cond_33
    const-string v32, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1004
    :cond_34
    const-string v32, "DCM"

    sget-object v33, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_35

    .line 1005
    const-string v32, "signal_strength"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1006
    const-string v32, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1009
    :cond_35
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v32

    const-string v33, "CscFeature_Setting_EnableDeviceInfo4Vzw"

    invoke-virtual/range {v32 .. v33}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_3c

    .line 1011
    const-string v32, "ril.eri_ver_1"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1013
    .local v3, "ERI_SysProp":Ljava/lang/String;
    if-eqz v3, :cond_3b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_3b

    .line 1014
    const-string v32, "eri_version"

    const/16 v33, 0x2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    .end local v3    # "ERI_SysProp":Ljava/lang/String;
    :goto_11
    const/16 v18, 0x0

    .line 1023
    .local v18, "mImsInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    const/16 v32, 0x7

    move/from16 v0, v32

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "mImsInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    check-cast v18, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 1024
    .restart local v18    # "mImsInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    const-string v26, "0"

    .line 1025
    .local v26, "retVal":Ljava/lang/String;
    if-eqz v18, :cond_36

    .line 1026
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v32, 0x0

    const/16 v33, 0x6d

    aput v33, v24, v32

    .line 1027
    .local v24, "reqFields":[I
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getIMSSettingValues([I)Landroid/util/SparseArray;

    move-result-object v25

    .line 1028
    .local v25, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v25, :cond_36

    .line 1029
    const/16 v32, 0x6d

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "retVal":Ljava/lang/String;
    check-cast v26, Ljava/lang/String;

    .line 1032
    .end local v24    # "reqFields":[I
    .end local v25    # "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v26    # "retVal":Ljava/lang/String;
    :cond_36
    const-string v32, "1"

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3e

    .line 1033
    if-eqz v18, :cond_3d

    invoke-interface/range {v18 .. v18}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isRegistered()Z

    move-result v32

    if-eqz v32, :cond_3d

    .line 1034
    const-string v32, "ims_reg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    move-object/from16 v33, v0

    const v34, 0x7f0a0354

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const-string v32, "Status"

    const-string v33, "KEY_SMI_STATUS : on"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :goto_12
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v32

    const-string v33, "CscFeature_Common_UseChameleon"

    invoke-virtual/range {v32 .. v33}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_3f

    .line 1046
    const-string v32, "persist.sys.roaming_menu"

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_37

    .line 1047
    const-string v32, "roaming_state"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1053
    :cond_37
    :goto_13
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v32

    if-eqz v32, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v32

    if-nez v32, :cond_40

    .line 1054
    const-string v32, "first_call_date"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mFirstCall:Landroid/preference/Preference;

    .line 1055
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->setFirstCallstatus()V

    .line 1059
    :goto_14
    return-void

    .line 955
    .end local v18    # "mImsInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    .end local v26    # "retVal":Ljava/lang/String;
    .end local v28    # "serial":Ljava/lang/String;
    .end local v29    # "serialNum":Ljava/lang/String;
    :cond_38
    const-string v28, "ril.serialnumber"

    goto/16 :goto_e

    .line 965
    .restart local v28    # "serial":Ljava/lang/String;
    .restart local v29    # "serialNum":Ljava/lang/String;
    :cond_39
    const-string v32, "factorydatareset"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 973
    :cond_3a
    const-string v32, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1016
    .restart local v3    # "ERI_SysProp":Ljava/lang/String;
    :cond_3b
    const-string v32, "eri_version"

    const-string v33, "ERI : <unknown>"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1019
    .end local v3    # "ERI_SysProp":Ljava/lang/String;
    :cond_3c
    const-string v32, "eri_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1038
    .restart local v18    # "mImsInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    .restart local v26    # "retVal":Ljava/lang/String;
    :cond_3d
    const-string v32, "ims_reg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    move-object/from16 v33, v0

    const v34, 0x7f0a0355

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const-string v32, "Status"

    const-string v33, "KEY_SMI_STATUS : off"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 1042
    :cond_3e
    const-string v32, "ims_reg"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1049
    :cond_3f
    invoke-static {}, Lcom/android/settings/Utils;->isSupportStatusRoamingMenu()Z

    move-result v32

    if-nez v32, :cond_37

    .line 1050
    const-string v32, "roaming_state"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1057
    :cond_40
    const-string v32, "first_call_date"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_14
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 580
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 582
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 583
    .local v10, "intent":Landroid/content/Intent;
    const-string v17, "sim Id"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 584
    const-string v17, "sim Id"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    .line 585
    const-string v17, "Status"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mActivePhone : ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_0
    new-instance v17, Lcom/android/settings/deviceinfo/Status$MyHandler;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status$MyHandler;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 588
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    .line 589
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Landroid/telephony/TelephonyManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    .line 590
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Landroid/telephony/PhoneStateListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 591
    const/4 v15, 0x0

    .local v15, "simSlotNum":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v15, v0, :cond_1

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v18, v0

    const-string v17, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    aput-object v17, v18, v15

    .line 591
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 595
    :cond_1
    const-string v17, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    .line 596
    const-string v17, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 598
    const v17, 0x7f070040

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 599
    const-string v17, "battery_level"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    .line 600
    const-string v17, "battery_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    .line 601
    const-string v17, "bt_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    .line 602
    const-string v17, "wifi_mac_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mWifiMacAddress:Landroid/preference/Preference;

    .line 603
    const-string v17, "wimax_mac_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 604
    const-string v17, "wifi_ip_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    .line 606
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f0a00c2

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f0a0768

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    .line 610
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    .line 613
    const-string v17, "VZW"

    sget-object v18, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 614
    new-instance v13, Ljava/io/File;

    const-string v17, "/efs/LastResetDate.txt"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 615
    .local v13, "resetFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 616
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->isResetFileExist:Ljava/lang/Boolean;

    .line 617
    const/4 v8, 0x0

    .line 620
    .local v8, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 623
    .end local v8    # "in":Ljava/io/BufferedReader;
    .local v9, "in":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, "line":Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 624
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 625
    .local v3, "calendar":Ljava/util/Calendar;
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v17, "MM/dd/yyyy HH:mm:ss"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 627
    .local v14, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_2
    invoke-virtual {v14, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 633
    :goto_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "date_format"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 634
    .local v4, "dateFormatSetting":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v17

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 635
    .local v5, "date_string":Ljava/lang/String;
    const-string v17, "factorydatareset"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 637
    .end local v3    # "calendar":Ljava/util/Calendar;
    .end local v4    # "dateFormatSetting":Ljava/lang/String;
    .end local v5    # "date_string":Ljava/lang/String;
    .end local v12    # "line":Ljava/lang/String;
    .end local v14    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v6

    move-object v8, v9

    .line 639
    .end local v9    # "in":Ljava/io/BufferedReader;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    :goto_3
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 641
    if-eqz v8, :cond_2

    .line 643
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 653
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "in":Ljava/io/BufferedReader;
    .end local v13    # "resetFile":Ljava/io/File;
    :cond_2
    :goto_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    if-nez v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 654
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 655
    const/4 v15, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v15, v0, :cond_5

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-static {v15}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v18

    aput-object v18, v17, v15

    .line 655
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 628
    .restart local v3    # "calendar":Ljava/util/Calendar;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v13    # "resetFile":Ljava/io/File;
    .restart local v14    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v6

    .line 630
    .local v6, "e":Ljava/text/ParseException;
    :try_start_6
    invoke-virtual {v6}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 641
    .end local v3    # "calendar":Ljava/util/Calendar;
    .end local v6    # "e":Ljava/text/ParseException;
    .end local v12    # "line":Ljava/lang/String;
    .end local v14    # "sdf":Ljava/text/SimpleDateFormat;
    :catchall_0
    move-exception v17

    move-object v8, v9

    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    :goto_6
    if-eqz v8, :cond_3

    .line 643
    :try_start_7
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 645
    :cond_3
    :goto_7
    throw v17

    .line 641
    .end local v8    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "line":Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_2

    .line 643
    :try_start_8
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    .line 644
    :catch_2
    move-exception v17

    goto :goto_4

    .line 660
    .end local v9    # "in":Ljava/io/BufferedReader;
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "resetFile":Ljava/io/File;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:[Landroid/preference/Preference;

    .line 661
    const/4 v15, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v15, v0, :cond_6

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:[Landroid/preference/Preference;

    move-object/from16 v17, v0

    const-string v18, "signal_strength"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    aput-object v18, v17, v15

    .line 661
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 665
    :cond_6
    const-string v17, "up_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    .line 666
    const-string v17, "ethernet_mac_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mEthernetMacAddressPref:Landroid/preference/Preference;

    .line 669
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->hasBluetooth()Z

    move-result v17

    if-nez v17, :cond_7

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 671
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    .line 674
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->hasWimax()Z

    move-result v17

    if-nez v17, :cond_8

    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 676
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 679
    :cond_8
    new-instance v17, Landroid/content/IntentFilter;

    invoke-direct/range {v17 .. v17}, Landroid/content/IntentFilter;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    .line 680
    sget-object v2, Lcom/android/settings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v11, v2

    .local v11, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_9
    if-ge v7, v11, :cond_9

    aget-object v16, v2, v7

    .line 681
    .local v16, "sintent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 680
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 684
    .end local v16    # "sintent":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->updateConnectivity()V

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getListView()Landroid/widget/ListView;

    move-result-object v17

    new-instance v18, Lcom/android/settings/deviceinfo/Status$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status$7;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 715
    return-void

    .line 644
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v11    # "len$":I
    .local v6, "e":Ljava/lang/Exception;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "resetFile":Ljava/io/File;
    :catch_3
    move-exception v17

    goto/16 :goto_4

    .end local v6    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v18

    goto/16 :goto_7

    .line 641
    :catchall_1
    move-exception v17

    goto/16 :goto_6

    .line 637
    :catch_5
    move-exception v6

    goto/16 :goto_3
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 1877
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->finish()V

    .line 1878
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1093
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 1095
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:[Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1097
    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/Status;->setRssiNoti(I)V

    .line 1099
    const/4 v1, 0x0

    .local v1, "simSlotNum":I
    :goto_0
    iget v2, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    if-ge v1, v2, :cond_0

    .line 1100
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1099
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1104
    .end local v1    # "simSlotNum":I
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/Status;->mShowLatestAreaInfo:Z

    if-eqz v2, :cond_1

    .line 1105
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1107
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1108
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1109
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    :goto_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1114
    return-void

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1063
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1065
    iget v1, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->updateStatus(I)V

    .line 1067
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:[Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1069
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->setRssiNoti(I)V

    .line 1070
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateDataState()V

    .line 1072
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/Status;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_0

    .line 1073
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1076
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v0, "getLatestIntent":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1081
    .end local v0    # "getLatestIntent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1083
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1085
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1086
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->changeSysScopeStatus()V

    .line 1088
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1089
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1937
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1938
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1939
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->finish()V

    .line 1941
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method updateConnectivity()V
    .locals 0

    .prologue
    .line 1462
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setWimaxStatus()V

    .line 1463
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setWifiStatus()V

    .line 1464
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setBtStatus()V

    .line 1465
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setIpAddressStatus()V

    .line 1466
    return-void
.end method

.method updateSignalStrength(IILandroid/telephony/SignalStrength;)V
    .locals 9
    .param p1, "slotId"    # I
    .param p2, "activePhone"    # I
    .param p3, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 1327
    const/4 v1, 0x0

    .line 1328
    .local v1, "preferenceStrength":Landroid/preference/Preference;
    const-string v6, "Status"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSignalStrength() slotId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / activePhone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*** "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iget v6, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    new-array v6, v6, [Landroid/preference/Preference;

    iput-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:[Landroid/preference/Preference;

    .line 1331
    const/4 v5, 0x0

    .local v5, "simSlotNum":I
    :goto_0
    iget v6, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    if-ge v5, v6, :cond_1

    .line 1332
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:[Landroid/preference/Preference;

    const-string v7, "signal_strength"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    aput-object v7, v6, v5

    .line 1333
    if-ne p2, v5, :cond_0

    .line 1334
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:[Landroid/preference/Preference;

    aget-object v1, v6, v5

    .line 1331
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1338
    :cond_1
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1339
    if-eqz v1, :cond_2

    .line 1340
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1342
    .local v2, "r":Landroid/content/res/Resources;
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v4

    .line 1343
    .local v4, "signalDbm":I
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v3

    .line 1345
    .local v3, "signalAsu":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0a00e8

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0a00e9

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1382
    .end local v2    # "r":Landroid/content/res/Resources;
    .end local v3    # "signalAsu":I
    .end local v4    # "signalDbm":I
    :cond_2
    :goto_1
    return-void

    .line 1351
    :cond_3
    if-eqz v1, :cond_2

    .line 1352
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1354
    .restart local v2    # "r":Landroid/content/res/Resources;
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v4

    .line 1355
    .restart local v4    # "signalDbm":I
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v3

    .line 1356
    .restart local v3    # "signalAsu":I
    const-string v6, "Combination"

    const-string v7, "Combination"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1358
    const/4 v6, -0x1

    if-eq v6, v3, :cond_4

    const/16 v6, 0x63

    if-eq v6, v3, :cond_4

    const/16 v6, 0xff

    if-ne v6, v3, :cond_5

    .line 1359
    :cond_4
    const/16 v4, -0x71

    .line 1360
    const/4 v3, 0x0

    .line 1371
    :cond_5
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0a00e8

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0a00e9

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1376
    const-string v6, "Status"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Status] updateSignalStrength : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a00e8

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a00e9

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1363
    :cond_6
    const-string v6, "gsm.network.type"

    iget-object v7, p0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    invoke-static {v6, p2, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1365
    .local v0, "networkType":Ljava/lang/String;
    const/4 v6, -0x1

    if-eq v6, v3, :cond_7

    const/16 v6, 0x63

    if-eq v6, v3, :cond_7

    const/16 v6, 0xff

    if-eq v6, v3, :cond_7

    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1366
    :cond_7
    const/16 v4, -0x71

    .line 1367
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 1501
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 1502
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 1504
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 1505
    const-wide/16 v2, 0x1

    .line 1508
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1509
    return-void
.end method
