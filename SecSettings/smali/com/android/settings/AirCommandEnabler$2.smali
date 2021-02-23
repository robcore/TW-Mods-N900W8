.class Lcom/android/settings/AirCommandEnabler$2;
.super Ljava/lang/Object;
.source "AirCommandEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 181
    iput-object p1, p0, Lcom/android/settings/AirCommandEnabler$2;->this$0:Lcom/android/settings/AirCommandEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 184
    return-void
.end method
