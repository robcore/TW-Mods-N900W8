.class public Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MenuPowerSavingModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private iBackgroundColor:I

.field private iCpuPowerSavinge:I

.field private iDisplayPowerSaving:I

.field private iOffHapticFeedback:I

.field private iOffTouchKeyLight:I

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mBackgroundColor:Landroid/preference/CheckBoxPreference;

.field private mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

.field private mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

.field private mEnableSettings:Landroid/preference/ListPreference;

.field private mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mIsFromHelp:Z

.field private mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mOffLocationService:Landroid/preference/CheckBoxPreference;

.field private mOffTouchKeyLight:Landroid/preference/CheckBoxPreference;

.field private mPowerSaving2014Observer:Landroid/database/ContentObserver;

.field private mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

.field private mPowerSavingObserver:Landroid/database/ContentObserver;

.field private mPowersavingModeSummary:Lcom/android/settings/UnclickablePreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSupportBrowser:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 129
    iput-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 130
    iput-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    .line 133
    new-instance v0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$1;-><init>(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingObserver:Landroid/database/ContentObserver;

    .line 143
    new-instance v0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;-><init>(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSaving2014Observer:Landroid/database/ContentObserver;

    .line 157
    new-instance v0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$3;-><init>(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->updateUIPowerSaving()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;
    .param p1, "x1"    # Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method private showHelpStep1Dialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 706
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_0

    .line 707
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 708
    iput-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 711
    :cond_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_1

    .line 712
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400d5

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 755
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 756
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 757
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 758
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 759
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 760
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 763
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private showHelpStep2Dialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 780
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v2, :cond_0

    .line 781
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 782
    iput-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 785
    :cond_0
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v2, :cond_1

    .line 786
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 787
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400d6

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 788
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f10013a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 789
    .local v0, "closeBtn":Landroid/widget/ImageView;
    new-instance v2, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$5;-><init>(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    new-instance v2, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 799
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 800
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 801
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 802
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 803
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    .line 806
    .end local v0    # "closeBtn":Landroid/widget/ImageView;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private updateUIPowerSaving()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 517
    const/4 v0, 0x0

    .line 519
    .local v0, "powersavingState":I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_switch"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 528
    :cond_0
    const-string v3, "MenuPowerSavingModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "powersavingState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    if-nez v0, :cond_2

    .line 530
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 531
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 532
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 533
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 541
    iget-boolean v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 542
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->showHelpStep1Dialog()V

    .line 569
    :cond_1
    :goto_0
    return-void

    .line 545
    :cond_2
    iget-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "psm_switch"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 546
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 547
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 548
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 549
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 565
    iget-boolean v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_1

    .line 566
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->showHelpStep2Dialog()V

    goto :goto_0
.end method


# virtual methods
.method public getEntryByValue(I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 402
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 403
    .local v3, "values":[Ljava/lang/CharSequence;
    const-string v2, ""

    .line 404
    .local v2, "ret":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 405
    .local v1, "idx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 406
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 407
    move v1, v0

    .line 411
    :cond_0
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v1

    return-object v4

    .line 405
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isAllOptionDisabled()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 613
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psm_switch"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 614
    .local v4, "powersavingState":I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psm_cpu_clock"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 615
    .local v1, "cpu":I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psm_display"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 616
    .local v2, "display":I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psm_background_colour"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 617
    .local v0, "back":I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psm_haptic_feedback"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 619
    .local v3, "haptic":I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psm_touchkey_led"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 622
    .local v6, "touchkey":I
    const-string v7, "power_saving_cpu"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_0

    .line 623
    const/4 v1, 0x0

    .line 624
    :cond_0
    const-string v7, "power_saving_display"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_1

    .line 625
    const/4 v2, 0x0

    .line 626
    :cond_1
    const-string v7, "power_saving_background_color"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_2

    .line 627
    const/4 v0, 0x0

    .line 628
    :cond_2
    const-string v7, "power_saving_haptic"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_3

    .line 629
    const/4 v3, 0x0

    .line 631
    :cond_3
    const-string v7, "MenuPowerSavingModeSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAllOptionDisabled(), powersavingState : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", cpu : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", display : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", back : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", haptic : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    const/4 v5, 0x1

    .line 641
    .local v5, "retVal":Z
    :cond_4
    return v5
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 306
    const-string v0, "MenuPowerSavingModeSettings"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$4;-><init>(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 323
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 324
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 506
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 507
    const-string v0, "MenuPowerSavingModeSettings"

    const-string v1, "onConfigurationChanged() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 512
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->updateUIPowerSaving()V

    .line 513
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x10

    const/4 v13, -0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 173
    const-string v7, "MenuPowerSavingModeSettings"

    const-string v8, "onCreate() "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 178
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 179
    const-string v7, "fromHelp"

    invoke-virtual {v3, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    .line 181
    const-string v7, "fromHelp"

    invoke-virtual {v3, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 184
    :cond_0
    const-string v7, "MenuPowerSavingModeSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isFromHelp : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v7

    if-nez v7, :cond_a

    iget-boolean v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    if-nez v7, :cond_a

    .line 188
    invoke-virtual {p0, v12}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->setHasOptionsMenu(Z)V

    .line 189
    const-string v7, "usibi"

    const-string v8, "setHasOptionsMenu"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    if-eqz v7, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psm_switch"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "com.android.browser"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mSupportBrowser:Z

    .line 201
    const v7, 0x7f070074

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->addPreferencesFromResource(I)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 203
    .local v1, "activity":Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "ro.product.device"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "lt03ltetmo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 204
    :cond_2
    new-instance v7, Landroid/widget/Switch;

    invoke-direct {v7, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 206
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0054

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 207
    .local v4, "padding":I
    iget-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v11, v11, v4, v11}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 208
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 209
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v7

    if-nez v7, :cond_3

    .line 210
    iget-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0205fa

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0205fb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_3
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v9, Landroid/app/ActionBar$LayoutParams;

    const/16 v10, 0x15

    invoke-direct {v9, v13, v13, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v8, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 217
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarLayout:Landroid/view/View;

    .line 236
    .end local v4    # "padding":I
    :cond_4
    :goto_1
    new-instance v7, Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    iget-object v8, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v7, v1, v8, v11}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Z)V

    iput-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    .line 238
    const-string v7, "power_saving_cpu"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    .line 239
    const-string v7, "power_saving_display"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    .line 240
    const-string v7, "power_saving_background_color"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 242
    iget-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    const v8, 0x7f0a1077

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 246
    :cond_5
    const-string v7, "enable_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableSettings:Landroid/preference/ListPreference;

    .line 247
    iget-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 248
    const-string v7, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 254
    :goto_2
    iget-boolean v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mSupportBrowser:Z

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->Disable_PSM_Browser()Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "ro.product.name"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "d2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "ro.product.name"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "t0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v7

    if-nez v7, :cond_7

    .line 259
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psm_background_colour"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    :cond_7
    const-string v7, "power_saving_haptic"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 264
    const-string v7, "vibrator"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Vibrator;

    invoke-virtual {v7}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-static {v7}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 265
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psm_haptic_feedback"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 270
    :cond_9
    const-string v7, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-static {v7}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 271
    const v7, 0x7f0a1084

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 275
    .local v5, "powersaving_summary":Ljava/lang/String;
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a1085

    invoke-virtual {p0, v8}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 276
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 277
    .local v6, "powersaving_summary_result":Ljava/lang/String;
    const-string v7, "power_saving_touchkey"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffTouchKeyLight:Landroid/preference/CheckBoxPreference;

    .line 278
    const-string v7, "power_saving_location"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffLocationService:Landroid/preference/CheckBoxPreference;

    .line 279
    const-string v7, "powersaving_mode_summary"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/UnclickablePreference;

    iput-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowersavingModeSummary:Lcom/android/settings/UnclickablePreference;

    .line 280
    iget-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowersavingModeSummary:Lcom/android/settings/UnclickablePreference;

    invoke-virtual {v7, v6}, Lcom/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowersavingModeSummary:Lcom/android/settings/UnclickablePreference;

    const v8, 0x7f04019e

    invoke-virtual {v7, v8}, Lcom/android/settings/UnclickablePreference;->setLayoutResource(I)V

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowersavingModeSummary:Lcom/android/settings/UnclickablePreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffTouchKeyLight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffLocationService:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "powersaving_switch"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1120051

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eq v7, v12, :cond_e

    .line 302
    :goto_4
    return-void

    .line 191
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v5    # "powersaving_summary":Ljava/lang/String;
    .end local v6    # "powersaving_summary_result":Ljava/lang/String;
    :cond_a
    const-string v7, "usibi"

    const-string v8, "else"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 220
    .restart local v1    # "activity":Landroid/app/Activity;
    :cond_b
    const-string v7, "layout_inflater"

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 221
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040065

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 223
    .local v0, "CustomActionBarSwitchLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 224
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const v9, 0x800015

    invoke-direct {v8, v13, v13, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v0, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 229
    const v7, 0x7f10010d

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Switch;

    iput-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 230
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarLayout:Landroid/view/View;

    .line 232
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v7

    if-nez v7, :cond_4

    .line 233
    iget-object v7, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Switch;->setVisibility(I)V

    goto/16 :goto_1

    .line 249
    .end local v0    # "CustomActionBarSwitchLayout":Landroid/widget/LinearLayout;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 273
    :cond_d
    const v7, 0x7f0a1083

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "powersaving_summary":Ljava/lang/String;
    goto/16 :goto_3

    .line 301
    .restart local v6    # "powersaving_summary_result":Ljava/lang/String;
    :cond_e
    const-string v7, "power_saving_touchkey"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 682
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 684
    const/4 v0, 0x1

    const v1, 0x7f0a1652

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201de

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 686
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 491
    const-string v0, "MenuPowerSavingModeSettings"

    const-string v1, "onDestroy() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 495
    iput-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 499
    iput-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 501
    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 502
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 482
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 483
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 485
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 487
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 690
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 702
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 692
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 697
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "battery_conservation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->startActivity(Landroid/content/Intent;)V

    .line 700
    const/4 v1, 0x1

    goto :goto_0

    .line 690
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 417
    const-string v1, "MenuPowerSavingModeSettings"

    const-string v2, "onPause() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 429
    iget v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iCpuPowerSavinge:I

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_cpu_clock"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iDisplayPowerSaving:I

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_display"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iBackgroundColor:I

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_background_colour"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iOffHapticFeedback:I

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_haptic_feedback"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 433
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "changed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 438
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 440
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a167f

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 449
    :cond_2
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v1}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->pause()V

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 455
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 456
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 463
    :cond_3
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 660
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, "key":Ljava/lang/String;
    const-string v3, "enable_settings"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 663
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 664
    .local v2, "value":I
    const-string v3, "MenuPowerSavingModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_auto_turn_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 666
    iget-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v3}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->changeAutoEnable()V

    .line 668
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_auto_turn_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 669
    iget-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p0, v2}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getEntryByValue(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 671
    .local v0, "entry":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 672
    if-ne v2, v7, :cond_1

    .line 673
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0047

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 677
    .end local v0    # "entry":Ljava/lang/String;
    .end local v2    # "value":I
    :cond_1
    return v6
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 573
    iget-boolean v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOpenDetailMenu:Z

    if-eqz v4, :cond_0

    .line 574
    sget v4, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 575
    sget v4, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mSettingValue:I

    if-ne v4, v2, :cond_2

    move v1, v2

    .local v1, "value":Z
    :goto_0
    move-object v0, p2

    .line 576
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 577
    .local v0, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "psm_switch"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 578
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 583
    .end local v0    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v1    # "value":Z
    :cond_0
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 584
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_cpu_clock"

    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 602
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->isAllOptionDisabled()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 603
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 608
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    :goto_4
    return v2

    :cond_2
    move v1, v3

    .line 575
    goto :goto_0

    :cond_3
    move v4, v3

    .line 584
    goto :goto_1

    .line 586
    :cond_4
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 587
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_display"

    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    :goto_5
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_5
    move v4, v3

    goto :goto_5

    .line 589
    :cond_6
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 590
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_background_colour"

    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v2

    :goto_6
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    move v4, v3

    goto :goto_6

    .line 592
    :cond_8
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 593
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_haptic_feedback"

    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v2

    :goto_7
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_9
    move v4, v3

    goto :goto_7

    .line 595
    :cond_a
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffTouchKeyLight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 596
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_touchkey_led"

    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffTouchKeyLight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v2

    :goto_8
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_b
    move v4, v3

    goto :goto_8

    .line 598
    :cond_c
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffLocationService:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 599
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_4

    .line 605
    :cond_d
    iget-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 327
    const-string v5, "MenuPowerSavingModeSettings"

    const-string v8, "onResume() "

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v5, :cond_0

    .line 330
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArrayLinkKey()Ljava/util/ArrayList;

    move-result-object v3

    .line 331
    .local v3, "mArrayLinkKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    const-string v5, "power_saving_mode_battery"

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 332
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->initArrayLinkKey()V

    .line 336
    .end local v3    # "mArrayLinkKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x0

    .line 337
    .local v4, "super_mOpenDetailMenu":Z
    iget-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 338
    iput-boolean v7, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 340
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 342
    iget-object v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 343
    iget-object v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 347
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_cpu_clock"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iCpuPowerSavinge:I

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_display"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iDisplayPowerSaving:I

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_background_colour"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iBackgroundColor:I

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_haptic_feedback"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iOffHapticFeedback:I

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_touchkey_led"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iOffTouchKeyLight:I

    .line 354
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->updateUIPowerSaving()V

    .line 355
    iget-object v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v5}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->resume()V

    .line 363
    iget-object v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_switch"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v6, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 374
    iget-object v8, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "psm_cpu_clock"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 375
    iget-object v8, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "psm_display"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 376
    iget-object v8, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "psm_background_colour"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 377
    iget-object v8, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "psm_haptic_feedback"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 378
    iget-object v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffTouchKeyLight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "psm_touchkey_led"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_7

    :goto_4
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_auto_turn_on"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 382
    .local v0, "curEnableValue":I
    const-string v5, "MenuPowerSavingModeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "curEnableValue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getEntryByValue(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 385
    .local v1, "entry":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 388
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 389
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 390
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v5, "com.sec.android.intent.action.POWER_SAVING_SWITCH"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 395
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 396
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 398
    return-void

    .end local v0    # "curEnableValue":I
    .end local v1    # "entry":Ljava/lang/String;
    :cond_3
    move v5, v7

    .line 374
    goto/16 :goto_0

    :cond_4
    move v5, v7

    .line 375
    goto/16 :goto_1

    :cond_5
    move v5, v7

    .line 376
    goto/16 :goto_2

    :cond_6
    move v5, v7

    .line 377
    goto :goto_3

    :cond_7
    move v6, v7

    .line 378
    goto :goto_4
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 467
    const-string v0, "MenuPowerSavingModeSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 476
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 477
    return-void
.end method
