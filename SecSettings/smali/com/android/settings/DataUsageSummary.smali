.class public Lcom/android/settings/DataUsageSummary;
.super Lcom/android/settings/HighlightingFragment;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DataUsageSummary$UidDetailTask;,
        Lcom/android/settings/DataUsageSummary$DeniedBackgroundTraffic;,
        Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;,
        Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;,
        Lcom/android/settings/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/settings/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/settings/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/settings/DataUsageSummary$AppDetailsFragment;,
        Lcom/android/settings/DataUsageSummary$DataUsageAdapter;,
        Lcom/android/settings/DataUsageSummary$AppItem;,
        Lcom/android/settings/DataUsageSummary$CycleAdapter;,
        Lcom/android/settings/DataUsageSummary$CycleChangeItem;,
        Lcom/android/settings/DataUsageSummary$CycleItem;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static isATT:Z

.field private static isCHN:Z

.field private static isMTR:Z

.field private static isSPR:Z

.field private static isTMB:Z

.field private static isVZW:Z

.field private static mAttDeviceHealthEnabled:Z

.field public static mSelectDisplayUnit:I

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# instance fields
.field private handler_loading:Landroid/os/Handler;

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

.field private mAirplanemodeObserver:Landroid/database/ContentObserver;

.field private mAlertAtWarning:Landroid/widget/CheckBox;

.field private mAlertAtWarningListener:Landroid/view/View$OnClickListener;

.field private mAlertAtWarningView:Landroid/view/View;

.field private mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

.field private mAlertTotalSentListener:Landroid/view/View$OnClickListener;

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDetail:Landroid/view/View;

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppRestrict:Landroid/widget/CheckBox;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mAppTotal:Landroid/widget/TextView;

.field private final mBackgroundTrafficReceiver:Landroid/content/BroadcastReceiver;

.field private mBinding:Z

.field private mBound:Z

.field private mChart:Lcom/android/settings/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/settings/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settings/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mConfirmAtBoot:Landroid/widget/CheckBox;

.field private mConfirmAtBootListener:Landroid/view/View$OnClickListener;

.field private mConfirmAtBootView:Landroid/view/View;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleSummary:Landroid/widget/TextView;

.field private mCycleView:Landroid/view/View;

.field private mDataEnabled:Landroid/widget/CheckBox;

.field private mDataEnabledListener:Landroid/view/View$OnClickListener;

.field private mDataEnabledSupported:Z

.field private mDataEnabledView:Landroid/view/View;

.field private mDataEnabledVolteListener:Landroid/view/View$OnClickListener;

.field private mDataRoamingView:Landroid/view/View;

.field private mDataRoamingVolteListener:Landroid/view/View$OnClickListener;

.field private mDataRoaming_Volte:Landroid/widget/CheckBox;

.field private mDialog:Landroid/app/DialogFragment;

.field private mDisableAtLimit:Landroid/widget/CheckBox;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitSupported:Z

.field private mDisableAtLimitView:Landroid/view/View;

.field private mDisclaimer:Landroid/view/View;

.field private mDisplayUnitDialog:Landroid/app/AlertDialog;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mHandler:Landroid/os/Handler;

.field private mHeader:Landroid/view/ViewGroup;

.field private mInsetSide:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentTab:Ljava/lang/String;

.field private mLifedata_menu:Landroid/view/View;

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mMenuBackgroundTraffic:Landroid/view/MenuItem;

.field private mMenuCellularNetworks:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMenuShowEthernet:Landroid/view/MenuItem;

.field private mMenuShowWifi:Landroid/view/MenuItem;

.field private mMenuSimCards:Landroid/view/MenuItem;

.field private mMobileDataEnabled:Ljava/lang/Boolean;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMobilepolicyforwifiVZW:Landroid/net/NetworkPolicy;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStupidPadding:Landroid/view/View;

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mToddlermodeObserver:Landroid/database/ContentObserver;

.field private mTotalReceive_icon:Landroid/widget/ImageView;

.field private mTotalReceive_menu:Landroid/view/View;

.field private mTotalSent_icon:Landroid/widget/ImageView;

.field private mTotalSent_menu:Landroid/view/View;

.field private mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

.field private mlifetimeMessenger:Landroid/os/Messenger;

.field private rilHandler:Landroid/os/Handler;

.field private wifiCycleDuration:J

.field private wifiCycleEnd:J

.field private wificyclestart:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 397
    sput-boolean v0, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    .line 400
    sput-boolean v0, Lcom/android/settings/DataUsageSummary;->isSPR:Z

    .line 403
    sput-boolean v0, Lcom/android/settings/DataUsageSummary;->isTMB:Z

    .line 406
    sput-boolean v0, Lcom/android/settings/DataUsageSummary;->isMTR:Z

    .line 408
    sput-boolean v0, Lcom/android/settings/DataUsageSummary;->isATT:Z

    .line 409
    sput-boolean v0, Lcom/android/settings/DataUsageSummary;->isCHN:Z

    .line 412
    sput-boolean v0, Lcom/android/settings/DataUsageSummary;->mAttDeviceHealthEnabled:Z

    .line 416
    sput v0, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    .line 2624
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    .line 2625
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    .line 4169
    new-instance v0, Lcom/android/settings/DataUsageSummary$29;

    invoke-direct {v0}, Lcom/android/settings/DataUsageSummary$29;-><init>()V

    sput-object v0, Lcom/android/settings/DataUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 217
    invoke-direct {p0}, Lcom/android/settings/HighlightingFragment;-><init>()V

    .line 297
    iput v3, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    .line 320
    const-wide v0, 0x90321000L

    iput-wide v0, p0, Lcom/android/settings/DataUsageSummary;->wifiCycleDuration:J

    .line 321
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/DataUsageSummary;->wifiCycleEnd:J

    .line 322
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/settings/DataUsageSummary;->wificyclestart:J

    .line 336
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mServiceMessenger:Landroid/os/Messenger;

    .line 341
    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mBound:Z

    .line 366
    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    .line 367
    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    .line 372
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    .line 378
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 379
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 394
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    .line 426
    new-instance v0, Lcom/android/settings/DataUsageSummary$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DataUsageSummary$1;-><init>(Lcom/android/settings/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 436
    new-instance v0, Lcom/android/settings/DataUsageSummary$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DataUsageSummary$2;-><init>(Lcom/android/settings/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAirplanemodeObserver:Landroid/database/ContentObserver;

    .line 443
    new-instance v0, Lcom/android/settings/DataUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$3;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mBackgroundTrafficReceiver:Landroid/content/BroadcastReceiver;

    .line 451
    new-instance v0, Lcom/android/settings/DataUsageSummary$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DataUsageSummary$4;-><init>(Lcom/android/settings/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mToddlermodeObserver:Landroid/database/ContentObserver;

    .line 458
    new-instance v0, Lcom/android/settings/DataUsageSummary$5;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$5;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 483
    new-instance v0, Lcom/android/settings/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$6;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->handler_loading:Landroid/os/Handler;

    .line 1435
    new-instance v0, Lcom/android/settings/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$11;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 1455
    new-instance v0, Lcom/android/settings/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$12;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 2075
    new-instance v0, Lcom/android/settings/DataUsageSummary$15;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$15;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledVolteListener:Landroid/view/View$OnClickListener;

    .line 2090
    new-instance v0, Lcom/android/settings/DataUsageSummary$16;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$16;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataRoamingVolteListener:Landroid/view/View$OnClickListener;

    .line 2105
    new-instance v0, Lcom/android/settings/DataUsageSummary$17;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$17;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    .line 2146
    new-instance v0, Lcom/android/settings/DataUsageSummary$18;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$18;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootListener:Landroid/view/View$OnClickListener;

    .line 2160
    new-instance v0, Lcom/android/settings/DataUsageSummary$19;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$19;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    .line 2182
    new-instance v0, Lcom/android/settings/DataUsageSummary$20;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$20;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningListener:Landroid/view/View$OnClickListener;

    .line 2202
    new-instance v0, Lcom/android/settings/DataUsageSummary$21;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$21;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

    .line 2224
    new-instance v0, Lcom/android/settings/DataUsageSummary$22;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$22;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAlertTotalSentListener:Landroid/view/View$OnClickListener;

    .line 2247
    new-instance v0, Lcom/android/settings/DataUsageSummary$23;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$23;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    .line 2263
    new-instance v0, Lcom/android/settings/DataUsageSummary$24;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$24;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 2277
    new-instance v0, Lcom/android/settings/DataUsageSummary$25;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$25;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 2466
    new-instance v0, Lcom/android/settings/DataUsageSummary$26;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$26;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 2497
    new-instance v0, Lcom/android/settings/DataUsageSummary$27;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$27;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 2564
    new-instance v0, Lcom/android/settings/DataUsageSummary$28;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$28;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 4219
    new-instance v0, Lcom/android/settings/DataUsageSummary$30;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$30;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 4301
    new-instance v0, Lcom/android/settings/DataUsageSummary$31;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$31;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    .line 4332
    new-instance v0, Lcom/android/settings/DataUsageSummary$32;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$32;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->rilHandler:Landroid/os/Handler;

    .line 4365
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->rilHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mlifetimeMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private SendDataChangeIntent()V
    .locals 3

    .prologue
    .line 4421
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 4422
    .local v1, "mcontext":Landroid/content/Context;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "Settings.ACTION_DATASET_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4423
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4424
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DataUsageSummary;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/DataUsageSummary;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/DataUsageSummary;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/DataUsageSummary;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->handler_loading:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/DataUsageSummary;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/DataUsageSummary;)Landroid/app/DialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/settings/DataUsageSummary;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Landroid/app/DialogFragment;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/DataUsageSummary;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/DataUsageSummary;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/DataUsageSummary;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # I

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->resetTimeData(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 217
    invoke-static {p0, p1}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateMenu()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/UidDetailProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/net/ChartData;)Lcom/android/settings/net/ChartData;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/settings/net/ChartData;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/settings/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$DataUsageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateView()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/settings/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/view/LayoutInflater;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 217
    invoke-static {p0, p1}, Lcom/android/settings/DataUsageSummary;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300()Z
    .locals 1

    .prologue
    .line 217
    sget-boolean v0, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    return v0
.end method

.method static synthetic access$4400(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J

    .prologue
    .line 217
    invoke-static {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->formatFileSizeGB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J

    .prologue
    .line 217
    invoke-static {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->formatFileSizeMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/DataUsageSummary$AppItem;)Lcom/android/settings/DataUsageSummary$AppItem;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/settings/DataUsageSummary$AppItem;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$4900()Z
    .locals 1

    .prologue
    .line 217
    sget-boolean v0, Lcom/android/settings/DataUsageSummary;->isSPR:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$5000()Z
    .locals 1

    .prologue
    .line 217
    sget-boolean v0, Lcom/android/settings/DataUsageSummary;->isTMB:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->setBackgroundTrafficOn()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->setBackgroundTrafficOff()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5402(Lcom/android/settings/DataUsageSummary;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/android/settings/DataUsageSummary;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->getTimeData(II)V

    return-void
.end method

.method static synthetic access$5602(Lcom/android/settings/DataUsageSummary;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/android/settings/DataUsageSummary;->mBound:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/android/settings/DataUsageSummary;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # [B

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setSummaryfortimedata([B)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/DataUsageSummary;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/DataUsageSummary;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    return-void
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 1341
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 1345
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 1346
    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "titleRes"    # I

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/settings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private static computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 3843
    const-string v2, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 3844
    .local v0, "template":Landroid/net/NetworkTemplate;
    if-nez v0, :cond_0

    .line 3858
    :goto_0
    return-object v1

    .line 3846
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3852
    :pswitch_1
    const-string v1, "mobile"

    goto :goto_0

    .line 3848
    :pswitch_2
    const-string v1, "3g"

    goto :goto_0

    .line 3850
    :pswitch_3
    const-string v1, "4g"

    goto :goto_0

    .line 3854
    :pswitch_4
    const-string v1, "ent1"

    goto :goto_0

    .line 3856
    :pswitch_5
    const-string v1, "wifi"

    goto :goto_0

    .line 3846
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private connectToRilService_lifetime()V
    .locals 4

    .prologue
    .line 4253
    const-string v1, "DataUsage"

    const-string v2, "connect To Secphone service"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4255
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4256
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 4257
    return-void
.end method

.method private ensureLayoutTransitions()V
    .locals 3

    .prologue
    .line 1328
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1338
    :goto_0
    return-void

    .line 1330
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1331
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1332
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1334
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 1335
    .local v0, "chartTransition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 1336
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 1337
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 2629
    const v8, 0x10010

    .line 2631
    .local v8, "flags":I
    sget-object v9, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v9

    .line 2632
    :try_start_0
    sget-object v0, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2633
    sget-object v1, Lcom/android/settings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 2635
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static formatFileSizeGB(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # J

    .prologue
    const v10, 0x3c23d70a    # 0.01f

    const/high16 v5, 0x44800000    # 1024.0f

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2433
    long-to-float v1, p1

    .line 2434
    .local v1, "result":F
    const v2, 0x7f0a0cd8

    .line 2435
    .local v2, "suffix":I
    cmpl-float v4, v1, v9

    if-lez v4, :cond_0

    .line 2436
    div-float/2addr v1, v5

    .line 2437
    cmpl-float v4, v1, v9

    if-lez v4, :cond_0

    .line 2438
    div-float/2addr v1, v5

    .line 2439
    cmpl-float v4, v1, v9

    if-lez v4, :cond_0

    .line 2440
    div-float/2addr v1, v5

    .line 2445
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_3

    .line 2446
    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2455
    .local v3, "value":Ljava/lang/String;
    :goto_0
    const-string v0, ""

    .line 2456
    .local v0, "lessthan":Ljava/lang/String;
    cmpl-float v4, v1, v9

    if-lez v4, :cond_1

    cmpg-float v4, v1, v10

    if-gez v4, :cond_1

    .line 2457
    const-string v0, "<"

    .line 2459
    :cond_1
    cmpg-float v4, v1, v10

    if-gez v4, :cond_2

    .line 2460
    const-string v3, "0.01"

    .line 2462
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0cdc

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    aput-object v3, v6, v8

    const/4 v7, 0x2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2447
    .end local v0    # "lessthan":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_4

    .line 2448
    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 2449
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_5

    .line 2450
    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 2452
    .end local v3    # "value":Ljava/lang/String;
    :cond_5
    const-string v4, "%.0f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method private static formatFileSizeMB(Landroid/content/Context;J)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # J

    .prologue
    const/high16 v11, 0x44800000    # 1024.0f

    const v10, 0x3c23d70a    # 0.01f

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2402
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    long-to-float v1, p1

    .line 2404
    .local v1, "result":F
    const v2, 0x7f0a0cd9

    .line 2405
    .local v2, "suffix":I
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "suffix: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    cmpl-float v4, v1, v9

    if-lez v4, :cond_0

    .line 2407
    div-float/2addr v1, v11

    .line 2408
    cmpl-float v4, v1, v9

    if-lez v4, :cond_0

    .line 2409
    div-float/2addr v1, v11

    .line 2411
    :cond_0
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_3

    .line 2414
    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2422
    .local v3, "value":Ljava/lang/String;
    :goto_0
    const-string v0, ""

    .line 2423
    .local v0, "lessthan":Ljava/lang/String;
    cmpl-float v4, v1, v9

    if-lez v4, :cond_1

    cmpg-float v4, v1, v10

    if-gez v4, :cond_1

    .line 2424
    const-string v0, "<"

    .line 2426
    :cond_1
    cmpg-float v4, v1, v10

    if-gez v4, :cond_2

    .line 2427
    const-string v3, "0.01"

    .line 2429
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0cdc

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    aput-object v3, v6, v8

    const/4 v7, 0x2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2415
    .end local v0    # "lessthan":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_4

    .line 2416
    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 2417
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_5

    .line 2418
    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 2420
    .end local v3    # "value":Ljava/lang/String;
    :cond_5
    const-string v4, "%.0f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2546
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 2547
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 2548
    .local v0, "actualSubscriberId":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimCount()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 2549
    invoke-static {p0, v3}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2550
    invoke-static {p0, v3}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 2555
    :goto_0
    return-object v2

    .line 2552
    :cond_0
    invoke-static {p0, v4}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2555
    :cond_1
    const-string v2, "test.subscriberid"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .prologue
    .line 2560
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 2561
    .local v0, "subId":[J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .prologue
    .line 1822
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    iget v0, v2, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    .line 1823
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .line 1824
    .local v1, "uidPolicy":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getBackgroundTrafficChecked()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1836
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1837
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "bg_traffic_service_state"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1838
    .local v1, "serviceState":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 1841
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getBackgroundTrafficEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1846
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1847
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "bg_traffic_service_state"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1848
    .local v1, "serviceState":I
    if-eqz v1, :cond_0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 1849
    :cond_0
    const/4 v2, 0x0

    .line 1851
    :cond_1
    return v2
.end method

.method private getSimIcon(I)I
    .locals 8
    .param p1, "Sim_id"    # I

    .prologue
    .line 4439
    const/4 v3, 0x0

    .line 4440
    .local v3, "sim_icon1":I
    const/4 v4, 0x0

    .line 4441
    .local v4, "sim_icon2":I
    const/4 v1, 0x0

    .line 4444
    .local v1, "retDrawable":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_1"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 4445
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_2"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 4450
    :goto_0
    if-nez p1, :cond_0

    move v2, v3

    .line 4452
    .local v2, "ret_sim_icon":I
    :goto_1
    const-string v5, "DataUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM 1 ICON : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SIM 2 ICON : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ret_sim_icon = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    packed-switch v2, :pswitch_data_0

    .line 4483
    const v1, 0x7f0205bb

    .line 4486
    :goto_2
    return v1

    .line 4446
    .end local v2    # "ret_sim_icon":I
    :catch_0
    move-exception v0

    .line 4448
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v2, v4

    .line 4450
    goto :goto_1

    .line 4456
    .restart local v2    # "ret_sim_icon":I
    :pswitch_0
    const v1, 0x7f0205bb

    .line 4457
    goto :goto_2

    .line 4459
    :pswitch_1
    const v1, 0x7f0205bc

    .line 4460
    goto :goto_2

    .line 4462
    :pswitch_2
    const v1, 0x7f0205ba

    .line 4463
    goto :goto_2

    .line 4465
    :pswitch_3
    const v1, 0x7f0205c2

    .line 4466
    goto :goto_2

    .line 4468
    :pswitch_4
    const v1, 0x7f0205c1

    .line 4469
    goto :goto_2

    .line 4471
    :pswitch_5
    const v1, 0x7f0205c0

    .line 4472
    goto :goto_2

    .line 4474
    :pswitch_6
    const v1, 0x7f0205be

    .line 4475
    goto :goto_2

    .line 4477
    :pswitch_7
    const v1, 0x7f0205bf

    .line 4478
    goto :goto_2

    .line 4480
    :pswitch_8
    const v1, 0x7f0205bd

    .line 4481
    goto :goto_2

    .line 4454
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 4427
    const/4 v0, 0x0

    .line 4429
    .local v0, "simName":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 4430
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4435
    :goto_0
    return-object v0

    .line 4432
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSubTag(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 4389
    if-gez p1, :cond_0

    .line 4390
    const-string v0, ""

    .line 4392
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTimeData(II)V
    .locals 6
    .param p1, "mainOemid"    # I
    .param p2, "subOemid"    # I

    .prologue
    .line 4260
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4261
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4263
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4264
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4265
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4266
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4268
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 4269
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4274
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getOemData with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4275
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DataUsageSummary;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 4276
    :goto_0
    return-void

    .line 4270
    :catch_0
    move-exception v2

    .line 4271
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOemData(int, int).. exception occured during operation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hasReadyEnt1Radio(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3966
    const/16 v0, 0x1c

    invoke-static {p0, v0}, Lcom/android/settings/DataUsageSummary;->hasReadyEnterpriseNetwork(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method private static hasReadyEnterpriseNetwork(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "networkType"    # I

    .prologue
    .line 3976
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 3977
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 3979
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isSplitBillingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasReadyMobile4gRadio(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3990
    const/4 v0, 0x0

    return v0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v14, 0x5

    const/4 v10, 0x0

    .line 3931
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 3932
    .local v1, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    .line 3933
    .local v7, "tele":Landroid/telephony/TelephonyManager;
    const-string v11, "DCGG"

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "DCGS"

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "DCGGS"

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "CG"

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 3937
    :cond_0
    const/4 v6, 0x0

    .line 3938
    .local v6, "status":Z
    const/4 v0, 0x0

    .line 3939
    .local v0, "cardStatus":Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v3

    .line 3940
    .local v3, "phoneCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 3942
    const/16 v4, 0x9

    .line 3943
    .local v4, "simState":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v11

    aget-wide v8, v11, v10

    .line 3944
    .local v8, "subId":J
    const-string v11, "gsm.sim.currentcardstatus"

    const-string v12, "9"

    invoke-static {v11, v8, v9, v12}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3945
    if-eqz v0, :cond_1

    .line 3946
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3947
    :cond_1
    invoke-virtual {v1, v10}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v7, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v11

    if-ne v11, v14, :cond_4

    const/4 v11, 0x3

    if-ne v4, v11, :cond_4

    .line 3948
    const/4 v6, 0x1

    .end local v4    # "simState":I
    .end local v8    # "subId":J
    :cond_2
    move v10, v6

    .line 3957
    .end local v0    # "cardStatus":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "phoneCount":I
    .end local v6    # "status":Z
    :cond_3
    :goto_1
    return v10

    .line 3940
    .restart local v0    # "cardStatus":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "phoneCount":I
    .restart local v4    # "simState":I
    .restart local v6    # "status":Z
    .restart local v8    # "subId":J
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3954
    .end local v0    # "cardStatus":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "phoneCount":I
    .end local v4    # "simState":I
    .end local v6    # "status":Z
    .end local v8    # "subId":J
    :cond_5
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v5

    .line 3955
    .local v5, "slotId":I
    const-string v11, "DataUsage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hasReadyMobileRadio() :is TYPE_MOBILE ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1, v10}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ,sim state for slotId:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3957
    invoke-virtual {v1, v10}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v7, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v11

    if-ne v11, v14, :cond_3

    const/4 v10, 0x1

    goto :goto_1
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4013
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 4014
    .local v0, "conn":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 4058
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Preference:[I

    const v5, 0x101008c

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4061
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 4062
    .local v1, "resId":I
    invoke-virtual {p0, v1, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "widget"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    .line 4050
    const v2, 0x7f04016d

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 4051
    .local v0, "view":Landroid/view/View;
    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 4053
    .local v1, "widgetFrame":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4054
    return-object v0
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .param p0, "view"    # Landroid/widget/ListView;
    .param p1, "insetSide"    # I

    .prologue
    .line 4128
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4129
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4133
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 4134
    .local v2, "stub":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 4135
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 4137
    new-instance v3, Lcom/android/settings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/settings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 4138
    new-instance v3, Lcom/android/settings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/settings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 4139
    return-void
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4317
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 4318
    .local v0, "req":Landroid/os/Bundle;
    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 4320
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4321
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mlifetimeMessenger:Landroid/os/Messenger;

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 4324
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 4325
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 4330
    :goto_0
    return-void

    .line 4327
    :cond_0
    const-string v1, "DataUsage"

    const-string v2, "mServiceMessenger is null. Do nothing."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4328
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isAppDetailMode()Z
    .locals 1

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 1774
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1777
    :goto_0
    return v1

    .line 1775
    :catch_0
    move-exception v0

    .line 1776
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 1

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1747
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1749
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isMobilePolicySplit()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2527
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2528
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2529
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 2530
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v2

    .line 2532
    .end local v1    # "tele":Landroid/telephony/TelephonyManager;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 1
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 1768
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoamingArea()Z
    .locals 2

    .prologue
    .line 4213
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4214
    const-string v0, "oversea"

    const-string v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTimeData(I)V
    .locals 7
    .param p1, "value"    # I

    .prologue
    const/16 v6, 0xb

    .line 4279
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4280
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4282
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/16 v3, 0x51

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4283
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4284
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4285
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4286
    if-nez p1, :cond_0

    .line 4287
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4292
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 4293
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4297
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " resetTimeData with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4298
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DataUsageSummary;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 4299
    :goto_1
    return-void

    .line 4289
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4294
    :catch_0
    move-exception v2

    .line 4295
    .local v2, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 1829
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    iget v0, v1, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    .line 1830
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 1832
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1833
    return-void

    .line 1830
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setBackgroundTrafficOff()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1866
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1867
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "bg_auto_optimization_setup"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1868
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1869
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.skt.apra.action.SERVICE_STATE_CHANGING"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1870
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "extra.IS_SERVICE_ON"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1871
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1872
    const-string v2, "DataUsage"

    const-string v3, "SERVICE OFF"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    return-void
.end method

.method private setBackgroundTrafficOn()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1856
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1857
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "bg_auto_optimization_setup"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1858
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1859
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.skt.apra.action.SERVICE_STATE_CHANGING"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1860
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "extra.IS_SERVICE_ON"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1861
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1862
    const-string v2, "DataUsage"

    const-string v3, "SERVICE ON"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1755
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 1758
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1763
    .local v0, "value":I
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 1764
    invoke-direct {p0, v1}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 1765
    return-void

    .end local v0    # "value":I
    :cond_0
    move v0, v1

    .line 1758
    goto :goto_0
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3
    .param p1, "limitBytes"    # J

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 1735
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 1736
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3
    .param p1, "warningBytes"    # J

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 1729
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 1730
    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "string"    # Ljava/lang/CharSequence;

    .prologue
    .line 4161
    const v1, 0x1020010

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4162
    .local v0, "summary":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4163
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4164
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "resId"    # I

    .prologue
    .line 4146
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4147
    .local v0, "title":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 4148
    return-void
.end method

.method private static setPreferenceTitle(ZLandroid/view/View;I)V
    .locals 2
    .param p0, "tabChanged"    # Z
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "resId"    # I

    .prologue
    .line 4151
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4152
    .local v0, "title":Landroid/widget/TextView;
    if-nez p0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/settings/DataUsageSummary;->mAttDeviceHealthEnabled:Z

    if-eqz v1, :cond_1

    .line 4153
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 4154
    :cond_1
    return-void
.end method

.method private setSummaryfortimedata([B)V
    .locals 12
    .param p1, "data"    # [B

    .prologue
    const/16 v11, 0x10

    const/16 v10, 0x8

    const/4 v9, 0x4

    .line 4377
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, v9}, Lcom/android/settings/DataUsageSummary;->byteToLong([BII)J

    move-result-wide v0

    .line 4378
    .local v0, "rx":J
    invoke-virtual {p0, p1, v9, v10}, Lcom/android/settings/DataUsageSummary;->byteToLong([BII)J

    move-result-wide v6

    .line 4379
    .local v6, "tx":J
    invoke-virtual {p0, p1, v10, v11}, Lcom/android/settings/DataUsageSummary;->byteToLong([BII)J

    move-result-wide v2

    .line 4380
    .local v2, "total_rx":J
    const/16 v8, 0x18

    invoke-virtual {p0, p1, v11, v8}, Lcom/android/settings/DataUsageSummary;->byteToLong([BII)J

    move-result-wide v4

    .line 4381
    .local v4, "total_tx":J
    const-string v8, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSummaryfortimedata :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4382
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 4383
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 4384
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    add-long v10, v2, v4

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 4386
    return-void
.end method

.method private updateAppDetail()V
    .locals 23

    .prologue
    .line 1602
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 1603
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 1604
    .local v17, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 1606
    .local v10, "inflater":Landroid/view/LayoutInflater;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    move/from16 v19, v0

    .line 1623
    .local v19, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settings/net/UidDetail;

    move-result-object v7

    .line 1624
    .local v7, "detail":Lcom/android/settings/net/UidDetail;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    iget-object v0, v7, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1628
    const/16 v18, 0x0

    .line 1629
    .local v18, "title":Landroid/view/View;
    iget-object v0, v7, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1630
    iget-object v0, v7, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v14, v0

    .line 1631
    .local v14, "n":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v14, :cond_2

    .line 1632
    iget-object v0, v7, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    aget-object v11, v20, v8

    .line 1633
    .local v11, "label":Ljava/lang/CharSequence;
    iget-object v0, v7, Lcom/android/settings/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    aget-object v5, v20, v8

    .line 1634
    .local v5, "contentDescription":Ljava/lang/CharSequence;
    const v20, 0x7f04006f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 1635
    const v20, 0x7f100122

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1636
    .local v3, "appTitle":Landroid/widget/TextView;
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1637
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1631
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1610
    .end local v3    # "appTitle":Landroid/widget/TextView;
    .end local v5    # "contentDescription":Ljava/lang/CharSequence;
    .end local v7    # "detail":Lcom/android/settings/net/UidDetail;
    .end local v8    # "i":I
    .end local v11    # "label":Ljava/lang/CharSequence;
    .end local v14    # "n":I
    .end local v18    # "title":Landroid/view/View;
    .end local v19    # "uid":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1706
    :goto_1
    return-void

    .line 1641
    .restart local v7    # "detail":Lcom/android/settings/net/UidDetail;
    .restart local v18    # "title":Landroid/view/View;
    .restart local v19    # "uid":I
    :cond_1
    const v20, 0x7f04006f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 1642
    const v20, 0x7f100122

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1643
    .restart local v3    # "appTitle":Landroid/widget/TextView;
    iget-object v0, v7, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1644
    iget-object v0, v7, Lcom/android/settings/net/UidDetail;->contentDescription:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1649
    .end local v3    # "appTitle":Landroid/widget/TextView;
    :cond_2
    if-eqz v18, :cond_4

    .line 1650
    const v20, 0x7f100123

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    .line 1656
    :goto_2
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v16

    .line 1657
    .local v16, "packageNames":[Ljava/lang/String;
    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_6

    .line 1658
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 1659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "android.intent.category.DEFAULT"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1662
    const/4 v13, 0x0

    .line 1663
    .local v13, "matchFound":Z
    move-object/from16 v4, v16

    .local v4, "arr$":[Ljava/lang/String;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3
    if-ge v9, v12, :cond_3

    aget-object v15, v4, v9

    .line 1664
    .local v15, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 1666
    const/4 v13, 0x1

    .line 1671
    .end local v15    # "packageName":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/settings/DataUsageSummary$13;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DataUsageSummary$13;-><init>(Lcom/android/settings/DataUsageSummary;I)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 1692
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "matchFound":Z
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    .line 1694
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v20

    if-nez v20, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-static {v6}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a0cff

    invoke-static/range {v20 .. v21}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a0d00

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 1652
    .end local v16    # "packageNames":[Ljava/lang/String;
    :cond_4
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    goto/16 :goto_2

    .line 1663
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "matchFound":Z
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v16    # "packageNames":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 1687
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "matchFound":Z
    .end local v15    # "packageName":Ljava/lang/String;
    :cond_6
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4

    .line 1704
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private updateBody()V
    .locals 12

    .prologue
    const v11, 0x7f0a0ce3

    const v10, 0x7f0a0ceb

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x8

    .line 1469
    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    .line 1470
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1591
    :goto_0
    return-void

    .line 1472
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1473
    .local v0, "context":Landroid/content/Context;
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v9}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 1474
    .local v1, "currentTab":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_1
    move v3, v6

    .line 1477
    .local v3, "isOwner":Z
    :goto_1
    if-nez v1, :cond_2

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 1478
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 1481
    :cond_2
    if-nez v1, :cond_4

    .line 1482
    const-string v6, "DataUsage"

    const-string v7, "no tab selected; hiding body"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .end local v3    # "isOwner":Z
    :cond_3
    move v3, v7

    .line 1474
    goto :goto_1

    .line 1486
    .restart local v3    # "isOwner":Z
    :cond_4
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1489
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    move v5, v6

    .line 1490
    .local v5, "tabChanged":Z
    :goto_2
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 1494
    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 1495
    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 1496
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v9

    if-nez v9, :cond_9

    move v4, v6

    .line 1497
    .local v4, "isVisible":Z
    :goto_3
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    if-eqz v4, :cond_a

    move v6, v7

    :goto_4
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1501
    const-string v6, "mobile"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1502
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v9, 0x7f0a0cf8

    invoke-static {v6, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1503
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    const v9, 0x7f0a0020

    invoke-static {v5, v6, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(ZLandroid/view/View;I)V

    .line 1504
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    invoke-static {v5, v6, v10}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(ZLandroid/view/View;I)V

    .line 1506
    sget-boolean v6, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v6, :cond_5

    sget-boolean v6, Lcom/android/settings/DataUsageSummary;->isSPR:Z

    if-eqz v6, :cond_b

    .line 1507
    :cond_5
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v9, 0x7f0a179b

    invoke-static {v5, v6, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(ZLandroid/view/View;I)V

    .line 1511
    :goto_5
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const v9, 0x7f0a1798

    invoke-static {v5, v6, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(ZLandroid/view/View;I)V

    .line 1514
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 1577
    :cond_6
    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1578
    const-string v6, "DataUsage"

    const-string v9, "updateBody(), mDataEnabledView.setVisibility(View.GONE) for CTC model"

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1584
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v6

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    invoke-static {v9, v10}, Lcom/android/settings/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v6, v8, v9, v10}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1588
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1590
    iput-boolean v7, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    goto/16 :goto_0

    .end local v4    # "isVisible":Z
    .end local v5    # "tabChanged":Z
    :cond_8
    move v5, v7

    .line 1489
    goto/16 :goto_2

    .restart local v5    # "tabChanged":Z
    :cond_9
    move v4, v7

    .line 1496
    goto/16 :goto_3

    .restart local v4    # "isVisible":Z
    :cond_a
    move v6, v8

    .line 1497
    goto/16 :goto_4

    .line 1509
    :cond_b
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-static {v5, v6, v11}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(ZLandroid/view/View;I)V

    goto :goto_5

    .line 1516
    :cond_c
    const-string v6, "Slot"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1517
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 1518
    invoke-direct {p0, v2}, Lcom/android/settings/DataUsageSummary;->getSubTag(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1519
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v9, 0x7f0a0cf8

    invoke-static {v6, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1521
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-static {v6, v11}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1523
    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 1517
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1526
    .end local v2    # "i":I
    :cond_e
    const-string v6, "3g"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1527
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v9, 0x7f0a0cfa

    invoke-static {v6, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1528
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    invoke-static {v6, v10}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1529
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v9, 0x7f0a0ce5

    invoke-static {v6, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1531
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_6

    .line 1533
    :cond_f
    const-string v6, "4g"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1534
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v9, 0x7f0a0cfb

    invoke-static {v6, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1535
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    invoke-static {v6, v10}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1536
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v9, 0x7f0a0ce4

    invoke-static {v6, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1538
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_6

    .line 1540
    :cond_10
    const-string v6, "ent1"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1542
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1543
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1544
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1545
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1547
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1549
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/NetworkTemplate;->buildTemplateMobileEnt1(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_6

    .line 1551
    :cond_11
    const-string v6, "wifi"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1553
    iput-boolean v7, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 1554
    iput-boolean v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 1555
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1556
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1558
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1560
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_6

    .line 1562
    :cond_12
    const-string v6, "ethernet"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1564
    iput-boolean v7, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 1565
    iput-boolean v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 1566
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1567
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1569
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1571
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_6

    .line 1574
    :cond_13
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown tab: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 26
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 1977
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/settings/DataUsageSummary$CycleItem;

    .line 1978
    .local v24, "previousItem":Lcom/android/settings/DataUsageSummary$CycleItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->clear()V

    .line 1980
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1982
    .local v5, "context":Landroid/content/Context;
    const-wide v20, 0x7fffffffffffffffL

    .line 1983
    .local v20, "historyStart":J
    const-wide/high16 v18, -0x8000000000000000L

    .line 1984
    .local v18, "historyEnd":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v4, :cond_0

    .line 1985
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v4, v4, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v20

    .line 1986
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v4, v4, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v18

    .line 1989
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1992
    .local v22, "now":J
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v17

    .line 1995
    .local v17, "mobileSplit":Z
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v4, v20, v10

    if-nez v4, :cond_1

    move-wide/from16 v20, v22

    .line 1996
    :cond_1
    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v4, v18, v10

    if-nez v4, :cond_2

    const-wide/16 v10, 0x1

    add-long v18, v22, v10

    .line 1998
    :cond_2
    const/16 v16, 0x0

    .line 1999
    .local v16, "hasCycles":Z
    if-eqz p1, :cond_5

    .line 2001
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DataUsageSummary;->mMobilepolicyforwifiVZW:Landroid/net/NetworkPolicy;

    .line 2005
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 2008
    .local v8, "cycleEnd":J
    if-nez v17, :cond_3

    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2009
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings/DataUsageSummary;->wifiCycleEnd:J

    .line 2014
    :cond_3
    :goto_0
    cmp-long v4, v8, v20

    if-lez v4, :cond_4

    .line 2015
    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 2016
    .local v6, "cycleStart":J
    const-string v4, "DataUsage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generating cs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to ce="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " waiting for hs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/settings/DataUsageSummary$CycleItem;

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v10, v4}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 2019
    move-wide v8, v6

    .line 2020
    const/16 v16, 0x1

    .line 2021
    goto :goto_0

    .line 2023
    .end local v6    # "cycleStart":J
    :cond_4
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings/DataUsageSummary;->wificyclestart:J

    .line 2027
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v10

    invoke-virtual {v4, v10}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 2030
    .end local v8    # "cycleEnd":J
    :cond_5
    if-nez v16, :cond_9

    .line 2032
    sget-boolean v4, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mMobilepolicyforwifiVZW:Landroid/net/NetworkPolicy;

    if-eqz v4, :cond_7

    .line 2033
    move-wide/from16 v8, v18

    .line 2034
    .restart local v8    # "cycleEnd":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/DataUsageSummary;->wifiCycleEnd:J

    const-wide/16 v14, 0x0

    cmp-long v4, v10, v14

    if-eqz v4, :cond_6

    .line 2035
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/DataUsageSummary;->wifiCycleEnd:J

    .line 2036
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/DataUsageSummary;->wificyclestart:J

    cmp-long v4, v8, v10

    if-lez v4, :cond_8

    .line 2037
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mMobilepolicyforwifiVZW:Landroid/net/NetworkPolicy;

    invoke-static {v8, v9, v4}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 2038
    .restart local v6    # "cycleStart":J
    const-string v4, "Varun"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generating cs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to ce="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/settings/DataUsageSummary$CycleItem;

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v10, v4}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 2040
    move-wide v8, v6

    .line 2041
    goto :goto_1

    .line 2045
    .end local v6    # "cycleStart":J
    .end local v8    # "cycleEnd":J
    :cond_7
    move-wide/from16 v8, v18

    .line 2046
    .restart local v8    # "cycleEnd":J
    :goto_2
    cmp-long v4, v8, v20

    if-lez v4, :cond_8

    .line 2047
    const-wide v10, 0x90321000L

    sub-long v6, v8, v10

    .line 2048
    .restart local v6    # "cycleStart":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/settings/DataUsageSummary$CycleItem;

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v10, v4}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 2049
    move-wide v8, v6

    .line 2050
    goto :goto_2

    .line 2053
    .end local v6    # "cycleStart":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 2057
    .end local v8    # "cycleEnd":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_b

    .line 2058
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/settings/DataUsageSummary$CycleItem;)I

    move-result v13

    .line 2059
    .local v13, "position":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2063
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4, v13}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/settings/DataUsageSummary$CycleItem;

    .line 2064
    .local v25, "selectedItem":Lcom/android/settings/DataUsageSummary$CycleItem;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 2065
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-interface/range {v10 .. v15}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2073
    .end local v13    # "position":I
    .end local v25    # "selectedItem":Lcom/android/settings/DataUsageSummary$CycleItem;
    :goto_3
    return-void

    .line 2068
    .restart local v13    # "position":I
    .restart local v25    # "selectedItem":Lcom/android/settings/DataUsageSummary$CycleItem;
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    goto :goto_3

    .line 2071
    .end local v13    # "position":I
    .end local v25    # "selectedItem":Lcom/android/settings/DataUsageSummary$CycleItem;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    goto :goto_3
.end method

.method private updateDetailData()V
    .locals 26

    .prologue
    .line 2318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/settings/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v4

    .line 2319
    .local v4, "start":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/settings/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v6

    .line 2320
    .local v6, "end":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2322
    .local v8, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 2324
    .local v2, "context":Landroid/content/Context;
    const/4 v10, 0x0

    .line 2325
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v3, v3, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v3, :cond_5

    .line 2327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v3, v3, Lcom/android/settings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 2328
    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v20, v12, v14

    .line 2329
    .local v20, "defaultBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v3, v3, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 2330
    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v22, v12, v14

    .line 2331
    .local v22, "foregroundBytes":J
    add-long v24, v20, v22

    .line 2333
    .local v24, "totalBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 2334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2336
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2340
    sget-boolean v3, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-eqz v3, :cond_1

    .line 2341
    sget v3, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    const/4 v11, 0x2

    if-ne v3, v11, :cond_4

    .line 2342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Lcom/android/settings/DataUsageSummary;->formatFileSizeGB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Lcom/android/settings/DataUsageSummary;->formatFileSizeGB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2352
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v11, v3, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 2354
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 2356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2370
    .end local v20    # "defaultBytes":J
    .end local v22    # "foregroundBytes":J
    .end local v24    # "totalBytes":J
    :goto_1
    if-eqz v10, :cond_7

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v24, v12, v14

    .line 2373
    .restart local v24    # "totalBytes":J
    :goto_2
    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    .line 2375
    .local v19, "totalPhrase":Ljava/lang/String;
    sget-boolean v3, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-eqz v3, :cond_2

    .line 2376
    sget v3, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    const/4 v11, 0x2

    if-ne v3, v11, :cond_8

    .line 2377
    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Lcom/android/settings/DataUsageSummary;->formatFileSizeGB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    .line 2383
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2385
    const-string v3, "mobile"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "3g"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "4g"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2387
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2397
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->ensureLayoutTransitions()V

    .line 2398
    return-void

    .line 2344
    .end local v19    # "totalPhrase":Ljava/lang/String;
    .restart local v20    # "defaultBytes":J
    .restart local v22    # "foregroundBytes":J
    :cond_4
    sget v3, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    const/4 v11, 0x1

    if-ne v3, v11, :cond_1

    .line 2345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Lcom/android/settings/DataUsageSummary;->formatFileSizeMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Lcom/android/settings/DataUsageSummary;->formatFileSizeMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2359
    .end local v20    # "defaultBytes":J
    .end local v22    # "foregroundBytes":J
    .end local v24    # "totalBytes":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v3, :cond_6

    .line 2360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v11, v3, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 2363
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2366
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v12, v4, v5, v6, v7}, Lcom/android/settings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v3, v11, v12, v13}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_1

    .line 2370
    :cond_7
    const-wide/16 v24, 0x0

    goto/16 :goto_2

    .line 2378
    .restart local v19    # "totalPhrase":Ljava/lang/String;
    .restart local v24    # "totalBytes":J
    :cond_8
    sget v3, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    const/4 v11, 0x1

    if-ne v3, v11, :cond_2

    .line 2379
    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Lcom/android/settings/DataUsageSummary;->formatFileSizeMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_3

    .line 2390
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 2393
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method private updateMenu()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1112
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1113
    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    .line 1114
    .local v0, "appDetailMode":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move v3, v5

    .line 1116
    .local v3, "isOwner":Z
    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_3

    move v2, v5

    .line 1118
    .local v2, "isAirplaneMode":Z
    :goto_1
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    if-eqz v6, :cond_1

    .line 1119
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v0, :cond_4

    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    :goto_2
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1122
    :cond_1
    return-void

    .end local v2    # "isAirplaneMode":Z
    .end local v3    # "isOwner":Z
    :cond_2
    move v3, v4

    .line 1114
    goto :goto_0

    .restart local v3    # "isOwner":Z
    :cond_3
    move v2, v4

    .line 1116
    goto :goto_1

    .restart local v2    # "isAirplaneMode":Z
    :cond_4
    move v5, v4

    .line 1119
    goto :goto_2
.end method

.method private updateMenuTitles()V
    .locals 2

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f0a0cc3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1098
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    if-eqz v0, :cond_1

    .line 1099
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f0a0cc6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1104
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v0, :cond_2

    .line 1105
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f0a0cc8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1109
    :goto_2
    return-void

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f0a0cc2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1101
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f0a0cc5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 1107
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f0a0cc7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private updatePolicy(Z)V
    .locals 12
    .param p1, "refreshCycle"    # Z

    .prologue
    .line 1880
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 1881
    .local v0, "dataEnabledVisible":Z
    iget-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 1883
    .local v1, "disableAtLimitVisible":Z
    const/4 v2, 0x0

    .line 1884
    .local v2, "isAirplaneMode":Z
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1886
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    const/4 v2, 0x1

    .line 1890
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 1892
    .local v3, "isToddlerMode":Z
    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_TODDLER_MODE"

    invoke-static {v6}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1893
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "toddler_mode_switch"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    const/4 v3, 0x1

    .line 1896
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v6

    if-nez v6, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isRoamingArea()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1899
    :cond_2
    const/4 v0, 0x0

    .line 1900
    const/4 v1, 0x0

    .line 1906
    :cond_3
    :goto_2
    const-string v6, "mobile"

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v7, "Slot"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1907
    :cond_4
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    .line 1908
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1909
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    .line 1921
    :cond_5
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    if-nez v6, :cond_a

    .line 1922
    const-string v6, "DataUsage"

    const-string v7, "mPolicyEditor is null. stop update policy"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :cond_6
    :goto_3
    return-void

    .line 1886
    .end local v3    # "isToddlerMode":Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 1893
    .restart local v3    # "isToddlerMode":Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_1

    .line 1901
    :cond_9
    const-string v6, "CTC"

    const-string v7, "ril.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1902
    const/4 v0, 0x0

    goto :goto_2

    .line 1926
    :cond_a
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v7}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v5

    .line 1927
    .local v5, "policy":Landroid/net/NetworkPolicy;
    const-string v6, "DataUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatePolicy :mPolicyEditor ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mTemplate ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    const-string v6, "DataUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatePolicy :policy ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    invoke-direct {p0, v5}, Lcom/android/settings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1931
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v8, "isUserMobileDataLimitAllowed"

    invoke-static {v6, v7, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1932
    .local v4, "isUserMobileDataLimitAllowed":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_e

    const/4 v6, 0x1

    if-eq v4, v6, :cond_e

    .line 1933
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1939
    :goto_4
    sget-boolean v6, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v6, :cond_b

    sget-boolean v6, Lcom/android/settings/DataUsageSummary;->isSPR:Z

    if-eqz v6, :cond_10

    .line 1940
    :cond_b
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1944
    :goto_5
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;

    if-eqz v5, :cond_11

    iget-wide v8, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-eqz v6, :cond_11

    const/4 v6, 0x1

    :goto_6
    invoke-virtual {v7, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1946
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v6

    if-nez v6, :cond_c

    .line 1947
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v6, v5}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1959
    .end local v4    # "isUserMobileDataLimitAllowed":I
    :cond_c
    :goto_7
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    if-eqz v0, :cond_13

    const/4 v6, 0x0

    :goto_8
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1960
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    if-eqz v1, :cond_14

    const/4 v6, 0x0

    :goto_9
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1962
    if-eqz p1, :cond_d

    .line 1964
    invoke-direct {p0, v5}, Lcom/android/settings/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    .line 1967
    :cond_d
    sget-boolean v6, Lcom/android/settings/DataUsageSummary;->isCHN:Z

    if-eqz v6, :cond_6

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->SendDataChangeIntent()V

    goto/16 :goto_3

    .line 1935
    .restart local v4    # "isUserMobileDataLimitAllowed":I
    :cond_e
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    if-eqz v5, :cond_f

    iget-wide v8, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-eqz v6, :cond_f

    const/4 v6, 0x1

    :goto_a
    invoke-virtual {v7, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4

    :cond_f
    const/4 v6, 0x0

    goto :goto_a

    .line 1942
    :cond_10
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1944
    :cond_11
    const/4 v6, 0x0

    goto :goto_6

    .line 1952
    .end local v4    # "isUserMobileDataLimitAllowed":I
    :cond_12
    const/4 v1, 0x0

    .line 1954
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1956
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_7

    .line 1959
    :cond_13
    const/16 v6, 0x8

    goto :goto_8

    .line 1960
    :cond_14
    const/16 v6, 0x8

    goto :goto_9
.end method

.method private updateTabs()V
    .locals 15

    .prologue
    .line 1355
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1356
    .local v1, "context":Landroid/content/Context;
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v12}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 1357
    const/4 v3, 0x0

    .line 1359
    .local v3, "index":I
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v4

    .line 1360
    .local v4, "mobileSplit":Z
    if-eqz v4, :cond_5

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1361
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v13, "3g"

    const v14, 0x7f0a0cf4

    invoke-direct {p0, v13, v14}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1362
    add-int/lit8 v3, v3, 0x1

    .line 1363
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v13, "4g"

    const v14, 0x7f0a0cf3

    invoke-direct {p0, v13, v14}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1364
    add-int/lit8 v3, v3, 0x1

    .line 1403
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyEnt1Radio(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1404
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v13, "ent1"

    const v14, 0x7f0a0cf5

    invoke-direct {p0, v13, v14}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1406
    :cond_1
    iget-boolean v12, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    if-eqz v12, :cond_2

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1407
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v13, "wifi"

    const v14, 0x7f0a0cf0

    invoke-direct {p0, v13, v14}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1409
    :cond_2
    iget-boolean v12, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v12, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/settings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1410
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v13, "ethernet"

    const v14, 0x7f0a0cf1

    invoke-direct {p0, v13, v14}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1413
    :cond_3
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v12}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v12

    if-nez v12, :cond_b

    const/4 v6, 0x1

    .line 1414
    .local v6, "noTabs":Z
    :goto_1
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v12}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_c

    const/4 v5, 0x1

    .line 1415
    .local v5, "multipleTabs":Z
    :goto_2
    iget-object v13, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v5, :cond_d

    const/4 v12, 0x0

    :goto_3
    invoke-virtual {v13, v12}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 1416
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v12, :cond_f

    .line 1417
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v13}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1419
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    .line 1423
    :goto_4
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 1430
    :cond_4
    :goto_5
    return-void

    .line 1365
    .end local v5    # "multipleTabs":Z
    .end local v6    # "noTabs":Z
    :cond_5
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1366
    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v7

    .line 1367
    .local v7, "phoneCount":I
    const-string v12, "DataUsage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateTabs(),phoneCount ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    const/4 v12, 0x1

    if-le v7, v12, :cond_a

    .line 1369
    const/4 v8, 0x0

    .line 1370
    .local v8, "simIcon":Landroid/widget/ImageView;
    const/4 v0, 0x0

    .line 1371
    .local v0, "cardStatus":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v7, :cond_0

    .line 1372
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v12

    const/4 v13, 0x5

    if-ne v12, v13, :cond_8

    .line 1373
    const-string v12, "DCGG"

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "DCGS"

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "DCGGS"

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "CG"

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1378
    :cond_6
    const/16 v9, 0x9

    .line 1379
    .local v9, "simState":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v12

    const/4 v13, 0x0

    aget-wide v10, v12, v13

    .line 1380
    .local v10, "subId":J
    const-string v12, "gsm.sim.currentcardstatus"

    const-string v13, "9"

    invoke-static {v12, v10, v11, v13}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1381
    if-eqz v0, :cond_7

    .line 1382
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1383
    :cond_7
    const/4 v12, 0x3

    if-ne v9, v12, :cond_8

    .line 1384
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-direct {p0, v2}, Lcom/android/settings/DataUsageSummary;->getSubTag(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v2}, Lcom/android/settings/DataUsageSummary;->getSimName(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {p0, v13, v14}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1385
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v12}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v12

    const v13, 0x1020006

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "simIcon":Landroid/widget/ImageView;
    check-cast v8, Landroid/widget/ImageView;

    .line 1386
    .restart local v8    # "simIcon":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {p0, v2}, Lcom/android/settings/DataUsageSummary;->getSimIcon(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1387
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1388
    add-int/lit8 v3, v3, 0x1

    .line 1371
    .end local v9    # "simState":I
    .end local v10    # "subId":J
    :cond_8
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 1391
    :cond_9
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-direct {p0, v2}, Lcom/android/settings/DataUsageSummary;->getSubTag(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v2}, Lcom/android/settings/DataUsageSummary;->getSimName(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {p0, v13, v14}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1392
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v12}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v12

    const v13, 0x1020006

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "simIcon":Landroid/widget/ImageView;
    check-cast v8, Landroid/widget/ImageView;

    .line 1393
    .restart local v8    # "simIcon":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {p0, v2}, Lcom/android/settings/DataUsageSummary;->getSimIcon(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1394
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1395
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1400
    .end local v0    # "cardStatus":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v8    # "simIcon":Landroid/widget/ImageView;
    :cond_a
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v13, "mobile"

    const v14, 0x7f0a0cf2

    invoke-direct {p0, v13, v14}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto/16 :goto_0

    .line 1413
    .end local v7    # "phoneCount":I
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1414
    .restart local v6    # "noTabs":Z
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1415
    .restart local v5    # "multipleTabs":Z
    :cond_d
    const/16 v12, 0x8

    goto/16 :goto_3

    .line 1421
    :cond_e
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v13, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1424
    :cond_f
    if-eqz v6, :cond_4

    .line 1426
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    goto/16 :goto_5
.end method

.method private updateView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1709
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1710
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "bg_traffic_service_state"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1711
    .local v1, "serviceState":I
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateView : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bg_traffic_service_state"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1714
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1715
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1716
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMenuBackgroundTraffic true : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bg_traffic_service_state"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    :goto_0
    return-void

    .line 1717
    :cond_0
    if-ne v1, v5, :cond_1

    .line 1718
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1719
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1720
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMenuBackgroundTraffic false : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bg_traffic_service_state"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1722
    :cond_1
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMenuBackgroundTraffic else : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bg_traffic_service_state"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method byteToLong([BII)J
    .locals 10
    .param p1, "data"    # [B
    .param p2, "idx_from"    # I
    .param p3, "idx_to"    # I

    .prologue
    .line 4368
    const-wide/16 v2, 0x0

    .line 4369
    .local v2, "value":J
    array-length v1, p1

    if-ge v1, p3, :cond_0

    move-wide v4, v2

    .line 4374
    .end local v2    # "value":J
    .local v4, "value":J
    :goto_0
    return-wide v4

    .line 4371
    .end local v4    # "value":J
    .restart local v2    # "value":J
    :cond_0
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_1
    if-lt v0, p2, :cond_1

    .line 4372
    const/16 v1, 0x8

    shl-long v6, v2, v1

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    add-long v2, v6, v8

    .line 4371
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    move-wide v4, v2

    .line 4374
    .end local v2    # "value":J
    .restart local v4    # "value":J
    goto :goto_0
.end method

.method public hasEthernet(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 4025
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    .line 4026
    .local v6, "conn":Landroid/net/ConnectivityManager;
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    .line 4029
    .local v10, "hasEthernet":Z
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 4031
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 4042
    .local v8, "ethernetBytes":J
    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 4034
    .end local v8    # "ethernetBytes":J
    :catch_0
    move-exception v7

    .line 4035
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 4038
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v8, 0x0

    .restart local v8    # "ethernetBytes":J
    goto :goto_0

    .line 4042
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isVolte()Z
    .locals 2

    .prologue
    .line 956
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 973
    invoke-super {p0, p1}, Lcom/android/settings/HighlightingFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 974
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 975
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    .line 977
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 497
    invoke-super {p0, p1}, Lcom/android/settings/HighlightingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 498
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 499
    .local v0, "context":Landroid/content/Context;
    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    .line 502
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_ATT_Device_Health_Enabled"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/DataUsageSummary;->mAttDeviceHealthEnabled:Z

    .line 506
    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 507
    .local v3, "sSalesCode":Ljava/lang/String;
    const-string v4, "VZW"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sput-boolean v7, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    .line 510
    :cond_0
    const-string v4, "SPR"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "VMU"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "BST"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "XAS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 511
    :cond_1
    sput-boolean v7, Lcom/android/settings/DataUsageSummary;->isSPR:Z

    .line 515
    :cond_2
    const-string v4, "TMB"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sput-boolean v7, Lcom/android/settings/DataUsageSummary;->isTMB:Z

    .line 517
    :cond_3
    const-string v4, "ATT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sput-boolean v7, Lcom/android/settings/DataUsageSummary;->isATT:Z

    .line 522
    :cond_4
    sget-boolean v4, Lcom/android/settings/DataUsageSummary;->isMTR:Z

    if-eqz v4, :cond_5

    .line 523
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mHandler:Landroid/os/Handler;

    .line 524
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->connectToRilService_lifetime()V

    .line 527
    :cond_5
    const-string v4, "CHN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "CHU"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "CHM"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 528
    :cond_6
    sput-boolean v7, Lcom/android/settings/DataUsageSummary;->isCHN:Z

    .line 531
    :cond_7
    const-string v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 533
    const-string v4, "netstats"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 535
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 536
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 537
    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    .line 539
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "data_usage"

    invoke-virtual {v4, v5, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 541
    new-instance v4, Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v4, v5}, Lcom/android/settings/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    .line 542
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-virtual {v4}, Lcom/android/settings/net/NetworkPolicyEditor;->read()V

    .line 545
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v4}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v4

    if-nez v4, :cond_8

    .line 546
    const-string v4, "DataUsage"

    const-string v5, "No bandwidth control; leaving"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :cond_8
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v4}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 560
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "show_wifi"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    .line 561
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "show_ethernet"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    .line 564
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 565
    iput-boolean v7, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    .line 566
    iput-boolean v7, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    .line 570
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 571
    iput-boolean v7, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    .line 572
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "show_wifi"

    iget-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 577
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_usage_display_unit"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    .line 580
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 581
    .local v2, "intFltr":Landroid/content/IntentFilter;
    const-string v4, "com.android.settings.ACTION_DATA_ROAMING_NEGATIVE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 582
    const-string v4, "com.android.settings.ACTION_DATA_KEY_NEGATIVE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 583
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2, v9, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 584
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mBackgroundTrafficReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.skt.apra.action.SERVICE_STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 586
    invoke-virtual {p0, v7}, Lcom/android/settings/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 589
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAirplanemodeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v8, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 591
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_TODDLER_MODE"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 592
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "toddler_mode_switch"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mToddlermodeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v8, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 594
    :cond_b
    return-void

    .line 549
    .end local v2    # "intFltr":Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 550
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "DataUsage"

    const-string v5, "No bandwidth control; leaving"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 556
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 557
    .restart local v1    # "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 981
    const v0, 0x7f120001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 983
    sget-boolean v0, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v0, :cond_0

    .line 984
    const v0, 0x7f1006f4

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 986
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 600
    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 601
    .local v2, "context":Landroid/content/Context;
    const v10, 0x7f04007b

    const/4 v11, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 603
    .local v9, "view":Landroid/view/View;
    new-instance v10, Lcom/android/settings/net/UidDetailProvider;

    invoke-direct {v10, v2}, Lcom/android/settings/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    .line 605
    const v10, 0x1020012

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 606
    const v10, 0x7f100139

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 607
    const v10, 0x1020013

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TabWidget;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 608
    const v10, 0x102000a

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    .line 612
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v10

    const/high16 v11, 0x2000000

    if-ne v10, v11, :cond_9

    const/4 v7, 0x1

    .line 614
    .local v7, "shouldInset":Z
    :goto_0
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    .line 617
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v9, v10, v11}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 619
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v10}, Landroid/widget/TabHost;->setup()V

    .line 620
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 622
    const v10, 0x7f040078

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    .line 623
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 626
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 627
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 629
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    if-lez v10, :cond_0

    .line 631
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    invoke-static {v10, v11}, Lcom/android/settings/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    .line 632
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 637
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v11, 0x7f100134

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    .line 639
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v11, 0x7f100135

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0087

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 642
    .local v5, "paddingSide":I
    const v10, 0x7f040072

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    .line 643
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 644
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 645
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 652
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 653
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const/high16 v11, 0x7f100000

    const-string v12, "data_usage_enable_mobile"

    invoke-virtual {v10, v11, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 654
    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportVolteSettings(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 658
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledVolteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 663
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setClickable(Z)V

    .line 664
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 665
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 667
    const v10, 0x7f040072

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataRoaming_Volte:Landroid/widget/CheckBox;

    .line 668
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataRoaming_Volte:Landroid/widget/CheckBox;

    const/high16 v11, 0x7f100000

    const-string v12, "data_roaming_enable_mobile"

    invoke-virtual {v10, v11, v12}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataRoaming_Volte:Landroid/widget/CheckBox;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 670
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataRoaming_Volte:Landroid/widget/CheckBox;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 671
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataRoaming_Volte:Landroid/widget/CheckBox;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 672
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mDataRoaming_Volte:Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    .line 673
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataRoaming_Volte:Landroid/widget/CheckBox;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 674
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingVolteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setClickable(Z)V

    .line 676
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "content://com.sec.knox.provider/RoamingPolicy"

    const-string v12, "isRoamingDataEnabled"

    invoke-static {v10, v11, v12}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 679
    .local v3, "isRoamingDataEnabled":I
    const/4 v10, -0x1

    if-eq v3, v10, :cond_2

    .line 680
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataRoaming_Volte:Landroid/widget/CheckBox;

    if-eqz v10, :cond_1

    .line 681
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mDataRoaming_Volte:Landroid/widget/CheckBox;

    const/4 v10, 0x1

    if-ne v3, v10, :cond_b

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v11, v10}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 683
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    if-eqz v10, :cond_2

    .line 684
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    const/4 v10, 0x1

    if-ne v3, v10, :cond_c

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v11, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 687
    :cond_2
    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportVolteSettings(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 688
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 691
    :cond_3
    const v10, 0x7f040072

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/CheckBox;

    .line 692
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/CheckBox;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 693
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/CheckBox;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 694
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    .line 695
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setClickable(Z)V

    .line 696
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 697
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    const v10, 0x7f040072

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    .line 704
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 705
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 706
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 707
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/high16 v11, 0x7f100000

    const-string v12, "data_usage_disable_mobile_limit"

    invoke-virtual {v10, v11, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setClickable(Z)V

    .line 710
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 711
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 715
    const v10, 0x7f040072

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;

    .line 716
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 717
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 718
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 719
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    .line 720
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setClickable(Z)V

    .line 721
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 722
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    sget-boolean v10, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v10, :cond_4

    sget-boolean v10, Lcom/android/settings/DataUsageSummary;->isSPR:Z

    if-eqz v10, :cond_5

    .line 724
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mAlertAtWarningView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 729
    :cond_5
    new-instance v10, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    .line 730
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 731
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 732
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    const v11, 0x7f0201ec

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 734
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_icon:Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    .line 735
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setClickable(Z)V

    .line 736
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 737
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    const v11, 0x7f0a1e1c

    invoke-static {v10, v11}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 738
    sget-boolean v10, Lcom/android/settings/DataUsageSummary;->isMTR:Z

    if-eqz v10, :cond_6

    .line 739
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 742
    :cond_6
    new-instance v10, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    .line 743
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 744
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 745
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mAlertTotalSentListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    const v11, 0x7f0201ec

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 747
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_icon:Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    .line 748
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setClickable(Z)V

    .line 749
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 750
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    const v11, 0x7f0a1e1d

    invoke-static {v10, v11}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 751
    sget-boolean v10, Lcom/android/settings/DataUsageSummary;->isMTR:Z

    if-eqz v10, :cond_7

    .line 752
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mTotalSent_menu:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 755
    :cond_7
    const v10, 0x7f04016d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    .line 756
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setClickable(Z)V

    .line 757
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 758
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    const v11, 0x7f0a1e1e

    invoke-static {v10, v11}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 759
    sget-boolean v10, Lcom/android/settings/DataUsageSummary;->isMTR:Z

    if-eqz v10, :cond_8

    .line 760
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mLifedata_menu:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 764
    :cond_8
    const v10, 0x7f040076

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    .line 765
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const/high16 v11, 0x7f100000

    const-string v12, "data_usage_cycle"

    invoke-virtual {v10, v11, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v11, 0x7f10012d

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    .line 767
    new-instance v10, Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-direct {v10, v2}, Lcom/android/settings/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    .line 768
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 769
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v11, 0x7f10012e

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    .line 771
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 774
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v11, 0x7f100125

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/settings/widget/ChartDataUsageView;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    .line 775
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v10, v11}, Lcom/android/settings/widget/ChartDataUsageView;->setListener(Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 778
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    const-wide v12, 0x18fff00000L

    const-wide v14, 0x1900000000L

    invoke-virtual {v10, v12, v13, v14, v15}, Lcom/android/settings/widget/ChartDataUsageView;->setMaximumSetableValue(JJ)V

    .line 783
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v11, 0x7f10012f

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    .line 784
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v11, 0x7f100059

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    .line 785
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v11, 0x7f100130

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    .line 786
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v11, 0x7f100131

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    .line 787
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v11, 0x7f100132

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    .line 788
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v11, 0x7f100133

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    .line 790
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v11, 0x7f10005b

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    .line 792
    const v10, 0x7f040072

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    .line 793
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 794
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 795
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 796
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setClickable(Z)V

    .line 797
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 798
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 802
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v11, 0x7f100136

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    .line 803
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v11, 0x1020004

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    .line 804
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v11, 0x7f100138

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    .line 805
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v11, 0x7f100137

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 806
    .local v4, "mUpgBtn":Landroid/widget/Button;
    new-instance v10, Lcom/android/settings/DataUsageSummary$7;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/settings/DataUsageSummary$7;-><init>(Lcom/android/settings/DataUsageSummary;)V

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 818
    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 819
    .local v6, "sSalesCode":Ljava/lang/String;
    const-string v10, "TMB"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 820
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v11, 0x7f100136

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0a0cde

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 825
    :goto_4
    const-string v10, "user"

    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 826
    .local v8, "um":Landroid/os/UserManager;
    new-instance v10, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    invoke-direct {v10, v8, v11, v12}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;-><init>(Landroid/os/UserManager;Lcom/android/settings/net/UidDetailProvider;I)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/DataUsageSummary;->mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    .line 827
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 828
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 830
    return-object v9

    .line 612
    .end local v3    # "isRoamingDataEnabled":I
    .end local v4    # "mUpgBtn":Landroid/widget/Button;
    .end local v5    # "paddingSide":I
    .end local v6    # "sSalesCode":Ljava/lang/String;
    .end local v7    # "shouldInset":Z
    .end local v8    # "um":Landroid/os/UserManager;
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 661
    .restart local v5    # "paddingSide":I
    .restart local v7    # "shouldInset":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 681
    .restart local v3    # "isRoamingDataEnabled":I
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 684
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 822
    .restart local v4    # "mUpgBtn":Landroid/widget/Button;
    .restart local v6    # "sSalesCode":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v12, 0x7f100137

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1288
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 1289
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mConfirmAtBootView:Landroid/view/View;

    .line 1290
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 1291
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1292
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1293
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settings/net/UidDetailProvider;->clearCache()V

    .line 1295
    :cond_0
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    .line 1297
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1298
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1299
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    .line 1303
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 1304
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1305
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1306
    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    .line 1309
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 1311
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mAirplanemodeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1312
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1313
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mBackgroundTrafficReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1314
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1316
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_TODDLER_MODE"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1317
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mToddlermodeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1319
    :cond_3
    invoke-super {p0}, Lcom/android/settings/HighlightingFragment;->onDestroy()V

    .line 1320
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 22
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1135
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1283
    :cond_0
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 1137
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v3}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v15, 0x1

    .line 1138
    .local v15, "restrictBackground":Z
    :goto_2
    if-eqz v15, :cond_2

    .line 1139
    invoke-static/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    .line 1144
    :goto_3
    const/4 v3, 0x1

    goto :goto_1

    .line 1137
    .end local v15    # "restrictBackground":Z
    :cond_1
    const/4 v15, 0x0

    goto :goto_2

    .line 1142
    .restart local v15    # "restrictBackground":Z
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_3

    .line 1147
    .end local v15    # "restrictBackground":Z
    :pswitch_1
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v9, 0x1

    .line 1148
    .local v9, "backgroundTraffic":Z
    :goto_4
    if-eqz v9, :cond_4

    .line 1149
    invoke-static/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;->show(Lcom/android/settings/DataUsageSummary;)V

    .line 1153
    :goto_5
    const/4 v3, 0x1

    goto :goto_1

    .line 1147
    .end local v9    # "backgroundTraffic":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_4

    .line 1151
    .restart local v9    # "backgroundTraffic":Z
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$DeniedBackgroundTraffic;->show(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_5

    .line 1156
    .end local v9    # "backgroundTraffic":Z
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    .line 1157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "show_wifi"

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1158
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateMenuTitles()V

    .line 1159
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    .line 1160
    const/4 v3, 0x1

    goto :goto_1

    .line 1156
    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    .line 1163
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    if-nez v3, :cond_6

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    .line 1164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "show_ethernet"

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1165
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateMenuTitles()V

    .line 1166
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    .line 1167
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1163
    :cond_6
    const/4 v3, 0x0

    goto :goto_7

    .line 1171
    :pswitch_4
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1175
    :pswitch_5
    new-instance v14, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1176
    .local v14, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_a

    .line 1177
    const-string v3, "DCGG"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "DCGS"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "DCGGS"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "CG"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1181
    :cond_7
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v18, v3, v4

    .line 1182
    .local v18, "subId1":J
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v20, v3, v4

    .line 1183
    .local v20, "subId2":J
    const-string v3, "gsm.sim.currentcardstatus"

    const-string v4, "9"

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1184
    .local v10, "cardStatus1":Ljava/lang/String;
    const-string v3, "gsm.sim.currentcardstatus"

    const-string v4, "9"

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1185
    .local v11, "cardStatus2":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1186
    .local v16, "simState1":I
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1189
    .local v17, "simState2":I
    const/4 v3, 0x3

    move/from16 v0, v16

    if-ne v0, v3, :cond_8

    const/4 v3, 0x3

    move/from16 v0, v17

    if-ne v0, v3, :cond_8

    .line 1190
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.MobileNetworkSettingsTab"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1202
    .end local v10    # "cardStatus1":Ljava/lang/String;
    .end local v11    # "cardStatus2":Ljava/lang/String;
    .end local v16    # "simState1":I
    .end local v17    # "simState2":I
    .end local v18    # "subId1":J
    .end local v20    # "subId2":J
    :goto_8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_b

    .line 1204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v14, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1209
    :goto_9
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1192
    .restart local v10    # "cardStatus1":Ljava/lang/String;
    .restart local v11    # "cardStatus2":Ljava/lang/String;
    .restart local v16    # "simState1":I
    .restart local v17    # "simState2":I
    .restart local v18    # "subId1":J
    .restart local v20    # "subId2":J
    :cond_8
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_8

    .line 1195
    .end local v10    # "cardStatus1":Ljava/lang/String;
    .end local v11    # "cardStatus2":Ljava/lang/String;
    .end local v16    # "simState1":I
    .end local v17    # "simState2":I
    .end local v18    # "subId1":J
    .end local v20    # "subId2":J
    :cond_9
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.MobileNetworkSettingsTab"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_8

    .line 1199
    :cond_a
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_8

    .line 1207
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 1212
    .end local v14    # "intent":Landroid/content/Intent;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/SettingsActivity;

    if-eqz v3, :cond_c

    .line 1213
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    .line 1214
    .local v2, "sa":Lcom/android/settings/SettingsActivity;
    const-class v3, Lcom/android/settings/net/DataUsageMeteredSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0a0d1b

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1221
    .end local v2    # "sa":Lcom/android/settings/SettingsActivity;
    :goto_a
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1217
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 1218
    .local v2, "sa":Landroid/preference/PreferenceActivity;
    const-class v3, Lcom/android/settings/net/DataUsageMeteredSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0a0d1b

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_a

    .line 1225
    .end local v2    # "sa":Landroid/preference/PreferenceActivity;
    :pswitch_7
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1226
    const-string v3, "SyncState"

    const-string v4, "ignoring monkey\'s attempt to flip global sync state"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :goto_b
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1228
    :cond_d
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0cdb

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c010c

    sget v5, Lcom/android/settings/DataUsageSummary;->mSelectDisplayUnit:I

    new-instance v6, Lcom/android/settings/DataUsageSummary$10;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/settings/DataUsageSummary$10;-><init>(Lcom/android/settings/DataUsageSummary;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    .line 1240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_b

    .line 1248
    :pswitch_8
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 1249
    .local v13, "info":Landroid/content/pm/PackageInfo;
    iget v3, v13, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1253
    iget v3, v13, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    .line 1258
    sget-boolean v3, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v3, :cond_e

    sget-boolean v3, Lcom/android/settings/DataUsageSummary;->isSPR:Z

    if-eqz v3, :cond_0

    .line 1259
    :cond_e
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1260
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v3, "helphub:section"

    const-string v4, "data_usage_vzw_spr"

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1261
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1276
    .end local v13    # "info":Landroid/content/pm/PackageInfo;
    .end local v14    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v12

    .line 1278
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1264
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v13    # "info":Landroid/content/pm/PackageInfo;
    :cond_f
    :try_start_1
    iget v3, v13, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1272
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1273
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v3, "helphub:appid"

    const-string v4, "data_usage"

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1274
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1135
    nop

    :pswitch_data_0
    .packed-switch 0x7f1006ed
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 946
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isVolte()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/settings/DataUsageSummary;->isATT:Z

    if-nez v1, :cond_0

    .line 947
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 949
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 952
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-super {p0}, Lcom/android/settings/HighlightingFragment;->onPause()V

    .line 953
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 14
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 990
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 991
    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    .line 992
    .local v0, "appDetailMode":Z
    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 994
    .local v8, "sSalesCode":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_0
    const/4 v5, 0x1

    .line 996
    .local v5, "isOwner":Z
    :goto_0
    const-string v9, "phone"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 998
    .local v6, "mPhone":Landroid/telephony/TelephonyManager;
    const v9, 0x7f1006ef

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    .line 999
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1000
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    if-nez v0, :cond_a

    const/4 v9, 0x1

    :goto_1
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1001
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    iget-boolean v10, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1006
    :goto_2
    const v9, 0x7f1006f0

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    .line 1007
    invoke-virtual {p0, v1}, Lcom/android/settings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1008
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    if-nez v0, :cond_c

    const/4 v9, 0x1

    :goto_3
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1013
    :goto_4
    const v9, 0x7f1006ee

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    .line 1014
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    if-eqz v9, :cond_1

    .line 1015
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_e

    if-eqz v5, :cond_e

    if-nez v0, :cond_e

    const/4 v9, 0x1

    :goto_5
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1017
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v10}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1020
    :cond_1
    const v9, 0x7f1006ed

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    .line 1021
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    if-eqz v9, :cond_2

    .line 1022
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->getBackgroundTrafficChecked()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1023
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->getBackgroundTrafficEnabled()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1025
    :cond_2
    const-string v9, "DataUsage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPrepareOptionsMenu mMenuBackgroundTraffic : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "bg_traffic_service_state"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v11, "isBackgroundDataEnabled"

    invoke-static {v9, v10, v11}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1030
    .local v4, "isBackgroundDataEnabled":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_f

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    if-eqz v9, :cond_f

    const/4 v9, 0x1

    if-eq v4, v9, :cond_f

    .line 1031
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1032
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1040
    :cond_3
    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    if-eqz v9, :cond_10

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    const/16 v10, 0x64

    if-ge v9, v10, :cond_10

    .line 1041
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1046
    :cond_4
    :goto_7
    const v9, 0x7f1006f1

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 1047
    .local v7, "metered":Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1048
    :cond_5
    if-nez v0, :cond_11

    const/4 v9, 0x1

    :goto_8
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1054
    :goto_9
    const v9, 0x7f1006f2

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    .line 1055
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1057
    const v9, 0x7f1006f3

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    .line 1058
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    const/4 v3, 0x1

    .line 1060
    .local v3, "isAirplaneMode":Z
    :goto_a
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_14

    if-nez v0, :cond_14

    if-eqz v5, :cond_14

    if-nez v3, :cond_14

    const/4 v9, 0x1

    :goto_b
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1063
    const v9, 0x7f1006f5

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1064
    .local v2, "help":Landroid/view/MenuItem;
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1065
    sget-boolean v9, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-eqz v9, :cond_15

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0032

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 1066
    const/4 v9, 0x1

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1077
    :goto_c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    const/16 v10, 0x64

    if-lt v9, v10, :cond_6

    .line 1078
    const/4 v9, 0x0

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1082
    :cond_6
    const-string v9, "TFN"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1083
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1085
    :cond_7
    const-string v9, "AIO"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1086
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1088
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateMenuTitles()V

    .line 1089
    return-void

    .line 994
    .end local v2    # "help":Landroid/view/MenuItem;
    .end local v3    # "isAirplaneMode":Z
    .end local v4    # "isBackgroundDataEnabled":I
    .end local v5    # "isOwner":Z
    .end local v6    # "mPhone":Landroid/telephony/TelephonyManager;
    .end local v7    # "metered":Landroid/view/MenuItem;
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1000
    .restart local v5    # "isOwner":Z
    .restart local v6    # "mPhone":Landroid/telephony/TelephonyManager;
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1003
    :cond_b
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1008
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1010
    :cond_d
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 1015
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 1035
    .restart local v4    # "isBackgroundDataEnabled":I
    :cond_f
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    if-eqz v9, :cond_3

    .line 1036
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 1043
    :cond_10
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    if-eqz v9, :cond_4

    .line 1044
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mMenuBackgroundTraffic:Landroid/view/MenuItem;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 1048
    .restart local v7    # "metered":Landroid/view/MenuItem;
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_8

    .line 1050
    :cond_12
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_9

    .line 1058
    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 1060
    .restart local v3    # "isAirplaneMode":Z
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_b

    .line 1068
    .restart local v2    # "help":Landroid/view/MenuItem;
    :cond_15
    const/4 v9, 0x0

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_c

    .line 1070
    :cond_16
    sget-boolean v9, Lcom/android/settings/DataUsageSummary;->isVZW:Z

    if-nez v9, :cond_17

    sget-boolean v9, Lcom/android/settings/DataUsageSummary;->isSPR:Z

    if-eqz v9, :cond_18

    .line 1071
    :cond_17
    const/4 v9, 0x1

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_c

    .line 1073
    :cond_18
    const/4 v9, 0x0

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_c
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 848
    invoke-super {p0}, Lcom/android/settings/HighlightingFragment;->onResume()V

    .line 849
    const-string v6, "DataUsage"

    const-string v9, "onResume"

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "mobile_data"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 852
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    .line 857
    new-array v4, v7, [Ljava/lang/String;

    const-string v6, "false"

    aput-object v6, v4, v8

    .line 858
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "content://com.sec.knox.provider2/PhoneRestrictionPolicy"

    const-string v10, "checkEnableUseOfPacketData"

    invoke-static {v6, v9, v10, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 859
    .local v0, "checkEnableUseOfPacketData":I
    if-eq v0, v12, :cond_1

    .line 860
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;

    if-ne v0, v7, :cond_5

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 861
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    if-ne v0, v7, :cond_6

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 862
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v10, "isBackgroundDataEnabled"

    invoke-static {v6, v9, v10}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 863
    .local v1, "isBackgroundDataEnabled":I
    if-nez v1, :cond_7

    .line 864
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 865
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 871
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v10, "isUserMobileDataLimitAllowed"

    invoke-static {v6, v9, v10}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 872
    .local v3, "isUserMobileDataLimitAllowed":I
    if-nez v3, :cond_8

    .line 873
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v9}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 874
    const-wide/16 v10, -0x1

    invoke-direct {p0, v10, v11}, Lcom/android/settings/DataUsageSummary;->setPolicyLimitBytes(J)V

    .line 876
    :cond_0
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 877
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 878
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    invoke-virtual {v6}, Lcom/android/settings/net/UidDetailProvider;->clearCache()V

    .line 885
    .end local v1    # "isBackgroundDataEnabled":I
    .end local v3    # "isUserMobileDataLimitAllowed":I
    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "content://com.sec.knox.provider/RoamingPolicy"

    const-string v10, "isRoamingDataEnabled"

    invoke-static {v6, v9, v10}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 887
    .local v2, "isRoamingDataEnabled":I
    if-eq v2, v12, :cond_3

    .line 888
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataRoaming_Volte:Landroid/widget/CheckBox;

    if-eqz v6, :cond_2

    .line 889
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mDataRoaming_Volte:Landroid/widget/CheckBox;

    if-ne v2, v7, :cond_9

    move v6, v7

    :goto_4
    invoke-virtual {v9, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 891
    :cond_2
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 892
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataRoamingView:Landroid/view/View;

    if-ne v2, v7, :cond_a

    :goto_5
    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 908
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getView()Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/android/settings/DataUsageSummary$8;

    invoke-direct {v7, p0}, Lcom/android/settings/DataUsageSummary$8;-><init>(Lcom/android/settings/DataUsageSummary;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 916
    new-instance v6, Lcom/android/settings/DataUsageSummary$9;

    invoke-direct {v6, p0}, Lcom/android/settings/DataUsageSummary$9;-><init>(Lcom/android/settings/DataUsageSummary;)V

    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/DataUsageSummary$9;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 937
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isVolte()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v6

    if-nez v6, :cond_4

    sget-boolean v6, Lcom/android/settings/DataUsageSummary;->isATT:Z

    if-nez v6, :cond_4

    .line 938
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 940
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 942
    .end local v5    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_4
    return-void

    .end local v2    # "isRoamingDataEnabled":I
    :cond_5
    move v6, v8

    .line 860
    goto/16 :goto_0

    :cond_6
    move v6, v8

    .line 861
    goto/16 :goto_1

    .line 867
    .restart local v1    # "isBackgroundDataEnabled":I
    :cond_7
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_2

    .line 880
    .restart local v3    # "isUserMobileDataLimitAllowed":I
    :cond_8
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3

    .end local v1    # "isBackgroundDataEnabled":I
    .end local v3    # "isUserMobileDataLimitAllowed":I
    .restart local v2    # "isRoamingDataEnabled":I
    :cond_9
    move v6, v8

    .line 889
    goto :goto_4

    :cond_a
    move v7, v8

    .line 892
    goto :goto_5
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 961
    invoke-super {p0}, Lcom/android/settings/HighlightingFragment;->onStop()V

    .line 963
    sget-boolean v0, Lcom/android/settings/DataUsageSummary;->isMTR:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 965
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mBound:Z

    .line 966
    const-string v0, "DataUsage"

    const-string v1, "onStop: unbindService"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 835
    invoke-super {p0, p1}, Lcom/android/settings/HighlightingFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 838
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 839
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 843
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    .line 844
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 9
    .param p1, "restrictBackground"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1782
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1783
    .local v0, "context":Landroid/content/Context;
    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1785
    .local v1, "mPhone":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1786
    const-string v7, "persist.sys.restrict_background"

    if-eqz p1, :cond_2

    const-string v4, "true"

    :goto_0
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    :cond_0
    move v2, p1

    .line 1788
    .local v2, "mRestrictBackground":Z
    const-string v4, ""

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a087b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v4, v7, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    .line 1789
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1790
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "data_powersaving_mode"

    if-eqz p1, :cond_3

    move v4, v5

    :goto_1
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1791
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/settings/DataUsageSummary$14;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/DataUsageSummary$14;-><init>(Lcom/android/settings/DataUsageSummary;Z)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1801
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1806
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1807
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v4, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1819
    :cond_1
    return-void

    .line 1786
    .end local v2    # "mRestrictBackground":Z
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_2
    const-string v4, "false"

    goto :goto_0

    .restart local v2    # "mRestrictBackground":Z
    :cond_3
    move v4, v6

    .line 1790
    goto :goto_1
.end method
