.class public Lcom/android/settings/Settings$NotificationPanelMenuActivity;
.super Lcom/android/settings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationPanelMenuActivity"
.end annotation


# instance fields
.field isBackKeyPressed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6378
    invoke-direct {p0}, Lcom/android/settings/Settings;-><init>()V

    .line 6380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/Settings$NotificationPanelMenuActivity;->isBackKeyPressed:Z

    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6391
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/Settings$NotificationPanelMenuActivity;->isBackKeyPressed:Z

    .line 6397
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/Settings;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 6394
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/Settings$NotificationPanelMenuActivity;->isBackKeyPressed:Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6402
    invoke-super {p0}, Lcom/android/settings/Settings;->onPause()V

    .line 6404
    invoke-virtual {p0}, Lcom/android/settings/Settings$NotificationPanelMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "direct_quickpanel"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 6406
    .local v0, "isFromQuickPanel":Z
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/Settings$NotificationPanelMenuActivity;->isBackKeyPressed:Z

    if-eqz v2, :cond_0

    .line 6407
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/settings/Settings$NotificationPanelMenuActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 6408
    .local v1, "mStatusBar":Landroid/app/StatusBarManager;
    if-eqz v1, :cond_0

    .line 6409
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->expandSettingsPanel()V

    .line 6411
    .end local v1    # "mStatusBar":Landroid/app/StatusBarManager;
    :cond_0
    iput-boolean v4, p0, Lcom/android/settings/Settings$NotificationPanelMenuActivity;->isBackKeyPressed:Z

    .line 6412
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 6384
    invoke-super {p0}, Lcom/android/settings/Settings;->onResume()V

    .line 6385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/Settings$NotificationPanelMenuActivity;->isBackKeyPressed:Z

    .line 6386
    return-void
.end method
