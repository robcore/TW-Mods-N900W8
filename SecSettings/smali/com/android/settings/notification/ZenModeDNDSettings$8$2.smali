.class Lcom/android/settings/notification/ZenModeDNDSettings$8$2;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeDNDSettings$8;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/ZenModeDNDSettings$8;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeDNDSettings$8;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$8$2;->this$1:Lcom/android/settings/notification/ZenModeDNDSettings$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$8$2;->this$1:Lcom/android/settings/notification/ZenModeDNDSettings$8;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$500(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    .line 341
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$8$2;->this$1:Lcom/android/settings/notification/ZenModeDNDSettings$8;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$200(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 342
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$8$2;->this$1:Lcom/android/settings/notification/ZenModeDNDSettings$8;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$402(Lcom/android/settings/notification/ZenModeDNDSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 344
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    .line 345
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$8$2;->this$1:Lcom/android/settings/notification/ZenModeDNDSettings$8;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v1, v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$300(Lcom/android/settings/notification/ZenModeDNDSettings;Landroid/service/notification/ZenModeConfig;)Z

    .line 347
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$8$2;->this$1:Lcom/android/settings/notification/ZenModeDNDSettings$8;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeDNDSettings$8;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$000(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    .line 349
    :cond_0
    return-void
.end method
