.class Lcom/android/settings/accounts/AccountSyncSettings$1;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSyncSettings;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 152
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 156
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-static {v2}, Lcom/android/settings/accounts/AccountSyncSettings;->access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "com.osp.app.signin"

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-static {v3}, Lcom/android/settings/accounts/AccountSyncSettings;->access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-static {v2, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->access$100(Lcom/android/settings/accounts/AccountSyncSettings;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-static {v3}, Lcom/android/settings/accounts/AccountSyncSettings;->access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->SetReactivationFlag(ILandroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 160
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-static {v2}, Lcom/android/settings/accounts/AccountSyncSettings;->access$200(Lcom/android/settings/accounts/AccountSyncSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_my_mobile"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.reactivationlock_off"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "AccountSettings"

    const-string v3, " onActivityResult[reactivationlock_off]"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 167
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-static {v3}, Lcom/android/settings/accounts/AccountSyncSettings;->access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->SetReactivationServiceFlag(ILandroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 168
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-static {v2}, Lcom/android/settings/accounts/AccountSyncSettings;->access$300(Lcom/android/settings/accounts/AccountSyncSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "remote_control"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.remotecontrol_off"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "AccountSettings"

    const-string v3, " onActivityResult[remotecontrol_off]"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 173
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccountManagerCallback removeAccount [getRequiredAuthFlag] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-static {v4, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->access$100(Lcom/android/settings/accounts/AccountSyncSettings;Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_2
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-static {v3}, Lcom/android/settings/accounts/AccountSyncSettings;->access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v3

    new-instance v4, Lcom/android/settings/accounts/AccountSyncSettings$1$1;

    invoke-direct {v4, p0}, Lcom/android/settings/accounts/AccountSyncSettings$1$1;-><init>(Lcom/android/settings/accounts/AccountSyncSettings$1;)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    iget-object v6, v6, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/accounts/AccountManager;->removeAccountAsUser(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    .line 217
    return-void
.end method
