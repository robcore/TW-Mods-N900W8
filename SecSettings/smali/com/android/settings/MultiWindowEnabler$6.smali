.class Lcom/android/settings/MultiWindowEnabler$6;
.super Ljava/lang/Object;
.source "MultiWindowEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MultiWindowEnabler;->showPopupWindowsDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MultiWindowEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiWindowEnabler;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/settings/MultiWindowEnabler$6;->this$0:Lcom/android/settings/MultiWindowEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler$6;->this$0:Lcom/android/settings/MultiWindowEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MultiWindowEnabler;->updateSwitch()V

    .line 263
    return-void
.end method
