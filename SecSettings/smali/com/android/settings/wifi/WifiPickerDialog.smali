.class public Lcom/android/settings/wifi/WifiPickerDialog;
.super Landroid/app/Activity;
.source "WifiPickerDialog.java"


# instance fields
.field private mLastOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    iget v0, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 170
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mLastOrientation:I

    .line 172
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v1, 0x7f040280

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiPickerDialog;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    const v1, 0x7f0a03ca

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiPickerDialog;->setTitle(I)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 72
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiPickerDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured from wifi_picker_dialog.xml, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 124
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 140
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 142
    .local v1, "mStatusBar":Landroid/app/StatusBarManager;
    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 146
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.kidsplat.quickpanel.PANEL_CLOSE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/wifi/WifiPickerDialog;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 148
    return-void
.end method
