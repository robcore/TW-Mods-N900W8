.class Lcom/android/settings/MultiWindowEnabler$5$1;
.super Ljava/lang/Object;
.source "MultiWindowEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MultiWindowEnabler$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/MultiWindowEnabler$5;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiWindowEnabler$5;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings/MultiWindowEnabler$5$1;->this$1:Lcom/android/settings/MultiWindowEnabler$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler$5$1;->this$1:Lcom/android/settings/MultiWindowEnabler$5;

    iget-object v0, v0, Lcom/android/settings/MultiWindowEnabler$5;->this$0:Lcom/android/settings/MultiWindowEnabler;

    invoke-static {v0}, Lcom/android/settings/MultiWindowEnabler;->access$100(Lcom/android/settings/MultiWindowEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 190
    return-void
.end method
