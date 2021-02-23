.class Lcom/android/settings/AirCommandEnabler$4;
.super Ljava/lang/Object;
.source "AirCommandEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirCommandEnabler;->showTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirCommandEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirCommandEnabler;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/settings/AirCommandEnabler$4;->this$0:Lcom/android/settings/AirCommandEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 191
    iget-object v1, p0, Lcom/android/settings/AirCommandEnabler$4;->this$0:Lcom/android/settings/AirCommandEnabler;

    invoke-static {v1}, Lcom/android/settings/AirCommandEnabler;->access$000(Lcom/android/settings/AirCommandEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_button_onoff"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 193
    .local v0, "airViewState":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AirCommandEnabler$4;->this$0:Lcom/android/settings/AirCommandEnabler;

    invoke-static {v1}, Lcom/android/settings/AirCommandEnabler;->access$100(Lcom/android/settings/AirCommandEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 194
    return-void
.end method
