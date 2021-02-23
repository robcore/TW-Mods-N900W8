.class public Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmDataDisableFragment"
.end annotation


# static fields
.field static final dialog:Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3551
    new-instance v0, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-direct {v0}, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;-><init>()V

    sput-object v0, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3550
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 3553
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3563
    :cond_0
    :goto_0
    return-void

    .line 3556
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3558
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 3559
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3560
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 3561
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmDataDisable"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 3576
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 3578
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3580
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3581
    .local v2, "salesCode":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3582
    const v4, 0x7f0a0ce7

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3605
    :goto_0
    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment$1;

    invoke-direct {v5, p0}, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3615
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3617
    const v4, 0x7f0a0cf8

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3619
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 3584
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3585
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_ForceConnectMMS"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3586
    const v4, 0x7f0a0ce8

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 3589
    :cond_1
    const v4, 0x7f0a0ce9

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 3592
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3593
    const v4, 0x7f0a0cea

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 3594
    :cond_3
    const-string v4, "VZW"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3596
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0a0ce0

    invoke-virtual {p0, v5}, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0a0ce1

    invoke-virtual {p0, v5}, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3597
    .local v3, "vzwMessage":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 3599
    .end local v3    # "vzwMessage":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_EnablePromptPopupWhenActivatingDataConnection"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3600
    const v4, 0x7f0a0cdf

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 3602
    :cond_5
    const v4, 0x7f0a0ce2

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0
.end method
