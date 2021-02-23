.class Lcom/android/settings/applications/AppOpsDetails$1;
.super Ljava/lang/Object;
.source "AppOpsDetails.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/AppOpsDetails;->refreshUi()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppOpsDetails;

.field final synthetic val$entry:Lcom/android/settings/applications/AppOpsState$AppOpEntry;

.field final synthetic val$firstOp:Landroid/app/AppOpsManager$OpEntry;

.field final synthetic val$switchOp:I


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppOpsDetails;Landroid/app/AppOpsManager$OpEntry;ILcom/android/settings/applications/AppOpsState$AppOpEntry;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsDetails$1;->this$0:Lcom/android/settings/applications/AppOpsDetails;

    iput-object p2, p0, Lcom/android/settings/applications/AppOpsDetails$1;->val$firstOp:Landroid/app/AppOpsManager$OpEntry;

    iput p3, p0, Lcom/android/settings/applications/AppOpsDetails$1;->val$switchOp:I

    iput-object p4, p0, Lcom/android/settings/applications/AppOpsDetails$1;->val$entry:Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsDetails$1;->this$0:Lcom/android/settings/applications/AppOpsDetails;

    invoke-static {v1}, Lcom/android/settings/applications/AppOpsDetails;->access$000(Lcom/android/settings/applications/AppOpsDetails;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    invoke-static {}, Lcom/android/settings/Utils;->isChinaNAL()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/AppOpsDetails$1;->val$firstOp:Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    const/16 v2, 0x35

    if-ne v1, v2, :cond_0

    .line 160
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/applications/AppOpsDetails$1;->this$0:Lcom/android/settings/applications/AppOpsDetails;

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

    new-instance v3, Lcom/android/settings/applications/AppOpsDetails$1$2;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/AppOpsDetails$1$2;-><init>(Lcom/android/settings/applications/AppOpsDetails$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/applications/AppOpsDetails$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/AppOpsDetails$1$1;-><init>(Lcom/android/settings/applications/AppOpsDetails$1;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 176
    .local v0, "mAlertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 177
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 180
    .end local v0    # "mAlertBuilder":Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsDetails$1;->this$0:Lcom/android/settings/applications/AppOpsDetails;

    invoke-static {v1}, Lcom/android/settings/applications/AppOpsDetails;->access$100(Lcom/android/settings/applications/AppOpsDetails;)Landroid/app/AppOpsManager;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/applications/AppOpsDetails$1;->val$switchOp:I

    iget-object v1, p0, Lcom/android/settings/applications/AppOpsDetails$1;->val$entry:Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    invoke-virtual {v1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v4

    iget-object v1, p0, Lcom/android/settings/applications/AppOpsDetails$1;->val$entry:Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    invoke-virtual {v1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 183
    return-void

    .line 180
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
