.class Lcom/android/settings/PenHovering$1;
.super Landroid/database/ContentObserver;
.source "PenHovering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PenHovering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenHovering;


# direct methods
.method constructor <init>(Lcom/android/settings/PenHovering;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/PenHovering$1;->this$0:Lcom/android/settings/PenHovering;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 61
    const-string v1, "PenHovering"

    const-string v2, "onChange() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v1, p0, Lcom/android/settings/PenHovering$1;->this$0:Lcom/android/settings/PenHovering;

    invoke-static {v1}, Lcom/android/settings/PenHovering;->access$000(Lcom/android/settings/PenHovering;)V

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.PEN_HOVERING_SWITCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/PenHovering$1;->this$0:Lcom/android/settings/PenHovering;

    invoke-virtual {v1}, Lcom/android/settings/PenHovering;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 67
    return-void
.end method
