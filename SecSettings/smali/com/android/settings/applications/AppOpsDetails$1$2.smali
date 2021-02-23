.class Lcom/android/settings/applications/AppOpsDetails$1$2;
.super Ljava/lang/Object;
.source "AppOpsDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/AppOpsDetails$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/AppOpsDetails$1;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppOpsDetails$1;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsDetails$1$2;->this$1:Lcom/android/settings/applications/AppOpsDetails$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails$1$2;->this$1:Lcom/android/settings/applications/AppOpsDetails$1;

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails$1;->this$0:Lcom/android/settings/applications/AppOpsDetails;

    invoke-static {v0}, Lcom/android/settings/applications/AppOpsDetails;->access$000(Lcom/android/settings/applications/AppOpsDetails;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->toggle()V

    .line 168
    return-void
.end method
