.class Lcom/android/settings/FingerAirViewHelp$6;
.super Ljava/lang/Object;
.source "FingerAirViewHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FingerAirViewHelp;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FingerAirViewHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/FingerAirViewHelp;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/settings/FingerAirViewHelp$6;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp$6;->this$0:Lcom/android/settings/FingerAirViewHelp;

    const-string v1, "progress_bar_preview"

    invoke-static {v0, v1}, Lcom/android/settings/FingerAirViewHelp;->access$100(Lcom/android/settings/FingerAirViewHelp;Ljava/lang/String;)V

    .line 306
    return-void
.end method
