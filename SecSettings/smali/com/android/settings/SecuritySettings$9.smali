.class Lcom/android/settings/SecuritySettings$9;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings;->showReactivationLockDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .locals 0

    .prologue
    .line 2050
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$9;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v7, 0x3eb

    .line 2052
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$9;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v4}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "samsung_signin"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    .line 2053
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$9;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v4}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 2054
    .local v1, "manager":Landroid/accounts/AccountManager;
    const-string v4, "com.osp.app.signin"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 2055
    .local v3, "samsungAccnts":[Landroid/accounts/Account;
    array-length v2, v3

    .line 2056
    .local v2, "returnvalue_sa":I
    if-nez v2, :cond_0

    .line 2057
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2058
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v4, "com.osp.app.signin"

    const-string v5, "com.osp.app.signin.AccountView"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2059
    const-string v4, "MODE"

    const-string v5, "REMOTE_CONTROLS"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2060
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$9;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v4, v0, v7}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2068
    .end local v0    # "mIntent":Landroid/content/Intent;
    .end local v1    # "manager":Landroid/accounts/AccountManager;
    .end local v2    # "returnvalue_sa":I
    .end local v3    # "samsungAccnts":[Landroid/accounts/Account;
    :cond_0
    :goto_0
    return-void

    .line 2063
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2064
    .restart local v0    # "mIntent":Landroid/content/Intent;
    const-string v4, "com.osp.app.signin"

    const-string v5, "com.osp.app.signin.UserValidateCheck"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2065
    const-string v4, "MODE"

    const-string v5, "REMOTE_CONTROLS"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2066
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$9;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v4, v0, v7}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
