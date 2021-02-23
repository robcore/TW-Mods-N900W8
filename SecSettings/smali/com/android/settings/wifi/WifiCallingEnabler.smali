.class public final Lcom/android/settings/wifi/WifiCallingEnabler;
.super Ljava/lang/Object;
.source "WifiCallingEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiCallingEnabler$WfcProvisionedTask;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsWfcProvisioned:Z

.field private mShouldEnableWifiOnResume:Z

.field private mStateChangedListener:Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;

.field private mSwitch:Landroid/widget/Switch;

.field private mWfcStateObserver:Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mIsWfcProvisioned:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mShouldEnableWifiOnResume:Z

    .line 44
    new-instance v0, Lcom/android/settings/wifi/WifiCallingEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiCallingEnabler$1;-><init>(Lcom/android/settings/wifi/WifiCallingEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mStateChangedListener:Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;

    .line 85
    iput-object p1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mSwitch:Landroid/widget/Switch;

    .line 87
    new-instance v0, Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mStateChangedListener:Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mWfcStateObserver:Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiCallingEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiCallingEnabler;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiCallingEnabler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiCallingEnabler;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mShouldEnableWifiOnResume:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiCallingEnabler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiCallingEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mShouldEnableWifiOnResume:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiCallingEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiCallingEnabler;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiCallingEnabler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiCallingEnabler;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mIsWfcProvisioned:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/wifi/WifiCallingEnabler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiCallingEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mIsWfcProvisioned:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiCallingEnabler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiCallingEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiCallingEnabler;->updateWfcState(Z)V

    return-void
.end method

.method private updateWfcState(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 133
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 134
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "state"

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/wifi/WfcHelper;->WFC_STATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 136
    return-void

    .line 134
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 114
    if-eqz p2, :cond_1

    .line 115
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mIsWfcProvisioned:Z

    if-nez v1, :cond_0

    .line 116
    new-instance v1, Lcom/android/settings/wifi/WifiCallingEnabler$WfcProvisionedTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/WifiCallingEnabler$WfcProvisionedTask;-><init>(Lcom/android/settings/wifi/WifiCallingEnabler;Lcom/android/settings/wifi/WifiCallingEnabler$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiCallingEnabler$WfcProvisionedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/wifi/WfcHelper;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oem.smartwifi.WFC_AIR_PLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    goto :goto_0

    .line 127
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mShouldEnableWifiOnResume:Z

    .line 128
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiCallingEnabler;->updateWfcState(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mWfcStateObserver:Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 99
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/wifi/WfcHelper;->WFC_STATE_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mWfcStateObserver:Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 93
    new-instance v0, Lcom/android/settings/wifi/WfcHelper$WfcStateTask;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mStateChangedListener:Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WfcHelper$WfcStateTask;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WfcHelper$WfcStateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 4
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v3, 0x0

    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 105
    iput-object p1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mSwitch:Landroid/widget/Switch;

    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/wifi/WfcHelper;->WFC_STATE_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mWfcStateObserver:Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 110
    new-instance v0, Lcom/android/settings/wifi/WfcHelper$WfcStateTask;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mStateChangedListener:Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WfcHelper$WfcStateTask;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WfcHelper$WfcStateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
