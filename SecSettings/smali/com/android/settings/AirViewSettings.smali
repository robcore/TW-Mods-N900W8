.class public Lcom/android/settings/AirViewSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AirViewSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isGoIntoSubMenu:Z

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

.field private mAirCommandDisablePopup:Landroid/app/AlertDialog;

.field private mAirViewDisableDialog:Landroid/app/AlertDialog;

.field private mAirViewModeListPref:Landroid/preference/ListPreference;

.field private final mAirViewObserver:Landroid/database/ContentObserver;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mFingerAirViewPrefScreen:Landroid/preference/PreferenceScreen;

.field private mInforPriviewEnableDialog:Landroid/app/AlertDialog;

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mPenAirViewPrefScreeen:Landroid/preference/PreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 93
    iput-object v0, p0, Lcom/android/settings/AirViewSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 95
    iput-object v0, p0, Lcom/android/settings/AirViewSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 97
    iput-object v0, p0, Lcom/android/settings/AirViewSettings;->mInforPriviewEnableDialog:Landroid/app/AlertDialog;

    .line 99
    iput-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirCommandDisablePopup:Landroid/app/AlertDialog;

    .line 101
    iput-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AirViewSettings;->isGoIntoSubMenu:Z

    .line 109
    new-instance v0, Lcom/android/settings/AirViewSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirViewSettings$1;-><init>(Lcom/android/settings/AirViewSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirViewObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirViewSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirViewSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AirViewSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirViewSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/AirViewSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AirViewSettings;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateAirViewModeSummary()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/AirViewSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AirViewSettings;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/AirViewSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirViewSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/AirViewSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AirViewSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/AirViewSettings;->broadcastAirViewChanged(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/AirViewSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AirViewSettings;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateMenuEnableState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/AirViewSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AirViewSettings;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateAirviewSwitch()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/AirViewSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AirViewSettings;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->showAllOptionDisabledDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/AirViewSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirViewSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/AirViewSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirViewSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private broadcastAirViewChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 663
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v0, "air_view_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 665
    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 666
    return-void
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 669
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 671
    iput-object v1, p0, Lcom/android/settings/AirViewSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 674
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 675
    iput-object v1, p0, Lcom/android/settings/AirViewSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mInforPriviewEnableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 678
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mInforPriviewEnableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 679
    iput-object v1, p0, Lcom/android/settings/AirViewSettings;->mInforPriviewEnableDialog:Landroid/app/AlertDialog;

    .line 681
    :cond_2
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirCommandDisablePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 682
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirCommandDisablePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 683
    iput-object v1, p0, Lcom/android/settings/AirViewSettings;->mAirCommandDisablePopup:Landroid/app/AlertDialog;

    .line 685
    :cond_3
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 686
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 687
    iput-object v1, p0, Lcom/android/settings/AirViewSettings;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    .line 689
    :cond_4
    return-void
.end method

.method public static isAllOptionDisabled(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 471
    const/4 v0, 0x1

    return v0
.end method

.method private isTalkbackAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 693
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.google.android.marvin.talkback"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private makeTalkBackDisablePopup()V
    .locals 8

    .prologue
    const v7, 0x7f0a1364

    const v6, 0x7f0a0a0c

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 514
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->dismissAllDialog()V

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0a1365

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 523
    :cond_0
    iget-object v3, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_magnification_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 528
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->isTalkbackAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 529
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 535
    :cond_2
    iget-object v3, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    const-string v4, "com.sec.feature.overlaymagnifier"

    invoke-static {v3, v4}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 536
    iget-object v3, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_magnifier"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    .line 537
    .local v0, "hoverZoomEnabled":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0a10

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 543
    .end local v0    # "hoverZoomEnabled":Z
    :cond_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a1125

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/AirViewSettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings/AirViewSettings$6;-><init>(Lcom/android/settings/AirViewSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings/AirViewSettings$5;

    invoke-direct {v4, p0}, Lcom/android/settings/AirViewSettings$5;-><init>(Lcom/android/settings/AirViewSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/AirViewSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 572
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 574
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/settings/AirViewSettings$7;

    invoke-direct {v3, p0}, Lcom/android/settings/AirViewSettings$7;-><init>(Lcom/android/settings/AirViewSettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 582
    return-void

    :cond_4
    move v0, v2

    .line 536
    goto :goto_0
.end method

.method private showAirViewDisableDialog()V
    .locals 3

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->dismissAllDialog()V

    .line 476
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a1330

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a12fa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/AirViewSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewSettings$3;-><init>(Lcom/android/settings/AirViewSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/AirViewSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewSettings$2;-><init>(Lcom/android/settings/AirViewSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    .line 493
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 494
    return-void
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 497
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->dismissAllDialog()V

    .line 498
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a12e6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a12fa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/AirViewSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewSettings$4;-><init>(Lcom/android/settings/AirViewSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirViewSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 510
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 511
    return-void
.end method

.method private showInformationPreviewEnablePopup()V
    .locals 3

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->dismissAllDialog()V

    .line 586
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a1300

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a112c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/AirViewSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewSettings$9;-><init>(Lcom/android/settings/AirViewSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/AirViewSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewSettings$8;-><init>(Lcom/android/settings/AirViewSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirViewSettings;->mInforPriviewEnableDialog:Landroid/app/AlertDialog;

    .line 603
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mInforPriviewEnableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 604
    return-void
.end method

.method private updateAirButtonCheckState()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 353
    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "air_button_onoff"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 355
    .local v0, "airButtonState":Z
    :cond_0
    const-string v1, "AirViewSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI_AIR_BUTTON_ONOFF : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 357
    return-void
.end method

.method private updateAirViewMode()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 701
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 702
    .local v1, "penAirView":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 703
    .local v0, "fingerAirView":Z
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 705
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_view_mode"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 716
    :goto_2
    return-void

    .end local v0    # "fingerAirView":Z
    .end local v1    # "penAirView":Z
    :cond_0
    move v1, v3

    .line 701
    goto :goto_0

    .restart local v1    # "penAirView":Z
    :cond_1
    move v0, v3

    .line 702
    goto :goto_1

    .line 706
    .restart local v0    # "fingerAirView":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 708
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_view_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 709
    :cond_3
    if-eqz v1, :cond_4

    .line 711
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "air_view_mode"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 714
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "air_view_master_onoff"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method private updateAirViewModeSummary()V
    .locals 6

    .prologue
    .line 306
    iget-object v3, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_view_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 307
    .local v1, "airViewIndex":I
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 308
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f0c001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "AirViewModeStrings":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 310
    return-void
.end method

.method private updateAirviewSwitch()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 286
    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "air_view_master_onoff"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 288
    .local v0, "airViewState":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 289
    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 291
    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isAirViewModeAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 293
    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 294
    return-void
.end method

.method private updateMenuEnableState()V
    .locals 9

    .prologue
    const v5, 0x7f0a0a61

    const v4, 0x7f0a0a60

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 314
    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_view_master_onoff"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_1

    move v1, v2

    .line 316
    .local v1, "airViewState":Z
    :goto_0
    const-string v6, "AirViewSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "URI_AIR_VIEW_MASTER_STATE : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    if-nez v1, :cond_2

    .line 318
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 319
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mPenAirViewPrefScreeen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 320
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mFingerAirViewPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 321
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 341
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v2

    if-nez v2, :cond_0

    .line 342
    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mFingerAirViewPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "finger_air_view"

    invoke-static {v2, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v4

    :goto_2
    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 346
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mPenAirViewPrefScreeen:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "pen_hovering"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    :goto_3
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 350
    :cond_0
    return-void

    .end local v1    # "airViewState":Z
    :cond_1
    move v1, v3

    .line 314
    goto :goto_0

    .line 323
    .restart local v1    # "airViewState":Z
    :cond_2
    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_view_mode"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 324
    .local v0, "airViewModeIndex":I
    const-string v6, "AirViewSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "URI_AIR_VIEW_MODE : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    if-nez v0, :cond_3

    .line 326
    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mPenAirViewPrefScreeen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 327
    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mFingerAirViewPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 328
    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 338
    :goto_4
    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1

    .line 329
    :cond_3
    if-ne v0, v2, :cond_4

    .line 330
    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mPenAirViewPrefScreeen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 331
    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mFingerAirViewPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 332
    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_4

    .line 334
    :cond_4
    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mPenAirViewPrefScreeen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 335
    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mFingerAirViewPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 336
    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_4

    .end local v0    # "airViewModeIndex":I
    :cond_5
    move v2, v5

    .line 342
    goto :goto_2

    :cond_6
    move v4, v5

    .line 346
    goto :goto_3
.end method

.method private updateState()V
    .locals 4

    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "air_view_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 298
    .local v0, "airViewIndex":I
    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 299
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateAirViewModeSummary()V

    .line 300
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateMenuEnableState()V

    .line 301
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateAirButtonCheckState()V

    .line 302
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 406
    const/4 v1, 0x0

    .line 407
    .local v1, "hoverZoomEnabled":Z
    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    const-string v5, "com.sec.feature.overlaymagnifier"

    invoke-static {v4, v5}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 408
    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_magnifier"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 411
    :cond_0
    :goto_0
    if-ne p2, v2, :cond_5

    .line 412
    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 415
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->makeTalkBackDisablePopup()V

    .line 435
    :goto_1
    return-void

    :cond_2
    move v1, v3

    .line 408
    goto :goto_0

    .line 417
    :cond_3
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isCurrentAirviewAllItemDisabled(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 418
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->showAllOptionDisabledDialog()V

    goto :goto_1

    .line 421
    :cond_4
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_ON:I

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 433
    :goto_2
    const-string v2, "AirViewSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URI_AIR_VIEW_MASTER_STATE was changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateMenuEnableState()V

    goto :goto_1

    .line 423
    :cond_5
    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_button_onoff"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_6

    move v0, v2

    .line 425
    .local v0, "airCommandState":Z
    :goto_3
    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 426
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->showAirViewDisableDialog()V

    goto :goto_1

    .end local v0    # "airCommandState":Z
    :cond_6
    move v0, v3

    .line 423
    goto :goto_3

    .line 429
    .restart local v0    # "airCommandState":Z
    :cond_7
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_OFF:I

    invoke-static {v2, v4}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 430
    invoke-direct {p0, v3}, Lcom/android/settings/AirViewSettings;->broadcastAirViewChanged(Z)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x10

    const/4 v10, -0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const v5, 0x7f070016

    invoke-virtual {p0, v5}, Lcom/android/settings/AirViewSettings;->addPreferencesFromResource(I)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    .line 125
    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    .line 129
    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/AirViewSettings;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 132
    invoke-virtual {p0, v4}, Lcom/android/settings/AirViewSettings;->setHasOptionsMenu(Z)V

    .line 134
    new-instance v5, Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 136
    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    instance-of v5, v5, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_2

    .line 137
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 139
    .local v2, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_2

    .line 140
    :cond_0
    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0f0054

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 145
    .local v1, "padding":I
    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v6, v6, v1, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 146
    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 148
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v5

    if-nez v5, :cond_1

    .line 149
    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0205fa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0205fb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    :cond_1
    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const v9, 0x800015

    invoke-direct {v8, v10, v10, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 160
    .end local v1    # "padding":I
    .end local v2    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_2
    const-string v5, "air_view_mode"

    invoke-virtual {p0, v5}, Lcom/android/settings/AirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    .line 161
    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    const-string v5, "pen_air_view_option"

    invoke-virtual {p0, v5}, Lcom/android/settings/AirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/AirViewSettings;->mPenAirViewPrefScreeen:Landroid/preference/PreferenceScreen;

    .line 164
    const-string v5, "finger_air_view_option"

    invoke-virtual {p0, v5}, Lcom/android/settings/AirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/AirViewSettings;->mFingerAirViewPrefScreen:Landroid/preference/PreferenceScreen;

    .line 167
    const-string v5, "key_air_button"

    invoke-virtual {p0, v5}, Lcom/android/settings/AirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 168
    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 172
    iget-boolean v5, p0, Lcom/android/settings/AirViewSettings;->mOpenDetailMenu:Z

    if-eqz v5, :cond_3

    .line 173
    sget v5, Lcom/android/settings/AirViewSettings;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 175
    .local v0, "extra_bundle":Landroid/os/Bundle;
    const-string v5, "extra_parent_preference_key"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "targetKey":Ljava/lang/String;
    sget v5, Lcom/android/settings/AirViewSettings;->mSettingValue:I

    if-ne v5, v4, :cond_4

    .line 178
    .local v4, "value":Z
    :goto_0
    const-string v5, "key_air_button"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 179
    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 180
    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/AirViewSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 187
    .end local v0    # "extra_bundle":Landroid/os/Bundle;
    .end local v3    # "targetKey":Ljava/lang/String;
    .end local v4    # "value":Z
    :cond_3
    return-void

    .restart local v0    # "extra_bundle":Landroid/os/Bundle;
    .restart local v3    # "targetKey":Ljava/lang/String;
    :cond_4
    move v4, v6

    .line 177
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 262
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x1

    const v1, 0x7f0a1652

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201f4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 269
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 273
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 281
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 275
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "air_view"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 278
    const/4 v1, 0x1

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 248
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 258
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 362
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "key":Ljava/lang/String;
    const-string v6, "air_view_mode"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 364
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 365
    .local v5, "value":I
    if-ne v5, v8, :cond_2

    .line 366
    const/4 v1, 0x0

    .line 367
    .local v1, "doNotShow":Z
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "com.android.settings.airviewsettings.aircommand"

    invoke-virtual {v6, v9, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 369
    .local v4, "sp":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_button_onoff"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_1

    move v0, v8

    .line 371
    .local v0, "airCommandState":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 372
    const-string v6, "DoNotShowDialog"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 373
    :cond_0
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->showAirCommoandDisablePopup()V

    .line 400
    .end local v0    # "airCommandState":Z
    .end local v1    # "doNotShow":Z
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .end local v5    # "value":I
    :goto_1
    return v8

    .restart local v1    # "doNotShow":Z
    .restart local v4    # "sp":Landroid/content/SharedPreferences;
    .restart local v5    # "value":I
    :cond_1
    move v0, v7

    .line 369
    goto :goto_0

    .line 379
    .end local v1    # "doNotShow":Z
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_view_mode"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 380
    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 382
    const-string v6, "AirViewSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "URI_AIR_VIEW_MODE was changed to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 384
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateAirViewModeSummary()V

    .line 385
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateMenuEnableState()V

    .end local v5    # "value":I
    :cond_3
    :goto_2
    move v8, v7

    .line 400
    goto :goto_1

    .line 387
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_4
    const-string v6, "key_air_button"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "pen_hovering_information_preview"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 391
    .local v3, "penInforPreviewState":I
    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v6

    if-nez v6, :cond_5

    if-nez v3, :cond_5

    .line 392
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->showInformationPreviewEnablePopup()V

    goto :goto_2

    .line 394
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "air_button_onoff"

    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v6

    if-ne v6, v8, :cond_6

    move v6, v7

    :goto_3
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 396
    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    iget-object v9, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v9

    if-nez v9, :cond_7

    :goto_4
    invoke-virtual {v6, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_2

    :cond_6
    move v6, v8

    .line 394
    goto :goto_3

    :cond_7
    move v8, v7

    .line 396
    goto :goto_4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 441
    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_view_master_onoff"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_2

    move v0, v3

    .line 443
    .local v0, "airViewState":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/settings/AirViewSettings;->mOpenDetailMenu:Z

    if-eqz v5, :cond_0

    .line 444
    if-eqz v0, :cond_4

    .line 445
    sget v5, Lcom/android/settings/AirViewSettings;->mSettingValue:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 446
    sget v5, Lcom/android/settings/AirViewSettings;->mSettingValue:I

    if-ne v5, v3, :cond_3

    move v2, v3

    .local v2, "value":Z
    :goto_1
    move-object v1, p2

    .line 447
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 448
    .local v1, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 457
    .end local v1    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v2    # "value":Z
    :cond_0
    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mPenAirViewPrefScreeen:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_5

    .line 458
    iput-boolean v3, p0, Lcom/android/settings/AirViewSettings;->isGoIntoSubMenu:Z

    .line 463
    :cond_1
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    :goto_3
    return v4

    .end local v0    # "airViewState":Z
    :cond_2
    move v0, v4

    .line 441
    goto :goto_0

    .restart local v0    # "airViewState":Z
    :cond_3
    move v2, v4

    .line 446
    goto :goto_1

    .line 451
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->initArrayLinkKey()V

    goto :goto_3

    .line 459
    :cond_5
    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mFingerAirViewPrefScreen:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_1

    .line 460
    iput-boolean v3, p0, Lcom/android/settings/AirViewSettings;->isGoIntoSubMenu:Z

    goto :goto_2
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 192
    iget-boolean v4, p0, Lcom/android/settings/AirViewSettings;->mOpenDetailMenu:Z

    if-nez v4, :cond_0

    .line 193
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 195
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v4

    if-nez v4, :cond_3

    .line 196
    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 197
    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4}, Lcom/android/settings/FingerAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 198
    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    :cond_1
    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "pen_hovering"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 202
    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4}, Lcom/android/settings/PenAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 203
    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "pen_hovering"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateAirViewMode()V

    .line 211
    :cond_3
    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "pen_hovering"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_7

    move v1, v2

    .line 212
    .local v1, "pen_hover":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4}, Lcom/android/settings/FingerAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 213
    .local v0, "finger_hover":Z
    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 214
    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_view_master_onoff"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    :cond_4
    iput-boolean v3, p0, Lcom/android/settings/AirViewSettings;->isGoIntoSubMenu:Z

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_view_master_onoff"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 221
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateAirviewSwitch()V

    .line 223
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateState()V

    .line 225
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.settings"

    const-string v4, "AIRV"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_5
    iget-boolean v2, p0, Lcom/android/settings/AirViewSettings;->mOpenDetailMenu:Z

    if-eqz v2, :cond_6

    .line 230
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 231
    :cond_6
    return-void

    .end local v0    # "finger_hover":Z
    .end local v1    # "pen_hover":Z
    :cond_7
    move v1, v3

    .line 211
    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isCurrentAirviewAllItemDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/AirViewSettings;->isGoIntoSubMenu:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_view_master_onoff"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_OFF:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 242
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 243
    return-void
.end method

.method public showAirCommoandDisablePopup()V
    .locals 6

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->dismissAllDialog()V

    .line 610
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 611
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 614
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040085

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 615
    .local v2, "layout":Landroid/view/View;
    const v4, 0x7f100168

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 617
    .local v3, "message":Landroid/widget/TextView;
    const v4, 0x7f0a132f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 618
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 619
    const v4, 0x7f0a12fa

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 620
    const v4, 0x7f0a08f6

    new-instance v5, Lcom/android/settings/AirViewSettings$10;

    invoke-direct {v5, p0}, Lcom/android/settings/AirViewSettings$10;-><init>(Lcom/android/settings/AirViewSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 631
    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/settings/AirViewSettings$11;

    invoke-direct {v5, p0}, Lcom/android/settings/AirViewSettings$11;-><init>(Lcom/android/settings/AirViewSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 640
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/AirViewSettings;->mAirCommandDisablePopup:Landroid/app/AlertDialog;

    .line 641
    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mAirCommandDisablePopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 642
    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mAirCommandDisablePopup:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/AirViewSettings$12;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/AirViewSettings$12;-><init>(Lcom/android/settings/AirViewSettings;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 660
    return-void
.end method
