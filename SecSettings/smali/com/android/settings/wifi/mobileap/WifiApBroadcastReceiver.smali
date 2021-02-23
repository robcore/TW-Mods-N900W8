.class public Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBroadcastReceiver.java"


# static fields
.field private static final DBG:Z

.field private static MAX_CLIENTS:I

.field private static bExpireAlarm:Z

.field private static bStartAlarm:Z

.field private static backOffState:I

.field static currentMccMnc:Ljava/lang/String;

.field private static mGateTraceTag:Ljava/lang/String;

.field private static final mHotspotActionForSimStatus:Ljava/lang/String;

.field public static mIsForegroundWifiSettings:Z

.field public static mIsHelpFromTetherSettings:Z

.field public static mIsHelpFromWifiApSettings:Z

.field public static mIsProvisioningResultOk:Z

.field private static mLastClientNum:I


# instance fields
.field private mIsDeviceATT:Z

.field mNotificationManager:Landroid/app/NotificationManager;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    .line 51
    const-string v0, "GATE"

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    .line 55
    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 56
    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 58
    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromTetherSettings:Z

    .line 59
    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromWifiApSettings:Z

    .line 78
    sput v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    .line 80
    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 81
    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    .line 84
    sput v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->MAX_CLIENTS:I

    .line 96
    sput v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    .line 98
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigHotSpotActionForSimStatus"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mHotspotActionForSimStatus:Ljava/lang/String;

    .line 101
    const-string v0, ""

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    .line 90
    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 91
    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private getRvfMode(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, "mRvfMode":I
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 550
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 551
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 552
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x1c

    iput v3, v2, Landroid/os/Message;->what:I

    .line 553
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 555
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    return v0
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 512
    const-string v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 513
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "CONNECTION_TIMEOUT"

    const-string v2, "600"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private isProvisioningNeeded(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 558
    sget-boolean v2, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "Provisioning.disable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 565
    :cond_0
    :goto_0
    return v1

    .line 561
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "mProvisionApp":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 564
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V
    .locals 2
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 506
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 508
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 509
    return-void
.end method

.method private showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "DialogType"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 456
    const-string v6, "WifiApBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[showHotspotErrorDialog] DialogType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 458
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    const-string v6, "extra_type"

    const/4 v7, -0x1

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 459
    .local v0, "extra_type":I
    const-string v6, "req_type"

    const/4 v7, -0x1

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 460
    .local v2, "req_type":I
    if-eqz v1, :cond_0

    .line 461
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    .line 462
    .local v5, "wifiApState":I
    const/4 v6, 0x4

    if-ne p2, v6, :cond_1

    .line 463
    const/16 v6, 0xc

    if-eq v5, v6, :cond_2

    const/16 v6, 0xd

    if-eq v5, v6, :cond_2

    add-int v6, v0, v2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    const/4 v6, 0x4

    if-eq v0, v6, :cond_2

    .line 493
    .end local v5    # "wifiApState":I
    :cond_0
    :goto_0
    return-void

    .line 466
    .restart local v5    # "wifiApState":I
    :cond_1
    const/4 v6, 0x5

    if-ne p2, v6, :cond_4

    .line 467
    const/16 v6, 0xc

    if-eq v5, v6, :cond_0

    const/16 v6, 0xd

    if-eq v5, v6, :cond_0

    .line 480
    :cond_2
    :goto_1
    const-string v6, "statusbar"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .line 481
    .local v4, "statusBar":Landroid/app/StatusBarManager;
    if-eqz v4, :cond_3

    .line 482
    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 484
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 485
    .local v3, "startDialogIntent":Landroid/content/Intent;
    const-class v6, Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v3, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 486
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 487
    const-string v6, "com.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const-string v6, "wifiap_warning_dialog_type"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 489
    const-string v6, "req_type"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 490
    const-string v6, "extra_type"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 471
    .end local v3    # "startDialogIntent":Landroid/content/Intent;
    .end local v4    # "statusBar":Landroid/app/StatusBarManager;
    :cond_4
    const/16 v6, 0xc

    if-eq v5, v6, :cond_5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_0

    .line 475
    :cond_5
    const-string v6, "WifiApBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mobile AP is disabled by [showHotspotErrorDialog] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_1
.end method

.method private startHotspotProvisioningRequest(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "DialogType"    # I

    .prologue
    .line 496
    const-string v1, "WifiApBroadcastReceiver"

    const-string v2, "startHotspotProvisioningRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 498
    .local v0, "startDialogIntent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 499
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 500
    const-string v1, "com.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    const-string v1, "wifiap_warning_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 503
    return-void
.end method

.method private startWifiApSettings(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 518
    sget-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    if-nez v1, :cond_0

    .line 519
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 520
    .local v0, "wifiApIntent":Landroid/content/Intent;
    const-string v1, "android.settings.WIFI_AP_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 522
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 524
    .end local v0    # "wifiApIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method clearTimeoutNotification(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 543
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0a04e1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 545
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 38
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "action":Ljava/lang/String;
    const-string v33, "WifiApBroadcastReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "onReceive: action "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-nez v5, :cond_1

    .line 107
    const-string v33, "WifiApBroadcastReceiver"

    const-string v34, "action is null"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const-string v33, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_9

    .line 112
    const-string v33, "wifi_state"

    const/16 v34, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 113
    .local v8, "apState":I
    const-string v33, "WifiApBroadcastReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "onreceive WIFI_AP_STATE_CHANGED_ACTION] apState : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 196
    :pswitch_1
    const/16 v33, 0x0

    sput v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    .line 197
    const/16 v33, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto :goto_0

    .line 117
    :pswitch_2
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    .line 143
    const-string v33, "ATT"

    const-string v34, "ALL"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2

    .line 144
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearTimeoutNotification(Landroid/content/Context;)V

    .line 145
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    .line 147
    :cond_2
    const-string v33, "VZW"

    const-string v34, "ALL"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_3

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 150
    .local v10, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v33, "wifi_ap_saved_state"

    move-object/from16 v0, v33

    invoke-static {v10, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_3

    .line 151
    const/16 v33, 0x1

    sput-boolean v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 152
    const-string v33, "wifi_ap_saved_state"

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-static {v10, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    .line 159
    .end local v10    # "cr":Landroid/content/ContentResolver;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v33, v0

    if-nez v33, :cond_4

    .line 160
    const-string v33, "SAMSUNG_HOTSPOT"

    const/16 v34, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    .line 163
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v33, v0

    const-string v34, "PROVISIONING_RESULT"

    const/16 v35, 0x0

    invoke-interface/range {v33 .. v35}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    .line 164
    .local v29, "tempProvisonResult":I
    const-string v33, "WifiApBroadcastReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "value of provisioning result is  and flag value "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "  "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-boolean v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_8

    sget-boolean v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    if-nez v33, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getRvfMode(Landroid/content/Context;)I

    move-result v33

    if-nez v33, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    move/from16 v33, v0

    if-nez v33, :cond_8

    .line 167
    const-string v33, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/net/wifi/WifiManager;

    .line 168
    .local v32, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v33

    const/16 v34, 0xd

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_5

    .line 169
    if-nez v29, :cond_7

    .line 170
    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 171
    const-string v33, "WifiApBroadcastReceiver"

    const-string v34, "Provisioning is failed, start provisioning once again"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/16 v33, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequest(Landroid/content/Context;I)V

    .line 184
    .end local v32    # "wm":Landroid/net/wifi/WifiManager;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v33, v0

    if-nez v33, :cond_6

    .line 185
    const-string v33, "SAMSUNG_HOTSPOT"

    const/16 v34, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    .line 187
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 189
    .local v12, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v33, "PROVISIONING_RESULT"

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 174
    .end local v12    # "ed":Landroid/content/SharedPreferences$Editor;
    .restart local v32    # "wm":Landroid/net/wifi/WifiManager;
    :cond_7
    const-string v33, "WifiApBroadcastReceiver"

    const-string v34, "Setting the mIsProvisioningResultOk flag  to false"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/16 v33, 0x0

    sput-boolean v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    goto :goto_2

    .line 181
    .end local v32    # "wm":Landroid/net/wifi/WifiManager;
    :cond_8
    const/16 v33, 0x0

    sput-boolean v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    goto :goto_2

    .line 225
    .end local v8    # "apState":I
    .end local v29    # "tempProvisonResult":I
    :cond_9
    const-string v33, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_12

    .line 226
    const-string v33, "wifiap_power_mode_alarm_option"

    const/16 v34, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 228
    .local v21, "option":I
    if-nez v21, :cond_d

    .line 229
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 232
    .restart local v10    # "cr":Landroid/content/ContentResolver;
    :try_start_1
    const-string v33, "wifi_ap_plugged_type"

    move-object/from16 v0, v33

    invoke-static {v10, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v25

    .line 236
    .local v25, "pluggedType":I
    :goto_3
    const-string v33, "TMO"

    const-string v34, "ALL"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_a

    if-nez v25, :cond_0

    .line 237
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v27

    .line 238
    .local v27, "powermode_value":I
    const-string v33, "WifiApBroadcastReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "ALARM_START : set "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " sec"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    if-eqz v27, :cond_b

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v36, v0

    add-long v14, v34, v36

    .line 242
    .local v14, "expireTime":J
    new-instance v6, Landroid/content/Intent;

    const-string v33, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v33

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v6, "alarm_intent":Landroid/content/Intent;
    const-string v33, "wifiap_power_mode_alarm_option"

    const/16 v34, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    const/16 v33, 0x0

    const/high16 v34, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v22

    .line 246
    .local v22, "pending":Landroid/app/PendingIntent;
    const-string v33, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 247
    .local v7, "am":Landroid/app/AlarmManager;
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v14, v15, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 249
    const/16 v33, 0x0

    sput-boolean v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 250
    const/16 v33, 0x1

    sput-boolean v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 233
    .end local v6    # "alarm_intent":Landroid/content/Intent;
    .end local v7    # "am":Landroid/app/AlarmManager;
    .end local v14    # "expireTime":J
    .end local v22    # "pending":Landroid/app/PendingIntent;
    .end local v25    # "pluggedType":I
    .end local v27    # "powermode_value":I
    :catch_0
    move-exception v11

    .line 234
    .local v11, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v25, 0x0

    .restart local v25    # "pluggedType":I
    goto/16 :goto_3

    .line 252
    .end local v11    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v27    # "powermode_value":I
    :cond_b
    sget-boolean v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v33, :cond_c

    .line 253
    new-instance v6, Landroid/content/Intent;

    const-string v33, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v33

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .restart local v6    # "alarm_intent":Landroid/content/Intent;
    const-string v33, "wifiap_power_mode_alarm_option"

    const/16 v34, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    const/16 v33, 0x0

    const/high16 v34, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v22

    .line 257
    .restart local v22    # "pending":Landroid/app/PendingIntent;
    const-string v33, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 258
    .restart local v7    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 260
    .end local v6    # "alarm_intent":Landroid/content/Intent;
    .end local v7    # "am":Landroid/app/AlarmManager;
    .end local v22    # "pending":Landroid/app/PendingIntent;
    :cond_c
    const/16 v33, 0x0

    sput-boolean v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 263
    .end local v10    # "cr":Landroid/content/ContentResolver;
    .end local v25    # "pluggedType":I
    .end local v27    # "powermode_value":I
    :cond_d
    const/16 v33, 0x4

    move/from16 v0, v21

    move/from16 v1, v33

    if-ne v0, v1, :cond_e

    .line 264
    const-string v33, "WifiApBroadcastReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "WIFIAP_POWER_MODE_VALUE_CHANGED, mLastClientNum = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v33, :cond_0

    .line 266
    const-string v33, "WifiApBroadcastReceiver"

    const-string v34, "ALARM_START because of WIFIAP_POWER_MODE_VALUE_CHANGED"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 269
    :cond_e
    const/16 v33, 0x1

    move/from16 v0, v21

    move/from16 v1, v33

    if-ne v0, v1, :cond_11

    .line 270
    const-string v33, "WifiApBroadcastReceiver"

    const-string v34, "ALARM_EXPIRE"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 272
    .restart local v10    # "cr":Landroid/content/ContentResolver;
    const/16 v33, 0x1

    sput-boolean v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 273
    const/16 v33, 0x0

    sput-boolean v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    .line 276
    const-string v33, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/PowerManager;

    .line 277
    .local v26, "pm":Landroid/os/PowerManager;
    const/16 v33, 0x1

    const-string v34, "MobileAPCloseService"

    move-object/from16 v0, v26

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    .line 279
    .local v13, "mStopService":Landroid/os/PowerManager$WakeLock;
    :try_start_2
    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 284
    :goto_4
    const-string v33, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/net/wifi/WifiManager;

    .line 286
    .restart local v32    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v30

    .line 287
    .local v30, "wifiApState":I
    const/16 v31, 0x0

    .line 288
    .local v31, "wifiSavedState":I
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v27

    .line 290
    .restart local v27    # "powermode_value":I
    new-instance v19, Landroid/os/Message;

    invoke-direct/range {v19 .. v19}, Landroid/os/Message;-><init>()V

    .line 291
    .local v19, "msg":Landroid/os/Message;
    const/16 v33, 0x3

    move/from16 v0, v33

    move-object/from16 v1, v19

    iput v0, v1, Landroid/os/Message;->what:I

    .line 292
    const/16 v20, 0x0

    .line 294
    .local v20, "num":I
    :try_start_3
    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v20

    .line 298
    :goto_5
    const-string v33, "WifiApBroadcastReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "powermode_value = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-nez v20, :cond_10

    const/16 v33, 0xd

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_10

    if-eqz v27, :cond_10

    .line 300
    const-string v33, "WifiApBroadcastReceiver"

    const-string v34, "--> ap disable"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 302
    const-string v33, "ATT"

    const-string v34, "ALL"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_f

    .line 303
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showTimeoutNotification(Landroid/content/Context;)V

    .line 305
    :cond_f
    :try_start_4
    const-string v33, "wifi_saved_state"

    move-object/from16 v0, v33

    invoke-static {v10, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_6

    move-result v31

    .line 309
    :goto_6
    const/16 v33, 0x1

    move/from16 v0, v31

    move/from16 v1, v33

    if-ne v0, v1, :cond_10

    .line 311
    const-wide/16 v34, 0x258

    :try_start_5
    invoke-static/range {v34 .. v35}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    .line 315
    :goto_7
    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 316
    const-string v33, "wifi_saved_state"

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-static {v10, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    :cond_10
    if-eqz v13, :cond_0

    .line 322
    :try_start_6
    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 323
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 280
    .end local v19    # "msg":Landroid/os/Message;
    .end local v20    # "num":I
    .end local v27    # "powermode_value":I
    .end local v30    # "wifiApState":I
    .end local v31    # "wifiSavedState":I
    .end local v32    # "wm":Landroid/net/wifi/WifiManager;
    :catch_1
    move-exception v11

    .line 281
    .local v11, "e":Ljava/lang/Throwable;
    const-string v33, "WifiApBroadcastReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Cannot acquire wake lock ~~"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 295
    .end local v11    # "e":Ljava/lang/Throwable;
    .restart local v19    # "msg":Landroid/os/Message;
    .restart local v20    # "num":I
    .restart local v27    # "powermode_value":I
    .restart local v30    # "wifiApState":I
    .restart local v31    # "wifiSavedState":I
    .restart local v32    # "wm":Landroid/net/wifi/WifiManager;
    :catch_2
    move-exception v11

    .line 296
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_5

    .line 312
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v11

    .line 313
    .local v11, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    .line 324
    .end local v11    # "e":Ljava/lang/InterruptedException;
    :catch_4
    move-exception v11

    .line 325
    .local v11, "e":Ljava/lang/Throwable;
    const-string v33, "WifiApBroadcastReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Cannot release wake lock ~~"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 328
    .end local v10    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "e":Ljava/lang/Throwable;
    .end local v13    # "mStopService":Landroid/os/PowerManager$WakeLock;
    .end local v19    # "msg":Landroid/os/Message;
    .end local v20    # "num":I
    .end local v26    # "pm":Landroid/os/PowerManager;
    .end local v27    # "powermode_value":I
    .end local v30    # "wifiApState":I
    .end local v31    # "wifiSavedState":I
    .end local v32    # "wm":Landroid/net/wifi/WifiManager;
    :cond_11
    const/16 v33, 0x2

    move/from16 v0, v21

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 329
    const-string v33, "WifiApBroadcastReceiver"

    const-string v34, "ALARM_STOP"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-boolean v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v33, :cond_0

    sget-boolean v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v33, :cond_0

    .line 331
    new-instance v6, Landroid/content/Intent;

    const-string v33, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v33

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .restart local v6    # "alarm_intent":Landroid/content/Intent;
    const-string v33, "wifiap_power_mode_alarm_option"

    const/16 v34, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    const/16 v33, 0x0

    const/high16 v34, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v22

    .line 334
    .restart local v22    # "pending":Landroid/app/PendingIntent;
    const-string v33, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 335
    .restart local v7    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 336
    const/16 v33, 0x0

    sput-boolean v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 339
    .end local v6    # "alarm_intent":Landroid/content/Intent;
    .end local v7    # "am":Landroid/app/AlarmManager;
    .end local v21    # "option":I
    .end local v22    # "pending":Landroid/app/PendingIntent;
    :cond_12
    const-string v33, "com.android.settings.wifi.PLUG_STATE_CHANGED"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_14

    .line 340
    const-string v33, "wifiap_plug_state_changed_option"

    const/16 v34, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 341
    .restart local v21    # "option":I
    if-nez v21, :cond_13

    .line 342
    const-string v33, "WifiApBroadcastReceiver"

    const-string v34, "Unplugged"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v33, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/net/wifi/WifiManager;

    .line 344
    .restart local v32    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v30

    .line 345
    .restart local v30    # "wifiApState":I
    const/16 v33, 0xd

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    sget v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v33, :cond_0

    .line 346
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 349
    .end local v30    # "wifiApState":I
    .end local v32    # "wm":Landroid/net/wifi/WifiManager;
    :cond_13
    const-string v33, "WifiApBroadcastReceiver"

    const-string v34, "Plugged"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sget-boolean v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v33, :cond_0

    sget-boolean v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v33, :cond_0

    .line 351
    const/16 v33, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 354
    .end local v21    # "option":I
    :cond_14
    const-string v33, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_18

    .line 355
    const-string v33, "NUM"

    const/16 v34, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 356
    .local v4, "ClientNum":I
    const-string v33, "WifiApBroadcastReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "ClientNum from WIFI_AP_STA_STATUS_CHANGED_ACTION = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    if-gez v4, :cond_15

    .line 358
    const/4 v4, 0x0

    .line 370
    :cond_15
    if-nez v4, :cond_17

    sget v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-eqz v33, :cond_17

    .line 371
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    .line 375
    :cond_16
    :goto_8
    sput v4, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    goto/16 :goto_0

    .line 372
    :cond_17
    if-lez v4, :cond_16

    .line 373
    const/16 v33, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto :goto_8

    .line 376
    .end local v4    # "ClientNum":I
    :cond_18
    const-string v33, "com.android.settings.wifi.mobileap.TURNOFF_HOTSPOT"

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_19

    .line 377
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearTimeoutNotification(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 378
    :cond_19
    const-string v33, "android.settings.WIFI_AP_SEC_SETTINGS"

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1a

    .line 379
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startWifiApSettings(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 380
    :cond_1a
    const-string v33, "android.intent.action.MIP_ERROR"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_1b

    const-string v33, "android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_1b

    const-string v33, "android.intent.action.TETHERING_FAILED"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1f

    .line 381
    :cond_1b
    const-string v33, "SPRINT"

    const-string v34, "ALL"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getRvfMode(Landroid/content/Context;)I

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_0

    .line 382
    const-string v33, "android.intent.action.MIP_ERROR"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1c

    .line 383
    const-string v33, "CODE"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 384
    .local v18, "mipErrorCode":Ljava/lang/String;
    const-string v33, "WifiApBroadcastReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "mipErrorCode : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    if-eqz v18, :cond_0

    const-string v33, "67"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_0

    .line 386
    const/16 v33, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v33

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 387
    .end local v18    # "mipErrorCode":Ljava/lang/String;
    :cond_1c
    const-string v33, "android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1d

    .line 388
    const/16 v33, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v33

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 390
    :cond_1d
    sget-boolean v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v33, :cond_1e

    const-string v33, "Provisioning.disable"

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v34, "1"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_0

    .line 391
    :cond_1e
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v33

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 394
    :cond_1f
    const-string v33, "android.intent.action.WIFI_ENABLE_WARNING"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_20

    .line 395
    const/16 v33, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v33

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 396
    :cond_20
    const-string v33, "android.intent.action.WIFI_AP_ENABLE_WARNING"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_21

    .line 397
    const/16 v33, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v33

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 398
    :cond_21
    const-string v33, "SPRINT"

    const-string v34, "ALL"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_26

    const-string v33, "android.intent.action.RADIO_TECHNOLOGY"

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_26

    .line 399
    const-string v33, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/net/wifi/WifiManager;

    .line 400
    .restart local v32    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v30

    .line 401
    .restart local v30    # "wifiApState":I
    const/16 v33, 0xc

    move/from16 v0, v30

    move/from16 v1, v33

    if-eq v0, v1, :cond_22

    const/16 v33, 0xd

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 403
    :cond_22
    const-string v33, "phoneName"

    const/16 v34, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 404
    .local v24, "phoneType":I
    const-string v33, "WifiApBroadcastReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Receive android.intent.action.RADIO_TECHNOLOGY, phoneType = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 406
    .restart local v10    # "cr":Landroid/content/ContentResolver;
    const-string v33, "phone"

    invoke-static/range {v33 .. v33}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v23

    .line 407
    .local v23, "phone":Lcom/android/internal/telephony/ITelephony;
    const/16 v17, 0xa

    .line 410
    .local v17, "maxClientNum":I
    const/16 v33, 0x1

    move/from16 v0, v24

    move/from16 v1, v33

    if-ne v0, v1, :cond_24

    .line 411
    :try_start_7
    const-string v33, "chameleon_gsmmaxuser"

    const/16 v34, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-static {v10, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_5

    move-result v17

    .line 426
    :cond_23
    :goto_9
    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v33, v0

    if-eqz v33, :cond_0

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move/from16 v33, v0

    move/from16 v0, v17

    move/from16 v1, v33

    if-ge v0, v1, :cond_25

    .line 429
    :goto_a
    const-string v33, "WifiApBroadcastReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "maxClientNum = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v19, Landroid/os/Message;

    invoke-direct/range {v19 .. v19}, Landroid/os/Message;-><init>()V

    .line 432
    .restart local v19    # "msg":Landroid/os/Message;
    const/16 v33, 0xe

    move/from16 v0, v33

    move-object/from16 v1, v19

    iput v0, v1, Landroid/os/Message;->what:I

    .line 433
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 434
    .local v9, "b":Landroid/os/Bundle;
    const-string v33, "maxClient"

    move-object/from16 v0, v33

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 435
    move-object/from16 v0, v19

    iput-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 436
    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    .line 412
    .end local v9    # "b":Landroid/os/Bundle;
    .end local v19    # "msg":Landroid/os/Message;
    :cond_24
    const/16 v33, 0x2

    move/from16 v0, v24

    move/from16 v1, v33

    if-ne v0, v1, :cond_23

    .line 418
    :try_start_8
    const-string v33, "chameleon_maxuser"

    move-object/from16 v0, v33

    invoke-static {v10, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_8} :catch_5

    move-result v17

    goto :goto_9

    .line 422
    :catch_5
    move-exception v11

    .line 423
    .local v11, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v17, 0xa

    goto :goto_9

    .line 428
    .end local v11    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move/from16 v17, v0

    goto :goto_a

    .line 441
    .end local v10    # "cr":Landroid/content/ContentResolver;
    .end local v17    # "maxClientNum":I
    .end local v23    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v24    # "phoneType":I
    .end local v30    # "wifiApState":I
    .end local v32    # "wm":Landroid/net/wifi/WifiManager;
    :cond_26
    sget-object v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mHotspotActionForSimStatus:Ljava/lang/String;

    if-eqz v33, :cond_0

    sget-object v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mHotspotActionForSimStatus:Ljava/lang/String;

    const-string v34, "turn off"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_0

    const-string v33, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_0

    .line 442
    const-string v33, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 443
    .local v28, "szSimState":Ljava/lang/String;
    const-string v33, "WifiApBroadcastReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Recieve Sim State Changed : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string v33, "IMSI"

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_0

    .line 445
    const-string v33, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 446
    .local v16, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    const-string v33, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/net/wifi/WifiManager;

    .line 447
    .restart local v32    # "wm":Landroid/net/wifi/WifiManager;
    const-string v33, "WifiApBroadcastReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "INTENT_VALUE_ICC_IMSI changed mccmnc old = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " ,  new = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v33

    sput-object v33, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    .line 450
    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 306
    .end local v16    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v28    # "szSimState":Ljava/lang/String;
    .restart local v10    # "cr":Landroid/content/ContentResolver;
    .restart local v13    # "mStopService":Landroid/os/PowerManager$WakeLock;
    .restart local v19    # "msg":Landroid/os/Message;
    .restart local v20    # "num":I
    .restart local v21    # "option":I
    .restart local v26    # "pm":Landroid/os/PowerManager;
    .restart local v27    # "powermode_value":I
    .restart local v30    # "wifiApState":I
    .restart local v31    # "wifiSavedState":I
    :catch_6
    move-exception v33

    goto/16 :goto_6

    .line 154
    .end local v13    # "mStopService":Landroid/os/PowerManager$WakeLock;
    .end local v19    # "msg":Landroid/os/Message;
    .end local v20    # "num":I
    .end local v21    # "option":I
    .end local v26    # "pm":Landroid/os/PowerManager;
    .end local v27    # "powermode_value":I
    .end local v30    # "wifiApState":I
    .end local v31    # "wifiSavedState":I
    .end local v32    # "wm":Landroid/net/wifi/WifiManager;
    .restart local v8    # "apState":I
    :catch_7
    move-exception v33

    goto/16 :goto_1

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method showTimeoutNotification(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v8, 0x7f0a04e1

    const/4 v6, 0x0

    .line 527
    const v1, 0x108008a

    .line 528
    .local v1, "icon":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 530
    .local v4, "title":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.settings.wifi.mobileap.TURNOFF_HOTSPOT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .local v3, "notificationIntent":Landroid/content/Intent;
    invoke-static {p1, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 533
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v2, v1, v4, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 534
    .local v2, "notification":Landroid/app/Notification;
    const/4 v5, 0x0

    invoke-virtual {v2, p1, v4, v5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 536
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v5, :cond_0

    .line 537
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 538
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 539
    return-void
.end method
