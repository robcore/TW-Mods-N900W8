.class public Lcom/android/settings/wifi/WfcHelper;
.super Ljava/lang/Object;
.source "WfcHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WfcHelper$WfcStateTask;,
        Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;,
        Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;
    }
.end annotation


# static fields
.field static final WFC_IS_PROVISIONED_CONTENT_URI:Landroid/net/Uri;

.field static final WFC_STATE_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "content://com.oem.smartwifisupport.provider/wfc_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WfcHelper;->WFC_STATE_CONTENT_URI:Landroid/net/Uri;

    .line 21
    const-string v0, "content://com.oem.smartwifisupport.provider/wfc_is_provisioned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WfcHelper;->WFC_IS_PROVISIONED_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method static enableWifi(ZLandroid/content/Context;)V
    .locals 2
    .param p0, "isEnableWifi"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 101
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 102
    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 106
    :cond_0
    return-void
.end method

.method static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static isWfcProvisioned(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 78
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 79
    .local v7, "isProvisioned":Ljava/lang/Boolean;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/wifi/WfcHelper;->WFC_IS_PROVISIONED_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 80
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 81
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v8, :cond_2

    move v0, v8

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 82
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_2
    move v0, v9

    .line 81
    goto :goto_0
.end method

.method static queryWfcState(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 66
    const/4 v7, 0x0

    .line 68
    .local v7, "state":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.oem.smartwifisupport.provider/wfc_state"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 69
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 70
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 71
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_1
    return v7
.end method
