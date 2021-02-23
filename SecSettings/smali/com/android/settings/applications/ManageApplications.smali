.class public Lcom/android/settings/applications/ManageApplications;
.super Landroid/app/Fragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/settings/applications/AppClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;,
        Lcom/android/settings/applications/ManageApplications$TabInfo;
    }
.end annotation


# static fields
.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private mActivityResumed:Z

.field private mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private final mContainerConnection:Landroid/content/ServiceConnection;

.field private volatile mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContentContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDefaultListType:I

.field private mHideTabs:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mNumTabs:I

.field private mOptionsMenu:Landroid/view/Menu;

.field private mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

.field mResetDialog:Landroid/app/AlertDialog;

.field private mRootView:Landroid/view/View;

.field private mShowBackground:Z

.field private mSortOrder:I

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ManageApplications$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field public mcurrentorder:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 201
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 202
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mcurrentorder:Z

    .line 211
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mHideTabs:Z

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 531
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 533
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    .line 1488
    new-instance v0, Lcom/android/settings/applications/ManageApplications$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$2;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ManageApplications;)Lcom/android/settings/UserSpinnerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/ManageApplications;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 160
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mNumTabs:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/applications/ManageApplications;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/applications/ManageApplications;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 160
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/settings/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/applications/ManageApplications;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/ManageApplications;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0a08bd

    const/4 v6, 0x1

    .line 1176
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1177
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    .line 1180
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 1181
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1188
    .end local v0    # "sa":Lcom/android/settings/SettingsActivity;
    :goto_0
    return-void

    .line 1184
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1185
    .local v0, "sa":Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method private updateNumTabs()V
    .locals 2

    .prologue
    .line 1154
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/android/settings/applications/ApplicationsState;->haveDisabledApps()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1155
    .local v0, "newNum":I
    :goto_0
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mNumTabs:I

    if-eq v0, v1, :cond_0

    .line 1156
    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mNumTabs:I

    .line 1157
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 1158
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 1161
    :cond_0
    return-void

    .line 1154
    .end local v0    # "newNum":I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    .prologue
    .line 1317
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1318
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1319
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a08e3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1320
    const v1, 0x7f0a08e4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1321
    const v1, 0x7f0a08e5

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1322
    const v1, 0x7f0a01cf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1323
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1324
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1326
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1130
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1133
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1339
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1340
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 1342
    .local v4, "mIPm":Landroid/content/pm/IPackageManager;
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 1344
    .local v3, "nm":Landroid/app/INotificationManager;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v6

    .line 1345
    .local v6, "npm":Landroid/net/NetworkPolicyManager;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    .line 1347
    .local v5, "aom":Landroid/app/AppOpsManager;
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1348
    .local v7, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/android/settings/applications/ManageApplications$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/applications/ManageApplications$1;-><init>(Lcom/android/settings/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/content/pm/IPackageManager;Landroid/app/AppOpsManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1409
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "nm":Landroid/app/INotificationManager;
    .end local v4    # "mIPm":Landroid/content/pm/IPackageManager;
    .end local v5    # "aom":Landroid/app/AppOpsManager;
    .end local v6    # "npm":Landroid/net/NetworkPolicyManager;
    .end local v7    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 917
    invoke-super/range {p0 .. p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 918
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/applications/ManageApplications;->sSalesCode:Ljava/lang/String;

    .line 919
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mContext:Landroid/content/Context;

    .line 922
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    .line 923
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 924
    .local v13, "intent":Landroid/content/Intent;
    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 925
    .local v8, "action":Ljava/lang/String;
    const/4 v11, 0x0

    .line 926
    .local v11, "defaultListType":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "classname"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 928
    .local v9, "className":Ljava/lang/String;
    :goto_0
    if-nez v9, :cond_0

    .line 929
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 931
    :cond_0
    const-class v2, Lcom/android/settings/Settings$RunningServicesActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".RunningServices"

    invoke-virtual {v9, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 933
    :cond_1
    const/4 v11, 0x1

    .line 944
    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    .line 945
    const-string v2, "sortOrder"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 946
    const-string v2, "defaultListType"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 947
    .local v15, "tmp":I
    const/4 v2, -0x1

    if-eq v15, v2, :cond_3

    move v11, v15

    .line 948
    :cond_3
    const-string v2, "showBackground"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 952
    .end local v15    # "tmp":I
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_ATT_Device_Health_Enabled"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 953
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "hidetabs"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/applications/ManageApplications;->mHideTabs:Z

    .line 958
    :cond_5
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    .line 960
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/android/settings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v10

    .line 962
    .local v10, "containerIntent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v10, v3, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 964
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0908

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 965
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0907

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 969
    .local v14, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0f0007

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 972
    .local v12, "divider_inset_size":I
    new-instance v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f0a08eb

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 976
    .local v1, "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iput v12, v1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListdividerInsetSize:I

    .line 978
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    new-instance v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .end local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f0a08ed

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v2, p0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 985
    .restart local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iput v12, v1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListdividerInsetSize:I

    .line 987
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    new-instance v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .end local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f0a08ec

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v2, p0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 994
    .restart local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iput v12, v1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListdividerInsetSize:I

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    new-instance v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .end local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f0a08e9

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    move-object/from16 v2, p0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 1002
    .restart local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iput v12, v1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListdividerInsetSize:I

    .line 1004
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    new-instance v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .end local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f0a08ea

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    move-object/from16 v2, p0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 1010
    .restart local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iput v12, v1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListdividerInsetSize:I

    .line 1012
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/applications/ManageApplications;->mNumTabs:I

    .line 1016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/UserManager;

    .line 1017
    .local v16, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings/UserSpinnerAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    .line 1018
    return-void

    .line 926
    .end local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    .end local v9    # "className":Ljava/lang/String;
    .end local v10    # "containerIntent":Landroid/content/Intent;
    .end local v12    # "divider_inset_size":I
    .end local v14    # "resources":Landroid/content/res/Resources;
    .end local v16    # "um":Landroid/os/UserManager;
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 934
    .restart local v9    # "className":Ljava/lang/String;
    :cond_7
    const-class v2, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, ".StorageUse"

    invoke-virtual {v9, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 937
    :cond_8
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 938
    const/4 v11, 0x3

    goto/16 :goto_1

    .line 939
    :cond_9
    const-string v2, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 941
    const/4 v11, 0x3

    goto/16 :goto_1

    .line 953
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x3

    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 1192
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1195
    const/4 v0, 0x4

    const v1, 0x7f0a08de

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1198
    const/4 v0, 0x5

    const v1, 0x7f0a08df

    invoke-interface {p1, v3, v0, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1201
    const-string v0, "VZW"

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    const/16 v0, 0x9

    const v1, 0x7f0a004d

    invoke-interface {p1, v3, v0, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1206
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1207
    const v0, 0x7f0a08e0

    invoke-interface {p1, v3, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1209
    const/4 v0, 0x7

    const v1, 0x7f0a08e1

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1217
    :goto_0
    const/16 v0, 0x8

    const/4 v1, 0x4

    const v2, 0x7f0a08e2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1220
    const-string v0, "VZW"

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1221
    const/16 v0, 0xa

    const v1, 0x7f0a004e

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1225
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1226
    return-void

    .line 1212
    :cond_2
    const v0, 0x7f0a08e0

    invoke-interface {p1, v3, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1214
    const/4 v0, 0x7

    const v1, 0x7f0a08e1

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, -0x1

    .line 1024
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 1026
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f04010d

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 1028
    .local v4, "rootView":Landroid/view/View;
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    .line 1029
    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 1031
    const v7, 0x7f100066

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    iput-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 1032
    new-instance v0, Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    .line 1033
    .local v0, "adapter":Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1034
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1035
    const v7, 0x7f100067

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/PagerTabStrip;

    .line 1036
    .local v6, "tabs":Landroid/support/v4/view/PagerTabStrip;
    const v7, 0x7f09004f

    invoke-virtual {v6, v7}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 1038
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_ATT_Device_Health_Enabled"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/settings/applications/ManageApplications;->mHideTabs:Z

    if-eqz v7, :cond_0

    .line 1039
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/support/v4/view/PagerTabStrip;->setVisibility(I)V

    .line 1046
    :cond_0
    instance-of v7, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v7, :cond_1

    .line 1047
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 1050
    :cond_1
    if-eqz p3, :cond_2

    const-string v7, "resetDialog"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1051
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->buildResetDialog()V

    .line 1054
    :cond_2
    if-nez p3, :cond_3

    .line 1056
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "currentListType"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1058
    .local v2, "extraCurrentListType":I
    if-eq v2, v10, :cond_4

    move v1, v2

    .line 1060
    .local v1, "currentListType":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v7, p0, Lcom/android/settings/applications/ManageApplications;->mNumTabs:I

    if-ge v3, v7, :cond_3

    .line 1061
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 1062
    .local v5, "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iget v7, v5, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v7, v1, :cond_5

    .line 1063
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1069
    .end local v1    # "currentListType":I
    .end local v2    # "extraCurrentListType":I
    .end local v3    # "i":I
    .end local v5    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_3
    return-object v4

    .line 1058
    .restart local v2    # "extraCurrentListType":I
    :cond_4
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    goto :goto_0

    .line 1060
    .restart local v1    # "currentListType":I
    .restart local v3    # "i":I
    .restart local v5    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1240
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1241
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1242
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 1235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1236
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 1119
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 1122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1123
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$TabInfo;->detachView()V

    .line 1124
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$TabInfo;->release()V

    .line 1122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1126
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1333
    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/android/settings/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "tab"    # Lcom/android/settings/applications/ManageApplications$TabInfo;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # I
    .param p5, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/ManageApplications$TabInfo;",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1453
    .local p2, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p4, :cond_0

    .line 1454
    iget-object v1, p1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1455
    .local v0, "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 1456
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 1458
    .end local v0    # "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1137
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    invoke-virtual {v3, p3}, Lcom/android/settings/UserSpinnerAdapter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1138
    .local v2, "selectedUser":Landroid/os/UserHandle;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 1139
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.APPLICATION_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1140
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1141
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1142
    .local v0, "currentTab":I
    const-string v4, "currentListType"

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v3, v3, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1143
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1144
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 1146
    .end local v0    # "currentTab":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1151
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1413
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 1414
    .local v1, "menuId":I
    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    const/4 v4, 0x5

    if-ne v1, v4, :cond_4

    .line 1415
    :cond_0
    iput v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 1417
    iget-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mcurrentorder:Z

    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->mcurrentorder:Z

    .line 1419
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v2, :cond_2

    .line 1420
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    .line 1447
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    move v2, v3

    .line 1448
    :cond_3
    return v2

    .line 1422
    :cond_4
    const/4 v4, 0x6

    if-ne v1, v4, :cond_5

    .line 1423
    iput-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 1424
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v4}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1200(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1425
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v4}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1200(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v4

    iget-object v4, v4, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1427
    :cond_5
    const/4 v4, 0x7

    if-ne v1, v4, :cond_6

    .line 1428
    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 1429
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1200(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1430
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1200(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1432
    :cond_6
    const/16 v4, 0x8

    if-ne v1, v4, :cond_7

    .line 1433
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->buildResetDialog()V

    goto :goto_0

    .line 1434
    :cond_7
    const/16 v4, 0x9

    if-ne v1, v4, :cond_8

    .line 1435
    iput v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 1436
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v2, :cond_2

    .line 1437
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0

    .line 1439
    :cond_8
    const/16 v4, 0xa

    if-ne v1, v4, :cond_3

    .line 1440
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1441
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v4, "com.android.settings.applications.UninstallMultipleScreen"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1442
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1101
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1102
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 1103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1104
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$TabInfo;->pause()V

    .line 1103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1106
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1230
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1231
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1079
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1080
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 1081
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->updateCurrentTab(I)V

    .line 1082
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->updateNumTabs()V

    .line 1083
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1084
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1088
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1089
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1090
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1091
    const-string v0, "defaultListType"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1093
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1094
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1095
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1097
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1074
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1075
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1110
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1111
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1115
    :cond_0
    return-void
.end method

.method tabForType(I)Lcom/android/settings/applications/ManageApplications$TabInfo;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 1164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1165
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 1166
    .local v1, "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iget v2, v1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v2, p1, :cond_0

    .line 1170
    .end local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :goto_1
    return-object v1

    .line 1164
    .restart local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1170
    .end local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateCurrentTab(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 1461
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 1462
    .local v3, "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 1465
    iget-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v4, :cond_1

    .line 1466
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/settings/applications/ManageApplications$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1467
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v5, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$TabInfo;->resume(I)V

    .line 1471
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1472
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 1473
    .local v2, "t":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eq v2, v4, :cond_0

    .line 1474
    invoke-virtual {v2}, Lcom/android/settings/applications/ManageApplications$TabInfo;->pause()V

    .line 1471
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1469
    .end local v1    # "i":I
    .end local v2    # "t":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/settings/applications/ManageApplications$TabInfo;->pause()V

    goto :goto_0

    .line 1478
    .restart local v1    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/settings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 1479
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1480
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1481
    .local v0, "host":Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 1482
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1484
    :cond_3
    return-void
.end method

.method updateOptionsMenu()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1245
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v4, :cond_1

    .line 1314
    :cond_0
    :goto_0
    return-void

    .line 1253
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v4, v4, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v4, v3, :cond_6

    .line 1254
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/ManageApplications;->tabForType(I)Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-result-object v1

    .line 1255
    .local v1, "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1200(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1200(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v4

    iget-object v4, v4, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v4}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    .line 1257
    .local v0, "showingBackground":Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1258
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1259
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1260
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_5

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1261
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1262
    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 1263
    const-string v3, "VZW"

    sget-object v4, Lcom/android/settings/applications/ManageApplications;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1264
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x9

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1265
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1302
    .end local v0    # "showingBackground":Z
    .end local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_2
    :goto_3
    const-string v3, "VZW"

    sget-object v4, Lcom/android/settings/applications/ManageApplications;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1303
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v3, :cond_0

    .line 1304
    const/4 v1, 0x0

    .line 1305
    .restart local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v3, v3, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v3, v3, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1306
    :cond_3
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v3, v3, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/ManageApplications;->tabForType(I)Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-result-object v1

    .line 1307
    iget-object v3, v1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 1308
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 1255
    goto/16 :goto_1

    .restart local v0    # "showingBackground":Z
    :cond_5
    move v3, v2

    .line 1260
    goto :goto_2

    .line 1268
    .end local v0    # "showingBackground":Z
    .end local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_6
    const-string v4, "VZW"

    sget-object v5, Lcom/android/settings/applications/ManageApplications;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1269
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/applications/ManageApplications;->mcurrentorder:Z

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1270
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mcurrentorder:Z

    if-nez v4, :cond_7

    move v4, v3

    :goto_4
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1276
    :goto_5
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1277
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1278
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v5, 0x8

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1280
    const-string v4, "VZW"

    sget-object v5, Lcom/android/settings/applications/ManageApplications;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1281
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1282
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v5, 0x9

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_7
    move v4, v2

    .line 1270
    goto :goto_4

    .line 1272
    :cond_8
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v6, :cond_9

    move v4, v3

    :goto_6
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1273
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v7, :cond_a

    move v4, v3

    :goto_7
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    :cond_9
    move v4, v2

    .line 1272
    goto :goto_6

    :cond_a
    move v4, v2

    .line 1273
    goto :goto_7
.end method
