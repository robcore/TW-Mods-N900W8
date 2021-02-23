.class Lcom/android/settings/MultiWindowEnabler$2;
.super Landroid/database/ContentObserver;
.source "MultiWindowEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MultiWindowEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MultiWindowEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiWindowEnabler;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/MultiWindowEnabler$2;->this$0:Lcom/android/settings/MultiWindowEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler$2;->this$0:Lcom/android/settings/MultiWindowEnabler;

    invoke-static {v0}, Lcom/android/settings/MultiWindowEnabler;->access$000(Lcom/android/settings/MultiWindowEnabler;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler$2;->this$0:Lcom/android/settings/MultiWindowEnabler;

    invoke-static {v0}, Lcom/android/settings/MultiWindowEnabler;->access$000(Lcom/android/settings/MultiWindowEnabler;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 68
    :cond_0
    return-void
.end method
