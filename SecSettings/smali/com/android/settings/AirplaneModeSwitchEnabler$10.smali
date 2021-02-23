.class Lcom/android/settings/AirplaneModeSwitchEnabler$10;
.super Ljava/lang/Object;
.source "AirplaneModeSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirplaneModeSwitchEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeSwitchEnabler;Z)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$10;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    iput-boolean p2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$10;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 510
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$10;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$100(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$10;->val$value:Z

    if-eq v0, v1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$10;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    iget-boolean v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$10;->val$value:Z

    invoke-static {v0, v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$300(Lcom/android/settings/AirplaneModeSwitchEnabler;Z)V

    .line 514
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$10;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$400(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$10;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$400(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$10;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$400(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    .line 517
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$10;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$100(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on_reason_usb3"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 522
    :cond_0
    return-void
.end method
