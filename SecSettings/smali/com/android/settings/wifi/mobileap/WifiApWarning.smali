.class public Lcom/android/settings/wifi/mobileap/WifiApWarning;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DBG:Z


# instance fields
.field private final MHS_REQUEST:I

.field private extra_type:I

.field private isAirplaneMode:Z

.field private mApDisableDialog:Landroid/app/AlertDialog;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

.field private mDialogType:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsLightTheme:Z

.field private mIsTablet:Z

.field private mNaiMismatchDialog:Landroid/app/AlertDialog;

.field private mProvisionApp:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

.field mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiDisabledByEnablingHotspot:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private req_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 96
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 120
    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->MHS_REQUEST:I

    .line 122
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApWarning$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 750
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApWarning$30;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning$30;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWarning;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApWarning;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWarning;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWarning;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWarning;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->preProvisioning()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWarning;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/mobileap/WifiApWarning;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWarning;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->secSetSoftapEnabled(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWarning;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->afterAttentionDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWarning;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->afterBatteryDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Lcom/android/settings/wifi/WifiApDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWarning;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/settings/wifi/mobileap/WifiApWarning;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWarning;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/mobileap/WifiApWarning;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWarning;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWarning;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWarning;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWarning;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->disableWifiDialog()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/mobileap/WifiApWarning;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWarning;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWarning;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWarning;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWarning;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWarning;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/mobileap/WifiApWarning;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWarning;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWarning;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApWarning;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private afterAttentionDialog()V
    .locals 2

    .prologue
    .line 723
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    .line 729
    :goto_0
    return-void

    .line 727
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->afterBatteryDialog()V

    goto :goto_0
.end method

.method private afterBatteryDialog()V
    .locals 3

    .prologue
    .line 732
    const/4 v0, 0x1

    .line 733
    .local v0, "setSoftapEnableFlag":Z
    const-string v1, "TMO"

    const-string v2, "ALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NEWCO"

    const-string v2, "ALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 735
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    .line 736
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v1, :cond_1

    .line 737
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v2, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    const/4 v0, 0x0

    .line 739
    const-string v1, "WifiApWarning"

    const-string v2, "Dialog create during first time Mobile HotSpot at TMO"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/16 v1, 0x1d

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    .line 745
    :cond_1
    if-eqz v0, :cond_2

    .line 746
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->disableWifiDialog()V

    .line 748
    :cond_2
    return-void
.end method

.method private disableWifiDialog()V
    .locals 8

    .prologue
    const/16 v7, 0x1f

    const/16 v6, 0x1e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 775
    const-string v2, "TMO"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NEWCO"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 777
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 778
    .local v0, "netInfo":Landroid/net/NetworkInfo;
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 779
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    .line 798
    .end local v0    # "netInfo":Landroid/net/NetworkInfo;
    :goto_0
    return-void

    .line 780
    .restart local v0    # "netInfo":Landroid/net/NetworkInfo;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isP2pConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 781
    const-string v2, "WifiApWarning"

    const-string v3, "WiFi p2p is connected. Create dailog"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_0

    .line 784
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 787
    .end local v0    # "netInfo":Landroid/net/NetworkInfo;
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 788
    .local v1, "wifiState":I
    if-eq v1, v5, :cond_4

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    .line 790
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_0

    .line 791
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isP2pEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 792
    const-string v2, "WifiApWarning"

    const-string v3, "WiFi p2p on. Create dailog"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_0

    .line 795
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto :goto_0
.end method

.method private dismissProgressDialog(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 1012
    const-string v1, "WifiApWarning"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissProgressDialog, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 1014
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1015
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1016
    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    .line 1017
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    .line 1033
    :cond_0
    :goto_0
    return-void

    .line 1019
    :cond_1
    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    .line 1020
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1021
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1022
    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    .line 1023
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    .line 1024
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1025
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1027
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1028
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "called_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1029
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1030
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0
.end method

.method private getRvfMode()I
    .locals 3

    .prologue
    .line 926
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 927
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 928
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 930
    .local v0, "mRvfMode":I
    return v0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/16 v5, 0xb

    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 1036
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 1037
    :cond_0
    const/16 v1, 0xc

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isProvisioningNeeded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1038
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    .line 1059
    :cond_1
    :goto_0
    return-void

    .line 1039
    :cond_2
    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    .line 1040
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    goto :goto_0

    .line 1042
    :cond_3
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1043
    if-ne p1, v5, :cond_1

    .line 1044
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    if-nez v1, :cond_4

    .line 1045
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1046
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_4

    .line 1047
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-ne v1, v3, :cond_5

    .line 1048
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1054
    .end local v0    # "wm":Landroid/net/wifi/WifiManager;
    :cond_4
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    .line 1056
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    .line 1049
    .restart local v0    # "wm":Landroid/net/wifi/WifiManager;
    :cond_5
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-ne v1, v3, :cond_4

    .line 1050
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiIBSSEnabled(Z)Z

    goto :goto_1
.end method

.method private isLTEMode()Z
    .locals 5

    .prologue
    .line 705
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 706
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "currentNetworkRat":Ljava/lang/String;
    const-string v2, "WifiApWarning"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isLTEMode() network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const-string v2, "LTE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private isP2pConnected()Z
    .locals 6

    .prologue
    .line 973
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 974
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 975
    .local v1, "isP2PConnected":Z
    const-string v3, "WifiApWarning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isP2PConnected() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    .end local v1    # "isP2PConnected":Z
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v1

    .line 977
    :catch_0
    move-exception v0

    .line 978
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiApWarning"

    const-string v4, "isP2pConnected - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isP2pEnabled()Z
    .locals 4

    .prologue
    .line 962
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 964
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 968
    .end local v1    # "netInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "WifiApWarning"

    const-string v3, "isP2pEnabled - NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isProvisioningCheck()Z
    .locals 2

    .prologue
    .line 919
    sget-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Provisioning.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    const/4 v0, 0x0

    .line 922
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSimCheck()Z
    .locals 2

    .prologue
    .line 1062
    sget-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    const/4 v0, 0x0

    .line 1065
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private preProvisioning()V
    .locals 6

    .prologue
    .line 681
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 682
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 683
    .local v0, "isRoaming":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 685
    .local v1, "iso":Ljava/lang/String;
    const-string v3, "WifiApWarning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimCheck() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isSimCheck()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const-string v3, "MTR"

    const-string v4, "ALL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isLTEMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 688
    const/16 v3, 0x18

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    .line 702
    :goto_0
    return-void

    .line 689
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isSimCheck()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    const-string v3, "READY"

    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 693
    const/16 v3, 0x19

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_0

    .line 695
    :cond_1
    const-string v3, "VZW"

    const-string v4, "ALL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_2

    const-string v3, "us"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 698
    const/16 v3, 0x1a

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_0

    .line 700
    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->secSetSoftapEnabled(Z)V

    goto :goto_0
.end method

.method private secSetSoftapEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 712
    if-eqz p1, :cond_0

    .line 717
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->afterAttentionDialog()V

    .line 720
    :cond_0
    return-void
.end method

.method private sendBroadcastEnablingHotspotCancel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 948
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    if-eqz v1, :cond_1

    .line 949
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 950
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 951
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 952
    iput-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    .line 955
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 956
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "called_dialog"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 957
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 958
    return-void
.end method

.method private setRvfMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 934
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 935
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x1b

    iput v2, v1, Landroid/os/Message;->what:I

    .line 936
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 937
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "mode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 938
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 939
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 940
    return-void
.end method

.method private setSoftapEnabled(Z)V
    .locals 13
    .param p1, "enable"    # Z

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 801
    if-eqz p1, :cond_0

    .line 802
    iput-boolean v8, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    .line 804
    :cond_0
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    .line 805
    .local v4, "wifiApState":I
    if-eqz p1, :cond_4

    const/16 v6, 0xc

    if-eq v4, v6, :cond_1

    const/16 v6, 0xd

    if-ne v4, v6, :cond_4

    .line 807
    :cond_1
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    .line 808
    const-string v6, "WifiApWarning"

    const-string v7, "provisioning sucess"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    .line 870
    :cond_3
    :goto_0
    return-void

    .line 814
    :cond_4
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    .line 815
    .local v5, "wifiState":I
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 816
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "airplane_mode_on"

    invoke-static {v0, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    .line 817
    const-string v6, "WifiApWarning"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSoftapEnabled(enable), isAirplaneMode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    if-eqz p1, :cond_6

    iget-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    if-eqz v6, :cond_6

    .line 819
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    .line 820
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    :cond_5
    move v6, v8

    .line 816
    goto :goto_1

    .line 826
    :cond_6
    if-eqz p1, :cond_a

    if-eq v5, v11, :cond_7

    if-eq v5, v12, :cond_7

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 829
    :cond_7
    if-eq v5, v11, :cond_8

    if-ne v5, v12, :cond_9

    .line 831
    :cond_8
    const-string v6, "wifi_saved_state"

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 833
    :cond_9
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 835
    const-wide/16 v10, 0x258

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :cond_a
    :goto_2
    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->getRvfMode()I

    move-result v6

    if-lez v6, :cond_b

    .line 842
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->setRvfMode(I)V

    .line 843
    const-string v6, "WifiApWarning"

    const-string v9, "setRvfMode(0) for Hotspot configuration"

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_b
    const-string v6, "WifiApWarning"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSoftapEnabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    if-eqz p1, :cond_e

    .line 848
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v6, :cond_c

    .line 849
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v9, "SAMSUNG_HOTSPOT"

    invoke-virtual {v6, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    .line 852
    :cond_c
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v9, "PROVISIONING_RESULT"

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 853
    .local v3, "tempProvisonResult":I
    const-string v6, "WifiApWarning"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "value of provisioning result is  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    sput-boolean v7, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 856
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v6, :cond_d

    .line 857
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v8, "SAMSUNG_HOTSPOT"

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    .line 859
    :cond_d
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 861
    .local v2, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v6, "PROVISIONING_RESULT"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 862
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 863
    const-string v6, "WifiApWarning"

    const-string v7, "setting the value of provision result to 1"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    .end local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "tempProvisonResult":I
    :cond_e
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 866
    if-eqz p1, :cond_3

    .line 867
    const/16 v6, 0xa

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    goto/16 :goto_0

    .line 836
    :catch_0
    move-exception v1

    .line 837
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private showNextHotspotDialog(I)V
    .locals 23
    .param p1, "id"    # I

    .prologue
    .line 438
    packed-switch p1, :pswitch_data_0

    .line 676
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    .line 678
    :goto_1
    return-void

    .line 440
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    .line 445
    :pswitch_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 446
    .local v5, "HotspotWarningDialog":Landroid/app/AlertDialog$Builder;
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 450
    .local v15, "view":Landroid/widget/TextView;
    const v18, 0x7f0a056b

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 452
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 453
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 455
    :cond_1
    const/high16 v18, 0x41900000    # 18.0f

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 456
    const/16 v18, 0x1e

    const/16 v19, 0x1e

    const/16 v20, 0x1e

    const/16 v21, 0x1e

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 457
    const/high16 v18, 0x40000000    # 2.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 458
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 459
    invoke-virtual {v5, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 460
    const v18, 0x7f0a0556

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$8;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$8;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 465
    const v18, 0x7f0a08f7

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$9;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$9;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 471
    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$10;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$10;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 477
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 478
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 481
    .end local v5    # "HotspotWarningDialog":Landroid/app/AlertDialog$Builder;
    .end local v15    # "view":Landroid/widget/TextView;
    :pswitch_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 482
    .local v4, "HotspotNoLTEWarningDialog":Landroid/app/AlertDialog$Builder;
    const v18, 0x7f0a055f

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 483
    const v18, 0x7f0a08f6

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$11;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$11;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 489
    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$12;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$12;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 495
    const v18, 0x7f0a0511

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 496
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 497
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 500
    .end local v4    # "HotspotNoLTEWarningDialog":Landroid/app/AlertDialog$Builder;
    :pswitch_3
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 501
    .local v12, "mNoSimDialog":Landroid/app/AlertDialog$Builder;
    const v18, 0x7f0a0510

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 502
    const v18, 0x7f0a08f6

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$13;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$13;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 508
    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$14;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$14;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 514
    const v18, 0x7f0a0511

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 515
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 516
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 519
    .end local v12    # "mNoSimDialog":Landroid/app/AlertDialog$Builder;
    :pswitch_4
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 520
    .local v13, "mWarnRoamBulder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0a0531

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "$20.48"

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 521
    const v18, 0x7f0a089d

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$15;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$15;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 526
    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$16;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$16;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 532
    const v18, 0x7f0a0530

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 533
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 534
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 537
    .end local v13    # "mWarnRoamBulder":Landroid/app/AlertDialog$Builder;
    :pswitch_5
    const-string v7, "file:///android_asset/html/%y/tethering_attention.html"

    .line 538
    .local v7, "attention_url":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    .line 539
    .local v11, "locale":Ljava/util/Locale;
    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string v19, "ja"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    const-string v10, "ja"

    .line 540
    .local v10, "language":Ljava/lang/String;
    :goto_2
    const-string v18, "%y"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 542
    .local v14, "url":Ljava/lang/String;
    new-instance v8, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 543
    .local v8, "attention_view":Landroid/webkit/WebView;
    invoke-virtual {v8, v14}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 545
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 546
    .local v6, "attentionDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 547
    const v18, 0x7f0a08f6

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$17;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$17;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 552
    const v18, 0x7f0a08f7

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$18;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$18;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 558
    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$19;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$19;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 564
    const v18, 0x1040014

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 565
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 566
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 567
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 539
    .end local v6    # "attentionDialog":Landroid/app/AlertDialog$Builder;
    .end local v8    # "attention_view":Landroid/webkit/WebView;
    .end local v10    # "language":Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    :cond_2
    const-string v10, "en"

    goto :goto_2

    .line 570
    .end local v7    # "attention_url":Ljava/lang/String;
    .end local v11    # "locale":Ljava/util/Locale;
    :pswitch_6
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 571
    .local v9, "batteryDialog":Landroid/app/AlertDialog$Builder;
    const v18, 0x7f0a0554

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 572
    const v18, 0x7f0a08f6

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$20;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$20;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 577
    const v18, 0x7f0a08f7

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$21;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$21;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 583
    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$22;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$22;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 589
    const v18, 0x7f0a0511

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 590
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 591
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 594
    .end local v9    # "batteryDialog":Landroid/app/AlertDialog$Builder;
    :pswitch_7
    const-string v18, "WifiApWarning"

    const-string v19, "DIALOG_FIRST_TIME_CONFIGURE create"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 596
    new-instance v18, Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$23;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$23;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/wifi/WifiApDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/WifiApDialog;->show()V

    goto/16 :goto_1

    .line 611
    :pswitch_8
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 612
    .local v16, "warnWifiDisable":Landroid/app/AlertDialog$Builder;
    const v18, 0x7f0a04e8

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 613
    const v18, 0x7f0a08f6

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$24;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$24;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 631
    const v18, 0x7f0a08f7

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$25;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$25;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 637
    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$26;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$26;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 643
    const v18, 0x7f0a04e9

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 644
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 645
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 648
    .end local v16    # "warnWifiDisable":Landroid/app/AlertDialog$Builder;
    :pswitch_9
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 649
    .local v17, "warnWifiP2PDisable":Landroid/app/AlertDialog$Builder;
    const v18, 0x7f0a04ef

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 650
    const v18, 0x7f0a08f6

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$27;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$27;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 655
    const v18, 0x7f0a08f7

    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApWarning$28;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$28;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 661
    new-instance v18, Lcom/android/settings/wifi/mobileap/WifiApWarning$29;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$29;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 667
    const v18, 0x7f0a0551

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 668
    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 669
    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 672
    .end local v17    # "warnWifiP2PDisable":Landroid/app/AlertDialog$Builder;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 438
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private showProgressDialog(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 990
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 991
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 992
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    .line 994
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 995
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 996
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 997
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1009
    :cond_1
    :goto_0
    return-void

    .line 999
    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_3

    .line 1001
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    .line 1003
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1005
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1006
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 6
    .param p1, "choice"    # I

    .prologue
    const/4 v5, 0x0

    .line 874
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isProvisioningNeeded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 875
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    .line 876
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 877
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 878
    const-string v2, "TETHER_TYPE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 879
    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 880
    const-string v2, "WifiApWarning"

    const-string v3, "startActivityForResult"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->startActivityForResult(Landroid/content/Intent;I)V

    .line 891
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 883
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    .line 884
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "WifiApWarning"

    const-string v3, "received exception provision failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    .line 889
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0
.end method


# virtual methods
.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 914
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isProvisioningCheck()Z

    move-result v1

    if-nez v1, :cond_1

    .line 915
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 894
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/AlertActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 895
    const-string v0, "WifiApWarning"

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    if-nez p1, :cond_0

    .line 897
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 898
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    .line 899
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 901
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 902
    const-string v0, "WifiApWarning"

    const-string v1, "WifiAp is disabled: provisioning fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 904
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    goto :goto_0

    .line 906
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    .line 907
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1070
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    .line 1071
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x3

    const/4 v11, 0x0

    const v10, 0x7f0b004e

    const/4 v9, 0x1

    .line 138
    const-string v6, "WifiApWarning"

    const-string v7, "onCreate"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 142
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    .line 143
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 144
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 145
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    .line 146
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    .line 147
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    .line 148
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    .line 149
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 152
    :cond_0
    const-string v6, "WifiApWarning"

    const-string v7, "Error: this activity may be started only with intent"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    .line 435
    :cond_1
    :goto_0
    return-void

    .line 156
    :cond_2
    const-string v6, "wifiap_warning_dialog_type"

    invoke-virtual {v3, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    .line 157
    const-string v6, "req_type"

    invoke-virtual {v3, v6, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    .line 158
    const-string v6, "extra_type"

    invoke-virtual {v3, v6, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    .line 159
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 160
    .local v5, "p":Lcom/android/internal/app/AlertController$AlertParams;
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    packed-switch v6, :pswitch_data_0

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    .line 162
    :pswitch_0
    const-string v6, "WifiApWarning"

    const-string v7, "DIALOG_HOTSPOT_NO_DATA"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :pswitch_1
    const-string v6, "WifiApWarning"

    const-string v7, "DIALOG_NAI_MISMATCH"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :pswitch_2
    const-string v6, "WifiApWarning"

    const-string v7, "DIALOG_TETHERING_DENIED"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 170
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->setupAlert()V

    .line 171
    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->setTheme(I)V

    .line 172
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 173
    .local v0, "ad":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0a04b7

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 174
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-ne v6, v9, :cond_4

    .line 175
    const v6, 0x7f0a04bb

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 182
    :goto_1
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-eq v6, v9, :cond_3

    .line 183
    const v6, 0x7f0a08f7

    new-instance v7, Lcom/android/settings/wifi/mobileap/WifiApWarning$2;

    invoke-direct {v7, p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    :cond_3
    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/wifi/mobileap/WifiApWarning$3;

    invoke-direct {v7, p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 244
    new-instance v6, Lcom/android/settings/wifi/mobileap/WifiApWarning$4;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 269
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    .line 270
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 176
    :cond_4
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 177
    const v6, 0x7f0a04b9

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 179
    :cond_5
    const v6, 0x7f0a04ba

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 273
    .end local v0    # "ad":Landroid/app/AlertDialog$Builder;
    .end local v2    # "cr":Landroid/content/ContentResolver;
    :pswitch_3
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 274
    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v8, 0x103012b

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    .line 277
    :cond_6
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->setupAlert()V

    .line 279
    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->setVisible(Z)V

    .line 280
    move-object v1, p0

    .line 281
    .local v1, "av":Landroid/app/Activity;
    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->setTheme(I)V

    .line 283
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 284
    .local v4, "newDialog":Landroid/app/AlertDialog$Builder;
    const-string v6, "VZW"

    const-string v7, "ALL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 285
    const v6, 0x1040014

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 287
    :cond_7
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v6, :cond_a

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-ne v6, v9, :cond_a

    .line 288
    const-string v6, "VZW"

    const-string v7, "ALL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 289
    const v6, 0x7f0a059a

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 290
    const v6, 0x7f0a0595

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 309
    :cond_8
    :goto_2
    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning$5;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 367
    new-instance v6, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/app/Activity;)V

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 389
    const/high16 v6, 0x1040000

    new-instance v7, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;

    invoke-direct {v7, p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/app/Activity;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 411
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    .line 412
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    .line 413
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 292
    :cond_9
    const v6, 0x7f0a04ae

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 294
    :cond_a
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-ne v6, v12, :cond_b

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-ne v6, v9, :cond_b

    .line 295
    const v6, 0x7f0a04b4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 296
    :cond_b
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v6, :cond_c

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-ne v6, v12, :cond_c

    .line 297
    const v6, 0x7f0a04b1

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 298
    :cond_c
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-ne v6, v12, :cond_d

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-nez v6, :cond_d

    .line 299
    const v6, 0x7f0a04b3

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 300
    :cond_d
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v6, :cond_8

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_8

    .line 301
    const-string v6, "VZW"

    const-string v7, "ALL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 302
    const v6, 0x7f0a059e

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 303
    const v6, 0x7f0a0599

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    .line 305
    :cond_e
    const v6, 0x7f0a04b5

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    .line 418
    .end local v1    # "av":Landroid/app/Activity;
    .end local v4    # "newDialog":Landroid/app/AlertDialog$Builder;
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->setupAlert()V

    .line 419
    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->setTheme(I)V

    .line 420
    const-string v6, "USC"

    const-string v7, "ALL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 421
    const/16 v6, 0x17

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_0

    .line 423
    :cond_f
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->preProvisioning()V

    goto/16 :goto_0

    .line 427
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->setupAlert()V

    .line 428
    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->setTheme(I)V

    .line 429
    invoke-direct {p0, v11}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto/16 :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1103
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 1104
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1105
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1106
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    .line 1108
    :cond_0
    const-string v0, "WifiApWarning"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1076
    const-string v0, "WifiApWarning"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 1078
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1082
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    .line 1084
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1087
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1088
    const/4 v0, -0x2

    invoke-static {p0, v0, p0}, Lcom/android/settings/guide/GuideFragment;->onApDisableClick(Landroid/content/DialogInterface;ILandroid/app/Activity;)V

    .line 1100
    :cond_2
    :goto_0
    return-void

    .line 1091
    :cond_3
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1092
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_4

    .line 1093
    const-string v0, "WifiApWarning"

    const-string v1, "mDialogConfigure.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->dismiss()V

    .line 1096
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1097
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 985
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 986
    const-string v0, "WifiApWarning"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    return-void
.end method

.method public saveIsShowPassword()V
    .locals 3

    .prologue
    .line 942
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 943
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "wifi_ap_show_passwd"

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getCheckShowPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 945
    return-void

    .line 943
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
