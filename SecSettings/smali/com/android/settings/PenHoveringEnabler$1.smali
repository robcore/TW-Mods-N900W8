.class Lcom/android/settings/PenHoveringEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "PenHoveringEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PenHoveringEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenHoveringEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/PenHoveringEnabler;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings/PenHoveringEnabler$1;->this$0:Lcom/android/settings/PenHoveringEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.settings.PEN_HOVERING_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 54
    .local v1, "state":I
    const-string v2, "PenHoveringEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.settings.PEN_HOVERING_CHANGED, pen hovering state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    if-ne v1, v6, :cond_1

    .line 57
    iget-object v2, p0, Lcom/android/settings/PenHoveringEnabler$1;->this$0:Lcom/android/settings/PenHoveringEnabler;

    invoke-static {v2}, Lcom/android/settings/PenHoveringEnabler;->access$000(Lcom/android/settings/PenHoveringEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 70
    .end local v1    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 59
    .restart local v1    # "state":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/PenHoveringEnabler$1;->this$0:Lcom/android/settings/PenHoveringEnabler;

    invoke-static {v2}, Lcom/android/settings/PenHoveringEnabler;->access$000(Lcom/android/settings/PenHoveringEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 61
    .end local v1    # "state":I
    :cond_2
    const-string v2, "android.settings.PEN_HOVERING_SWITCH_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 63
    .restart local v1    # "state":I
    const-string v2, "PenHoveringEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.settings.PEN_HOVERING_SWITCH_CHANGED is received, pen hovring state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    if-ne v1, v6, :cond_3

    .line 66
    iget-object v2, p0, Lcom/android/settings/PenHoveringEnabler$1;->this$0:Lcom/android/settings/PenHoveringEnabler;

    invoke-static {v2}, Lcom/android/settings/PenHoveringEnabler;->access$000(Lcom/android/settings/PenHoveringEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 68
    :cond_3
    iget-object v2, p0, Lcom/android/settings/PenHoveringEnabler$1;->this$0:Lcom/android/settings/PenHoveringEnabler;

    invoke-static {v2}, Lcom/android/settings/PenHoveringEnabler;->access$000(Lcom/android/settings/PenHoveringEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
