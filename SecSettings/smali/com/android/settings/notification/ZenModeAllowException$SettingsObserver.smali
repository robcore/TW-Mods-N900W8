.class final Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ZenModeAllowException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeAllowException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/notification/ZenModeAllowException;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/ZenModeAllowException;)V
    .locals 1

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeAllowException;

    .line 512
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeAllowException;->access$400(Lcom/android/settings/notification/ZenModeAllowException;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 508
    const-string v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 509
    const-string v0, "zen_mode_config_etag"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    .line 513
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 526
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 527
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-static {}, Lcom/android/settings/notification/ZenModeAllowException;->access$900()Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeAllowException;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeAllowException;->access$800(Lcom/android/settings/notification/ZenModeAllowException;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;->update(Landroid/content/Context;)V

    .line 529
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeAllowException;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeAllowException;->access$1000(Lcom/android/settings/notification/ZenModeAllowException;)V

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeAllowException;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeAllowException;->access$1100(Lcom/android/settings/notification/ZenModeAllowException;)V

    .line 534
    :cond_1
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 516
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeAllowException;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeAllowException;->access$500(Lcom/android/settings/notification/ZenModeAllowException;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 517
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeAllowException;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeAllowException;->access$600(Lcom/android/settings/notification/ZenModeAllowException;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 518
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeAllowException;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeAllowException;->access$700(Lcom/android/settings/notification/ZenModeAllowException;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 522
    return-void
.end method
