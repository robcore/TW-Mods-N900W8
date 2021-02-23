.class public Lcom/android/settings/ApnSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApnSettings$5;,
        Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI_USING_SUBID:Landroid/net/Uri;

.field private static final VZW_DEFAULTAPN_URI:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z

.field private static mRestoreDefaultInProgress:Z


# instance fields
.field apnList:Landroid/preference/PreferenceGroup;

.field private hideApnList:[Ljava/lang/String;

.field private isEmptyApnlist:Z

.field private isSpr:Z

.field private isSprEditable:Z

.field private isSprSimEnable:Z

.field private isVzw:Z

.field private isVzwEditable:Z

.field private isVzwSimEnable:Z

.field private mActivePhone:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDelayHandler:Landroid/os/Handler;

.field private mDelayRunnable:Ljava/lang/Runnable;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mRestoreDlg:Landroid/app/AlertDialog;

.field private mSelectedCTNETKey:Ljava/lang/String;

.field private mSelectedKey:Ljava/lang/String;

.field private final mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherStateFilter:Landroid/content/IntentFilter;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUseNvOperatorForEhrpd:Z

.field pref_vzwdefault:Lcom/android/settings/ApnPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 123
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    .line 124
    const-string v0, "content://telephony/carriers/preferapn/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_URI_USING_SUBID:Landroid/net/Uri;

    .line 161
    const-string v0, "content://telephony/carriers/31"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->VZW_DEFAULTAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 139
    const-string v0, "persist.radio.use_nv_for_ehrpd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ApnSettings;->mUseNvOperatorForEhrpd:Z

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mDelayHandler:Landroid/os/Handler;

    .line 150
    iput-boolean v1, p0, Lcom/android/settings/ApnSettings;->isSpr:Z

    .line 151
    iput-boolean v1, p0, Lcom/android/settings/ApnSettings;->isSprSimEnable:Z

    .line 153
    iput-boolean v1, p0, Lcom/android/settings/ApnSettings;->isVzw:Z

    .line 155
    iput-boolean v1, p0, Lcom/android/settings/ApnSettings;->isVzwSimEnable:Z

    .line 157
    iput-boolean v1, p0, Lcom/android/settings/ApnSettings;->isEmptyApnlist:Z

    .line 168
    iput v1, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    .line 176
    new-instance v0, Lcom/android/settings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$1;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 226
    new-instance v0, Lcom/android/settings/ApnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$2;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1349
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 95
    invoke-static {p0}, Lcom/android/settings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/ApnSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnSettings;

    .prologue
    .line 95
    iget v0, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 95
    sput-boolean p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$1100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ApnSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ApnSettings;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultInProgress:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 95
    sput-boolean p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultInProgress:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/ApnSettings;)Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnSettings;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$RestoreApnUiHandler;)Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ApnSettings;
    .param p1, "x1"    # Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/ApnSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnSettings;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->restoreDefaultApn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/ApnSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ApnSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/ApnSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnSettings;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->isVzw:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/ApnSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnSettings;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->isVzwSimEnable:Z

    return v0
.end method

.method private addNewApn()V
    .locals 3

    .prologue
    .line 1196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1197
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "simSlot"

    iget v2, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1198
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1199
    const-string v1, "vzw"

    const-string v2, "editable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1204
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 1205
    return-void

    .line 1200
    :cond_1
    const-string v1, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1201
    const-string v1, "keyString"

    const-string v2, "hidden"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private fillList()V
    .locals 29

    .prologue
    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 617
    .local v5, "where":Ljava/lang/String;
    const-string v27, ""

    .line 619
    .local v27, "simSpcode":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getSpcode()Ljava/lang/String;

    move-result-object v11

    .line 620
    .local v11, "decSpcode":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 621
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 622
    .local v20, "num":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v27

    .line 623
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList get spcode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and mvno_type=\"gid\" and mvno_match_data=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 634
    .end local v20    # "num":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and current1 = 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 641
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "3"

    const-string v3, "ril.simtype"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 642
    const-string v5, "numeric=\"45006\""

    .line 646
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList: where = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_1
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_FixApn4SpecificMccMnc"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 661
    const-string v2, "21405"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 662
    const-string v5, "numeric=\"21405\""

    .line 667
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isSpr:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isSprEditable:Z

    if-eqz v2, :cond_3

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" and type like \'%default%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 672
    :cond_3
    const-string v2, "52505"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 673
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v26

    .line 674
    .local v26, "simIMSI":Ljava/lang/String;
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList get simIMSI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const-string v17, ""

    .line 676
    .local v17, "mIMSI":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_11

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x9

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 678
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList get mIMSI :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string v2, "525053095x"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 680
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and (mvno_type=\"imsi\" and mvno_match_data=\"525053095x\")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 689
    .end local v17    # "mIMSI":Ljava/lang/String;
    .end local v26    # "simIMSI":Ljava/lang/String;
    :cond_4
    :goto_4
    const/4 v10, 0x0

    .line 691
    .local v10, "cursor":Landroid/database/Cursor;
    const-string v2, "45403"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 692
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "name"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "apn"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "type"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const-string v7, "_id asc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 701
    :goto_5
    const-string v2, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "VAU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "VHA"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "TGY"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "45403"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 706
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "name"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "apn"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "type"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const-string v7, "_id asc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 711
    :cond_6
    if-eqz v10, :cond_3f

    .line 712
    const-string v2, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 715
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .local v18, "mmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 719
    .local v8, "UnselectableApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isVzw:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isVzwSimEnable:Z

    if-nez v2, :cond_7

    .line 720
    new-instance v2, Lcom/android/settings/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const-string v3, "6"

    invoke-virtual {v2, v3}, Lcom/android/settings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const-string v3, "LTE - Verizon Internet"

    invoke-virtual {v2, v3}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const-string v3, "VZWINTERNET"

    invoke-virtual {v2, v3}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/ApnPreference;->setPersistent(Z)V

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/ApnPreference;->setEnabled(Z)V

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/settings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 735
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 737
    const-string v2, "DeviceManager3LM"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v12

    .line 740
    .local v12, "dm":Landroid/os/IDeviceManager3LM;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 741
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList: where = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-string v2, "ril.ICC_TYPE"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 744
    .local v14, "iccType":Ljava/lang/String;
    const-string v2, "ril.ICC_TYPE2"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 745
    .local v15, "iccType2":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedCTNETKey:Ljava/lang/String;

    .line 746
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList: iccType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", iccType2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSelectedKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSelectedCTNETKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->mSelectedCTNETKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :goto_6
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 750
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 751
    .local v19, "name":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 752
    .local v9, "apn":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 753
    .local v16, "key":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 771
    .local v28, "type":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "45005"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "oversea"

    const-string v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "web.sktelecom.com"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "lte.sktelecom.com"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 775
    :cond_8
    const-string v9, "roaming.sktelecom.com"

    .line 779
    :cond_9
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "internet.lguplus.co.kr"

    invoke-virtual {v9, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_a

    .line 780
    const-string v2, "3"

    const-string v3, "ril.simtype"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "oversea"

    const-string v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 781
    const-string v19, "LG U+ Roaming"

    .line 782
    const-string v9, "wroaming.lguplus.co.kr"

    .line 806
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/ApnSettings;->isHideApn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnSettings;->isHideApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 807
    :cond_b
    const-string v2, "ApnSettings"

    const-string v3, "HideApnlist is not added"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_6

    .line 628
    .end local v8    # "UnselectableApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v9    # "apn":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v12    # "dm":Landroid/os/IDeviceManager3LM;
    .end local v14    # "iccType":Ljava/lang/String;
    .end local v15    # "iccType2":Ljava/lang/String;
    .end local v16    # "key":Ljava/lang/String;
    .end local v18    # "mmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v19    # "name":Ljava/lang/String;
    .end local v28    # "type":Ljava/lang/String;
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" and mvno_type=\"\" and mvno_match_data=\"\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 637
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and current = 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 648
    :cond_e
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "45005"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 651
    const-string v5, "numeric=\"45005\""

    .line 655
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList: where = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 664
    :cond_f
    const-string v5, "numeric=\"21407\""

    goto/16 :goto_3

    .line 682
    .restart local v17    # "mIMSI":Ljava/lang/String;
    .restart local v26    # "simIMSI":Ljava/lang/String;
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and not (mvno_type=\"imsi\" and mvno_match_data=\"525053095x\")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 685
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and not (mvno_type=\"imsi\" and mvno_match_data=\"525053095x\")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 696
    .end local v17    # "mIMSI":Ljava/lang/String;
    .end local v26    # "simIMSI":Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "name"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "apn"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "type"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const-string v7, "name ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto/16 :goto_5

    .line 811
    .restart local v8    # "UnselectableApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .restart local v9    # "apn":Ljava/lang/String;
    .restart local v12    # "dm":Landroid/os/IDeviceManager3LM;
    .restart local v14    # "iccType":Ljava/lang/String;
    .restart local v15    # "iccType2":Ljava/lang/String;
    .restart local v16    # "key":Ljava/lang/String;
    .restart local v18    # "mmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v28    # "type":Ljava/lang/String;
    :cond_13
    const-string v2, "ent1"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "ent2"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 813
    :cond_14
    const-string v2, "ApnSettings"

    const-string v3, "Enterprise apn is not added"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_6

    .line 819
    :cond_15
    const-string v2, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 820
    const-string v2, "unitrg.au-net.ne.jp"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "autrg.au-net.ne.jp"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 821
    :cond_16
    const-string v2, "ApnSettings"

    const-string v3, "tethering apn is not added"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_6

    .line 825
    :cond_17
    const-string v2, "Manual"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "5"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 826
    const-string v2, "ApnSettings"

    const-string v3, "Manual apn is not added"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_6

    .line 830
    :cond_18
    const-string v2, "Manual_for_Navi"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "6"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 831
    const-string v2, "ApnSettings"

    const-string v3, "Manual apn for navi is not added"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_6

    .line 835
    :cond_19
    const-string v2, "ims"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "8"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 836
    const-string v2, "ApnSettings"

    const-string v3, "ims apn should not be shown"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_6

    .line 840
    :cond_1a
    const-string v2, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 841
    const-string v2, "ims"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 842
    const-string v2, "ApnSettings"

    const-string v3, "ims apn should not be shown"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_6

    .line 849
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isVzwEditable:Z

    if-nez v2, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isVzwSimEnable:Z

    if-nez v2, :cond_22

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isVzw:Z

    if-eqz v2, :cond_22

    .line 850
    :cond_1c
    new-instance v22, Lcom/android/settings/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;I)V

    .line 857
    .local v22, "pref":Lcom/android/settings/ApnPreference;
    :goto_7
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 858
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 859
    const-string v2, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 860
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 862
    :cond_1d
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setPersistent(Z)V

    .line 863
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 865
    const/16 v25, 0x1

    .line 866
    .local v25, "selectable":Z
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v24

    .line 868
    .local v24, "sales_code":Ljava/lang/String;
    const-string v2, "KDI"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 869
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 870
    .local v21, "pos":I
    const/4 v2, 0x6

    move/from16 v0, v21

    if-ge v0, v2, :cond_1e

    .line 871
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setEditable(Z)V

    .line 875
    .end local v21    # "pos":I
    :cond_1e
    const-string v2, "VZW"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 876
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isVzwEditable:Z

    if-eqz v2, :cond_25

    .line 877
    const/16 v25, 0x1

    .line 930
    :goto_8
    const-string v2, "TGY"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    if-eqz v28, :cond_1f

    const-string v2, "ims"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 931
    const/16 v25, 0x0

    .line 933
    :cond_1f
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    .line 934
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSelectedKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    if-eqz v25, :cond_39

    .line 936
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 937
    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/ApnPreference;->setChecked()V

    .line 940
    :cond_20
    if-eqz v28, :cond_37

    const-string v2, "cmdm"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "cmmm"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "cmmb"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "cmmail"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "cmpim"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 942
    :cond_21
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_6

    .line 851
    .end local v22    # "pref":Lcom/android/settings/ApnPreference;
    .end local v24    # "sales_code":Ljava/lang/String;
    .end local v25    # "selectable":Z
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isSprEditable:Z

    if-nez v2, :cond_23

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isSprSimEnable:Z

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isSpr:Z

    if-eqz v2, :cond_24

    .line 852
    :cond_23
    new-instance v22, Lcom/android/settings/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;I)V

    .restart local v22    # "pref":Lcom/android/settings/ApnPreference;
    goto/16 :goto_7

    .line 854
    .end local v22    # "pref":Lcom/android/settings/ApnPreference;
    :cond_24
    new-instance v22, Lcom/android/settings/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;)V

    .restart local v22    # "pref":Lcom/android/settings/ApnPreference;
    goto/16 :goto_7

    .line 879
    .restart local v24    # "sales_code":Ljava/lang/String;
    .restart local v25    # "selectable":Z
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isVzwSimEnable:Z

    if-eqz v2, :cond_2b

    .line 880
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pref1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const-string v2, "Verizon Internet"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "6"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "LTE - Verizon Internet"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "VZW Roaming Internet"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 882
    :cond_26
    const/16 v25, 0x1

    goto/16 :goto_8

    .line 885
    :cond_27
    const-string v2, "35"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "34"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "32"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "33"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "31"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "10"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "9"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "7"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "8"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 887
    :cond_28
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_6

    .line 889
    :cond_29
    const-string v2, "20404"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string v2, "default"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 890
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_6

    .line 893
    :cond_2a
    const/16 v25, 0x0

    .line 894
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setEnabled(Z)V

    goto/16 :goto_8

    .line 897
    :cond_2b
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pref2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string v2, "LTE - Verizon Internet"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 899
    const/16 v25, 0x0

    .line 900
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setEnabled(Z)V

    goto/16 :goto_8

    .line 906
    :cond_2c
    const/16 v25, 0x1

    goto/16 :goto_8

    .line 910
    :cond_2d
    const-string v2, "SPR"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 911
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isSprEditable:Z

    if-eqz v2, :cond_2e

    .line 912
    const/16 v25, 0x1

    goto/16 :goto_8

    .line 914
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isSprSimEnable:Z

    if-eqz v2, :cond_2f

    .line 915
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pref1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/16 v25, 0x1

    .line 917
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setEnabled(Z)V

    goto/16 :goto_8

    .line 919
    :cond_2f
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pref2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/16 v25, 0x1

    goto/16 :goto_8

    .line 923
    :cond_30
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_BlockToSelectDunApnType"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 924
    if-eqz v28, :cond_31

    const-string v2, "mms"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "mms2"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "mms,mms2"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "dun"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    :cond_31
    const/16 v25, 0x1

    :goto_9
    goto/16 :goto_8

    :cond_32
    const/16 v25, 0x0

    goto :goto_9

    .line 925
    :cond_33
    const-string v2, "3 share"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 926
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 928
    :cond_34
    if-eqz v28, :cond_35

    const-string v2, "mms"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    const-string v2, "mms2"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    const-string v2, "mms,mms2"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    :cond_35
    const/16 v25, 0x1

    :goto_a
    goto/16 :goto_8

    :cond_36
    const/16 v25, 0x0

    goto :goto_a

    .line 945
    :cond_37
    const-string v2, "CHM"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "wap"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "WAP"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "cmwap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 947
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_6

    .line 964
    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 976
    :goto_b
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_6

    .line 968
    :cond_39
    const-string v2, "CHM"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string v2, "CMMMS"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 970
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_6

    .line 974
    :cond_3a
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 978
    .end local v9    # "apn":Ljava/lang/String;
    .end local v16    # "key":Ljava/lang/String;
    .end local v19    # "name":Ljava/lang/String;
    .end local v22    # "pref":Lcom/android/settings/ApnPreference;
    .end local v24    # "sales_code":Ljava/lang/String;
    .end local v25    # "selectable":Z
    .end local v28    # "type":Ljava/lang/String;
    :cond_3b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 987
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/preference/Preference;

    .line 988
    .local v23, "preference":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_c

    .line 992
    .end local v23    # "preference":Landroid/preference/Preference;
    :cond_3c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isVzw:Z

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isVzwSimEnable:Z

    if-nez v2, :cond_3d

    .line 993
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3d

    .line 994
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnSettings;->isEmptyApnlist:Z

    .line 998
    :cond_3d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    if-nez v2, :cond_40

    const/4 v2, 0x5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    if-ne v2, v3, :cond_3e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_40

    .line 1001
    :cond_3e
    const-string v2, "ApnSettings"

    const-string v3, "fillList SIMSLOT1 Not Ready"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 1012
    .end local v8    # "UnselectableApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v12    # "dm":Landroid/os/IDeviceManager3LM;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "iccType":Ljava/lang/String;
    .end local v15    # "iccType2":Ljava/lang/String;
    .end local v18    # "mmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    :cond_3f
    :goto_d
    return-void

    .line 1003
    .restart local v8    # "UnselectableApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .restart local v12    # "dm":Landroid/os/IDeviceManager3LM;
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "iccType":Ljava/lang/String;
    .restart local v15    # "iccType2":Ljava/lang/String;
    .restart local v18    # "mmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    :cond_40
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_42

    const/4 v2, 0x5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    if-ne v2, v3, :cond_41

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_42

    .line 1006
    :cond_41
    const-string v2, "ApnSettings"

    const-string v3, "fillList SIMSLOT2 Not Ready"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_d

    .line 1009
    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_d
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 241
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 243
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 245
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 1269
    const/4 v7, 0x0

    .line 1271
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/settings/ApnSettings;->PREFERAPN_URI_USING_SUBID:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v2

    aget-wide v4, v2, v8

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1273
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1274
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1275
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1277
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1278
    return-object v7
.end method

.method private isHideApn(Ljava/lang/String;)Z
    .locals 7
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    .line 477
    const/4 v4, 0x0

    .line 478
    .local v4, "ret":Z
    iget-object v6, p0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    if-nez v6, :cond_0

    move v5, v4

    .line 486
    .end local v4    # "ret":Z
    .local v5, "ret":I
    :goto_0
    return v5

    .line 480
    .end local v5    # "ret":I
    .restart local v4    # "ret":Z
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 481
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 482
    const/4 v4, 0x1

    .end local v2    # "item":Ljava/lang/String;
    :cond_1
    move v5, v4

    .line 486
    .restart local v5    # "ret":I
    goto :goto_0

    .line 480
    .end local v5    # "ret":I
    .restart local v2    # "item":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1283
    const-string v0, "ApnSettings"

    const-string v1, "run restoreDefaultApn"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    .line 1285
    sput-boolean v3, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 1287
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    .line 1288
    new-instance v0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    .line 1291
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 1293
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 1295
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1296
    new-instance v0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    .line 1300
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 1302
    return v3
.end method

.method private setCarrierEnabledStatus(Ljava/lang/String;)V
    .locals 14
    .param p1, "selectedKey"    # Ljava/lang/String;

    .prologue
    .line 1469
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    .line 1470
    .local v11, "sales_code":Ljava/lang/String;
    const-string v0, "KDI"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1512
    :goto_0
    return-void

    .line 1473
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1477
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "carrier_enabled"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1481
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1482
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1483
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1484
    .local v9, "key":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1485
    .local v6, "apn":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1486
    .local v12, "type":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1488
    .local v7, "carrier_enabled":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 1489
    .local v10, "resolver":Landroid/content/ContentResolver;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1490
    .local v13, "values":Landroid/content/ContentValues;
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1491
    const-string v0, "carrier_enabled"

    const-string v1, "1"

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    invoke-virtual {v0, v1, v13, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1509
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1493
    :cond_1
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "unitrg.au-net.ne.jp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "autrg.au-net.ne.jp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1495
    :cond_3
    const-string v0, "carrier_enabled"

    const-string v1, "1"

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1496
    :cond_4
    const-string v0, "ims"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1497
    const-string v0, "carrier_enabled"

    const-string v1, "1"

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1500
    :cond_5
    const-string v0, "0"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1501
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 1504
    :cond_6
    const-string v0, "carrier_enabled"

    const-string v1, "0"

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1511
    .end local v6    # "apn":Ljava/lang/String;
    .end local v7    # "carrier_enabled":Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    .end local v12    # "type":Ljava/lang/String;
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1259
    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 1260
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1262
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1264
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/settings/ApnSettings;->PREFERAPN_URI_USING_SUBID:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1266
    return-void
.end method

.method private showWarning()V
    .locals 3

    .prologue
    .line 1181
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1182
    .local v0, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a07de

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1183
    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1184
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/ApnSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/ApnSettings$3;-><init>(Lcom/android/settings/ApnSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1190
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1191
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    .line 1192
    return-void
.end method


# virtual methods
.method public getSpcode()Ljava/lang/String;
    .locals 9

    .prologue
    .line 583
    const/4 v2, 0x0

    .line 584
    .local v2, "phoneContext":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 585
    .local v1, "mContext":Landroid/content/Context;
    const-string v4, ""

    .line 588
    .local v4, "spcode":Ljava/lang/String;
    :try_start_0
    const-string v6, "com.android.phone"

    const/4 v7, 0x3

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 594
    :goto_0
    if-nez v2, :cond_0

    .line 595
    const-string v6, "ApnSettings"

    const-string v7, "Unable to get phone context"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .line 607
    .end local v4    # "spcode":Ljava/lang/String;
    .local v5, "spcode":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 590
    .end local v5    # "spcode":Ljava/lang/String;
    .restart local v4    # "spcode":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 591
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0

    .line 599
    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 601
    .local v3, "preferences":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_1

    .line 602
    const-string v6, "ApnSettings"

    const-string v7, "get phone shared preference"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v6, "key_gid1"

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 606
    :cond_1
    const-string v6, "ApnSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get spcode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .line 607
    .end local v4    # "spcode":Ljava/lang/String;
    .restart local v5    # "spcode":Ljava/lang/String;
    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 354
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 357
    .local v0, "empty":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 358
    const v1, 0x7f0a09a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mUm:Landroid/os/UserManager;

    const-string v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    iput-boolean v3, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    .line 364
    new-instance v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/ApnSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 371
    :goto_0
    return-void

    .line 368
    :cond_1
    const v1, 0x7f07001b

    invoke-virtual {p0, v1}, Lcom/android/settings/ApnSettings;->addPreferencesFromResource(I)V

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 251
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 253
    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 255
    .local v8, "window":Landroid/view/Window;
    if-eqz v8, :cond_0

    .line 256
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 257
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v9, v9, 0x400

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 258
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 259
    invoke-virtual {v8, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 263
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "window":Landroid/view/Window;
    :cond_0
    const-string v9, "user"

    invoke-virtual {p0, v9}, Lcom/android/settings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    iput-object v9, p0, Lcom/android/settings/ApnSettings;->mUm:Landroid/os/UserManager;

    .line 265
    iget-object v9, p0, Lcom/android/settings/ApnSettings;->mUm:Landroid/os/UserManager;

    const-string v10, "no_config_mobile_networks"

    invoke-virtual {v9, v10}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 266
    invoke-virtual {p0, v12}, Lcom/android/settings/ApnSettings;->setHasOptionsMenu(Z)V

    .line 269
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 270
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 271
    invoke-virtual {v0, v12}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 273
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 275
    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 278
    .local v7, "tempIntent":Landroid/content/Intent;
    const-string v9, "simSlot"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 279
    const-string v9, "simSlot"

    invoke-virtual {v7, v9, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    .line 284
    :cond_3
    :goto_0
    const-string v9, "ApnSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mActivePhone : ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "sales_code":Ljava/lang/String;
    const-string v9, "VZW"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 288
    iput-boolean v12, p0, Lcom/android/settings/ApnSettings;->isVzw:Z

    .line 295
    :cond_4
    :goto_1
    iget-object v9, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.SIM_PROFILE_UPDATE_DONE"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    iget-object v9, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.ACTION_RESTORE_DEFAULT_APN"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    iget-object v9, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.CSC_CONNECTION_RESET_DONE"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/settings/ApnSettings;->mTetherStateFilter:Landroid/content/IntentFilter;

    .line 307
    const-string v9, "vzw"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 308
    .local v6, "strNameVzw":Ljava/lang/String;
    if-nez v6, :cond_c

    .line 309
    iput-boolean v13, p0, Lcom/android/settings/ApnSettings;->isVzwEditable:Z

    .line 313
    :goto_2
    const-string v9, "keyString"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, "strNameSpr":Ljava/lang/String;
    if-nez v5, :cond_d

    .line 315
    const-string v9, "ApnSettings"

    const-string v10, "strNameSpr = null"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_3
    if-eqz v5, :cond_e

    const-string v9, "hidden"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 321
    iput-boolean v12, p0, Lcom/android/settings/ApnSettings;->isSprEditable:Z

    .line 325
    :goto_4
    const-string v9, "LTE_TEST"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 326
    .local v4, "strFromHidden":Ljava/lang/String;
    if-eqz v4, :cond_5

    const-string v9, "editable"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 327
    iput-boolean v12, p0, Lcom/android/settings/ApnSettings;->isVzwEditable:Z

    .line 328
    iput-boolean v12, p0, Lcom/android/settings/ApnSettings;->isSprEditable:Z

    .line 331
    :cond_5
    const-string v9, "311480"

    iget v10, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v10}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "20404"

    iget v10, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v10}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 333
    :cond_6
    iput-boolean v12, p0, Lcom/android/settings/ApnSettings;->isVzwSimEnable:Z

    .line 337
    :cond_7
    :goto_5
    const-string v9, "ApnSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TelephonyProperties "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v11}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/ApnSettings;->isSpr:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/ApnSettings;->isSprSimEnable:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/ApnSettings;->isSprEditable:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v9, "ApnSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TelephonyProperties "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v11}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/ApnSettings;->isVzw:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/ApnSettings;->isVzwSimEnable:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/ApnSettings;->isVzwEditable:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_HideApnList"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    .line 342
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_HideApnList"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "hideApnString":Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    .line 344
    iget-object v9, p0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    if-nez v9, :cond_8

    .line 345
    new-array v9, v12, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    .line 346
    iget-object v9, p0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    aput-object v1, v9, v13

    .line 350
    .end local v1    # "hideApnString":Ljava/lang/String;
    :cond_8
    return-void

    .line 280
    .end local v3    # "sales_code":Ljava/lang/String;
    .end local v4    # "strFromHidden":Ljava/lang/String;
    .end local v5    # "strNameSpr":Ljava/lang/String;
    .end local v6    # "strNameVzw":Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimCount()I

    move-result v9

    if-ne v9, v12, :cond_3

    const-string v9, "READY"

    const-string v10, "gsm.sim.state"

    const-string v11, "UNKNOWN"

    invoke-static {v10, v12, v11}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 282
    iput v12, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    goto/16 :goto_0

    .line 289
    .restart local v3    # "sales_code":Ljava/lang/String;
    :cond_a
    const-string v9, "SPR"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "BST"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "XAS"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "VMU"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "SPRPRE"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 291
    :cond_b
    iput-boolean v12, p0, Lcom/android/settings/ApnSettings;->isSpr:Z

    goto/16 :goto_1

    .line 311
    .restart local v6    # "strNameVzw":Ljava/lang/String;
    :cond_c
    iput-boolean v12, p0, Lcom/android/settings/ApnSettings;->isVzwEditable:Z

    goto/16 :goto_2

    .line 318
    .restart local v5    # "strNameSpr":Ljava/lang/String;
    :cond_d
    const-string v9, "ApnSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "strNameSpr = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 323
    :cond_e
    iput-boolean v13, p0, Lcom/android/settings/ApnSettings;->isSprEditable:Z

    goto/16 :goto_4

    .line 334
    .restart local v4    # "strFromHidden":Ljava/lang/String;
    :cond_f
    const-string v9, "310120"

    iget v10, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v10}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 335
    iput-boolean v12, p0, Lcom/android/settings/ApnSettings;->isSprSimEnable:Z

    goto/16 :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1399
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 1400
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1401
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a07dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1402
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1405
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v7, 0x2

    const v6, 0x7f0a07d0

    const v5, 0x7f020209

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1017
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    if-nez v1, :cond_5

    .line 1018
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 1020
    .local v0, "sales_code":Ljava/lang/String;
    sget-boolean v1, Lcom/android/settings/ApnSettingsTabActivity;->isMenuOptionsAdded:Z

    if-eqz v1, :cond_0

    .line 1102
    .end local v0    # "sales_code":Ljava/lang/String;
    :goto_0
    return-void

    .line 1022
    .restart local v0    # "sales_code":Ljava/lang/String;
    :cond_0
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1023
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isVzwEditable:Z

    if-eqz v1, :cond_6

    .line 1024
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a07d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1086
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isEmptyApnlist:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isVzw:Z

    if-nez v1, :cond_4

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isVzwSimEnable:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isVzw:Z

    if-nez v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isVzwEditable:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isVzw:Z

    if-eqz v1, :cond_f

    .line 1087
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a07de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v7, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02020c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1101
    .end local v0    # "sales_code":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .line 1029
    .restart local v0    # "sales_code":Ljava/lang/String;
    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isVzwSimEnable:Z

    if-eqz v1, :cond_7

    .line 1030
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a07d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02020a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 1034
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSimMissing(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1035
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a07d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02020a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 1041
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a07d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    .line 1047
    :cond_9
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1048
    const-string v1, "3"

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1049
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    .line 1054
    :cond_a
    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1055
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isSprEditable:Z

    if-eqz v1, :cond_b

    .line 1056
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    .line 1061
    :cond_b
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isSprSimEnable:Z

    if-eqz v1, :cond_c

    .line 1062
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02020a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    .line 1067
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    .line 1074
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1075
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    .line 1079
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    .line 1090
    :cond_f
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isSpr:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isSprSimEnable:Z

    if-eqz v1, :cond_10

    .line 1091
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a07de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v7, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02020c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1095
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a07de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v7, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02020b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 453
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 455
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 464
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 1162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1177
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1164
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->addNewApn()V

    goto :goto_0

    .line 1169
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->showWarning()V

    goto :goto_0

    .line 1173
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->finish()V

    goto :goto_0

    .line 1162
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 436
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 438
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 445
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1224
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1228
    const-string v0, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 1229
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/ApnSettings;->setCarrierEnabledStatus(Ljava/lang/String;)V

    .line 1232
    :cond_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 1255
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1217
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1218
    .local v0, "pos":I
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1219
    .local v1, "url":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 1220
    const/4 v2, 0x1

    return v2
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 375
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 377
    iget-boolean v3, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    if-eqz v3, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mTetherStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 384
    sget-boolean v3, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v3, :cond_3

    .line 385
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    .line 394
    :goto_1
    const-string v3, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kddi_cpa_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 396
    .local v0, "cpaEnabled":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-nez v0, :cond_5

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 400
    .end local v0    # "cpaEnabled":Z
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/ApnSettings;->isVzw:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/ApnSettings;->isVzwSimEnable:Z

    if-nez v3, :cond_0

    .line 401
    iget-object v3, p0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ne v3, v1, :cond_6

    .line 402
    iput-boolean v1, p0, Lcom/android/settings/ApnSettings;->isEmptyApnlist:Z

    goto :goto_0

    .line 387
    :cond_3
    const/16 v3, 0x3e9

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 395
    goto :goto_2

    .restart local v0    # "cpaEnabled":Z
    :cond_5
    move v3, v2

    .line 396
    goto :goto_3

    .line 405
    .end local v0    # "cpaEnabled":Z
    :cond_6
    iput-boolean v2, p0, Lcom/android/settings/ApnSettings;->isEmptyApnlist:Z

    goto :goto_0
.end method
