.class Lcom/android/settings/accounts/AccountSyncSettings$2;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSyncSettings;->startSyncForEnabledProviders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountSyncSettings;->access$600(Lcom/android/settings/accounts/AccountSyncSettings;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AccountSyncSettings;->onSyncStateUpdated()V

    .line 697
    :cond_0
    return-void
.end method
