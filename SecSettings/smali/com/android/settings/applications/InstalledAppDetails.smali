.class public Lcom/android/settings/applications/InstalledAppDetails;
.super Landroid/app/Fragment;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;,
        Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;,
        Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;,
        Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# static fields
.field private static final KNOX_PROTECTED_APP_LIST:[Ljava/lang/String;

.field private static final SPRINT_NO_DISABLE_APP_LIST:[Ljava/lang/String;

.field private static isDisableNotificationDialogVisible:Z

.field private static mAppOps:Landroid/app/AppOpsManager;

.field private static mIsKNOX3rdpartyApp:Z


# instance fields
.field private getApplicationUninstallationEnabled:I

.field private isSDCardMoveAllowed:I

.field private isStopSystemAppAllowed:I

.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppControlRestricted:Z

.field private mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

.field private mAppSize:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAskCompatibilityCB:Landroid/widget/CheckBox;

.field private mAutoStartSwitch:Landroid/widget/CompoundButton;

.field private mCacheSize:Landroid/widget/TextView;

.field private mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/widget/TextView;

.field private mDisableAfterUninstall:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableCompatibilityCB:Landroid/widget/CheckBox;

.field private mExternalCodeSize:Landroid/widget/TextView;

.field private mExternalDataSize:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private final mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mIsEmerMode:Z

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mMoreControlButtons:Landroid/view/View;

.field private mMoveAppButton:Landroid/widget/Button;

.field private mMoveInProgress:Z

.field private mNotificationSwitch:Landroid/widget/CompoundButton;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mScreenCompatSection:Landroid/view/View;

.field private mSession:Lcom/android/settings/applications/ApplicationsState$Session;

.field private mShowUninstalled:Z

.field private mSmsManager:Lcom/android/internal/telephony/ISms;

.field private mSpecialDisableButton:Landroid/widget/Button;

.field private mState:Lcom/android/settings/applications/ApplicationsState;

.field private mTotalSize:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 174
    sput-boolean v3, Lcom/android/settings/applications/InstalledAppDetails;->mIsKNOX3rdpartyApp:Z

    .line 177
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.mms"

    aput-object v1, v0, v3

    const-string v1, "com.sec.android.gallery3d"

    aput-object v1, v0, v4

    const-string v1, "com.android.providers.media"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "com.sprint.w.installer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sprint.zone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.coremobility.app.vnotes"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.locationlabs.v3client"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sprint.dsa"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.birdstep.android.cm"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.sprint.ce.updater"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.telespree.android.client"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.sec.sprextension"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.sec.sprextension.phoneinfo"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.itsoninc.android.itsonclient"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.itsoninc.android.itsonservice"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.itsoninc.android.uid"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.kineto.smartwifi"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.oem.smartwifisupport"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.smithmicro.mnd"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.smithmicro.EDM"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.sequent.controlpanel"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.locationlabs.sparkle.yellow.pre"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/applications/InstalledAppDetails;->SPRINT_NO_DISABLE_APP_LIST:[Ljava/lang/String;

    .line 214
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.sec.knox.bridge"

    aput-object v1, v0, v3

    const-string v1, "com.samsung.android.bbc.bbcagent"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/applications/InstalledAppDetails;->KNOX_PROTECTED_APP_LIST:[Ljava/lang/String;

    .line 268
    sput-boolean v3, Lcom/android/settings/applications/InstalledAppDetails;->isDisableNotificationDialogVisible:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    .line 158
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 237
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 238
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 244
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    .line 264
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    .line 269
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 270
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 271
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 272
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 273
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 274
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 275
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 312
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmerMode:Z

    .line 316
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$1;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 1977
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$2;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 2052
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/applications/InstalledAppDetails;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # I

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/applications/InstalledAppDetails;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Z

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$1500()Landroid/app/AppOpsManager;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/applications/InstalledAppDetails;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Z

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 158
    sput-boolean p0, Lcom/android/settings/applications/InstalledAppDetails;->isDisableNotificationDialogVisible:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAutoStartSwitch:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 158
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private applyKioskModePolicy(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2229
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    if-nez v1, :cond_0

    .line 2230
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 2232
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getKioskHomePackage()Ljava/lang/String;

    move-result-object v0

    .line 2233
    .local v0, "kioskPackage":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2234
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2236
    :cond_1
    return-void
.end method

.method private checkContainerAuthorizedAppOnButtons()V
    .locals 3

    .prologue
    .line 1526
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/applications/InstalledAppDetails;->mIsKNOX3rdpartyApp:Z

    .line 1527
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    .line 1528
    const-string v0, "InstalledAppDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkContainerAuthorizedAppOnButtons() for package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sec_container_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1550
    :cond_0
    return-void
.end method

.method private checkContainerRestrictionOnButtons()V
    .locals 6

    .prologue
    .line 1488
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sec_container_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1489
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1491
    .local v2, "standarizedPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1492
    .local v1, "isPresent":Z
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v0

    .line 1517
    .local v0, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    if-eqz v1, :cond_0

    .line 1518
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1519
    const-string v3, "InstalledAppDetails"

    const-string v4, "checking mUninstallButton disabled in checkContainerRestrictionOnButtons"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    .end local v0    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v1    # "isPresent":Z
    .end local v2    # "standarizedPackageName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkForceStop()V
    .locals 14

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1994
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.sec.sprextension"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sec.sprextension.phoneinfo"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1997
    :cond_0
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 2019
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->updateButtonsForOperator()V

    .line 2022
    sget-object v9, Lcom/android/settings/applications/InstalledAppDetails;->KNOX_PROTECTED_APP_LIST:[Ljava/lang/String;

    .local v9, "arr$":[Ljava/lang/String;
    array-length v12, v9

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v12, :cond_7

    aget-object v13, v9, v11

    .line 2024
    .local v13, "pkgName":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    .line 2025
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2026
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2027
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2028
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2029
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KNOX_PROTECTED_APP_LIST : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2022
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1998
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "pkgName":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Common_EnableItsOn"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.itsoninc.android.itsonclient"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.itsoninc.android.itsonservice"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.itsoninc.android.uid"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2002
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 2003
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2005
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto/16 :goto_0

    .line 2006
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_6

    .line 2009
    invoke-direct {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto/16 :goto_0

    .line 2011
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v2, "package"

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2013
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2014
    const-string v0, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2015
    const-string v0, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2016
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2032
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v9    # "arr$":[Ljava/lang/String;
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 2033
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 2037
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v13    # "pkgName":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1966
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1968
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1969
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/settings/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    .line 1970
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/settings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 1971
    .local v1, "newEnt":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    if-eqz v1, :cond_0

    .line 1972
    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 1974
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1975
    return-void
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "errCode"    # I

    .prologue
    .line 398
    packed-switch p1, :pswitch_data_0

    .line 412
    const-string v0, ""

    :goto_0
    return-object v0

    .line 400
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a090f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 402
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0910

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 404
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0911

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 406
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0912

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 408
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0913

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 410
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2093
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_0

    .line 2094
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2099
    :goto_0
    return v0

    .line 2096
    :catch_0
    move-exception v0

    .line 2099
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 364
    const-string v0, "jjh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .locals 4
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const v3, 0x7f0a08d2

    .line 466
    const/4 v0, 0x0

    .line 470
    .local v0, "disableable":Z
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    .line 488
    :goto_0
    return v0

    .line 474
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_3

    .line 475
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    .line 476
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isThisTmobilePackage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 477
    const/4 v0, 0x0

    goto :goto_0

    .line 481
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 484
    :cond_3
    const v1, 0x7f0a08d3

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 485
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initDataButtons()V
    .locals 4

    .prologue
    const v3, 0x7f0a08d4

    const/4 v2, 0x0

    .line 375
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 381
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 382
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 392
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 395
    :cond_1
    return-void

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 385
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f0a08e6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 389
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 387
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initMoveButton()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "dataOnly":Z
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_4

    move v0, v2

    .line 422
    :goto_0
    const/4 v1, 0x1

    .line 423
    .local v1, "moveDisable":Z
    if-eqz v0, :cond_5

    .line 424
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f0a090b

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 438
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v4, :cond_1

    .line 439
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_1

    .line 440
    const/4 v1, 0x1

    .line 443
    :cond_1
    iget v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->isSDCardMoveAllowed:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->isSDCardMoveAllowed:I

    if-nez v4, :cond_2

    .line 444
    const/4 v1, 0x1

    .line 448
    :cond_2
    if-nez v1, :cond_3

    iget-boolean v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v4, :cond_8

    .line 449
    :cond_3
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 454
    :goto_2
    return-void

    .end local v1    # "moveDisable":Z
    :cond_4
    move v0, v3

    .line 421
    goto :goto_0

    .line 425
    .restart local v1    # "moveDisable":Z
    :cond_5
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-eqz v4, :cond_6

    .line 426
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f0a090c

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 428
    const/4 v1, 0x0

    goto :goto_1

    .line 430
    :cond_6
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f0a090d

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 431
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v4}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->init()V

    .line 432
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_0

    .line 433
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_7

    move v1, v2

    :goto_3
    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_3

    .line 451
    :cond_8
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method

.method private initNotificationButton()V
    .locals 4

    .prologue
    .line 722
    sget-boolean v2, Lcom/android/settings/applications/InstalledAppDetails;->isDisableNotificationDialogVisible:Z

    if-eqz v2, :cond_0

    .line 723
    const-string v2, "InstalledAppDetails"

    const-string v3, " ,,,,,,,,,,,,,,,,LEAVING CHECKBOX AS SUCH & RETURNING, SINCE NOTIFICATION DIALOG IS VISIBLE ,,,,,,,,,,,,,,,,,"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :goto_0
    return-void

    .line 728
    :cond_0
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 730
    .local v1, "nm":Landroid/app/INotificationManager;
    const/4 v0, 0x1

    .line 732
    .local v0, "enabled":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 737
    :goto_1
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 748
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.sec.android.fotaclient"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 749
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_0

    .line 751
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 752
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 734
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private initUninstallButtons()V
    .locals 20

    .prologue
    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    if-eqz v17, :cond_9

    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_a

    const/4 v11, 0x1

    .line 494
    .local v11, "isBundled":Z
    :goto_1
    const/4 v8, 0x1

    .line 495
    .local v8, "enabled":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const v18, 0x7f0a08d5

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setText(I)V

    .line 497
    const/16 v16, 0x0

    .line 498
    .local v16, "showSpecialDisable":Z
    if-eqz v11, :cond_0

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v16

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 503
    const/16 v16, 0x0

    .line 505
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v16, :cond_b

    const/16 v17, 0x0

    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 509
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 511
    .local v7, "disablAppList":Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_2

    .line 512
    const-string v17, "InstalledAppDetails"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "disablAppList : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 514
    .local v14, "res":Landroid/content/res/Resources;
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 515
    .local v4, "appString":[Ljava/lang/String;
    const-string v17, "InstalledAppDetails"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "disablAppList : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    move-object v5, v4

    .local v5, "arr$":[Ljava/lang/String;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_3
    if-ge v10, v12, :cond_2

    aget-object v3, v5, v10

    .line 517
    .local v3, "app":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 518
    const/16 v16, 0x0

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 604
    .end local v3    # "app":Ljava/lang/String;
    .end local v4    # "appString":[Ljava/lang/String;
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "res":Landroid/content/res/Resources;
    .end local v16    # "showSpecialDisable":Z
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 605
    const/4 v8, 0x0

    .line 637
    :cond_3
    if-eqz v8, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 638
    if-eqz v11, :cond_14

    .line 639
    const/4 v8, 0x0

    .line 656
    :cond_4
    :goto_5
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v15, v17

    .line 657
    .local v15, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v19, "getApplicationUninstallationEnabled"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2, v15}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/InstalledAppDetails;->getApplicationUninstallationEnabled:I

    .line 658
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->getApplicationUninstallationEnabled:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->getApplicationUninstallationEnabled:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 659
    const/4 v8, 0x0

    .line 663
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 664
    const/4 v8, 0x0

    .line 670
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 671
    sget-object v5, Lcom/android/settings/applications/InstalledAppDetails;->SPRINT_NO_DISABLE_APP_LIST:[Ljava/lang/String;

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v12, v5

    .restart local v12    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_6
    if-ge v10, v12, :cond_7

    aget-object v13, v5, v10

    .line 672
    .local v13, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 673
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    move/from16 v17, v0

    if-eqz v17, :cond_18

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setEnabled(Z)V

    .line 695
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "pkgName":Ljava/lang/String;
    :cond_7
    :goto_7
    const-string v17, "com.skt.prod.dialer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setEnabled(Z)V

    .line 706
    :goto_8
    if-eqz v8, :cond_8

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 715
    :cond_8
    return-void

    .line 492
    .end local v7    # "disablAppList":Ljava/lang/String;
    .end local v8    # "enabled":Z
    .end local v11    # "isBundled":Z
    .end local v15    # "selectionArgs":[Ljava/lang/String;
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 493
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 505
    .restart local v8    # "enabled":Z
    .restart local v11    # "isBundled":Z
    .restart local v16    # "showSpecialDisable":Z
    :cond_b
    const/16 v17, 0x8

    goto/16 :goto_2

    .line 516
    .restart local v3    # "app":Ljava/lang/String;
    .restart local v4    # "appString":[Ljava/lang/String;
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v7    # "disablAppList":Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v12    # "len$":I
    .restart local v14    # "res":Landroid/content/res/Resources;
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 536
    .end local v3    # "app":Ljava/lang/String;
    .end local v4    # "appString":[Ljava/lang/String;
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v7    # "disablAppList":Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "res":Landroid/content/res/Resources;
    .end local v16    # "showSpecialDisable":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 537
    if-eqz v11, :cond_11

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v8

    .line 551
    :goto_9
    const-string v17, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 552
    const-string v17, "com.motricity.verizon.ssodownloadable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    const-string v17, "com.samsung.spg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 554
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 555
    const/4 v8, 0x0

    .line 560
    :cond_f
    const-string v17, "com.samsung.android.app.headlines"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 561
    const/4 v8, 0x0

    .line 564
    :cond_10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 565
    .restart local v7    # "disablAppList":Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_2

    .line 566
    const-string v17, "InstalledAppDetails"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "disablAppList : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 568
    .restart local v14    # "res":Landroid/content/res/Resources;
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 570
    .restart local v4    # "appString":[Ljava/lang/String;
    move-object v5, v4

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v12, v5

    .restart local v12    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_a
    if-ge v10, v12, :cond_2

    aget-object v3, v5, v10

    .line 573
    .restart local v3    # "app":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 574
    const/4 v8, 0x0

    .line 575
    goto/16 :goto_4

    .line 539
    .end local v3    # "app":Ljava/lang/String;
    .end local v4    # "appString":[Ljava/lang/String;
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v7    # "disablAppList":Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "res":Landroid/content/res/Resources;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    const/high16 v18, 0x800000

    and-int v17, v17, v18

    if-nez v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_12

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const v18, 0x7f0a08cf

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setText(I)V

    .line 545
    const/4 v8, 0x0

    goto/16 :goto_9

    .line 547
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const v18, 0x7f0a08cf

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_9

    .line 570
    .restart local v3    # "app":Ljava/lang/String;
    .restart local v4    # "appString":[Ljava/lang/String;
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v7    # "disablAppList":Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v12    # "len$":I
    .restart local v14    # "res":Landroid/content/res/Resources;
    :cond_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 641
    .end local v3    # "app":Ljava/lang/String;
    .end local v4    # "appString":[Ljava/lang/String;
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "res":Landroid/content/res/Resources;
    :cond_14
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .local v9, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v6

    .line 643
    .local v6, "currentDefaultHome":Landroid/content/ComponentName;
    if-nez v6, :cond_16

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_15

    const/4 v8, 0x1

    :goto_b
    goto/16 :goto_5

    :cond_15
    const/4 v8, 0x0

    goto :goto_b

    .line 650
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_17

    const/4 v8, 0x1

    :goto_c
    goto/16 :goto_5

    :cond_17
    const/4 v8, 0x0

    goto :goto_c

    .line 676
    .end local v6    # "currentDefaultHome":Landroid/content/ComponentName;
    .end local v9    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "pkgName":Ljava/lang/String;
    .restart local v15    # "selectionArgs":[Ljava/lang/String;
    :cond_18
    const/4 v8, 0x0

    .line 678
    goto/16 :goto_7

    .line 671
    :cond_19
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 698
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "pkgName":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_8
.end method

.method private initiateClearUserData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1711
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1713
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1714
    .local v1, "packageName":Ljava/lang/String;
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v3, :cond_0

    .line 1716
    new-instance v3, Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 1718
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1720
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v2

    .line 1721
    .local v2, "res":Z
    if-nez v2, :cond_1

    .line 1723
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldnt clear application user data for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    const/4 v3, 0x4

    invoke-direct {p0, v3, v6}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1728
    :goto_0
    return-void

    .line 1726
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f0a08f3

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private isThisTmobilePackage()Z
    .locals 2

    .prologue
    .line 458
    const-string v0, "com.carrieriq.tmobile"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.carrieriq.tmobile.IQToggle"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.carrieriq.tmobile.IQOOB"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    :cond_0
    const/4 v0, 0x1

    .line 461
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 1656
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1657
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1658
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v3, 0x7f0a08d4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1659
    if-ne v1, v4, :cond_0

    .line 1660
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleared user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1665
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1666
    return-void

    .line 1663
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 1684
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1685
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1687
    .local v0, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1688
    if-ne v1, v5, :cond_1

    .line 1689
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved resources for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1695
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    .line 1697
    if-ne v1, v5, :cond_0

    .line 1698
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 1699
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a1bab

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1704
    :cond_0
    :goto_1
    return-void

    .line 1693
    :cond_1
    const/4 v2, 0x6

    invoke-direct {p0, v2, v1}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1701
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a1baa

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private refreshButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1669
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 1670
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 1671
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initDataButtons()V

    .line 1672
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initMoveButton()V

    .line 1673
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initNotificationButton()V

    .line 1681
    :goto_0
    return-void

    .line 1675
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v1, 0x7f0a090e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1676
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1677
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1678
    const-string v0, "InstalledAppDetails"

    const-string v1, "checking mUninstallButton disabled in moveInProgress"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 18

    .prologue
    .line 1566
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v14, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v16, -0x2

    cmp-long v13, v14, v16

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v14, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v16, -0x1

    cmp-long v13, v14, v16

    if-nez v13, :cond_4

    .line 1568
    :cond_0
    const-wide/16 v14, -0x1

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1569
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    if-nez v13, :cond_1

    .line 1570
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1571
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1572
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1573
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1575
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1576
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1627
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v13, :cond_2

    .line 1628
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1629
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1631
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->updateButtonsForOperator()V

    .line 1634
    sget-object v2, Lcom/android/settings/applications/InstalledAppDetails;->KNOX_PROTECTED_APP_LIST:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v11, v2

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v11, :cond_e

    aget-object v12, v2, v10

    .line 1636
    .local v12, "pkgName":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v13, :cond_3

    .line 1637
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1638
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1639
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1640
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1641
    const-string v13, "InstalledAppDetails"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "KNOX_PROTECTED_APP_LIST : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1634
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1579
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "pkgName":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 1580
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->codeSize:J

    .line 1581
    .local v6, "codeSize":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    .line 1586
    .local v8, "dataSize":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_5

    .line 1587
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v14, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 1588
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v14, v14, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1590
    :cond_5
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_6

    .line 1591
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v14, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 1592
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v14, v14, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1595
    :cond_6
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    cmp-long v13, v14, v6

    if-eqz v13, :cond_7

    .line 1596
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1597
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1599
    :cond_7
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    cmp-long v13, v14, v8

    if-eqz v13, :cond_8

    .line 1600
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 1601
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1603
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v14, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->cacheSize:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    move-wide/from16 v16, v0

    add-long v4, v14, v16

    .line 1604
    .local v4, "cacheSize":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    cmp-long v13, v14, v4

    if-eqz v13, :cond_9

    .line 1605
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 1606
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1608
    :cond_9
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_a

    .line 1609
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v14, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 1610
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v14, v14, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1613
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v14, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mCanClearData:Z

    if-nez v13, :cond_c

    .line 1614
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1619
    :goto_3
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-gtz v13, :cond_d

    .line 1620
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1616
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1617
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 1622
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1623
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1644
    .end local v4    # "cacheSize":J
    .end local v6    # "codeSize":J
    .end local v8    # "dataSize":J
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v12    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1645
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1649
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v12    # "pkgName":Ljava/lang/String;
    :cond_e
    return-void
.end method

.method private refreshUi()Z
    .locals 52

    .prologue
    .line 1135
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    move/from16 v47, v0

    if-eqz v47, :cond_0

    .line 1136
    const/16 v47, 0x1

    .line 1386
    :goto_0
    return v47

    .line 1138
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    move-result-object v29

    .line 1140
    .local v29, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v47, v0

    if-nez v47, :cond_1

    .line 1141
    const/16 v47, 0x0

    goto :goto_0

    .line 1144
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v47, v0

    if-nez v47, :cond_2

    .line 1145
    const/16 v47, 0x0

    goto :goto_0

    .line 1149
    :cond_2
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1150
    .local v24, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Ljava/util/HashSet;->clear()V

    .line 1152
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v47

    move/from16 v0, v25

    move/from16 v1, v47

    if-ge v0, v1, :cond_4

    .line 1153
    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/pm/ResolveInfo;

    .line 1154
    .local v37, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1155
    .local v6, "activityPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1158
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v28, v0

    .line 1159
    .local v28, "metadata":Landroid/os/Bundle;
    if-eqz v28, :cond_3

    .line 1160
    const-string v47, "android.app.home.alternate"

    move-object/from16 v0, v28

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1161
    .local v27, "metaPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v6}, Lcom/android/settings/applications/InstalledAppDetails;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_3

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1152
    .end local v27    # "metaPkg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 1168
    .end local v6    # "activityPkg":Ljava/lang/String;
    .end local v28    # "metadata":Landroid/os/Bundle;
    .end local v37    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    .local v34, "prefActList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1172
    .local v26, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v26

    move-object/from16 v2, v34

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 1174
    const/16 v23, 0x0

    .line 1176
    .local v23, "hasUsbDefaults":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    move-object/from16 v47, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v48

    move-object/from16 v0, v47

    move-object/from16 v1, v29

    move/from16 v2, v48

    invoke-interface {v0, v1, v2}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v23

    .line 1180
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v22

    .line 1183
    .local v22, "hasBindAppWidgetPermission":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v47, v0

    const v48, 0x7f100203

    invoke-virtual/range {v47 .. v48}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1184
    .local v15, "autoLaunchTitleView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v47, v0

    const v48, 0x7f100204

    invoke-virtual/range {v47 .. v48}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1185
    .local v16, "autoLaunchView":Landroid/widget/TextView;
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v47

    if-gtz v47, :cond_5

    if-eqz v23, :cond_8

    :cond_5
    const/4 v14, 0x1

    .line 1186
    .local v14, "autoLaunchEnabled":Z
    :goto_3
    if-nez v14, :cond_9

    if-nez v22, :cond_9

    .line 1187
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/settings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 1226
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v47

    if-eqz v47, :cond_6

    .line 1227
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v47

    const-string v48, "activity"

    invoke-virtual/range {v47 .. v48}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 1229
    .local v10, "am":Landroid/app/ActivityManager;
    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v18

    .line 1240
    .local v18, "compatMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    move-object/from16 v47, v0

    const/16 v48, 0x8

    invoke-virtual/range {v47 .. v48}, Landroid/view/View;->setVisibility(I)V

    .line 1245
    .end local v10    # "am":Landroid/app/ActivityManager;
    .end local v18    # "compatMode":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v47, v0

    const v48, 0x7f10020b

    invoke-virtual/range {v47 .. v48}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/LinearLayout;

    .line 1246
    .local v31, "permsView":Landroid/widget/LinearLayout;
    new-instance v12, Landroid/widget/AppSecurityPermissions;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v29

    invoke-direct {v12, v0, v1}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1247
    .local v12, "asp":Landroid/widget/AppSecurityPermissions;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v35

    .line 1251
    .local v35, "premiumSmsPermission":I
    invoke-virtual {v12}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v47

    if-gtz v47, :cond_7

    if-eqz v35, :cond_12

    .line 1253
    :cond_7
    const/16 v47, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1258
    :goto_5
    const v47, 0x7f10020c

    move-object/from16 v0, v31

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 1260
    .local v39, "securityBillingDesc":Landroid/widget/TextView;
    const v47, 0x7f10020d

    move-object/from16 v0, v31

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/LinearLayout;

    .line 1262
    .local v40, "securityBillingList":Landroid/widget/LinearLayout;
    if-eqz v35, :cond_13

    .line 1264
    const/16 v47, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1265
    const/16 v47, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1266
    const v47, 0x7f10020e

    move-object/from16 v0, v31

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/Spinner;

    .line 1268
    .local v44, "spinner":Landroid/widget/Spinner;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v47

    const v48, 0x7f0c00a6

    const v49, 0x1090008

    invoke-static/range {v47 .. v49}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v7

    .line 1271
    .local v7, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v47, 0x1090009

    move/from16 v0, v47

    invoke-virtual {v7, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1272
    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1274
    add-int/lit8 v47, v35, -0x1

    move-object/from16 v0, v44

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1275
    new-instance v47, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    move-object/from16 v48, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v29

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/ISms;)V

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1283
    .end local v7    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v44    # "spinner":Landroid/widget/Spinner;
    :goto_6
    invoke-virtual {v12}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v47

    if-lez v47, :cond_16

    .line 1285
    const v47, 0x7f100210

    move-object/from16 v0, v31

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/LinearLayout;

    .line 1287
    .local v41, "securityList":Landroid/widget/LinearLayout;
    invoke-virtual/range {v41 .. v41}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1288
    invoke-virtual {v12}, Landroid/widget/AppSecurityPermissions;->getPermissionsViewWithRevokeButtons()Landroid/view/View;

    move-result-object v47

    move-object/from16 v0, v41

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v30

    .line 1292
    .local v30, "packages":[Ljava/lang/String;
    if-eqz v30, :cond_16

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v47, v0

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-le v0, v1, :cond_16

    .line 1293
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    .local v33, "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/16 v25, 0x0

    :goto_7
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v47, v0

    move/from16 v0, v25

    move/from16 v1, v47

    if-ge v0, v1, :cond_15

    .line 1295
    aget-object v32, v30, v25

    .line 1296
    .local v32, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_14

    .line 1294
    :goto_8
    add-int/lit8 v25, v25, 0x1

    goto :goto_7

    .line 1177
    .end local v12    # "asp":Landroid/widget/AppSecurityPermissions;
    .end local v14    # "autoLaunchEnabled":Z
    .end local v15    # "autoLaunchTitleView":Landroid/widget/TextView;
    .end local v16    # "autoLaunchView":Landroid/widget/TextView;
    .end local v22    # "hasBindAppWidgetPermission":Z
    .end local v30    # "packages":[Ljava/lang/String;
    .end local v31    # "permsView":Landroid/widget/LinearLayout;
    .end local v32    # "pkg":Ljava/lang/String;
    .end local v33    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v35    # "premiumSmsPermission":I
    .end local v39    # "securityBillingDesc":Landroid/widget/TextView;
    .end local v40    # "securityBillingList":Landroid/widget/LinearLayout;
    .end local v41    # "securityList":Landroid/widget/LinearLayout;
    :catch_0
    move-exception v21

    .line 1178
    .local v21, "e":Landroid/os/RemoteException;
    const-string v47, "InstalledAppDetails"

    const-string v48, "mUsbManager.hasDefaults"

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1185
    .end local v21    # "e":Landroid/os/RemoteException;
    .restart local v15    # "autoLaunchTitleView":Landroid/widget/TextView;
    .restart local v16    # "autoLaunchView":Landroid/widget/TextView;
    .restart local v22    # "hasBindAppWidgetPermission":Z
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 1189
    .restart local v14    # "autoLaunchEnabled":Z
    :cond_9
    if-eqz v22, :cond_e

    if-eqz v14, :cond_e

    const/16 v46, 0x1

    .line 1191
    .local v46, "useBullets":Z
    :goto_9
    if-eqz v22, :cond_f

    .line 1192
    const v47, 0x7f0a08c0

    move/from16 v0, v47

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1197
    :goto_a
    const/16 v45, 0x0

    .line 1198
    .local v45, "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    const v48, 0x7f0f005e

    invoke-virtual/range {v47 .. v48}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 1200
    .local v17, "bulletIndent":I
    if-eqz v14, :cond_b

    .line 1201
    const v47, 0x7f0a08d6

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1202
    .local v13, "autoLaunchEnableText":Ljava/lang/CharSequence;
    new-instance v38, Landroid/text/SpannableString;

    move-object/from16 v0, v38

    invoke-direct {v0, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1203
    .local v38, "s":Landroid/text/SpannableString;
    if-eqz v46, :cond_a

    .line 1204
    new-instance v47, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v47

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v48, 0x0

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v49

    const/16 v50, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1206
    :cond_a
    if-nez v45, :cond_10

    const/16 v47, 0x2

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput-object v38, v47, v48

    const/16 v48, 0x1

    const-string v49, "\n"

    aput-object v49, v47, v48

    invoke-static/range {v47 .. v47}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v45

    .line 1209
    .end local v13    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .end local v38    # "s":Landroid/text/SpannableString;
    :cond_b
    :goto_b
    if-eqz v22, :cond_d

    .line 1210
    const v47, 0x7f0a08d7

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1212
    .local v9, "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    new-instance v38, Landroid/text/SpannableString;

    move-object/from16 v0, v38

    invoke-direct {v0, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1213
    .restart local v38    # "s":Landroid/text/SpannableString;
    if-eqz v46, :cond_c

    .line 1214
    new-instance v47, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v47

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v48, 0x0

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v49

    const/16 v50, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1217
    :cond_c
    if-nez v45, :cond_11

    const/16 v47, 0x2

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput-object v38, v47, v48

    const/16 v48, 0x1

    const-string v49, "\n"

    aput-object v49, v47, v48

    invoke-static/range {v47 .. v47}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v45

    .line 1220
    .end local v9    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    .end local v38    # "s":Landroid/text/SpannableString;
    :cond_d
    :goto_c
    move-object/from16 v0, v16

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    invoke-virtual/range {v47 .. v48}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 1189
    .end local v17    # "bulletIndent":I
    .end local v45    # "text":Ljava/lang/CharSequence;
    .end local v46    # "useBullets":Z
    :cond_e
    const/16 v46, 0x0

    goto/16 :goto_9

    .line 1194
    .restart local v46    # "useBullets":Z
    :cond_f
    const v47, 0x7f0a08bf

    move/from16 v0, v47

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_a

    .line 1206
    .restart local v13    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .restart local v17    # "bulletIndent":I
    .restart local v38    # "s":Landroid/text/SpannableString;
    .restart local v45    # "text":Ljava/lang/CharSequence;
    :cond_10
    const/16 v47, 0x4

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput-object v45, v47, v48

    const/16 v48, 0x1

    const-string v49, "\n"

    aput-object v49, v47, v48

    const/16 v48, 0x2

    aput-object v38, v47, v48

    const/16 v48, 0x3

    const-string v49, "\n"

    aput-object v49, v47, v48

    invoke-static/range {v47 .. v47}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v45

    goto/16 :goto_b

    .line 1217
    .end local v13    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .restart local v9    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    :cond_11
    const/16 v47, 0x4

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput-object v45, v47, v48

    const/16 v48, 0x1

    const-string v49, "\n"

    aput-object v49, v47, v48

    const/16 v48, 0x2

    aput-object v38, v47, v48

    const/16 v48, 0x3

    const-string v49, "\n"

    aput-object v49, v47, v48

    invoke-static/range {v47 .. v47}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v45

    goto :goto_c

    .line 1255
    .end local v9    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    .end local v17    # "bulletIndent":I
    .end local v38    # "s":Landroid/text/SpannableString;
    .end local v45    # "text":Ljava/lang/CharSequence;
    .end local v46    # "useBullets":Z
    .restart local v12    # "asp":Landroid/widget/AppSecurityPermissions;
    .restart local v31    # "permsView":Landroid/widget/LinearLayout;
    .restart local v35    # "premiumSmsPermission":I
    :cond_12
    const/16 v47, 0x8

    move-object/from16 v0, v31

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 1279
    .restart local v39    # "securityBillingDesc":Landroid/widget/TextView;
    .restart local v40    # "securityBillingList":Landroid/widget/LinearLayout;
    :cond_13
    const/16 v47, 0x8

    move-object/from16 v0, v39

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1280
    const/16 v47, 0x8

    move-object/from16 v0, v40

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 1300
    .restart local v30    # "packages":[Ljava/lang/String;
    .restart local v32    # "pkg":Ljava/lang/String;
    .restart local v33    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v41    # "securityList":Landroid/widget/LinearLayout;
    :cond_14
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v32

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 1301
    .local v8, "ainfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v8, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v47

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_8

    .line 1302
    .end local v8    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v47

    goto/16 :goto_8

    .line 1305
    .end local v32    # "pkg":Ljava/lang/String;
    :cond_15
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1306
    .local v5, "N":I
    if-lez v5, :cond_16

    .line 1307
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    .line 1309
    .local v36, "res":Landroid/content/res/Resources;
    const/16 v47, 0x1

    move/from16 v0, v47

    if-ne v5, v0, :cond_18

    .line 1310
    const/16 v47, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/CharSequence;

    invoke-interface/range {v47 .. v47}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1323
    .local v11, "appListStr":Ljava/lang/String;
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v47, v0

    const v48, 0x7f10020f

    invoke-virtual/range {v47 .. v48}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 1325
    .local v20, "descr":Landroid/widget/TextView;
    const v47, 0x7f0a0900

    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v50

    aput-object v50, v48, v49

    const/16 v49, 0x1

    aput-object v11, v48, v49

    move-object/from16 v0, v36

    move/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v20

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1331
    .end local v5    # "N":I
    .end local v11    # "appListStr":Ljava/lang/String;
    .end local v20    # "descr":Landroid/widget/TextView;
    .end local v30    # "packages":[Ljava/lang/String;
    .end local v33    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v36    # "res":Landroid/content/res/Resources;
    .end local v41    # "securityList":Landroid/widget/LinearLayout;
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 1333
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshButtons()V

    .line 1334
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 1335
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkAdminRestrictionOnButtons()V

    .line 1336
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkContainerRestrictionOnButtons()V

    .line 1337
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkContainerAuthorizedAppOnButtons()V

    .line 1341
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    move-result-object v19

    .line 1342
    .local v19, "cp":Lcom/sec/enterprise/knox/certificate/CertificatePolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v47, v0

    const v48, 0x7f100209

    invoke-virtual/range {v47 .. v48}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/LinearLayout;

    .line 1344
    .local v43, "signatureView":Landroid/widget/LinearLayout;
    if-eqz v19, :cond_1d

    const/16 v47, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Z)Z

    move-result v47

    if-eqz v47, :cond_1d

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v47, v0

    if-eqz v47, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    array-length v0, v0

    move/from16 v47, v0

    if-lez v47, :cond_1c

    .line 1346
    const/16 v47, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1347
    const v47, 0x7f10020a

    move-object/from16 v0, v43

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/LinearLayout;

    .line 1349
    .local v42, "signatureList":Landroid/widget/LinearLayout;
    const/16 v47, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1350
    invoke-virtual/range {v42 .. v42}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1351
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->setSignatureListView(Landroid/widget/LinearLayout;)V

    .line 1360
    .end local v42    # "signatureList":Landroid/widget/LinearLayout;
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mInitialized:Z

    move/from16 v47, v0

    if-nez v47, :cond_1f

    .line 1362
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/InstalledAppDetails;->mInitialized:Z

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v47, v0

    const/high16 v48, 0x800000

    and-int v47, v47, v48

    if-nez v47, :cond_1e

    const/16 v47, 0x1

    :goto_f
    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    .line 1383
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->applyKioskModePolicy(Ljava/lang/String;)V

    .line 1386
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 1311
    .end local v19    # "cp":Lcom/sec/enterprise/knox/certificate/CertificatePolicy;
    .end local v43    # "signatureView":Landroid/widget/LinearLayout;
    .restart local v5    # "N":I
    .restart local v30    # "packages":[Ljava/lang/String;
    .restart local v33    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v36    # "res":Landroid/content/res/Resources;
    .restart local v41    # "securityList":Landroid/widget/LinearLayout;
    :cond_18
    const/16 v47, 0x2

    move/from16 v0, v47

    if-ne v5, v0, :cond_19

    .line 1312
    const v47, 0x7f0a0901

    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    const/16 v50, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    aput-object v50, v48, v49

    const/16 v49, 0x1

    const/16 v50, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    aput-object v50, v48, v49

    move-object/from16 v0, v36

    move/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "appListStr":Ljava/lang/String;
    goto/16 :goto_d

    .line 1315
    .end local v11    # "appListStr":Ljava/lang/String;
    :cond_19
    add-int/lit8 v47, v5, -0x2

    move-object/from16 v0, v33

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/CharSequence;

    invoke-interface/range {v47 .. v47}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1316
    .restart local v11    # "appListStr":Ljava/lang/String;
    add-int/lit8 v25, v5, -0x3

    :goto_10
    if-ltz v25, :cond_1b

    .line 1317
    if-nez v25, :cond_1a

    const v47, 0x7f0a0903

    :goto_11
    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    aput-object v50, v48, v49

    const/16 v49, 0x1

    aput-object v11, v48, v49

    move-object/from16 v0, v36

    move/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1316
    add-int/lit8 v25, v25, -0x1

    goto :goto_10

    .line 1317
    :cond_1a
    const v47, 0x7f0a0904

    goto :goto_11

    .line 1320
    :cond_1b
    const v47, 0x7f0a0902

    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput-object v11, v48, v49

    const/16 v49, 0x1

    add-int/lit8 v50, v5, -0x1

    move-object/from16 v0, v33

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    aput-object v50, v48, v49

    move-object/from16 v0, v36

    move/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_d

    .line 1353
    .end local v5    # "N":I
    .end local v11    # "appListStr":Ljava/lang/String;
    .end local v30    # "packages":[Ljava/lang/String;
    .end local v33    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v36    # "res":Landroid/content/res/Resources;
    .end local v41    # "securityList":Landroid/widget/LinearLayout;
    .restart local v19    # "cp":Lcom/sec/enterprise/knox/certificate/CertificatePolicy;
    .restart local v43    # "signatureView":Landroid/widget/LinearLayout;
    :cond_1c
    const/16 v47, 0x8

    move-object/from16 v0, v43

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_e

    .line 1356
    :cond_1d
    const/16 v47, 0x8

    move-object/from16 v0, v43

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_e

    .line 1363
    :cond_1e
    const/16 v47, 0x0

    goto/16 :goto_f

    .line 1368
    :cond_1f
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, 0x2200

    invoke-virtual/range {v47 .. v49}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 1371
    .restart local v8    # "ainfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    move/from16 v47, v0

    if-nez v47, :cond_17

    .line 1375
    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v47, v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/high16 v48, 0x800000

    and-int v47, v47, v48

    if-eqz v47, :cond_20

    const/16 v47, 0x1

    goto/16 :goto_0

    :cond_20
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 1377
    .end local v8    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_2
    move-exception v21

    .line 1378
    .local v21, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v47, 0x0

    goto/16 :goto_0
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "title"    # Landroid/widget/TextView;
    .param p2, "autoLaunchView"    # Landroid/widget/TextView;

    .prologue
    .line 1426
    const v0, 0x7f0a08bf

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1427
    const v0, 0x7f0a08d8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1429
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1430
    return-void
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1089
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1090
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v4, "package"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1091
    .local v3, "packageName":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_0

    .line 1092
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1094
    .local v2, "intent":Landroid/content/Intent;
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1095
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 1100
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v4, v3}, Lcom/android/settings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 1101
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_4

    .line 1104
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x2240

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v4, v3

    .line 1116
    :goto_3
    return-object v4

    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    move-object v3, v5

    .line 1090
    goto :goto_0

    .line 1092
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v4, "intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object v2, v4

    goto :goto_1

    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_3
    move-object v4, v5

    .line 1097
    goto :goto_3

    .line 1108
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1109
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "InstalledAppDetails"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1112
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    const-string v4, "InstalledAppDetails"

    const-string v6, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iput-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 9
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v8, 0x0

    .line 999
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v4, 0x7f10005e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1000
    .local v0, "appSnippet":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v8, v3, v8, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1002
    const v3, 0x7f100059

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1003
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/ApplicationsState;->ensureIcon(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V

    .line 1004
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1006
    const v3, 0x7f10005a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1007
    .local v2, "label":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    const v3, 0x7f100254

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    .line 1011
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1012
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1013
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a090a

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    :goto_0
    return-void

    .line 1016
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 4
    .param p1, "finish"    # Z
    .param p2, "appChanged"    # Z

    .prologue
    const/4 v3, -0x1

    .line 1554
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1555
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1556
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_0

    .line 1557
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 1558
    .local v1, "sa":Landroid/preference/PreferenceActivity;
    invoke-virtual {v1, p0, v3, v0}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 1563
    .end local v1    # "sa":Landroid/preference/PreferenceActivity;
    :goto_0
    return-void

    .line 1560
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 1561
    .local v1, "sa":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v1, p0, v3, v0}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private setNotificationsEnabled(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    .line 2073
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2075
    .local v4, "packageName":Ljava/lang/String;
    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2081
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v5, "notification"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 2084
    .local v3, "nm":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    .line 2085
    .local v1, "enable":Z
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v3, v4, v5, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2089
    .end local v1    # "enable":Z
    :goto_0
    return-void

    .line 2086
    :catch_0
    move-exception v2

    .line 2087
    .local v2, "ex":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-nez p1, :cond_0

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v6, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private setSignatureListView(Landroid/widget/LinearLayout;)V
    .locals 16
    .param p1, "signatureList"    # Landroid/widget/LinearLayout;

    .prologue
    .line 1433
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    move-result-object v1

    .line 1434
    .local v1, "cp":Lcom/sec/enterprise/knox/certificate/CertificatePolicy;
    const/4 v4, 0x0

    .line 1435
    .local v4, "identities":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 1436
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {v1, v14}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getIdentitiesFromSignatures([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v4

    .line 1438
    :cond_0
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v8, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1441
    .local v8, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 1442
    .local v5, "identity":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 1445
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v14, 0x109003f

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1447
    .local v10, "permsView":Landroid/widget/LinearLayout;
    const v14, 0x102035e

    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 1449
    .local v9, "permsList":Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080577

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1451
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    const v14, 0x109003c

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .line 1453
    .local v12, "signView":Landroid/widget/AppSecurityPermissions$PermissionItemView;
    const v14, 0x1020358

    invoke-virtual {v12, v14}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1455
    .local v11, "primaryView":Landroid/widget/TextView;
    const v14, 0x1020357

    invoke-virtual {v12, v14}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1457
    .local v6, "imgView":Landroid/widget/ImageView;
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1458
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v14, v5, v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1459
    .local v13, "text":Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v14, v5, v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1

    .line 1460
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v5, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1462
    :cond_1
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1463
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->setClickable(Z)V

    .line 1464
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1465
    invoke-virtual {v9, v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1466
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1468
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "identity":[Ljava/lang/String;
    .end local v6    # "imgView":Landroid/widget/ImageView;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    .end local v9    # "permsList":Landroid/widget/LinearLayout;
    .end local v10    # "permsView":Landroid/widget/LinearLayout;
    .end local v11    # "primaryView":Landroid/widget/TextView;
    .end local v12    # "signView":Landroid/widget/AppSecurityPermissions$PermissionItemView;
    .end local v13    # "text":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private showDialogInner(II)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "moveErrorCode"    # I

    .prologue
    .line 1732
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->newInstance(II)Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object v1

    .line 1733
    .local v1, "newFragment":Landroid/app/DialogFragment;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1734
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dialog "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1740
    .end local v1    # "newFragment":Landroid/app/DialogFragment;
    :goto_0
    return-void

    .line 1735
    :catch_0
    move-exception v0

    .line 1736
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "InstalledAppDetails"

    const-string v3, "Nullpointer exception in showDialogInner"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1737
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1738
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "InstalledAppDetails"

    const-string v3, "Illegal State exception in showDialogInner"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .prologue
    .line 1120
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1122
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1123
    .local v0, "match":I
    if-ltz v0, :cond_0

    .line 1124
    const/4 v1, 0x1

    .line 1131
    .end local v0    # "match":I
    :goto_0
    return v1

    .line 1126
    :catch_0
    move-exception v1

    .line 1131
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # Z
    .param p3, "andDisable"    # Z

    .prologue
    .line 1953
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1954
    .local v1, "packageURI":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1955
    .local v2, "uninstallIntent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1956
    const-string v3, "isKNOX3rdApp"

    sget-boolean v4, Lcom/android/settings/applications/InstalledAppDetails;->mIsKNOX3rdpartyApp:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1958
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1962
    :goto_0
    iput-boolean p3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 1963
    return-void

    .line 1959
    :catch_0
    move-exception v0

    .line 1960
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string v3, "InstalledAppDetails"

    const-string v4, "uninstallPkg Couldn\'t start play store activity"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateButtonsForOperator()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2042
    const-string v0, "com.wssyncmldm"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sec.android.fotaclient"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2044
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2045
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2050
    :cond_1
    :goto_0
    return-void

    .line 2046
    :cond_2
    const-string v0, "com.ws.dm"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2047
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2048
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateForceStopButton(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1985
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v0, :cond_0

    .line 1986
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1991
    :goto_0
    return-void

    .line 1988
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1989
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAdminRestrictionOnButtons()V
    .locals 5

    .prologue
    .line 1472
    :try_start_0
    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->isStopSystemAppAllowed:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->isStopSystemAppAllowed:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1473
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v3, "android"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1475
    .local v1, "sys":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1477
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1478
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1479
    const-string v2, "InstalledAppDetails"

    const-string v3, "checking mUninstallButton disabled"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1485
    .end local v1    # "sys":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 1482
    :catch_0
    move-exception v0

    .line 1483
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "InstalledAppDetails"

    const-string v3, "Unable to get package info"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkKnox(I)V
    .locals 4
    .param p1, "requestCode"    # I

    .prologue
    const/high16 v3, 0x20000

    .line 2240
    const-string v1, "InstalledAppDetails"

    const-string v2, "checkKnox() start"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    const/16 v1, 0xc

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb

    if-ne p1, v1, :cond_2

    .line 2242
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.containeragent.password_verify_from_Cleandata"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2243
    .local v0, "knoxverifyintent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2244
    const-string v1, "isKNOX3rdApp"

    sget-boolean v2, Lcom/android/settings/applications/InstalledAppDetails;->mIsKNOX3rdpartyApp:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2245
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2246
    const-string v1, "InstalledAppDetails"

    const-string v2, "checkKnox(KNOX_VERIFY_CLEAR_USER_DATA || KNOX_VERIFY_CLEAR_CACHE)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    .end local v0    # "knoxverifyintent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 2248
    :cond_2
    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    .line 2249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.containeragent.password_verify_from_UninstallApp"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2250
    .restart local v0    # "knoxverifyintent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2251
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2252
    const-string v1, "InstalledAppDetails"

    const-string v2, "checkKnox(KNOX_VERIFY_UNINSTALL)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v5, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 937
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 938
    if-ne p1, v7, :cond_2

    .line 939
    iget-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v3, :cond_0

    .line 940
    iput-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 942
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x2200

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 945
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    .line 946
    new-instance v4, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v3, v5}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v3

    if-nez v3, :cond_1

    .line 954
    invoke-direct {p0, v7, v7}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 995
    :cond_1
    :goto_1
    return-void

    .line 956
    :cond_2
    const/16 v4, 0xb

    if-ne p1, v4, :cond_4

    if-ne p2, v5, :cond_4

    .line 957
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 958
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v3, :cond_3

    .line 959
    new-instance v3, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    .line 961
    :cond_3
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto :goto_1

    .line 962
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_4
    const/16 v4, 0xc

    if-ne p1, v4, :cond_6

    if-ne p2, v5, :cond_6

    .line 963
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 964
    .restart local v2    # "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 965
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-nez v3, :cond_1

    .line 966
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 967
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    invoke-virtual {p0, v1, v8}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 972
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-direct {p0, v7, v6}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_1

    .line 974
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_6
    const/16 v4, 0xd

    if-ne p1, v4, :cond_1

    if-ne p2, v5, :cond_1

    .line 975
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 976
    .restart local v2    # "packageName":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v4, :cond_7

    .line 977
    invoke-direct {p0, v8, v6}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_1

    .line 979
    :cond_7
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    .line 981
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_8

    .line 982
    const/4 v3, 0x7

    invoke-direct {p0, v3, v6}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_1

    .line 984
    :cond_8
    new-instance v4, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v5, v7, [Ljava/lang/Object;

    check-cast v3, Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 988
    :cond_9
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    if-nez v3, :cond_a

    .line 989
    invoke-direct {p0, v2, v7, v6}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 991
    :cond_a
    invoke-direct {p0, v2, v6, v6}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 950
    .end local v2    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 1060
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2203
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2204
    .local v1, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2205
    .local v2, "uid":I
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2207
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v5, :cond_1

    .line 2208
    invoke-virtual {v0, v1, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 2225
    :cond_0
    :goto_0
    return-void

    .line 2209
    :cond_1
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v5, :cond_3

    .line 2210
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    .line 2212
    :cond_3
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-ne p1, v5, :cond_5

    .line 2213
    if-nez p2, :cond_4

    .line 2214
    const/16 v3, 0x8

    invoke-direct {p0, v3, v4}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 2216
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    goto :goto_0

    .line 2218
    :cond_5
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAutoStartSwitch:Landroid/widget/CompoundButton;

    if-ne p1, v3, :cond_0

    .line 2219
    if-nez p2, :cond_6

    .line 2220
    const/16 v3, 0xa

    invoke-direct {p0, v3, v4}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 2222
    :cond_6
    sget-object v3, Lcom/android/settings/applications/InstalledAppDetails;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x35

    invoke-virtual {v3, v5, v2, v1, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x7

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 2107
    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-nez v8, :cond_1

    .line 2109
    invoke-virtual {p1, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 2199
    :cond_0
    :goto_0
    return-void

    .line 2112
    :cond_1
    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2113
    .local v5, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v8, :cond_7

    .line 2114
    const-string v8, "sec_container_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2115
    const/16 v6, 0xd

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->checkKnox(I)V

    goto :goto_0

    .line 2117
    :cond_2
    iget-boolean v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v8, :cond_3

    .line 2118
    invoke-direct {p0, v4, v10}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 2120
    :cond_3
    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_5

    .line 2121
    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v8, :cond_4

    .line 2122
    invoke-direct {p0, v11, v10}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 2124
    :cond_4
    new-instance v8, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v9, v9, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v8, p0, v9, v10}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v7, v7, [Ljava/lang/Object;

    check-cast v6, Ljava/lang/Object;

    aput-object v6, v7, v10

    invoke-virtual {v8, v7}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 2128
    :cond_5
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x800000

    and-int/2addr v6, v8

    if-nez v6, :cond_6

    .line 2129
    invoke-direct {p0, v5, v7, v10}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 2131
    :cond_6
    invoke-direct {p0, v5, v10, v10}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 2135
    :cond_7
    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    if-ne p1, v8, :cond_a

    .line 2136
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ATT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2138
    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v8, :cond_8

    .line 2140
    invoke-direct {p0, v11, v10}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 2143
    :cond_8
    new-instance v8, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v9, v9, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v8, p0, v9, v10}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v7, v7, [Ljava/lang/Object;

    check-cast v6, Ljava/lang/Object;

    aput-object v6, v7, v10

    invoke-virtual {v8, v7}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 2148
    :cond_9
    const/16 v6, 0x9

    invoke-direct {p0, v6, v10}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 2149
    :cond_a
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_b

    .line 2150
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 2152
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-interface {v6, v5, v7}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2156
    :goto_1
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v6, v5, v10}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 2157
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v7, 0x7f100203

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2159
    .local v0, "autoLaunchTitleView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v7, 0x7f100204

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2160
    .local v1, "autoLaunchView":Landroid/widget/TextView;
    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 2153
    .end local v0    # "autoLaunchTitleView":Landroid/widget/TextView;
    .end local v1    # "autoLaunchView":Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 2154
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "InstalledAppDetails"

    const-string v7, "mUsbManager.clearDefaults"

    invoke-static {v6, v7, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2161
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_b
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_e

    .line 2162
    const-string v6, "sec_container_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2163
    const/16 v6, 0xc

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->checkKnox(I)V

    goto/16 :goto_0

    .line 2165
    :cond_c
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v6, :cond_d

    .line 2166
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2167
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2168
    .local v3, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2170
    invoke-virtual {p0, v3, v4}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2173
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_d
    invoke-direct {p0, v7, v10}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 2176
    :cond_e
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_11

    .line 2177
    const-string v6, "sec_container_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2178
    const/16 v6, 0xb

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->checkKnox(I)V

    goto/16 :goto_0

    .line 2181
    :cond_f
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v6, :cond_10

    .line 2182
    new-instance v6, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v6, p0}, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    .line 2184
    :cond_10
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto/16 :goto_0

    .line 2186
    :cond_11
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_12

    .line 2187
    const/4 v6, 0x5

    invoke-direct {p0, v6, v10}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 2189
    :cond_12
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_0

    .line 2190
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v6, :cond_13

    .line 2191
    new-instance v6, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v6, p0}, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    .line 2193
    :cond_13
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x40000

    and-int/2addr v6, v8

    if-eqz v6, :cond_14

    move v4, v7

    .line 2195
    .local v4, "moveFlags":I
    :cond_14
    iput-boolean v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 2196
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshButtons()V

    .line 2197
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v6, v7, v8, v4}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 760
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 762
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    .line 763
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v2, p0}, Lcom/android/settings/applications/ApplicationsState;->newSession(Lcom/android/settings/applications/ApplicationsState$Callbacks;)Lcom/android/settings/applications/ApplicationsState$Session;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    .line 764
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 765
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    .line 766
    const-string v2, "usb"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 767
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 768
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 769
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 770
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    .line 771
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "appops"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    sput-object v2, Lcom/android/settings/applications/InstalledAppDetails;->mAppOps:Landroid/app/AppOpsManager;

    .line 773
    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "false"

    aput-object v3, v1, v2

    .line 774
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSDCardMoveAllowed"

    invoke-static {v2, v3, v4, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->isSDCardMoveAllowed:I

    .line 775
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isStopSystemAppAllowed"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->isStopSystemAppAllowed:I

    .line 777
    new-instance v2, Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-direct {v2}, Lcom/android/settings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    .line 789
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v2}, Lcom/android/settings/applications/ApplicationsState$Session;->resume()V

    .line 791
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 793
    invoke-virtual {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    .line 794
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 902
    const v0, 0x7f0a08d0

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 904
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 799
    const v11, 0x7f0400eb

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 801
    .local v10, "view":Landroid/view/View;
    const v11, 0x7f10005d

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 802
    .local v2, "allDetails":Landroid/view/ViewGroup;
    const/4 v11, 0x1

    invoke-static {v2, v11}, Lcom/android/settings/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    .line 804
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    .line 805
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0a0907

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    .line 808
    const v11, 0x7f1001f3

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    .line 809
    const v11, 0x7f1001f5

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    .line 810
    const v11, 0x7f1001fa

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    .line 811
    const v11, 0x7f1001f7

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    .line 812
    const v11, 0x7f1001fc

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    .line 820
    const v11, 0x7f1001ed

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 821
    .local v4, "btnPanel":Landroid/view/View;
    const v11, 0x7f100320

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 822
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v12, 0x7f0a08c9

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(I)V

    .line 823
    const v11, 0x7f10031f

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 824
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 827
    const v11, 0x7f1001ee

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    .line 828
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    const v12, 0x7f100320

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 829
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    const v12, 0x7f10031f

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    .line 830
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 833
    const v11, 0x7f1001fd

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 834
    .local v5, "data_buttons_panel":Landroid/view/View;
    const v11, 0x7f10031f

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    .line 835
    const v11, 0x7f100320

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    .line 838
    const v11, 0x7f100201

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    .line 839
    const v11, 0x7f100202

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    .line 841
    const v11, 0x7f100205

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    .line 844
    const v11, 0x7f100206

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    .line 845
    const v11, 0x7f100207

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    .line 846
    const v11, 0x7f100208

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    .line 848
    const v11, 0x7f1001ef

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CompoundButton;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    .line 849
    const v11, 0x7f1001f0

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CompoundButton;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAutoStartSwitch:Landroid/widget/CompoundButton;

    .line 850
    invoke-static {}, Lcom/android/settings/Utils;->isChinaNAL()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-nez v11, :cond_8

    .line 851
    const/4 v7, 0x0

    .line 852
    .local v7, "hasAuto":Z
    const/4 v9, 0x0

    .line 855
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v12, v12, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v13, 0x1000

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 862
    :goto_0
    if-eqz v9, :cond_2

    .line 864
    iget-object v3, v9, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 866
    .local v3, "app_permissions":[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 867
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v11, v3

    if-ge v8, v11, :cond_1

    .line 868
    aget-object v11, v3, v8

    const-string v12, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 869
    const/4 v7, 0x1

    .line 867
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 856
    .end local v3    # "app_permissions":[Ljava/lang/String;
    .end local v8    # "i":I
    :catch_0
    move-exception v6

    .line 857
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 858
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v6

    .line 859
    .local v6, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 873
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "app_permissions":[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAutoStartSwitch:Landroid/widget/CompoundButton;

    sget-object v11, Lcom/android/settings/applications/InstalledAppDetails;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v13, 0x35

    iget-object v14, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v15, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13, v14, v15}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v11

    if-nez v11, :cond_5

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 876
    .end local v3    # "app_permissions":[Ljava/lang/String;
    :cond_2
    if-nez v7, :cond_6

    .line 877
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAutoStartSwitch:Landroid/widget/CompoundButton;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 878
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAutoStartSwitch:Landroid/widget/CompoundButton;

    const v12, -0x777778

    invoke-virtual {v11, v12}, Landroid/widget/CompoundButton;->setTextColor(I)V

    .line 882
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v11, :cond_4

    .line 883
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v11, v11, 0x80

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_3

    const-string v11, "com.wsdm"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v12, v12, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 886
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v12, "android.permission.RECEIVE_BOOT_COMPLETED"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v13, v13, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_4

    if-nez v7, :cond_4

    .line 888
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAutoStartSwitch:Landroid/widget/CompoundButton;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 897
    .end local v7    # "hasAuto":Z
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    :goto_4
    return-object v10

    .line 873
    .restart local v3    # "app_permissions":[Ljava/lang/String;
    .restart local v7    # "hasAuto":Z
    .restart local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 881
    .end local v3    # "app_permissions":[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAutoStartSwitch:Landroid/widget/CompoundButton;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_3

    .line 891
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAutoStartSwitch:Landroid/widget/CompoundButton;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_4

    .line 895
    .end local v7    # "hasAuto":Z
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAutoStartSwitch:Landroid/widget/CompoundButton;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_4
.end method

.method public onDestroyView()V
    .locals 5

    .prologue
    .line 1040
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1041
    .local v2, "id":I
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    .line 1042
    .local v0, "dialog":Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1043
    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->dismiss()V

    .line 1044
    :cond_0
    const/4 v0, 0x0

    .line 1045
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/settings/applications/InstalledAppDetails;->isDisableNotificationDialogVisible:Z

    .line 1046
    const-string v3, "InstalledAppDetails"

    const-string v4, "Destroy"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1054
    .end local v0    # "dialog":Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;
    .end local v2    # "id":I
    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 1055
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v3}, Lcom/android/settings/applications/ApplicationsState$Session;->release()V

    .line 1056
    return-void

    .line 1047
    :catch_0
    move-exception v1

    .line 1048
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v3, "InstalledAppDetails"

    const-string v4, "Nullpointer exception in DestroyView"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1049
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1050
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v3, "InstalledAppDetails"

    const-string v4, "Illegal State exception in DestroyView"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1051
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 1052
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "InstalledAppDetails"

    const-string v4, "ClassCastException in DestroyView"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 927
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 928
    .local v0, "menuId":I
    if-ne v0, v1, :cond_0

    .line 929
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 932
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 1064
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 1068
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    .line 1069
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1077
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 1082
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1033
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1034
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->pause()V

    .line 1035
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 908
    const/4 v0, 0x1

    .line 909
    .local v0, "showIt":Z
    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_1

    .line 910
    const/4 v0, 0x0

    .line 922
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 923
    return-void

    .line 911
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_2

    .line 912
    const/4 v0, 0x0

    goto :goto_0

    .line 913
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 914
    const/4 v0, 0x0

    goto :goto_0

    .line 915
    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 916
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 917
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_6

    .line 918
    const/4 v0, 0x0

    goto :goto_0

    .line 919
    :cond_6
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 920
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1073
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1022
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1024
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_control_apps"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    .line 1025
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->resume()V

    .line 1026
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1027
    invoke-direct {p0, v2, v2}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 1029
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 1086
    return-void
.end method
