.class Lcom/android/settings/applications/AppOpsDetails$2;
.super Ljava/lang/Object;
.source "AppOpsDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppOpsDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppOpsDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppOpsDetails;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsDetails$2;->this$0:Lcom/android/settings/applications/AppOpsDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsDetails$2;->this$0:Lcom/android/settings/applications/AppOpsDetails;

    invoke-static {v1}, Lcom/android/settings/applications/AppOpsDetails;->access$000(Lcom/android/settings/applications/AppOpsDetails;)Landroid/widget/Switch;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsDetails$2;->this$0:Lcom/android/settings/applications/AppOpsDetails;

    invoke-static {v1}, Lcom/android/settings/applications/AppOpsDetails;->access$000(Lcom/android/settings/applications/AppOpsDetails;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/applications/AppOpsDetails$2;->this$0:Lcom/android/settings/applications/AppOpsDetails;

    invoke-virtual {v2}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0e56

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0e57

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a08f6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a08f7

    new-instance v3, Lcom/android/settings/applications/AppOpsDetails$2$2;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/AppOpsDetails$2$2;-><init>(Lcom/android/settings/applications/AppOpsDetails$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/applications/AppOpsDetails$2$1;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/AppOpsDetails$2$1;-><init>(Lcom/android/settings/applications/AppOpsDetails$2;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 215
    .local v0, "mAlertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 216
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 219
    .end local v0    # "mAlertBuilder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method
