.class public Lcom/android/settings/smartbonding/SmartBondingSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmartBondingSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAirPlaneObserver:Landroid/database/ContentObserver;

.field mHelpHandler:Landroid/os/Handler;

.field private mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mIsFromHelp:Z

.field private mNofiticationDialog:Landroid/app/AlertDialog;

.field private mSmartBondingObserver:Landroid/database/ContentObserver;

.field private mToddlerModeObserver:Landroid/database/ContentObserver;

.field private mWfcObserver:Landroid/database/ContentObserver;

.field private smartBondingdesc:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 89
    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 90
    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 91
    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 92
    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mIsFromHelp:Z

    .line 100
    new-instance v0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/smartbonding/SmartBondingSettings$1;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpHandler:Landroid/os/Handler;

    .line 238
    new-instance v0, Lcom/android/settings/smartbonding/SmartBondingSettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/smartbonding/SmartBondingSettings$6;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mToddlerModeObserver:Landroid/database/ContentObserver;

    .line 248
    new-instance v0, Lcom/android/settings/smartbonding/SmartBondingSettings$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/smartbonding/SmartBondingSettings$7;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mWfcObserver:Landroid/database/ContentObserver;

    .line 257
    new-instance v0, Lcom/android/settings/smartbonding/SmartBondingSettings$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/smartbonding/SmartBondingSettings$8;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    .line 276
    new-instance v0, Lcom/android/settings/smartbonding/SmartBondingSettings$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/smartbonding/SmartBondingSettings$9;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/smartbonding/SmartBondingSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingSettings;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mIsFromHelp:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/smartbonding/SmartBondingSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingSettings;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->showHelpDialogStep1()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingSettings;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/smartbonding/SmartBondingSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/smartbonding/SmartBondingSettings;->updateSmartBondingState(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/smartbonding/SmartBondingSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingSettings;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->isMenuDIM()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/smartbonding/SmartBondingSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingSettings;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->isNoSIM()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingSettings;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingSettings;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingSettings;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingSettings;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingSettings;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/smartbonding/SmartBondingSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingSettings;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->showHelpDialogStep2()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingSettings;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/smartbonding/SmartBondingSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingSettings;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->showHelpDialogStep3()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/smartbonding/SmartBondingSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingSettings;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->showHelpDialogStep4()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/smartbonding/SmartBondingSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/smartbonding/SmartBondingSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/smartbonding/SmartBondingSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/smartbonding/SmartBondingSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingSettings;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getBtnIdUnderNetworkStatus()I
    .locals 2

    .prologue
    .line 612
    const v0, 0x7f0a08d3

    .line 613
    .local v0, "popupBtnId":I
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 614
    const v0, 0x7f0a16c1

    .line 621
    :cond_0
    :goto_0
    return v0

    .line 615
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 616
    const v0, 0x7f0a16c0

    goto :goto_0

    .line 617
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 618
    const v0, 0x7f0a16bf

    goto :goto_0
.end method

.method private getTextIdUnderNetworkStatus()I
    .locals 2

    .prologue
    .line 597
    const v0, 0x7f0a16ba

    .line 598
    .local v0, "popupMsgId":I
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    const v0, 0x7f0a16be

    .line 608
    :cond_0
    :goto_0
    return v0

    .line 600
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 601
    const v0, 0x7f0a16bd

    goto :goto_0

    .line 602
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 603
    const v0, 0x7f0a16bc

    goto :goto_0

    .line 604
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 605
    const v0, 0x7f0a16bb

    goto :goto_0
.end method

.method private isMenuDIM()Z
    .locals 3

    .prologue
    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, "isDim":Z
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TMB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    const/4 v1, 0x0

    .line 678
    :goto_0
    return v1

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiCallingEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCocktailbar(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 675
    const/4 v0, 0x1

    :cond_1
    move v1, v0

    .line 678
    goto :goto_0
.end method

.method private isNoSIM()Z
    .locals 3

    .prologue
    .line 696
    const-string v0, "SmartBondingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiSimManager.getInsertedSimCount() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiAndMobileNetworkEnabled()Z
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerForToddlerStatus()V
    .locals 4

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "toddler_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mToddlerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 717
    return-void
.end method

.method private registerForWfcAndAirPlaneStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 706
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.tmowfc.wfcprovider/registration_state_state_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 707
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 708
    return-void
.end method

.method private showHelpDialogStep1()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 128
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04009c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 130
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f10013a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 132
    .local v0, "closeBtn":Landroid/widget/ImageView;
    new-instance v2, Lcom/android/settings/smartbonding/SmartBondingSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/smartbonding/SmartBondingSettings$2;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    new-instance v2, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 143
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 144
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 145
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 146
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 147
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    .line 148
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_bonding"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    .end local v0    # "closeBtn":Landroid/widget/ImageView;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private showHelpDialogStep2()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 155
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 157
    iput-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04009d

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 161
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f10013a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 163
    .local v0, "closeBtn":Landroid/widget/ImageView;
    new-instance v2, Lcom/android/settings/smartbonding/SmartBondingSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/smartbonding/SmartBondingSettings$3;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    new-instance v2, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 174
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 175
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 176
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 177
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 178
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    .line 180
    .end local v0    # "closeBtn":Landroid/widget/ImageView;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private showHelpDialogStep3()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 183
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 185
    iput-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04009e

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 189
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f10013a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 191
    .local v0, "closeBtn":Landroid/widget/ImageView;
    new-instance v2, Lcom/android/settings/smartbonding/SmartBondingSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/smartbonding/SmartBondingSettings$4;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    new-instance v2, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 202
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 203
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 204
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 205
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 206
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    .line 208
    .end local v0    # "closeBtn":Landroid/widget/ImageView;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private showHelpDialogStep4()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 211
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 213
    iput-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 215
    :cond_0
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04009f

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 217
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f10013a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 219
    .local v0, "closeBtn":Landroid/widget/ImageView;
    new-instance v2, Lcom/android/settings/smartbonding/SmartBondingSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/smartbonding/SmartBondingSettings$5;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    new-instance v2, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 231
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 232
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 233
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 234
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 235
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    .line 237
    .end local v0    # "closeBtn":Landroid/widget/ImageView;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private showNotificationDialog()V
    .locals 15

    .prologue
    .line 486
    iget-object v11, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_0

    .line 487
    iget-object v11, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->dismiss()V

    .line 488
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 492
    iget-object v11, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Switch;->setChecked(Z)V

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 495
    .local v8, "res":Landroid/content/res/Resources;
    const v11, 0x7f0a16c5

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const v14, 0x7f0a01db

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const v14, 0x7f0a01db

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 496
    .local v9, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 589
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v9    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 497
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 498
    iget-object v11, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Switch;->setChecked(Z)V

    .line 500
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0a16be

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a16b4

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x104000a

    new-instance v13, Lcom/android/settings/smartbonding/SmartBondingSettings$10;

    invoke-direct {v13, p0}, Lcom/android/settings/smartbonding/SmartBondingSettings$10;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 508
    iget-object v11, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 509
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->isNoSIM()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 510
    iget-object v11, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Switch;->setChecked(Z)V

    .line 511
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v2, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 512
    .local v2, "insertSimPopup":Landroid/app/AlertDialog$Builder;
    const v11, 0x7f0a16b4

    invoke-virtual {v2, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a16c6

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x104000a

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 515
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 519
    .end local v2    # "insertSimPopup":Landroid/app/AlertDialog$Builder;
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 521
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v11, "layout_inflater"

    invoke-virtual {p0, v11}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 522
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v11, 0x7f04017d

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 523
    .local v3, "layout":Landroid/view/View;
    const v11, 0x7f100370

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 524
    .local v10, "tv":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getTextIdUnderNetworkStatus()I

    move-result v5

    .line 525
    .local v5, "msgResId":I
    const v11, 0x7f0a16bb

    if-ne v5, v11, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 526
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u200f"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 527
    .local v6, "msgResString":Ljava/lang/String;
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    .end local v6    # "msgResString":Ljava/lang/String;
    :goto_1
    const v11, 0x7f100166

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 533
    .local v4, "mcheck":Landroid/widget/CheckBox;
    const/4 v11, 0x4

    invoke-virtual {v4, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 534
    invoke-virtual {v4}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 535
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, 0x0

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 536
    const/4 v11, 0x0

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 537
    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 540
    const v11, 0x7f0a16c7

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 542
    const-string v11, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const v11, 0x7f0a16bb

    if-ne v11, v5, :cond_4

    .line 543
    const v11, 0x7f0a16c8

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 546
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getBtnIdUnderNetworkStatus()I

    move-result v11

    new-instance v12, Lcom/android/settings/smartbonding/SmartBondingSettings$11;

    invoke-direct {v12, p0}, Lcom/android/settings/smartbonding/SmartBondingSettings$11;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 554
    const/high16 v11, 0x1040000

    new-instance v12, Lcom/android/settings/smartbonding/SmartBondingSettings$12;

    invoke-direct {v12, p0}, Lcom/android/settings/smartbonding/SmartBondingSettings$12;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 566
    new-instance v11, Lcom/android/settings/smartbonding/SmartBondingSettings$13;

    invoke-direct {v11, p0}, Lcom/android/settings/smartbonding/SmartBondingSettings$13;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 579
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 580
    iget-object v11, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    .line 582
    iget-object v11, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    new-instance v12, Lcom/android/settings/smartbonding/SmartBondingSettings$14;

    invoke-direct {v12, p0}, Lcom/android/settings/smartbonding/SmartBondingSettings$14;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 529
    .end local v4    # "mcheck":Landroid/widget/CheckBox;
    .end local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private unregisterForToddlerStatus()V
    .locals 2

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mToddlerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 720
    return-void
.end method

.method private unregisterForWfcAndAirPlaneStatus()V
    .locals 2

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 712
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 713
    return-void
.end method

.method private updateSmartBondingState(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->smartBondingdesc:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->smartBondingdesc:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 703
    :cond_1
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 467
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->isNoSIM()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 468
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->showNotificationDialog()V

    .line 482
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_bonding"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 471
    .local v0, "smartBondingState":Z
    :goto_1
    if-eqz p2, :cond_4

    if-nez v0, :cond_4

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->isWifiAndMobileNetworkEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 474
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->showNotificationDialog()V

    goto :goto_0

    .end local v0    # "smartBondingState":Z
    :cond_2
    move v0, v2

    .line 470
    goto :goto_1

    .line 476
    .restart local v0    # "smartBondingState":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_bonding"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 479
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_bonding"

    if-eqz p2, :cond_5

    :goto_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x10

    const/4 v9, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 291
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 292
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/smartbonding/SmartBondingSettings;->sSalesCode:Ljava/lang/String;

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 295
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 296
    const-string v5, "fromHelp"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mIsFromHelp:Z

    .line 297
    if-eqz p1, :cond_0

    .line 299
    const-string v5, "isfromhelp"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mIsFromHelp:Z

    .line 301
    :cond_0
    const-string v5, "fromHelp"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 306
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActivity:Landroid/app/Activity;

    .line 307
    new-instance v5, Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 308
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0054

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 316
    .local v1, "padding":I
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v4, v4, v1, v4}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 317
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "VZW"

    sget-object v6, Lcom/android/settings/smartbonding/SmartBondingSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 320
    :cond_2
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const v8, 0x800015

    invoke-direct {v7, v9, v9, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 326
    :cond_3
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarLayout:Landroid/view/View;

    .line 330
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->isNoSIM()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 331
    const/4 v2, 0x0

    .line 335
    .local v2, "smartBondingState":Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 336
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 338
    iget-boolean v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mIsFromHelp:Z

    if-eqz v5, :cond_4

    .line 339
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 343
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->isMenuDIM()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 344
    invoke-direct {p0, v4}, Lcom/android/settings/smartbonding/SmartBondingSettings;->updateSmartBondingState(Z)V

    .line 348
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    iget-boolean v4, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mIsFromHelp:Z

    if-nez v4, :cond_7

    .line 350
    invoke-virtual {p0, v3}, Lcom/android/settings/smartbonding/SmartBondingSettings;->setHasOptionsMenu(Z)V

    .line 352
    :cond_7
    return-void

    .line 333
    .end local v2    # "smartBondingState":Z
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_bonding"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_9

    move v2, v3

    .restart local v2    # "smartBondingState":Z
    :goto_1
    goto :goto_0

    .end local v2    # "smartBondingState":Z
    :cond_9
    move v2, v4

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 626
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "countryCode":Ljava/lang/String;
    const/4 v1, 0x1

    const v2, 0x7f0a1652

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0201de

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 630
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 631
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 356
    const v3, 0x7f0401a7

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 357
    .local v2, "view":Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 358
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x30

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 359
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    const v3, 0x7f10018b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->smartBondingdesc:Landroid/widget/TextView;

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a16b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "prefTitle":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->smartBondingdesc:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    invoke-static {}, Lcom/android/settings/Utils;->isSupportEPDG()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 369
    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->smartBondingdesc:Landroid/widget/TextView;

    const v4, 0x7f0a16b6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 374
    :cond_0
    :goto_0
    const-string v3, "%d"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 375
    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->smartBondingdesc:Landroid/widget/TextView;

    const-string v4, "%d"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-static {v6}, Lcom/android/settings/Utils;->toDigitString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    :goto_1
    return-object v2

    .line 370
    :cond_1
    const-string v3, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->smartBondingdesc:Landroid/widget/TextView;

    const v4, 0x7f0a16b7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 377
    :cond_2
    const-string v3, "SmartBondingSettings"

    const-string v4, "There is no %d."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 458
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 459
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 463
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 635
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 637
    .local v2, "itemId":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 639
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "helphub:appid"

    const-string v4, "download_booster"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/smartbonding/SmartBondingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 643
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SmartBondingSettings"

    const-string v4, "Activity not found do nothing"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 646
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 647
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 648
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "helphub:section"

    const-string v4, "download_booster"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/settings/smartbonding/SmartBondingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 651
    :catch_1
    move-exception v0

    .line 652
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SmartBondingSettings"

    const-string v4, "Activity not found do noting"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 655
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v3, "SmartBondingSettings"

    const-string v4, "There is no help app."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 435
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 438
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->unregisterForWfcAndAirPlaneStatus()V

    .line 439
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->unregisterForToddlerStatus()V

    .line 442
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_2

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_bonding"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 445
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 386
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 387
    const-string v5, "SmartBondingSettings"

    const-string v6, "onResume()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 390
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 396
    :cond_0
    new-array v2, v4, [Ljava/lang/String;

    const-string v5, "false"

    aput-object v5, v2, v3

    .line 397
    .local v2, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v7, "isWifiEnabled"

    invoke-static {v5, v6, v7, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 398
    .local v1, "isWiFiEnabled":I
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v7, "isCellularDataAllowed"

    invoke-static {v5, v6, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 400
    .local v0, "isCellularDataAllowed":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    if-nez v0, :cond_4

    .line 401
    :cond_2
    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 402
    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->finish()V

    .line 431
    :cond_3
    :goto_0
    return-void

    .line 408
    :cond_4
    const-string v5, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 409
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "toddler_mode_switch"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_6

    .line 410
    invoke-direct {p0, v3}, Lcom/android/settings/smartbonding/SmartBondingSettings;->updateSmartBondingState(Z)V

    .line 414
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->isNoSIM()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 415
    const/4 v3, 0x0

    .line 419
    .local v3, "smartBondingState":Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->isNoSIM()Z

    move-result v5

    if-nez v5, :cond_a

    .line 420
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 425
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_bonding"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 427
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->registerForWfcAndAirPlaneStatus()V

    .line 428
    const-string v4, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 429
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->registerForToddlerStatus()V

    goto :goto_0

    .line 417
    .end local v3    # "smartBondingState":Z
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_bonding"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_9

    move v3, v4

    .restart local v3    # "smartBondingState":Z
    :cond_9
    goto :goto_1

    .line 422
    :cond_a
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 449
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 450
    iget-boolean v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_bonding"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 453
    :cond_0
    return-void
.end method
