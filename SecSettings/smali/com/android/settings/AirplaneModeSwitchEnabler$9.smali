.class Lcom/android/settings/AirplaneModeSwitchEnabler$9;
.super Ljava/lang/Object;
.source "AirplaneModeSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$9;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 454
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$9;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$600(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$9;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$600(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$9;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$100(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$9;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$700(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$9;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$700(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$9;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$100(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 459
    :cond_1
    const-string v0, "AirplaneModeSwitchEnabler"

    const-string v1, "mAlertDialog.setOnKeyListener"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_2
    return v2
.end method
