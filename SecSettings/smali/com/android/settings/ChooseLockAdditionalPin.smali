.class public Lcom/android/settings/ChooseLockAdditionalPin;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockAdditionalPin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 118
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 79
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin;->recreate()V

    .line 93
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v1, 0x7f0a0880

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockAdditionalPin;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 104
    .local v0, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockAdditionalPin;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method
