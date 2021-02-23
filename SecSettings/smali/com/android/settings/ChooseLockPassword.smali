.class public Lcom/android/settings/ChooseLockPassword;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
    }
.end annotation


# static fields
.field public static isChangePwdRequired:Z

.field private static isKnoxB2CResetCase:Z


# instance fields
.field private mAllowHomeAndBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 124
    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    .line 129
    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->isKnoxB2CResetCase:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockPassword;->mAllowHomeAndBack:Z

    .line 231
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 113
    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->isKnoxB2CResetCase:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 113
    sput-boolean p0, Lcom/android/settings/ChooseLockPassword;->isKnoxB2CResetCase:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/ChooseLockPassword;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPassword;->allowHomeAndBack(Z)V

    return-void
.end method

.method private allowHomeAndBack(Z)V
    .locals 4
    .param p1, "allow"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/android/settings/ChooseLockPassword;->mAllowHomeAndBack:Z

    .line 211
    if-nez p1, :cond_0

    .line 212
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 214
    .local v0, "mWindowManager":Landroid/view/IWindowManager;
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v0    # "mWindowManager":Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    return-void

    .line 216
    .restart local v0    # "mWindowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static createIntent(Landroid/content/Context;IZIIZZ)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quality"    # I
    .param p2, "isFallback"    # Z
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "confirmCredentials"    # Z

    .prologue
    .line 144
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    const-string v1, "lockscreen.password_min"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    const-string v1, "lockscreen.password_max"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    const-string v1, "extra_require_password"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    return-object v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 137
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 156
    const-class v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->recreate()V

    .line 178
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 163
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    .line 168
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    const v1, 0x7f0a0880

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 170
    .local v0, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 183
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 184
    :cond_0
    sget-boolean v1, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->mAllowHomeAndBack:Z

    if-nez v1, :cond_2

    .line 185
    :cond_1
    const/4 v1, 0x1

    .line 205
    :goto_0
    return v1

    .line 189
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->mAllowHomeAndBack:Z

    if-eqz v1, :cond_3

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "knoxIntent":Landroid/content/Intent;
    sget-boolean v1, Lcom/android/settings/ChooseLockPassword;->isKnoxB2CResetCase:Z

    if-eqz v1, :cond_4

    .line 192
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "knoxIntent":Landroid/content/Intent;
    const-string v1, "com.sec.knox.containeragent2.B2C_PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .restart local v0    # "knoxIntent":Landroid/content/Intent;
    const-string v1, "isresetsuccess"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    :goto_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.knox.containeragent2"

    const-string v3, "com.sec.knox.containeragent2.ui.keyguard.KnoxKeyguardReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 199
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 200
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ChooseLockPassword;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 205
    .end local v0    # "knoxIntent":Landroid/content/Intent;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 195
    .restart local v0    # "knoxIntent":Landroid/content/Intent;
    :cond_4
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "knoxIntent":Landroid/content/Intent;
    const-string v1, "com.sec.knox.containeragent2.PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .restart local v0    # "knoxIntent":Landroid/content/Intent;
    const-string v1, "resetResult"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method
