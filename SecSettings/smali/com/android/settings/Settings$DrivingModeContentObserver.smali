.class Lcom/android/settings/Settings$DrivingModeContentObserver;
.super Landroid/database/ContentObserver;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrivingModeContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Settings;


# direct methods
.method private isSystemDrivingModeEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 6600
    :try_start_0
    invoke-static {}, Lcom/android/settings/Settings;->access$1500()Landroid/content/Context;

    move-result-object v0

    .line 6601
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_mode_on"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 6602
    .local v2, "v":I
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 6605
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "v":I
    :cond_0
    :goto_0
    return v3

    .line 6603
    :catch_0
    move-exception v1

    .line 6604
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/settings/Settings;->access$1700()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Settings"

    const-string v5, "Driving mode settings not found."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 6573
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6574
    :cond_0
    const-string v1, "Settings"

    const-string v2, "Do not use driving mode "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6595
    :cond_1
    :goto_0
    return-void

    .line 6578
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/Settings$DrivingModeContentObserver;->isSystemDrivingModeEnabled()Z

    move-result v0

    .line 6580
    .local v0, "systemDrivingModeOn":Z
    if-nez v0, :cond_3

    .line 6581
    const-string v1, "Settings"

    const-string v2, "isSystemDrivingModeEnabled is : false "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6582
    iget-object v1, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    invoke-static {v1}, Lcom/android/settings/Settings;->access$2800(Lcom/android/settings/Settings;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 6583
    iget-object v1, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    iget-object v1, v1, Lcom/android/settings/Settings;->am:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    invoke-static {v2}, Lcom/android/settings/Settings;->access$2800(Lcom/android/settings/Settings;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 6584
    iget-object v1, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    iget-object v2, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    invoke-static {v2}, Lcom/android/settings/Settings;->access$2800(Lcom/android/settings/Settings;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Settings;->access$2702(Lcom/android/settings/Settings;I)I

    .line 6585
    iget-object v1, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/settings/Settings;->access$2802(Lcom/android/settings/Settings;I)I

    goto :goto_0

    .line 6588
    :cond_3
    const-string v1, "Settings"

    const-string v2, "isSystemDrivingModeEnabled is : true "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6589
    iget-object v1, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    invoke-static {v1}, Lcom/android/settings/Settings;->access$2800(Lcom/android/settings/Settings;)I

    move-result v1

    if-gez v1, :cond_4

    .line 6590
    iget-object v1, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    iget-object v2, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    invoke-static {v2}, Lcom/android/settings/Settings;->access$2700(Lcom/android/settings/Settings;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Settings;->access$2802(Lcom/android/settings/Settings;I)I

    .line 6591
    :cond_4
    iget-object v1, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/settings/Settings;->access$2702(Lcom/android/settings/Settings;I)I

    .line 6592
    iget-object v1, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    iget-object v1, v1, Lcom/android/settings/Settings;->am:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    invoke-static {v2}, Lcom/android/settings/Settings;->access$2700(Lcom/android/settings/Settings;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method
