.class Lcom/android/settings/FingerAirViewEnabler$2;
.super Ljava/lang/Object;
.source "FingerAirViewEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FingerAirViewEnabler;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FingerAirViewEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/FingerAirViewEnabler;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/settings/FingerAirViewEnabler$2;->this$0:Lcom/android/settings/FingerAirViewEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler$2;->this$0:Lcom/android/settings/FingerAirViewEnabler;

    invoke-static {v0}, Lcom/android/settings/FingerAirViewEnabler;->access$000(Lcom/android/settings/FingerAirViewEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 219
    return-void
.end method
