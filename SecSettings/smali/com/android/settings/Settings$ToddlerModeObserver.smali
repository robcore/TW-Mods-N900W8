.class Lcom/android/settings/Settings$ToddlerModeObserver;
.super Landroid/database/ContentObserver;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToddlerModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Settings;


# direct methods
.method constructor <init>(Lcom/android/settings/Settings;)V
    .locals 1

    .prologue
    .line 6007
    iput-object p1, p0, Lcom/android/settings/Settings$ToddlerModeObserver;->this$0:Lcom/android/settings/Settings;

    .line 6008
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6009
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 6013
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 6014
    iget-object v0, p0, Lcom/android/settings/Settings$ToddlerModeObserver;->this$0:Lcom/android/settings/Settings;

    invoke-virtual {v0}, Lcom/android/settings/Settings;->invalidateHeaders()V

    .line 6015
    return-void
.end method
