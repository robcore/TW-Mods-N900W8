.class Lcom/android/settings/SPenSettingsMenu$12;
.super Ljava/lang/Object;
.source "SPenSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SPenSettingsMenu;->showAirCommandEnabledPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SPenSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/SPenSettingsMenu;)V
    .locals 0

    .prologue
    .line 975
    iput-object p1, p0, Lcom/android/settings/SPenSettingsMenu$12;->this$0:Lcom/android/settings/SPenSettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 977
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$12;->this$0:Lcom/android/settings/SPenSettingsMenu;

    invoke-static {v0}, Lcom/android/settings/SPenSettingsMenu;->access$500(Lcom/android/settings/SPenSettingsMenu;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_button_onoff"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 978
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$12;->this$0:Lcom/android/settings/SPenSettingsMenu;

    invoke-static {v0}, Lcom/android/settings/SPenSettingsMenu;->access$300(Lcom/android/settings/SPenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 979
    return-void
.end method
