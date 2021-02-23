.class public Lcom/android/settings/wifi/AdvancedWifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static DBG:Z

.field public static hideNavigationButton:Z


# instance fields
.field private allowWifi:Z

.field private dialog:Landroid/app/AlertDialog;

.field private isHotspot20Disabled:Z

.field mAttAutoConnection:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEapMethod:Ljava/lang/String;

.field mEnableHs20:Landroid/preference/CheckBoxPreference;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHiddenAps:Z

.field private mIwlan:Ljava/lang/String;

.field private mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

.field private mIwlanEnabler:Lcom/android/settings/wifi/IwlanEnabler;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

.field private mPreferredBand:Z

.field private mPriorityDialog:Lcom/android/settings/wifi/PrioritySettingDialog;

.field private mPrioritymode:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReset:Z

.field private mSecSetupWizardMode:Z

.field private mSelected:Lcom/android/settings/wifi/AccessPoint;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field public mWifiServiceCheckDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mWifiTimerPreference:Landroid/preference/Preference;

.field private poorNetworkDetection:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->DBG:Z

    .line 158
    sput-boolean v1, Lcom/android/settings/wifi/AdvancedWifiSettings;->hideNavigationButton:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->allowWifi:Z

    .line 149
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_PreferredBand"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPreferredBand:Z

    .line 150
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_HideExcludedApList"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mHiddenAps:Z

    .line 151
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuResetConfiguration"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mReset:Z

    .line 152
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEapMethod:Ljava/lang/String;

    .line 153
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigDisconnectApThreshold"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPrioritymode:Ljava/lang/String;

    .line 154
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DisableMenuPasspoint"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->isHotspot20Disabled:Z

    .line 155
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuIWLAN4"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    .line 161
    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings$1;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 167
    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$2;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1149
    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$8;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiServiceCheckDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/AdvancedWifiSettings;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateWifiInternetServiceCheck()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/AdvancedWifiSettings;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/AdvancedWifiSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->changeHotspot20(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/AdvancedWifiSettings;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/AdvancedWifiSettings;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/AdvancedWifiSettings;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/AdvancedWifiSettings;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/AdvancedWifiSettings;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/AdvancedWifiSettings;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/AdvancedWifiSettings;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private changeHotspot20(Z)V
    .locals 11
    .param p1, "enabled"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1112
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 1113
    .local v5, "msg":Landroid/os/Message;
    const/16 v6, 0x29

    iput v6, v5, Landroid/os/Message;->what:I

    .line 1114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1115
    .local v0, "args":Landroid/os/Bundle;
    const-string v6, "enable"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1116
    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1117
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 1118
    const-string v6, "AdvancedWifiSettings"

    const-string v7, "HOTSPOT20 config store error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1122
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_hotspot20_enable"

    if-eqz p1, :cond_3

    move v6, v7

    :goto_1
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1124
    if-nez p1, :cond_0

    .line 1125
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1126
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_4

    .line 1127
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1128
    new-instance v4, Lcom/android/settings/wifi/AdvancedWifiSettings$7;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$7;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    .line 1138
    .local v4, "mForgetListener":Landroid/net/wifi/WifiManager$ActionListener;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1139
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-ne v6, v7, :cond_2

    .line 1140
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v9, v4}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_2

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "mForgetListener":Landroid/net/wifi/WifiManager$ActionListener;
    :cond_3
    move v6, v8

    .line 1122
    goto :goto_1

    .line 1145
    .restart local v2    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_4
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private getAuthenticationInformation()Ljava/lang/String;
    .locals 12

    .prologue
    .line 1205
    const-string v8, "/data/misc/wifi/message.txt"

    .line 1207
    .local v8, "path":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    .line 1208
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1209
    const-string v6, ""

    .line 1258
    :goto_0
    return-object v6

    .line 1212
    :cond_0
    const/4 v3, 0x0

    .line 1213
    .local v3, "in":Ljava/io/DataInputStream;
    const/4 v6, 0x0

    .line 1214
    .local v6, "message":Ljava/lang/String;
    const/16 v9, 0x80

    new-array v0, v9, [B

    .line 1217
    .local v0, "buffer":[B
    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1218
    .end local v3    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    .line 1219
    .local v5, "length":I
    if-lez v5, :cond_1

    .line 1220
    new-instance v6, Ljava/lang/String;

    .end local v6    # "message":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-direct {v6, v0, v9, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1226
    .restart local v6    # "message":Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    .line 1228
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1235
    :cond_2
    :goto_1
    if-nez v6, :cond_4

    .line 1236
    const-string v6, ""

    goto :goto_0

    .line 1229
    :catch_0
    move-exception v1

    .line 1230
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "AdvancedWifiSettings"

    const-string v10, "Failed to close file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1222
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v5    # "length":I
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :catch_1
    move-exception v1

    .line 1223
    .end local v6    # "message":Ljava/lang/String;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v9, "AdvancedWifiSettings"

    const-string v10, "Failed to get auth info"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1226
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v3, :cond_3

    .line 1228
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1231
    :cond_3
    :goto_4
    throw v9

    .line 1229
    :catch_2
    move-exception v1

    .line 1230
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v10, "AdvancedWifiSettings"

    const-string v11, "Failed to close file"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1239
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "length":I
    .restart local v6    # "message":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    .line 1241
    .local v7, "msgId":I
    :try_start_5
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v7

    .line 1246
    if-nez v7, :cond_5

    .line 1247
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a047f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1242
    :catch_3
    move-exception v1

    .line 1243
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1248
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const/4 v9, 0x4

    if-ne v7, v9, :cond_6

    .line 1249
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0482

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1250
    :cond_6
    const/4 v9, 0x5

    if-ne v7, v9, :cond_7

    .line 1251
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0480

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1252
    :cond_7
    const/4 v9, 0x6

    if-ne v7, v9, :cond_8

    .line 1253
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0481

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1255
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1226
    .end local v5    # "length":I
    .end local v6    # "message":Ljava/lang/String;
    .end local v7    # "msgId":I
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_3

    .line 1222
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_2
.end method

.method private initPreferences()V
    .locals 43

    .prologue
    .line 276
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 277
    .local v9, "ChinaNalSecurityType":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    const-string v3, "ChinaNalSecurity"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, ""

    const-string v5, "CHINA_UP"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    const/16 v25, 0x1

    .line 279
    .local v25, "isCscWifiEnableWarning":Z
    :goto_0
    const-string v3, "notify_open_networks"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    .line 281
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_networks_available_notification_on"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_18

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 285
    const-string v3, "wifi_poor_network_detection"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->locateSmartNetworkSwitch(Landroid/content/Context;)I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1a

    .line 290
    const/16 v16, 0x0

    .line 294
    .local v16, "defaultValue":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0a0575

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0a0577

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 298
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_watchdog_poor_network_test_enabled"

    move/from16 v0, v16

    invoke-static {v3, v6, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_19

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 300
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateWifiInternetServiceCheck()V

    .line 306
    .end local v16    # "defaultValue":I
    :cond_0
    :goto_3
    const-string v3, "wifi_scan_always_available"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/preference/CheckBoxPreference;

    .line 308
    .local v36, "scanAlwaysAvailable":Landroid/preference/CheckBoxPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "wifi_scan_always_enabled"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1b

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 311
    new-instance v21, Landroid/content/Intent;

    const-string v3, "android.credentials.INSTALL_AS_USER"

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v21, "intent":Landroid/content/Intent;
    const-string v3, "install_as_uid"

    const/16 v5, 0x3f2

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    const-string v3, "install_credentials"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    .line 314
    .local v30, "pref":Landroid/preference/Preference;
    if-eqz v30, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSecSetupWizardMode:Z

    if-eqz v3, :cond_1

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 317
    :cond_1
    if-eqz v30, :cond_2

    .line 318
    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 320
    :cond_2
    const-string v3, "wlan_permission_available"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/CheckBoxPreference;

    .line 322
    .local v22, "isAllowPermissionPopup":Landroid/preference/CheckBoxPreference;
    const-string v3, "CHINA"

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 323
    if-eqz v22, :cond_3

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "wlan_permission_available"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1c

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 325
    if-eqz v25, :cond_1d

    .line 326
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 337
    :cond_3
    :goto_6
    const-string v3, "att_auto_connect"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/CheckBoxPreference;

    .line 338
    const-string v3, "ATT"

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 340
    const-string v3, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 341
    .local v4, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "getAutomaticConnectionToWifi"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 343
    .local v15, "cr":Landroid/database/Cursor;
    if-eqz v15, :cond_4

    .line 345
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 346
    const-string v3, "getAutomaticConnectionToWifi"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "false"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/CheckBoxPreference;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/CheckBoxPreference;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :goto_7
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 367
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v15    # "cr":Landroid/database/Cursor;
    :cond_4
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    .line 368
    .local v14, "context":Landroid/content/Context;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->getWifiAssistantApp(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v37

    .line 369
    .local v37, "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    const-string v3, "wifi_assistant"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v41

    check-cast v41, Landroid/preference/SwitchPreference;

    .line 370
    .local v41, "wifiAssistant":Landroid/preference/SwitchPreference;
    if-eqz v37, :cond_23

    .line 371
    invoke-static {v14}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v3

    if-eqz v3, :cond_22

    const/4 v11, 0x1

    .line 372
    .local v11, "checked":Z
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a03e1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v37

    iget-object v8, v0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mScorerName:Ljava/lang/CharSequence;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 374
    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 375
    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 441
    .end local v11    # "checked":Z
    :cond_5
    :goto_a
    const-string v3, "ap_list_priority"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    .line 442
    .local v10, "apListPriority":Landroid/preference/ListPreference;
    if-eqz v10, :cond_6

    .line 444
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 445
    const/16 v40, 0x0

    .line 446
    .local v40, "value":I
    const-string v3, "ssid"

    const-string v5, "rssi"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "wifi_ap_sort"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v40

    .line 455
    :goto_b
    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    .line 456
    .local v39, "stringValue":Ljava/lang/String;
    move-object/from16 v0, v39

    invoke-virtual {v10, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 457
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v10, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateApListPrioritySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 467
    .end local v39    # "stringValue":Ljava/lang/String;
    .end local v40    # "value":I
    :cond_6
    const-string v3, "wifi_connection_type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v42

    check-cast v42, Landroid/preference/ListPreference;

    .line 468
    .local v42, "wifiConnectType":Landroid/preference/ListPreference;
    sget-boolean v3, Lcom/android/settings/Utils;->ENABLE_WIFI_CONNECTION_TYPE:Z

    if-eqz v3, :cond_25

    if-eqz v42, :cond_25

    .line 469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 470
    invoke-virtual/range {v42 .. v43}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "wifi_cmcc_manual"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v40

    .line 472
    .restart local v40    # "value":I
    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    .line 473
    .restart local v39    # "stringValue":Ljava/lang/String;
    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 474
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updatecmccConnectTypeSummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 482
    .end local v39    # "stringValue":Ljava/lang/String;
    .end local v40    # "value":I
    :cond_7
    :goto_c
    const-string v3, "wifi_priority_menu"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceScreen;

    .line 483
    .local v18, "enablePriorityPref":Landroid/preference/PreferenceScreen;
    sget-boolean v3, Lcom/android/settings/Utils;->ENABLE_WIFI_PRIORITY_MENU:Z

    if-eqz v3, :cond_26

    if-eqz v18, :cond_26

    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "wifi_cmcc_manual"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v40

    .line 485
    .restart local v40    # "value":I
    if-eqz v40, :cond_8

    .line 486
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 495
    .end local v40    # "value":I
    :cond_8
    :goto_d
    const-string v3, "wifi_timer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Landroid/preference/Preference;

    .line 496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_9

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 535
    :cond_9
    const-string v3, "wifi_hs20_enable"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/CheckBoxPreference;

    .line 536
    const-string v3, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isHotspot20Disabled..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->isHotspot20Disabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->isHotspot20Disabled:Z

    if-nez v3, :cond_2a

    .line 538
    const-string v3, "DEFAULT_OFF,MENU_ON"

    const-string v5, "MENU_ON"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "wifi_hotspot20_connected_history"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_28

    .line 541
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_b

    .line 542
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_hotspot20_enable"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_27

    const/4 v3, 0x1

    :goto_e
    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 557
    :cond_b
    :goto_f
    const-string v3, "sleep_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    check-cast v38, Landroid/preference/ListPreference;

    .line 558
    .local v38, "sleepPolicyPref":Landroid/preference/ListPreference;
    if-eqz v38, :cond_d

    .line 559
    invoke-static {v14}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 560
    const v3, 0x7f0c004e

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 562
    :cond_c
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 563
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "wifi_sleep_policy"

    const/4 v6, 0x2

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v40

    .line 566
    .restart local v40    # "value":I
    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    .line 567
    .restart local v39    # "stringValue":Ljava/lang/String;
    invoke-virtual/range {v38 .. v39}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 568
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 572
    .end local v39    # "stringValue":Ljava/lang/String;
    .end local v40    # "value":I
    :cond_d
    const-string v3, "preferred_band"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/preference/ListPreference;

    .line 574
    .local v33, "preferredBandPref":Landroid/preference/ListPreference;
    if-eqz v33, :cond_e

    .line 575
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPreferredBand:Z

    if-eqz v3, :cond_2c

    .line 576
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 578
    new-instance v28, Landroid/os/Message;

    invoke-direct/range {v28 .. v28}, Landroid/os/Message;-><init>()V

    .line 579
    .local v28, "msg":Landroid/os/Message;
    const/16 v3, 0x1e

    move-object/from16 v0, v28

    iput v3, v0, Landroid/os/Message;->what:I

    .line 580
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    .line 581
    .restart local v39    # "stringValue":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 590
    .end local v28    # "msg":Landroid/os/Message;
    .end local v39    # "stringValue":Ljava/lang/String;
    :cond_e
    :goto_10
    const-string v3, "hidden_aps_by_rssi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/ListPreference;

    .line 592
    .local v19, "hiddenApsByRssiPref":Landroid/preference/ListPreference;
    if-eqz v19, :cond_f

    .line 593
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mHiddenAps:Z

    if-eqz v3, :cond_2d

    .line 594
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "hidden_ap_sinal_strength"

    const/4 v6, 0x3

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v40

    .line 597
    .restart local v40    # "value":I
    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    .line 598
    .restart local v39    # "stringValue":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 607
    .end local v39    # "stringValue":Ljava/lang/String;
    .end local v40    # "value":I
    :cond_f
    :goto_11
    const-string v3, "hidden_aps_by_ssid"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 609
    .local v20, "hiddenApsBySsidPref":Landroid/preference/Preference;
    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mHiddenAps:Z

    if-nez v3, :cond_10

    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 616
    :cond_10
    const-string v3, "wifi_reset"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    .line 618
    .local v35, "resetPref":Landroid/preference/Preference;
    if-eqz v35, :cond_11

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mReset:Z

    if-nez v3, :cond_11

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 625
    :cond_11
    const-string v3, "wifi_connection_priority_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    .line 626
    .local v12, "connMonitoringPref":Landroid/preference/CheckBoxPreference;
    const-string v3, "wifi_connection_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    .line 628
    .local v13, "connSettingsPref":Landroid/preference/PreferenceScreen;
    const-string v3, "KT_Specific"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPrioritymode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 629
    if-eqz v12, :cond_12

    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "wifi_connection_monitor_enable"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2e

    const/4 v3, 0x1

    :goto_12
    invoke-virtual {v12, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 645
    :cond_12
    :goto_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    const-string v5, "SKT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 646
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    .line 648
    .local v29, "parentPreference":Landroid/preference/PreferenceGroup;
    const-string v3, "iwlan_enabled_category"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    .line 649
    .local v34, "removablePref":Landroid/preference/Preference;
    if-eqz v34, :cond_13

    .line 650
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 651
    :cond_13
    const-string v3, "iwlan_networks"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    .line 652
    if-eqz v34, :cond_14

    .line 653
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 655
    :cond_14
    const-string v3, "add_other_iwlan"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    .line 656
    if-eqz v34, :cond_15

    .line 657
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 662
    .end local v29    # "parentPreference":Landroid/preference/PreferenceGroup;
    .end local v34    # "removablePref":Landroid/preference/Preference;
    :cond_15
    const-string v3, "mwlan_permission_allowed_2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/CheckBoxPreference;

    .line 664
    .local v27, "mWlanEnabled":Landroid/preference/CheckBoxPreference;
    if-eqz v27, :cond_16

    .line 665
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    const-string v5, "LGU"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 667
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v5, "com.lguplus.common.wificm.mwlan"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v26

    .line 668
    .local v26, "mWlan":Landroid/content/Context;
    const-string v3, "mwlan"

    const/4 v5, 0x4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v32

    .line 669
    .local v32, "pref_mWlan_4":Landroid/content/SharedPreferences;
    const-string v3, "mwlan"

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v31

    .line 670
    .local v31, "pref_mWlan":Landroid/content/SharedPreferences;
    const-string v3, "permission_allowed_2"

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 671
    .local v24, "isAllowed_4":Z
    const-string v3, "permission_allowed_2"

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 672
    .local v23, "isAllowed":Z
    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 676
    .local v17, "e":Landroid/content/SharedPreferences$Editor;
    const-string v3, "mwlan_permission_allowed_2"

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 677
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 678
    const-string v3, "KEY_LGT_MWLAN_PERMISSION"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 694
    .end local v17    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "isAllowed":Z
    .end local v24    # "isAllowed_4":Z
    .end local v26    # "mWlan":Landroid/content/Context;
    .end local v31    # "pref_mWlan":Landroid/content/SharedPreferences;
    .end local v32    # "pref_mWlan_4":Landroid/content/SharedPreferences;
    :cond_16
    :goto_14
    return-void

    .line 277
    .end local v10    # "apListPriority":Landroid/preference/ListPreference;
    .end local v12    # "connMonitoringPref":Landroid/preference/CheckBoxPreference;
    .end local v13    # "connSettingsPref":Landroid/preference/PreferenceScreen;
    .end local v14    # "context":Landroid/content/Context;
    .end local v18    # "enablePriorityPref":Landroid/preference/PreferenceScreen;
    .end local v19    # "hiddenApsByRssiPref":Landroid/preference/ListPreference;
    .end local v20    # "hiddenApsBySsidPref":Landroid/preference/Preference;
    .end local v21    # "intent":Landroid/content/Intent;
    .end local v22    # "isAllowPermissionPopup":Landroid/preference/CheckBoxPreference;
    .end local v25    # "isCscWifiEnableWarning":Z
    .end local v27    # "mWlanEnabled":Landroid/preference/CheckBoxPreference;
    .end local v30    # "pref":Landroid/preference/Preference;
    .end local v33    # "preferredBandPref":Landroid/preference/ListPreference;
    .end local v35    # "resetPref":Landroid/preference/Preference;
    .end local v36    # "scanAlwaysAvailable":Landroid/preference/CheckBoxPreference;
    .end local v37    # "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .end local v38    # "sleepPolicyPref":Landroid/preference/ListPreference;
    .end local v41    # "wifiAssistant":Landroid/preference/SwitchPreference;
    .end local v42    # "wifiConnectType":Landroid/preference/ListPreference;
    :cond_17
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 281
    .restart local v25    # "isCscWifiEnableWarning":Z
    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 298
    .restart local v16    # "defaultValue":I
    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 302
    .end local v16    # "defaultValue":I
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 308
    .restart local v36    # "scanAlwaysAvailable":Landroid/preference/CheckBoxPreference;
    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 324
    .restart local v21    # "intent":Landroid/content/Intent;
    .restart local v22    # "isAllowPermissionPopup":Landroid/preference/CheckBoxPreference;
    .restart local v30    # "pref":Landroid/preference/Preference;
    :cond_1c
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 328
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 332
    :cond_1e
    if-eqz v22, :cond_3

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 350
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v15    # "cr":Landroid/database/Cursor;
    :cond_1f
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 351
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_auto_connecct"

    const/4 v7, 0x1

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_20

    const/4 v3, 0x1

    :goto_15
    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_7

    .line 354
    :catchall_0
    move-exception v3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v3

    .line 351
    :cond_20
    const/4 v3, 0x0

    goto :goto_15

    .line 362
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v15    # "cr":Landroid/database/Cursor;
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_4

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 364
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAttAutoConnection:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_8

    .line 371
    .restart local v14    # "context":Landroid/content/Context;
    .restart local v37    # "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .restart local v41    # "wifiAssistant":Landroid/preference/SwitchPreference;
    :cond_22
    const/4 v11, 0x0

    goto/16 :goto_9

    .line 377
    :cond_23
    if-eqz v41, :cond_5

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_a

    .line 451
    .restart local v10    # "apListPriority":Landroid/preference/ListPreference;
    .restart local v40    # "value":I
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "wifi_ap_sort"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v40

    goto/16 :goto_b

    .line 476
    .end local v40    # "value":I
    .restart local v42    # "wifiConnectType":Landroid/preference/ListPreference;
    :cond_25
    if-eqz v42, :cond_7

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    .line 489
    .restart local v18    # "enablePriorityPref":Landroid/preference/PreferenceScreen;
    :cond_26
    if-eqz v18, :cond_8

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_d

    .line 542
    :cond_27
    const/4 v3, 0x0

    goto/16 :goto_e

    .line 547
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_29

    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 549
    :cond_29
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_f

    .line 552
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2b

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 554
    :cond_2b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_f

    .line 584
    .restart local v33    # "preferredBandPref":Landroid/preference/ListPreference;
    .restart local v38    # "sleepPolicyPref":Landroid/preference/ListPreference;
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_10

    .line 601
    .restart local v19    # "hiddenApsByRssiPref":Landroid/preference/ListPreference;
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_11

    .line 630
    .restart local v12    # "connMonitoringPref":Landroid/preference/CheckBoxPreference;
    .restart local v13    # "connSettingsPref":Landroid/preference/PreferenceScreen;
    .restart local v20    # "hiddenApsBySsidPref":Landroid/preference/Preference;
    .restart local v35    # "resetPref":Landroid/preference/Preference;
    :cond_2e
    const/4 v3, 0x0

    goto/16 :goto_12

    .line 634
    :cond_2f
    if-eqz v12, :cond_30

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 638
    :cond_30
    if-eqz v13, :cond_12

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_13

    .line 681
    .restart local v27    # "mWlanEnabled":Landroid/preference/CheckBoxPreference;
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    .line 683
    .restart local v29    # "parentPreference":Landroid/preference/PreferenceGroup;
    const-string v3, "mwlan_enabled_category"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    .line 684
    .restart local v34    # "removablePref":Landroid/preference/Preference;
    if-eqz v34, :cond_32

    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 688
    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_14

    .line 679
    .end local v29    # "parentPreference":Landroid/preference/PreferenceGroup;
    .end local v34    # "removablePref":Landroid/preference/Preference;
    :catch_0
    move-exception v3

    goto/16 :goto_14
.end method

.method private refreshWifiInfo()V
    .locals 12

    .prologue
    const v11, 0x7f0a0768

    const/4 v10, 0x0

    .line 1066
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1067
    .local v0, "context":Landroid/content/Context;
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 1069
    .local v5, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v8, "mac_address"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 1070
    .local v7, "wifiMacAddressPref":Landroid/preference/Preference;
    if-nez v5, :cond_2

    const/4 v3, 0x0

    .line 1071
    .local v3, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .end local v3    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v7, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1073
    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 1075
    const-string v8, "current_ip_address"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 1076
    .local v6, "wifiIpAddressPref":Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1077
    .local v2, "ipAddress":Ljava/lang/String;
    if-nez v2, :cond_0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "ipAddress":Ljava/lang/String;
    :cond_0
    invoke-virtual {v6, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1079
    invoke-virtual {v6, v10}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 1081
    const-string v8, "wifi_authentication_information"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 1083
    .local v4, "wifiAuthenticationInfoPref":Landroid/preference/Preference;
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v9, "AKA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v9, "KTT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1084
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getAuthenticationInformation()Ljava/lang/String;

    move-result-object v1

    .line 1085
    .local v1, "information":Ljava/lang/String;
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1088
    if-eqz v1, :cond_5

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1089
    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1098
    .end local v1    # "information":Ljava/lang/String;
    :cond_1
    :goto_3
    return-void

    .line 1070
    .end local v4    # "wifiAuthenticationInfoPref":Landroid/preference/Preference;
    .end local v6    # "wifiIpAddressPref":Landroid/preference/Preference;
    :cond_2
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1071
    .restart local v3    # "macAddress":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .end local v3    # "macAddress":Ljava/lang/String;
    .restart local v1    # "information":Ljava/lang/String;
    .restart local v4    # "wifiAuthenticationInfoPref":Landroid/preference/Preference;
    .restart local v6    # "wifiIpAddressPref":Landroid/preference/Preference;
    :cond_4
    move-object v8, v1

    .line 1085
    goto :goto_2

    .line 1091
    :cond_5
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 1094
    .end local v1    # "information":Ljava/lang/String;
    :cond_6
    if-eqz v4, :cond_1

    .line 1095
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method private showIwlanDialog(Landroid/content/Context;Lcom/android/settings/wifi/IwlanNetwork;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iwlanNetwork"    # Lcom/android/settings/wifi/IwlanNetwork;
    .param p3, "edit"    # Z

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/IwlanDialog;->dismiss()V

    .line 1200
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/IwlanDialog;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/settings/wifi/IwlanDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/IwlanNetwork;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    .line 1201
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/IwlanDialog;->show()V

    .line 1202
    return-void
.end method

.method private showPriorityDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 2
    .param p1, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;
    .param p2, "edit"    # Z

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/settings/wifi/PrioritySettingDialog;

    if-eqz v0, :cond_0

    .line 1103
    const-string v0, "AdvancedWifiSettings"

    const-string v1, "showPriorityDialog mPriorityDialog null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/settings/wifi/PrioritySettingDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/PrioritySettingDialog;->dismiss()V

    .line 1106
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/PrioritySettingDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/settings/wifi/PrioritySettingDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/AccessPoint;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/settings/wifi/PrioritySettingDialog;

    .line 1107
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/settings/wifi/PrioritySettingDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/PrioritySettingDialog;->show()V

    .line 1108
    return-void
.end method

.method private updateApListPrioritySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .param p1, "apListPriority"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 741
    if-eqz p2, :cond_1

    .line 742
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 743
    .local v3, "values":[Ljava/lang/String;
    const v2, 0x7f0c0052

    .line 744
    .local v2, "summaryArrayResId":I
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0052

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 745
    .local v1, "summaries":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 746
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 747
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 748
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 757
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :goto_1
    return-void

    .line 745
    .restart local v0    # "i":I
    .restart local v1    # "summaries":[Ljava/lang/String;
    .restart local v2    # "summaryArrayResId":I
    .restart local v3    # "values":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 755
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :cond_1
    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 756
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid AP list priority value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    .locals 3
    .param p1, "frequencyBandPref"    # Landroid/preference/Preference;
    .param p2, "index"    # I

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "summaries":[Ljava/lang/String;
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 737
    return-void
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .param p1, "sleepPolicyPref"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 697
    if-eqz p2, :cond_2

    .line 698
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c004f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 699
    .local v3, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f0c004e

    .line 701
    .local v2, "summaryArrayResId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 702
    .local v1, "summaries":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 703
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 704
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 705
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 714
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :goto_2
    return-void

    .line 699
    .restart local v3    # "values":[Ljava/lang/String;
    :cond_0
    const v2, 0x7f0c004d

    goto :goto_0

    .line 702
    .restart local v0    # "i":I
    .restart local v1    # "summaries":[Ljava/lang/String;
    .restart local v2    # "summaryArrayResId":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 712
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :cond_2
    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 713
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateWifiInternetServiceCheck()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1169
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_1

    .line 1170
    sget-boolean v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "AdvancedWifiSettings"

    const-string v1, "poorNetworkDetection is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :cond_0
    :goto_0
    return-void

    .line 1173
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchCheckBox(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1187
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0577

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1188
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1175
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0579

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1176
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1179
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a057a

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1180
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1183
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a057b

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1184
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updatecmccConnectTypeSummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 6
    .param p1, "wifiConnectType"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 717
    if-eqz p2, :cond_1

    .line 718
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 719
    .local v2, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, "summaries":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 721
    aget-object v3, v2, v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 722
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 723
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 732
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "values":[Ljava/lang/String;
    :goto_1
    return-void

    .line 720
    .restart local v0    # "i":I
    .restart local v1    # "summaries":[Ljava/lang/String;
    .restart local v2    # "values":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 730
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "values":[Ljava/lang/String;
    :cond_1
    const-string v3, ""

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 731
    const-string v3, "AdvancedWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid cmcc connect type value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 224
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    .line 226
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 227
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 228
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.HS20_DISABLED_COMPLETE_BY_CREDERROR"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 238
    const-string v2, "network_score"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkScoreManager;

    iput-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 240
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const-string v3, "wifitimer_pref"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 241
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 242
    sget-boolean v2, Lcom/android/settings/wifi/AdvancedWifiSettings;->hideNavigationButton:Z

    if-eqz v2, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 244
    .local v0, "activity":Landroid/app/Activity;
    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 245
    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 246
    .local v1, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 248
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/16 v3, 0x8

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 250
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 255
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSecSetupWizardMode:Z

    .line 219
    const v0, 0x7f0700f4

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    .line 220
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "dialogId"    # I

    .prologue
    const v3, 0x104000a

    const/high16 v2, 0x1040000

    .line 1018
    packed-switch p1, :pswitch_data_0

    .line 1062
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1020
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a1662

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1664

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/AdvancedWifiSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$4;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/AdvancedWifiSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$3;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1035
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1669

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/AdvancedWifiSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$6;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/AdvancedWifiSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$5;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1055
    :pswitch_2
    new-instance v0, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiServiceCheckDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->dialog:Landroid/app/AlertDialog;

    .line 1056
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1057
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->dialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1018
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 269
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 272
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 273
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 17
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 872
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 873
    .local v4, "context":Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 875
    .local v8, "key":Ljava/lang/String;
    const-string v14, "frequency_band"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 877
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 878
    .local v11, "value":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v15, 0x1

    invoke-virtual {v14, v11, v15}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    .line 879
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    .end local v11    # "value":I
    :cond_0
    :goto_0
    const-string v14, "sleep_policy"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 911
    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 912
    .local v10, "stringValue":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wifi_sleep_policy"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 914
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 994
    .end local v10    # "stringValue":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v14, 0x1

    :goto_2
    return v14

    .line 880
    :catch_0
    move-exception v5

    .line 881
    .local v5, "e":Ljava/lang/NumberFormatException;
    const v14, 0x7f0a05b0

    const/4 v15, 0x0

    invoke-static {v4, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 883
    const/4 v14, 0x0

    goto :goto_2

    .line 885
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v14, "wifi_assistant"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v14, p2

    .line 886
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_3

    .line 887
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/net/NetworkScoreManager;->setActiveScorer(Ljava/lang/String;)Z

    .line 888
    const/4 v14, 0x1

    goto :goto_2

    .line 891
    :cond_3
    invoke-static {v4}, Lcom/android/settings/wifi/WifiSettings;->getWifiAssistantApp(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v12

    .line 892
    .local v12, "wifiAssistant":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 893
    .local v7, "intent":Landroid/content/Intent;
    iget-object v14, v12, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    if-eqz v14, :cond_4

    .line 897
    iget-object v14, v12, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    iget-object v15, v12, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 906
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 901
    :cond_4
    const-string v14, "android.net.scoring.CHANGE_ACTIVE"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 902
    const-string v14, "packageName"

    iget-object v15, v12, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 915
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v12    # "wifiAssistant":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    :catch_1
    move-exception v5

    .line 916
    .restart local v5    # "e":Ljava/lang/NumberFormatException;
    const v14, 0x7f0a03eb

    const/4 v15, 0x0

    invoke-static {v4, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 918
    const/4 v14, 0x0

    goto :goto_2

    .line 920
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const-string v14, "ap_list_priority"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 922
    :try_start_2
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 923
    .restart local v10    # "stringValue":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wifi_ap_sort"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 924
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateApListPrioritySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 925
    .end local v10    # "stringValue":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 926
    .restart local v5    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const v15, 0x7f0a03ef

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 928
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 930
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    const-string v14, "wifi_timer"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 931
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Landroid/preference/Preference;

    .line 932
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->allowWifi:Z

    .line 933
    const-string v14, "AdvancedWifiSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "WifiTimer allowWifi:    "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->allowWifi:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->allowWifi:Z

    if-nez v14, :cond_7

    .line 936
    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 937
    .local v13, "wifiToastIntent":Landroid/content/Intent;
    const-string v14, "info_type"

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 938
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v13}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 940
    .end local v13    # "wifiToastIntent":Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->allowWifi:Z

    if-eqz v14, :cond_1

    .line 941
    new-instance v2, Landroid/content/Intent;

    const-string v14, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 942
    .local v2, "alarm_intent":Landroid/content/Intent;
    const-string v14, "com.android.settings.wifi.wifisheduler_action_type"

    const/16 v15, 0x1389

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 944
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 946
    .end local v2    # "alarm_intent":Landroid/content/Intent;
    :cond_8
    const-string v14, "preferred_band"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v10, p2

    .line 947
    check-cast v10, Ljava/lang/String;

    .line 948
    .restart local v10    # "stringValue":Ljava/lang/String;
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 949
    .local v9, "msg":Landroid/os/Message;
    const/16 v14, 0x1f

    iput v14, v9, Landroid/os/Message;->what:I

    .line 950
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v9, Landroid/os/Message;->arg1:I

    .line 951
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14, v9}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v14

    if-eqz v14, :cond_1

    .line 952
    const-string v14, "AdvancedWifiSettings"

    const-string v15, "set prefer band fail"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 954
    .end local v9    # "msg":Landroid/os/Message;
    .end local v10    # "stringValue":Ljava/lang/String;
    :cond_9
    const-string v14, "hidden_aps_by_rssi"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v10, p2

    .line 955
    check-cast v10, Ljava/lang/String;

    .line 956
    .restart local v10    # "stringValue":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "hidden_ap_sinal_strength"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 957
    .end local v10    # "stringValue":Ljava/lang/String;
    :cond_a
    const-string v14, "wifi_connection_type"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 959
    :try_start_3
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 960
    .restart local v10    # "stringValue":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wifi_cmcc_manual"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 962
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updatecmccConnectTypeSummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 964
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 965
    .restart local v9    # "msg":Landroid/os/Message;
    const/16 v14, 0xf

    iput v14, v9, Landroid/os/Message;->what:I

    .line 967
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 968
    .local v3, "args":Landroid/os/Bundle;
    const-string v15, "enable"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_c

    const/4 v14, 0x1

    :goto_4
    invoke-virtual {v3, v15, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 969
    iput-object v3, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 970
    const-string v14, "AdvancedWifiSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "KEY_WIFI_CONNECTION_TYPE onPreferenceChange connectionType :  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const-string v14, "wifi_priority_menu"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 974
    .local v6, "enablePriorityPref":Landroid/preference/PreferenceScreen;
    :try_start_4
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_d

    .line 975
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    .line 981
    :goto_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14, v9}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v14

    if-nez v14, :cond_b

    .line 982
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wifi_cmcc_manual"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 984
    :cond_b
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_1

    .line 985
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const v15, 0x7f0a1db9

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 987
    .end local v3    # "args":Landroid/os/Bundle;
    .end local v6    # "enablePriorityPref":Landroid/preference/PreferenceScreen;
    .end local v9    # "msg":Landroid/os/Message;
    .end local v10    # "stringValue":Ljava/lang/String;
    :catch_3
    move-exception v5

    .line 988
    .restart local v5    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const v15, 0x7f0a03d0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 990
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 968
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "args":Landroid/os/Bundle;
    .restart local v9    # "msg":Landroid/os/Message;
    .restart local v10    # "stringValue":Ljava/lang/String;
    :cond_c
    const/4 v14, 0x0

    goto :goto_4

    .line 977
    .restart local v6    # "enablePriorityPref":Landroid/preference/PreferenceScreen;
    :cond_d
    const/4 v14, 0x0

    :try_start_6
    invoke-virtual {v6, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    .line 978
    :catch_4
    move-exception v5

    .line 979
    .local v5, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 17
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 761
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    .line 763
    .local v13, "key":Ljava/lang/String;
    const-string v2, "notify_open_networks"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual/range {p2 .. p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 867
    :cond_0
    :goto_1
    const/4 v2, 0x1

    :goto_2
    return v2

    .line 764
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 767
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_2
    const-string v2, "wifi_poor_network_detection"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 768
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual/range {p2 .. p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    .line 769
    .local v12, "isChecked":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_internet_service_check_warning"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    .line 770
    if-eqz v12, :cond_5

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    if-nez v2, :cond_3

    .line 773
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    .line 775
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_4

    .line 777
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->showDialog(I)V

    .line 779
    :cond_4
    const/4 v2, 0x1

    goto :goto_2

    .line 782
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_watchdog_poor_network_test_enabled"

    if-eqz v12, :cond_6

    const/4 v2, 0x1

    :goto_3
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 785
    .end local v12    # "isChecked":Z
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_7
    const-string v2, "wifi_timer"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 786
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_8

    .line 787
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    const-class v3, Lcom/android/settings/wifi/WifiTimer;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0a04d8

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1

    .line 791
    :cond_8
    const-class v2, Lcom/android/settings/wifi/WifiTimer;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0a04d8

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_1

    .line 795
    :cond_9
    const-string v2, "wifi_scan_always_available"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 796
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_scan_always_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual/range {p2 .. p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_4
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    .line 799
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_b
    const-string v2, "att_auto_connect"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 800
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual/range {p2 .. p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    .line 801
    .restart local v12    # "isChecked":Z
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 802
    .local v15, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v15, Landroid/os/Message;->what:I

    .line 804
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 805
    .local v9, "args":Landroid/os/Bundle;
    const-string v2, "enable"

    invoke-virtual {v9, v2, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 806
    iput-object v9, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v15}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    if-nez v2, :cond_0

    .line 808
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_auto_connecct"

    if-eqz v12, :cond_c

    const/4 v2, 0x1

    :goto_5
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    .line 810
    .end local v9    # "args":Landroid/os/Bundle;
    .end local v12    # "isChecked":Z
    .end local v15    # "msg":Landroid/os/Message;
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_d
    const-string v2, "wifi_priority_menu"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 814
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->showPriorityDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto/16 :goto_1

    .line 815
    :cond_e
    const-string v2, "wifi_hs20_enable"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 816
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual/range {p2 .. p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    .line 817
    .restart local v12    # "isChecked":Z
    const-string v2, "AdvancedWifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEY_HS20_ENABLE: new value - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/wifi/AdvancedWifiSettings;->changeHotspot20(Z)V

    goto/16 :goto_1

    .line 819
    .end local v12    # "isChecked":Z
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_f
    const-string v2, "hidden_aps_by_ssid"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 820
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_10

    .line 821
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    const-class v3, Lcom/android/settings/wifi/WifiHiddenApListFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0a165a

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_1

    .line 825
    :cond_10
    const-class v2, Lcom/android/settings/wifi/WifiHiddenApListFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0a165a

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_1

    .line 828
    :cond_11
    const-string v2, "wifi_connection_priority_mode"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 829
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual/range {p2 .. p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    .line 831
    .restart local v12    # "isChecked":Z
    if-eqz v12, :cond_12

    .line 832
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 834
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_connection_monitor_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 835
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings/wifi/WifiConnectionMonitorService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 837
    .end local v12    # "isChecked":Z
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_13
    const-string v2, "wifi_reset"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 838
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 839
    :cond_14
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/settings/wifi/IwlanNetwork;

    if-eqz v2, :cond_15

    .line 840
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast p2, Lcom/android/settings/wifi/IwlanNetwork;

    .end local p2    # "preference":Landroid/preference/Preference;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->showIwlanDialog(Landroid/content/Context;Lcom/android/settings/wifi/IwlanNetwork;Z)V

    goto/16 :goto_1

    .line 841
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_15
    const-string v2, "add_other_iwlan"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 842
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->showIwlanDialog(Landroid/content/Context;Lcom/android/settings/wifi/IwlanNetwork;Z)V

    goto/16 :goto_1

    .line 843
    :cond_16
    const-string v2, "mwlan_permission_allowed_2"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 844
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual/range {p2 .. p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    .line 846
    .restart local v12    # "isChecked":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.lguplus.common.wificm.mwlan"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v14

    .line 847
    .local v14, "mWlan":Landroid/content/Context;
    const-string v2, "mwlan"

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 848
    .local v16, "pref_mWlanCheck":Landroid/content/SharedPreferences;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 849
    .local v10, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "permission_allowed_2"

    invoke-interface {v10, v2, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 850
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 851
    new-instance v11, Landroid/content/Intent;

    const-string v2, "com.lguplus.common.wificm.mwlan.interface"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 852
    .local v11, "i":Landroid/content/Intent;
    const-string v2, "type"

    const-string v3, "notify"

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    const-string v2, "action"

    const-string v3, "permissionChanged"

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 854
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 855
    const-string v2, "AdvancedWifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mWlan isChecked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v12, :cond_17

    const v2, 0x7f0a166f

    :goto_6
    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 860
    .end local v10    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v11    # "i":Landroid/content/Intent;
    .end local v14    # "mWlan":Landroid/content/Context;
    .end local v16    # "pref_mWlanCheck":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 857
    .restart local v10    # "edit":Landroid/content/SharedPreferences$Editor;
    .restart local v11    # "i":Landroid/content/Intent;
    .restart local v14    # "mWlan":Landroid/content/Context;
    .restart local v16    # "pref_mWlanCheck":Landroid/content/SharedPreferences;
    :cond_17
    const v2, 0x7f0a1670

    goto :goto_6

    .line 861
    .end local v10    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v11    # "i":Landroid/content/Intent;
    .end local v12    # "isChecked":Z
    .end local v14    # "mWlan":Landroid/content/Context;
    .end local v16    # "pref_mWlanCheck":Landroid/content/SharedPreferences;
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_18
    const-string v2, "wlan_permission_available"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 862
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wlan_permission_available"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual/range {p2 .. p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    :goto_7
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_19
    const/4 v2, 0x0

    goto :goto_7

    .line 865
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1a
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 259
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 260
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 263
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    .line 264
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 265
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 999
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 1001
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    new-instance v0, Lcom/android/settings/wifi/IwlanEnabler;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/IwlanEnabler;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/settings/wifi/IwlanEnabler;

    .line 1003
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/IwlanEnabler;->onStart()V

    .line 1005
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1009
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 1011
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/IwlanEnabler;->onStop()V

    .line 1014
    :cond_0
    return-void
.end method
