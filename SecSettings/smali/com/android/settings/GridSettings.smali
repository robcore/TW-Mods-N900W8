.class public Lcom/android/settings/GridSettings;
.super Landroid/preference/PreferenceActivity;
.source "GridSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/android/settings/ButtonBarHandler;
.implements Lcom/android/settings/grid/GridSettingsFragment$OnSetListner;
.implements Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;,
        Lcom/android/settings/GridSettings$HeaderAdapter;,
        Lcom/android/settings/GridSettings$NoHomeDialogFragment;,
        Lcom/android/settings/GridSettings$SettingsTabListener;,
        Lcom/android/settings/GridSettings$ViewPagerAdapter;,
        Lcom/android/settings/GridSettings$ScaleListner;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static isListView:Z

.field private static mContext:Landroid/content/Context;

.field private static mDirectSettingEnabler:Z

.field private static mIsFromSearch:Z

.field private static mSearchHeaderID:J

.field private static mSearchSettingValue:I

.field private static sIsEnableDockSettings:Z

.field private static sSalesCode:Ljava/lang/String;

.field private static sShowNoHomeNotice:Z


# instance fields
.field private SETTINGS_FOR_KIOSKCONTAINER:[I

.field private SETTINGS_FOR_KNOX:[I

.field private SETTINGS_FOR_RESTRICTED:[I

.field private headerViewCnt:I

.field private isExpanding:Z

.field private isGridView:Z

.field private isKioskContainer:Z

.field private listManager:Lcom/android/settings/HeaderListManager;

.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAirPlaneObserver:Landroid/database/ContentObserver;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mDualFoldertype:Z

.field private mFifthPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFirstPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mFourthPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentClass:Ljava/lang/String;

.field mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

.field private mGridcontainer:Lcom/android/settings/grid/GridContainer;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field private mKnoxCustomSettingsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHeader:Landroid/preference/PreferenceActivity$Header;

.field private mOpenSearchHierarchy:Z

.field private mPagerListView:[Landroid/widget/ListView;

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field mPhoneTabStyle:Z

.field mQuickHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field mQuickSettingsCategoryView:Landroid/view/View;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSGD:Landroid/view/ScaleGestureDetector;

.field private mSearchDepthCounter:I

.field private mSearchFragmentBundle:Landroid/os/Bundle;

.field private mSecondPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondSearchFragmentBundle:Landroid/os/Bundle;

.field private mSixthPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mTabDev:Z

.field private mTetheredData:I

.field private mThirdPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mTopLevelHeaderId:I

.field private pager:Landroid/support/v4/view/ViewPager;

.field private prevLength:I

.field private prevScreen:I

.field private tetherTitleRes:I

.field private viewTypeDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 207
    const-class v0, Lcom/android/settings/GridSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    .line 233
    sput-boolean v2, Lcom/android/settings/GridSettings;->sShowNoHomeNotice:Z

    .line 246
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    .line 248
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/GridSettings;->mSearchSettingValue:I

    .line 249
    sput-boolean v2, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    .line 251
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    .line 255
    sput-boolean v2, Lcom/android/settings/GridSettings;->mDirectSettingEnabler:Z

    .line 257
    sput-boolean v2, Lcom/android/settings/GridSettings;->sIsEnableDockSettings:Z

    .line 516
    sput-boolean v2, Lcom/android/settings/GridSettings;->isListView:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 198
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 250
    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 252
    iput-object v1, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 253
    iput-object v1, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 254
    iput v2, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    .line 258
    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->mDualFoldertype:Z

    .line 259
    iput-object v1, p0, Lcom/android/settings/GridSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    .line 265
    iput-object v1, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    .line 266
    iput v3, p0, Lcom/android/settings/GridSettings;->headerViewCnt:I

    .line 267
    iput-object v1, p0, Lcom/android/settings/GridSettings;->mQuickSettingsCategoryView:Landroid/view/View;

    .line 270
    const/16 v0, 0x4d

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/GridSettings;->SETTINGS_FOR_RESTRICTED:[I

    .line 354
    const/16 v0, 0x2c

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/GridSettings;->SETTINGS_FOR_KNOX:[I

    .line 402
    const/16 v0, 0x3c

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings/GridSettings;->SETTINGS_FOR_KIOSKCONTAINER:[I

    .line 483
    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    .line 490
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 496
    iput-boolean v4, p0, Lcom/android/settings/GridSettings;->mBatteryPresent:Z

    .line 497
    new-instance v0, Lcom/android/settings/GridSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/GridSettings$1;-><init>(Lcom/android/settings/GridSettings;)V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 514
    iput-boolean v4, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mQuickHeaders:Ljava/util/List;

    .line 520
    iput v3, p0, Lcom/android/settings/GridSettings;->prevScreen:I

    .line 521
    iput v2, p0, Lcom/android/settings/GridSettings;->prevLength:I

    .line 525
    iput v2, p0, Lcom/android/settings/GridSettings;->mTetheredData:I

    .line 528
    new-instance v0, Lcom/android/settings/GridSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/GridSettings$2;-><init>(Lcom/android/settings/GridSettings;)V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 541
    new-instance v0, Lcom/android/settings/GridSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/GridSettings$3;-><init>(Lcom/android/settings/GridSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mFirstPage:Ljava/util/List;

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mSecondPage:Ljava/util/List;

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mThirdPage:Ljava/util/List;

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mFourthPage:Ljava/util/List;

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mFifthPage:Ljava/util/List;

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mSixthPage:Ljava/util/List;

    .line 559
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mPagerListView:[Landroid/widget/ListView;

    .line 602
    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->isExpanding:Z

    .line 3762
    return-void

    .line 270
    nop

    :array_0
    .array-data 4
        0x7f100647
        0x7f100649
        0x7f100648
        0x7f10064a
        0x7f100650
        0x7f10064b
        0x7f100651
        0x7f100659
        0x7f100693
        0x7f100695
        0x7f100694
        0x7f100698
        0x7f100666
        0x7f10067b
        0x7f100667
        0x7f1006b9
        0x7f100669
        0x7f100639
        0x7f10063a
        0x7f10066a
        0x7f10066e
        0x7f100652
        0x7f100653
        0x7f1006ab
        0x7f1006ac
        0x7f100658
        0x7f10066f
        0x7f100670
        0x7f10066b
        0x7f1006a1
        0x7f100630
        0x7f100631
        0x7f100671
        0x7f100672
        0x7f100675
        0x7f100673
        0x7f10065e
        0x7f10066c
        0x7f10064d
        0x7f10065d
        0x7f100660
        0x7f10069d
        0x7f100680
        0x7f100681
        0x7f100682
        0x7f100637
        0x7f10065b
        0x7f100677
        0x7f100686
        0x7f100678
        0x7f100689
        0x7f100638
        0x7f1006b6
        0x7f1006af
        0x7f1006bb
        0x7f1006bd
        0x7f10068e
        0x7f1006be
        0x7f1006a8
        0x7f100636
        0x7f1006ad
        0x7f10063f
        0x7f100640
        0x7f100641
        0x7f100642
        0x7f10063d
        0x7f10063e
        0x7f100644
        0x7f100687
        0x7f100643
        0x7f100645
        0x7f1006a9
        0x7f100646
        0x7f100691
        0x7f1006bf
        0x7f10063b
        0x7f10062d
    .end array-data

    .line 354
    :array_1
    .array-data 4
        0x7f100647
        0x7f100649
        0x7f100659
        0x7f100693
        0x7f100695
        0x7f100694
        0x7f100698
        0x7f1006a1
        0x7f100666
        0x7f10067b
        0x7f100667
        0x7f1006bc
        0x7f100669
        0x7f100639
        0x7f10063a
        0x7f10066a
        0x7f10066e
        0x7f100652
        0x7f10066f
        0x7f100670
        0x7f100630
        0x7f100631
        0x7f100671
        0x7f100672
        0x7f100673
        0x7f10064d
        0x7f100682
        0x7f100638
        0x7f1006af
        0x7f1006bb
        0x7f1006bd
        0x7f10068e
        0x7f1006be
        0x7f10068f
        0x7f1006a8
        0x7f100636
        0x7f1006c0
        0x7f100646
        0x7f100691
        0x7f1006c2
        0x7f1006c7
        0x7f1006bf
        0x7f1006c5
        0x7f1006c6
    .end array-data

    .line 402
    :array_2
    .array-data 4
        0x7f100647
        0x7f100649
        0x7f100659
        0x7f100693
        0x7f100695
        0x7f100698
        0x7f1006a1
        0x7f100666
        0x7f10067b
        0x7f100667
        0x7f1006bc
        0x7f100669
        0x7f10066a
        0x7f10066e
        0x7f100652
        0x7f10066f
        0x7f100630
        0x7f100631
        0x7f100671
        0x7f100672
        0x7f100673
        0x7f10064d
        0x7f100682
        0x7f100638
        0x7f1006af
        0x7f1006bb
        0x7f1006bd
        0x7f10068e
        0x7f1006be
        0x7f10068f
        0x7f1006a8
        0x7f1006c0
        0x7f100691
        0x7f1006c2
        0x7f1006c7
        0x7f1006bf
        0x7f1006c5
        0x7f1006c6
        0x7f10064b
        0x7f100648
        0x7f100650
        0x7f1006d5
        0x7f10064a
        0x7f100675
        0x7f100659
        0x7f10068d
        0x7f10065b
        0x7f10065c
        0x7f1006d6
        0x7f10064c
        0x7f1006d2
        0x7f100686
        0x7f100691
        0x7f1006c4
        0x7f1006ab
        0x7f1006ac
        0x7f100680
        0x7f100681
        0x7f100689
        0x7f1006ad
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/GridSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/GridSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/GridSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/android/settings/GridSettings;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/GridSettings;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->makeFavoriteIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/GridSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/GridSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/android/settings/GridSettings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/GridSettings;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/GridSettings;->viewTypeDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/GridSettings;Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/GridSettings;
    .param p1, "x1"    # Landroid/widget/ListView;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # I
    .param p4, "x4"    # J

    .prologue
    .line 198
    invoke-virtual/range {p0 .. p5}, Lcom/android/settings/GridSettings;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFirstPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/GridSettings;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/GridSettings;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mSecondPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mThirdPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFourthPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFifthPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mSixthPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/GridSettings;)[Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mPagerListView:[Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/GridSettings;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/GridSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    return v0
.end method

.method static synthetic access$2400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/GridSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/GridSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/android/settings/GridSettings;->isExpanding:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/GridSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 198
    iget v0, p0, Lcom/android/settings/GridSettings;->headerViewCnt:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/GridSettings;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/GridSettings;
    .param p1, "x1"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/settings/GridSettings;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/GridSettings;
    .param p1, "x1"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/settings/GridSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/GridSettings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GridSettings;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private addQuickSettingsView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1488
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1490
    .local v1, "lv":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1505
    :cond_0
    :goto_0
    return-void

    .line 1493
    :cond_1
    sget-object v3, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mQuickHeaders:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    invoke-static {v3, v2}, Lcom/android/settings/Utils;->getCategoryView(Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mQuickSettingsCategoryView:Landroid/view/View;

    .line 1495
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mQuickSettingsCategoryView:Landroid/view/View;

    const v3, 0x7f1001a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1496
    .local v0, "expandArrow":Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1498
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mQuickSettingsCategoryView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1500
    new-instance v2, Lcom/android/settings/grid/GridContainer;

    sget-object v3, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/grid/GridContainer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    .line 1501
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    if-eqz v2, :cond_0

    .line 1502
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    invoke-virtual {v2, v4}, Lcom/android/settings/grid/GridContainer;->setHoverScrollMode(Z)V

    .line 1503
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static callSearchMenu()V
    .locals 3

    .prologue
    .line 1163
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1164
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1165
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1166
    sget-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1168
    :cond_0
    return-void
.end method

.method private getMetaData()V
    .locals 6

    .prologue
    .line 3175
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 3177
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 3205
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 3178
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/GridSettings;->mTopLevelHeaderId:I

    .line 3179
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/GridSettings;->mFragmentClass:Ljava/lang/String;

    .line 3193
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3194
    .local v2, "parentHeaderTitleRes":I
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3195
    .local v1, "parentFragmentClass":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3196
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v3, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 3197
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 3198
    if-eqz v2, :cond_0

    .line 3199
    iget-object v3, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3202
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "parentFragmentClass":Ljava/lang/String;
    .end local v2    # "parentHeaderTitleRes":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getPersonalIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 3405
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.sec.knox.shortcut"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3406
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.knox.bridge"

    const-string v2, "com.sec.knox.bridge.handlers.NotificationHandler"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3408
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3409
    const-string v1, "actions"

    const-string v2, "settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3410
    const-string v1, "component"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3411
    return-object v0
.end method

.method private getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 6
    .param p1, "mHeader"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3263
    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 3264
    .local v2, "voice_control_intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 3265
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3266
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3267
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 3271
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private highlightHeader(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1711
    if-eqz p1, :cond_0

    .line 1712
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1713
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1714
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1715
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1716
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1720
    .end local v0    # "index":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private insertAccountsHeaders(Ljava/util/List;I)I
    .locals 0
    .param p2, "headerIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 3132
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    return p2
.end method

.method private isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 4
    .param p1, "mCtx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 3486
    if-nez p1, :cond_1

    .line 3496
    :cond_0
    :goto_0
    return v1

    .line 3490
    :cond_1
    const-string v2, "isKioskModeEnabled"

    invoke-static {p1, v2}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 3492
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "true"

    const-string v3, "isKioskModeEnabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3493
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isDocomoSettingsDisabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 3466
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3468
    .local v1, "packMgr":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_1

    .line 3469
    :try_start_0
    const-string v3, "com.nttdocomo.android.docomoset"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 3471
    const-string v3, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const-string v3, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 3473
    :cond_0
    sget-object v3, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v4, "docomoset is Disabled!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3480
    :goto_0
    return v2

    .line 3477
    :catch_0
    move-exception v0

    .line 3478
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v3, "docomoset is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isVoiceControlEnabled()Z
    .locals 2

    .prologue
    .line 3274
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    .line 3275
    .local v0, "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v1, :cond_0

    .line 3276
    const/4 v1, 0x1

    .line 3278
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeFavoriteIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1825
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/favorite/FavoriteMenuList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1828
    .local v1, "mAddIntent":Landroid/content/Intent;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1829
    .local v0, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v2, 0x7f07005f

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 1830
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    .line 1832
    const-string v2, "favoriteList"

    check-cast v0, Ljava/util/ArrayList;

    .end local v0    # "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1834
    return-object v1
.end method

.method private populateKnoxCustomSettingsMap()V
    .locals 3

    .prologue
    .line 3049
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100649

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3050
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f10064b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3051
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f10064d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3052
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100694

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3053
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100678

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3054
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100670

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3055
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100634

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3056
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f10066b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3057
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100674

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3058
    return-void
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 1623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    .line 1624
    invoke-virtual {p0, p1}, Lcom/android/settings/GridSettings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1625
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    .line 1626
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 10
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 1671
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1673
    .local v0, "cn":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1674
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 1676
    .local v5, "parentInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 1677
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1678
    .local v1, "fragmentClass":Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1679
    .local v2, "fragmentTitle":Ljava/lang/CharSequence;
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 1680
    .local v4, "parentHeader":Landroid/preference/PreferenceActivity$Header;
    iput-object v1, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1681
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1682
    iput-object v4, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1684
    invoke-direct {p0, v4}, Lcom/android/settings/GridSettings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 1685
    iget v7, p0, Lcom/android/settings/GridSettings;->mTopLevelHeaderId:I

    invoke-direct {p0, v7}, Lcom/android/settings/GridSettings;->highlightHeader(I)V

    .line 1687
    new-instance v7, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v7}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v7, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1688
    iget-object v7, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1690
    iget-object v7, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1695
    .end local v1    # "fragmentClass":Ljava/lang/String;
    .end local v2    # "fragmentTitle":Ljava/lang/CharSequence;
    .end local v4    # "parentHeader":Landroid/preference/PreferenceActivity$Header;
    .end local v5    # "parentInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 1692
    :catch_0
    move-exception v3

    .line 1693
    .local v3, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v7, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find parent activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;Z)V
    .locals 39
    .param p2, "forEditFavorite"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2328
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v35, v0

    const-string v36, "show"

    sget-object v37, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v38, "eng"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    invoke-interface/range {v35 .. v37}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 2331
    .local v30, "showDev":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v35, v0

    if-nez v35, :cond_8

    const/16 v26, 0x64

    .line 2332
    .local v26, "pos":I
    :goto_0
    const/4 v11, 0x0

    .line 2334
    .local v11, "i":I
    const-string v35, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/GridSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/UserManager;

    .line 2335
    .local v32, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->clear()V

    .line 2338
    const/16 v22, 0x0

    .line 2339
    .local v22, "knoxCustomSettingsState":I
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v21

    .line 2340
    .local v21, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v21, :cond_0

    .line 2341
    invoke-virtual/range {v21 .. v21}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSettingsHiddenState()I

    move-result v22

    .line 2345
    :cond_0
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v11, v0, :cond_b5

    .line 2346
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceActivity$Header;

    .line 2348
    .local v9, "header":Landroid/preference/PreferenceActivity$Header;
    iget-wide v0, v9, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    long-to-int v12, v0

    .line 2350
    .local v12, "id":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v35

    const/16 v36, 0x64

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_9

    const/16 v16, 0x1

    .line 2353
    .local v16, "isKnoxUser":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v35, v0

    if-nez v35, :cond_1

    .line 2355
    new-instance v35, Ljava/util/HashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    .line 2357
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->isEmpty()Z

    move-result v35

    if-eqz v35, :cond_2

    .line 2359
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/GridSettings;->populateKnoxCustomSettingsMap()V

    .line 2363
    :cond_2
    const/16 v27, 0x0

    .line 2364
    .local v27, "removed":Z
    if-eqz v22, :cond_3

    .line 2365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 2366
    .local v7, "element":Ljava/lang/Integer;
    if-eqz v7, :cond_3

    .line 2367
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v33

    .line 2369
    .local v33, "val":I
    and-int v35, v33, v22

    if-eqz v35, :cond_3

    .line 2371
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2372
    const/16 v27, 0x1

    .line 2376
    .end local v7    # "element":Ljava/lang/Integer;
    .end local v33    # "val":I
    :cond_3
    if-nez v27, :cond_0

    .line 2378
    const v35, 0x7f100665

    move/from16 v0, v35

    if-eq v12, v0, :cond_4

    const v35, 0x7f10066d

    move/from16 v0, v35

    if-ne v12, v0, :cond_a

    .line 2380
    :cond_4
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2985
    :cond_5
    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v11, v0, :cond_ab

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v35

    if-ne v0, v9, :cond_ab

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v35

    if-eqz v35, :cond_ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->SETTINGS_FOR_RESTRICTED:[I

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-static {v0, v12}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v35

    if-nez v35, :cond_ab

    if-nez v16, :cond_ab

    .line 2988
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3032
    :cond_6
    :goto_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v11, v0, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v35

    if-ne v0, v9, :cond_0

    .line 3034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v35, v0

    if-nez v35, :cond_7

    invoke-static {v9}, Lcom/android/settings/GridSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v35

    if-eqz v35, :cond_7

    .line 3036
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 3038
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3039
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 2331
    .end local v9    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v11    # "i":I
    .end local v12    # "id":I
    .end local v16    # "isKnoxUser":Z
    .end local v21    # "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    .end local v22    # "knoxCustomSettingsState":I
    .end local v26    # "pos":I
    .end local v27    # "removed":Z
    .end local v32    # "um":Landroid/os/UserManager;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/settings/HeaderListManager;->getPosition()I

    move-result v26

    goto/16 :goto_0

    .line 2350
    .restart local v9    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v11    # "i":I
    .restart local v12    # "id":I
    .restart local v21    # "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    .restart local v22    # "knoxCustomSettingsState":I
    .restart local v26    # "pos":I
    .restart local v32    # "um":Landroid/os/UserManager;
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 2381
    .restart local v16    # "isKnoxUser":Z
    .restart local v27    # "removed":Z
    :cond_a
    const v35, 0x7f100649

    move/from16 v0, v35

    if-ne v12, v0, :cond_b

    .line 2383
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v35

    const-string v36, "android.hardware.wifi"

    invoke-virtual/range {v35 .. v36}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 2384
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2387
    :cond_b
    const v35, 0x7f100648

    move/from16 v0, v35

    if-ne v12, v0, :cond_d

    .line 2388
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v35

    const-string v36, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_c

    .line 2389
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2392
    :cond_c
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v35

    const-string v36, "com.oem.smartwifisupport"

    invoke-virtual/range {v35 .. v36}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    .line 2393
    .local v4, "appState":I
    const/16 v35, 0x2

    move/from16 v0, v35

    if-ne v4, v0, :cond_5

    .line 2394
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 2396
    .end local v4    # "appState":I
    :catch_0
    move-exception v13

    .line 2397
    .local v13, "ie":Ljava/lang/IllegalArgumentException;
    sget-object v35, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Check to see if target device support VOWIFI: + "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2402
    .end local v13    # "ie":Ljava/lang/IllegalArgumentException;
    :cond_d
    const v35, 0x7f10064a

    move/from16 v0, v35

    if-ne v12, v0, :cond_11

    .line 2403
    const-string v35, "SPRINT"

    const-string v36, "ALL"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_e

    .line 2405
    const-string v35, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/GridSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/net/wifi/WifiManager;

    .line 2406
    .local v34, "wm":Landroid/net/wifi/WifiManager;
    new-instance v23, Landroid/os/Message;

    invoke-direct/range {v23 .. v23}, Landroid/os/Message;-><init>()V

    .line 2407
    .local v23, "msg":Landroid/os/Message;
    const/16 v35, 0x15

    move/from16 v0, v35

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->what:I

    .line 2408
    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/GridSettings;->mTetheredData:I

    .line 2410
    .end local v23    # "msg":Landroid/os/Message;
    .end local v34    # "wm":Landroid/net/wifi/WifiManager;
    :cond_e
    const-string v35, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_MENU_POSITION_HOTSPOT_AND_TETHERING"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_10

    const-string v35, "SPRINT"

    const-string v36, "ALL"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/GridSettings;->mTetheredData:I

    move/from16 v35, v0

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/GridSettings;->mTetheredData:I

    move/from16 v35, v0

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_10

    .line 2414
    :cond_f
    sget-object v35, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v36, "show wifi_sprinthotspot_settings"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->updateHotspotSSID()V

    goto/16 :goto_3

    .line 2417
    :cond_10
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2419
    :cond_11
    const v35, 0x7f10067a

    move/from16 v0, v35

    if-ne v12, v0, :cond_13

    .line 2420
    const-string v35, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_12

    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v35

    if-nez v35, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2423
    :cond_12
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2424
    :cond_13
    const v35, 0x7f100687

    move/from16 v0, v35

    if-ne v12, v0, :cond_14

    .line 2426
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v35

    const-string v36, "com.skyfire.browser.toolbar.att"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v25

    .line 2429
    .local v25, "pkgInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 2431
    .end local v25    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v6

    .line 2432
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2434
    sget-object v35, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v36, "Browser Bar is not found"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2436
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_14
    const v35, 0x7f10064c

    move/from16 v0, v35

    if-ne v12, v0, :cond_1a

    .line 2437
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v35

    if-eqz v35, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    move/from16 v35, v0

    if-nez v35, :cond_19

    const/16 v17, 0x1

    .line 2438
    .local v17, "isSecondaryUser":Z
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/GridSettings;->tetherTitleRes:I

    move/from16 v35, v0

    move/from16 v0, v35

    iput v0, v9, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 2441
    const-string v35, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/GridSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 2443
    .local v5, "cm":Landroid/net/ConnectivityManager;
    const-string v35, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_MENU_POSITION_HOTSPOT_AND_TETHERING"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_15

    .line 2447
    :cond_15
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v35

    if-nez v35, :cond_16

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v35

    if-eqz v35, :cond_18

    :cond_16
    if-nez v17, :cond_18

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v35

    if-eqz v35, :cond_18

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v35

    if-nez v35, :cond_18

    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_17

    const-string v35, "ATT"

    const-string v36, "ro.csc.sales_code"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_18

    :cond_17
    const-string v35, "AIO"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2449
    :cond_18
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2437
    .end local v5    # "cm":Landroid/net/ConnectivityManager;
    .end local v17    # "isSecondaryUser":Z
    :cond_19
    const/16 v17, 0x0

    goto :goto_5

    .line 2451
    :cond_1a
    const v35, 0x7f10064b

    move/from16 v0, v35

    if-ne v12, v0, :cond_1b

    .line 2453
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v35

    const-string v36, "android.hardware.bluetooth"

    invoke-virtual/range {v35 .. v36}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 2454
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2456
    :cond_1b
    const v35, 0x7f100651

    move/from16 v0, v35

    if-ne v12, v0, :cond_1e

    .line 2458
    const-string v35, "network_management"

    invoke-static/range {v35 .. v35}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v24

    .line 2460
    .local v24, "netManager":Landroid/os/INetworkManagementService;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v35

    if-eqz v35, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    move/from16 v35, v0

    if-nez v35, :cond_1d

    const/16 v19, 0x1

    .line 2462
    .local v19, "isSubUser":Z
    :goto_6
    :try_start_2
    invoke-interface/range {v24 .. v24}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v35

    if-eqz v35, :cond_1c

    if-eqz v19, :cond_5

    .line 2463
    :cond_1c
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 2465
    :catch_2
    move-exception v35

    goto/16 :goto_3

    .line 2460
    .end local v19    # "isSubUser":Z
    :cond_1d
    const/16 v19, 0x0

    goto :goto_6

    .line 2468
    .end local v24    # "netManager":Landroid/os/INetworkManagementService;
    :cond_1e
    const v35, 0x7f10066a

    move/from16 v0, v35

    if-ne v12, v0, :cond_1f

    .line 2471
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mBatteryPresent:Z

    move/from16 v35, v0

    if-nez v35, :cond_5

    .line 2472
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2474
    :cond_1f
    const v35, 0x7f100678

    move/from16 v0, v35

    if-ne v12, v0, :cond_20

    .line 2475
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "shopdemo"

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    .line 2476
    .local v29, "shop":I
    const/16 v35, 0x1

    move/from16 v0, v29

    move/from16 v1, v35

    if-ne v0, v1, :cond_5

    .line 2477
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2478
    .end local v29    # "shop":I
    :cond_20
    const v35, 0x7f10062d

    move/from16 v0, v35

    if-ne v12, v0, :cond_21

    .line 2479
    move/from16 v31, v11

    .line 2487
    .local v31, "startIndex":I
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2489
    .end local v31    # "startIndex":I
    :cond_21
    const v35, 0x7f100630

    move/from16 v0, v35

    if-ne v12, v0, :cond_22

    .line 2490
    add-int/lit8 v10, v11, 0x1

    .line 2491
    .local v10, "headerIndex":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/settings/GridSettings;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v11

    .line 2492
    goto/16 :goto_3

    .end local v10    # "headerIndex":I
    :cond_22
    const v35, 0x7f100638

    move/from16 v0, v35

    if-ne v12, v0, :cond_23

    .line 2493
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/GridSettings;->updateHomeSettingHeaders(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 2494
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2496
    :cond_23
    const v35, 0x7f10066b

    move/from16 v0, v35

    if-ne v12, v0, :cond_27

    .line 2497
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v35

    if-eqz v35, :cond_24

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v35

    if-eqz v35, :cond_25

    .line 2500
    :cond_24
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2501
    :cond_25
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGuestMode()Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2502
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v35

    if-eqz v35, :cond_26

    .line 2503
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2505
    :cond_26
    const v35, 0x7f0a1c34

    move/from16 v0, v35

    iput v0, v9, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto/16 :goto_3

    .line 2508
    :cond_27
    const v35, 0x7f100633

    move/from16 v0, v35

    if-ne v12, v0, :cond_29

    .line 2509
    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v35

    if-eqz v35, :cond_28

    .line 2510
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2513
    :cond_28
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v35

    const-string v36, "com.sec.android.cloudagent"

    const/16 v37, 0x5

    invoke-virtual/range {v35 .. v37}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_3

    .line 2514
    :catch_3
    move-exception v6

    .line 2515
    .restart local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2518
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_29
    const v35, 0x7f100659

    move/from16 v0, v35

    if-ne v12, v0, :cond_2a

    .line 2519
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v35

    if-eqz v35, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    move/from16 v35, v0

    if-nez v35, :cond_5

    .line 2520
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2522
    :cond_2a
    const v35, 0x7f10066c

    move/from16 v0, v35

    if-ne v12, v0, :cond_2d

    .line 2523
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v35

    const-string v36, "android.hardware.nfc"

    invoke-virtual/range {v35 .. v36}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_2b

    .line 2524
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2527
    :cond_2b
    invoke-static/range {p0 .. p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    .line 2528
    .local v3, "adapter":Landroid/nfc/NfcAdapter;
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v35

    if-eqz v35, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v35

    const-string v36, "android.hardware.nfc.hce"

    invoke-virtual/range {v35 .. v36}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 2530
    :cond_2c
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2533
    .end local v3    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_2d
    const v35, 0x7f100683

    move/from16 v0, v35

    if-ne v12, v0, :cond_2e

    .line 2538
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v35

    const-string v36, "com.sec.android.app.safetyassurance"

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_3

    .line 2539
    :catch_4
    move-exception v6

    .line 2540
    .restart local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2543
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2e
    const v35, 0x7f1006a3

    move/from16 v0, v35

    if-ne v12, v0, :cond_2f

    .line 2546
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2549
    :cond_2f
    const v35, 0x7f100674

    move/from16 v0, v35

    if-ne v12, v0, :cond_30

    .line 2550
    if-nez v30, :cond_5

    .line 2551
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2553
    :cond_30
    const v35, 0x7f1006a6

    move/from16 v0, v35

    if-ne v12, v0, :cond_33

    .line 2554
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v35

    const-string v36, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_31

    .line 2555
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2556
    :cond_31
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v35

    const-string v36, "CscFeature_Setting_EnableMultipleSWUpdate"

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_32

    .line 2558
    sget-object v35, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v36, "Sprint Samsung FOTA devices"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    const-string v35, "com.android.settings.SoftwareUpdateSettings"

    move-object/from16 v0, v35

    iput-object v0, v9, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_3

    .line 2561
    :cond_32
    sget-object v35, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v36, "Sprint Samsung non-FOTA devices"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 2563
    .local v15, "intent":Landroid/content/Intent;
    const-string v35, "android.intent.action.OMADM.SPRINTUPDATE"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2564
    const/high16 v35, 0x10200000

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2565
    iput-object v15, v9, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto/16 :goto_3

    .line 2567
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_33
    const v35, 0x7f1006a7

    move/from16 v0, v35

    if-ne v12, v0, :cond_35

    .line 2568
    const-string v35, "ro.csc.sales_code"

    invoke-static/range {v35 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 2570
    .local v28, "salesCode":Ljava/lang/String;
    const-string v35, "VZW"

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_34

    .line 2571
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2573
    :cond_34
    sget-object v35, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v36, "Verizon OMADM devices"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 2575
    .restart local v15    # "intent":Landroid/content/Intent;
    const-string v35, "android.intent.action.OMADM.UPDATE"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2576
    const/high16 v35, 0x10200000

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2577
    iput-object v15, v9, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto/16 :goto_3

    .line 2580
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v28    # "salesCode":Ljava/lang/String;
    :cond_35
    const v35, 0x7f1006a5

    move/from16 v0, v35

    if-ne v12, v0, :cond_36

    .line 2581
    const/16 v18, 0x1

    .line 2583
    .local v18, "isSprintDsa":Z
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v35

    const-string v36, "com.sprint.dsa"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    .line 2589
    :goto_7
    if-nez v18, :cond_5

    .line 2590
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2584
    :catch_5
    move-exception v6

    .line 2585
    .restart local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v18, 0x0

    goto :goto_7

    .line 2592
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v18    # "isSprintDsa":Z
    :cond_36
    const v35, 0x7f100631

    move/from16 v0, v35

    if-ne v12, v0, :cond_37

    .line 2593
    const-string v35, "no_modify_accounts"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_5

    if-nez v16, :cond_5

    .line 2594
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2596
    :cond_37
    const v35, 0x7f100689

    move/from16 v0, v35

    if-ne v12, v0, :cond_38

    .line 2597
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v35

    if-eqz v35, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v35

    const-string v36, "com.sec.feature.floating_side_softkey"

    invoke-virtual/range {v35 .. v36}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 2601
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2603
    :cond_38
    const v35, 0x7f1006ba

    move/from16 v0, v35

    if-ne v12, v0, :cond_3a

    .line 2604
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v35

    if-eqz v35, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v35

    const-string v36, "com.sec.feature.floating_side_softkey"

    invoke-virtual/range {v35 .. v36}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2607
    :cond_39
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2609
    :cond_3a
    const v35, 0x7f100661

    move/from16 v0, v35

    if-ne v12, v0, :cond_3c

    .line 2610
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v35

    const-string v36, "com.samsung.feature.mirrorlink_fw"

    invoke-virtual/range {v35 .. v36}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v20

    .line 2612
    .local v20, "isSupportMirrorLink":Z
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v35

    const-string v36, "com.samsung.android.app.mirrorlink"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2616
    if-nez v20, :cond_5

    .line 2617
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2613
    :catch_6
    move-exception v6

    .line 2614
    .restart local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v20, 0x0

    .line 2616
    if-nez v20, :cond_5

    .line 2617
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2616
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v35

    if-nez v20, :cond_3b

    .line 2617
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3b
    throw v35

    .line 2620
    .end local v20    # "isSupportMirrorLink":Z
    :cond_3c
    const v35, 0x7f100637

    move/from16 v0, v35

    if-ne v12, v0, :cond_3e

    .line 2621
    const-string v35, "DCM"

    const-string v36, "ro.csc.sales_code"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_3d

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/GridSettings;->isDocomoSettingsDisabled()Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2622
    :cond_3d
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2624
    :cond_3e
    const v35, 0x7f10063b

    move/from16 v0, v35

    if-ne v12, v0, :cond_40

    .line 2625
    sget-object v35, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    const-string v36, "com.samsung.android.coreapps"

    invoke-static/range {v35 .. v36}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v35

    const/16 v36, 0x4

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v35

    if-gez v35, :cond_5

    .line 2626
    :cond_3f
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2628
    :cond_40
    const v35, 0x7f100677

    move/from16 v0, v35

    if-ne v12, v0, :cond_41

    .line 2629
    const-string v35, "DCM"

    const-string v36, "ro.csc.sales_code"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 2630
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2632
    :cond_41
    const v35, 0x7f1006a9

    move/from16 v0, v35

    if-ne v12, v0, :cond_42

    .line 2633
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v35

    if-nez v35, :cond_5

    .line 2634
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2636
    :cond_42
    const v35, 0x7f100642

    move/from16 v0, v35

    if-ne v12, v0, :cond_44

    .line 2637
    const-string v35, "KDI"

    const-string v36, "ro.csc.sales_code"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_43

    const-string v35, "VZW"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2638
    :cond_43
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2640
    :cond_44
    const v35, 0x7f1006b2

    move/from16 v0, v35

    if-ne v12, v0, :cond_45

    .line 2641
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2642
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2644
    :cond_45
    const v35, 0x7f1006b3

    move/from16 v0, v35

    if-ne v12, v0, :cond_46

    .line 2645
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v35

    if-nez v35, :cond_5

    .line 2646
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2648
    :cond_46
    const v35, 0x7f10069b

    move/from16 v0, v35

    if-ne v12, v0, :cond_47

    .line 2651
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2653
    :cond_47
    const v35, 0x7f1006b7

    move/from16 v0, v35

    if-ne v12, v0, :cond_49

    .line 2654
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v35

    const-string v36, "SEC_FLOATING_FEATURE_COMMON_CONFIG_CHANGEABLE_UI"

    const-string v37, "none"

    invoke-virtual/range {v35 .. v37}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v36, "theme"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_48

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "easy_mode_switch"

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    if-nez v35, :cond_5

    .line 2656
    :cond_48
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2658
    :cond_49
    const v35, 0x7f10069c

    move/from16 v0, v35

    if-ne v12, v0, :cond_4a

    .line 2659
    sget-object v35, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->isSupportFestival(Landroid/content/Context;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 2660
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2662
    :cond_4a
    const v35, 0x7f100682

    move/from16 v0, v35

    if-ne v12, v0, :cond_4b

    .line 2663
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v35

    const-string v36, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 2664
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2666
    :cond_4b
    const v35, 0x7f100653

    move/from16 v0, v35

    if-ne v12, v0, :cond_4c

    .line 2667
    const-string v35, "CTC"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 2668
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2670
    :cond_4c
    const v35, 0x7f1006ab

    move/from16 v0, v35

    if-ne v12, v0, :cond_4d

    .line 2672
    const-string v35, "CDMA"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 2673
    const-string v35, "KKK"

    const-string v36, "KKK CDMAGSM remove dualSlot_ctc_settings"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2676
    :cond_4d
    const v35, 0x7f1006ac

    move/from16 v0, v35

    if-ne v12, v0, :cond_50

    .line 2678
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v28

    .line 2679
    .restart local v28    # "salesCode":Ljava/lang/String;
    const-string v35, "GSM"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_4e

    .line 2680
    const-string v35, "KKK"

    const-string v36, "KKK GSMGSM remove dualSlot_cmcc_settings"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2682
    :cond_4e
    const-string v35, "CHC"

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_4f

    const-string v35, "CHU"

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_4f

    const-string v35, "CHM"

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2683
    :cond_4f
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2684
    sget-object v35, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v36, "dualSlot_cmcc_settings: China won\'t use this item"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2686
    .end local v28    # "salesCode":Ljava/lang/String;
    :cond_50
    const v35, 0x7f100680

    move/from16 v0, v35

    if-ne v12, v0, :cond_54

    .line 2687
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v35

    if-eqz v35, :cond_51

    .line 2688
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2689
    sget-object v35, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v36, "simcard_management: China won\'t use this item"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2690
    :cond_51
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v35

    if-nez v35, :cond_52

    .line 2691
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2692
    :cond_52
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v35

    if-eqz v35, :cond_53

    const-string v35, ""

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_53

    .line 2693
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2694
    :cond_53
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v35

    if-eqz v35, :cond_5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v35

    if-eqz v35, :cond_5

    .line 2695
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2697
    :cond_54
    const v35, 0x7f100681

    move/from16 v0, v35

    if-ne v12, v0, :cond_59

    .line 2698
    sget-object v35, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v36, "simcard_management_chn:only China model except for CTC use this item"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v35

    if-nez v35, :cond_55

    .line 2700
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2701
    :cond_55
    sget-object v35, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    const-string v36, "com.sec.android.app.simcardmgr"

    invoke-static/range {v35 .. v36}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_56

    .line 2702
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2703
    :cond_56
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v35

    if-nez v35, :cond_57

    .line 2704
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2705
    :cond_57
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v35

    if-eqz v35, :cond_58

    const-string v35, "CDMA"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_58

    .line 2706
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2707
    :cond_58
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v35

    if-eqz v35, :cond_5

    .line 2708
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2710
    :cond_59
    const v35, 0x7f100658

    move/from16 v0, v35

    if-ne v12, v0, :cond_5a

    .line 2711
    const-string v35, "CTC"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 2712
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2714
    :cond_5a
    const v35, 0x7f1006aa

    move/from16 v0, v35

    if-ne v12, v0, :cond_5b

    .line 2716
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2718
    :cond_5b
    const v35, 0x7f100655

    move/from16 v0, v35

    if-ne v12, v0, :cond_5d

    .line 2720
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v35

    if-eqz v35, :cond_5c

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2722
    :cond_5c
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2724
    :cond_5d
    const v35, 0x7f100656

    move/from16 v0, v35

    if-ne v12, v0, :cond_5f

    .line 2726
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v35

    if-eqz v35, :cond_5e

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2727
    :cond_5e
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2729
    :cond_5f
    const v35, 0x7f100657

    move/from16 v0, v35

    if-ne v12, v0, :cond_61

    .line 2730
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v35

    if-eqz v35, :cond_60

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2731
    :cond_60
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2733
    :cond_61
    const v35, 0x7f1006bc

    move/from16 v0, v35

    if-ne v12, v0, :cond_62

    .line 2735
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2737
    :cond_62
    const v35, 0x7f100698

    move/from16 v0, v35

    if-ne v12, v0, :cond_63

    .line 2738
    const-string v35, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 2739
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2741
    :cond_63
    const v35, 0x7f10068c

    move/from16 v0, v35

    if-ne v12, v0, :cond_67

    .line 2742
    const-string v35, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_64

    .line 2743
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2744
    :cond_64
    const-string v35, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_65

    const-string v35, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_66

    const-string v35, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_66

    const-string v35, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_66

    .line 2748
    :cond_65
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2749
    :cond_66
    const-string v35, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_5

    const-string v35, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_5

    const-string v35, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_5

    const-string v35, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 2753
    const-string v35, "com.android.settings.motion2013.MotionSettings"

    move-object/from16 v0, v35

    iput-object v0, v9, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_3

    .line 2755
    :cond_67
    const v35, 0x7f10068d

    move/from16 v0, v35

    if-ne v12, v0, :cond_69

    .line 2760
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v35

    if-nez v35, :cond_68

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2761
    :cond_68
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2763
    :cond_69
    const v35, 0x7f100690

    move/from16 v0, v35

    if-ne v12, v0, :cond_6b

    .line 2764
    sget-object v35, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "getVoiceControlIntent value = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/GridSettings;->getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " isVoiceControlEnabled value = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/GridSettings;->isVoiceControlEnabled()Z

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " hasNewVoiceControlConcept value = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-static {}, Lcom/android/settings/Utils;->hasNewVoiceControlConcept()Z

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/GridSettings;->getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v35

    if-eqz v35, :cond_6a

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/GridSettings;->isVoiceControlEnabled()Z

    move-result v35

    if-eqz v35, :cond_6a

    invoke-static {}, Lcom/android/settings/Utils;->hasNewVoiceControlConcept()Z

    move-result v35

    if-nez v35, :cond_6a

    sget-object v35, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v35

    if-nez v35, :cond_6a

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2769
    :cond_6a
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2771
    :cond_6b
    const v35, 0x7f100644

    move/from16 v0, v35

    if-ne v12, v0, :cond_6d

    .line 2772
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v35

    if-nez v35, :cond_6c

    const-string v35, "XAR"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_6c

    const-string v35, "XAC"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_6c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "easy_mode_switch"

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    if-nez v35, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "easy_mode_splanner"

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    if-nez v35, :cond_5

    .line 2774
    :cond_6c
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2776
    :cond_6d
    const v35, 0x7f100643

    move/from16 v0, v35

    if-ne v12, v0, :cond_70

    .line 2777
    const-string v35, "VZW"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_6f

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v35

    if-nez v35, :cond_6e

    const-string v35, "XAR"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_6e

    const-string v35, "XAC"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_6f

    :cond_6e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "easy_mode_switch"

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    if-nez v35, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "easy_mode_splanner"

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    if-nez v35, :cond_5

    .line 2779
    :cond_6f
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2781
    :cond_70
    const v35, 0x7f1006af

    move/from16 v0, v35

    if-ne v12, v0, :cond_71

    .line 2782
    const-string v35, "VZW"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2783
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2785
    :cond_71
    const v35, 0x7f1006b6

    move/from16 v0, v35

    if-ne v12, v0, :cond_72

    .line 2786
    const-string v35, "ATT"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 2787
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2789
    :cond_72
    const v35, 0x7f1006a8

    move/from16 v0, v35

    if-ne v12, v0, :cond_73

    .line 2790
    const-string v35, "VZW"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2791
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2793
    :cond_73
    const v35, 0x7f100650

    move/from16 v0, v35

    if-ne v12, v0, :cond_75

    .line 2794
    const-string v35, "VZW"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_74

    .line 2798
    :cond_74
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2801
    :cond_75
    const v35, 0x7f1006be

    move/from16 v0, v35

    if-ne v12, v0, :cond_77

    .line 2802
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v35

    if-eqz v35, :cond_76

    const-string v35, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_76

    const-string v35, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2803
    :cond_76
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2805
    :cond_77
    const v35, 0x7f10068e

    move/from16 v0, v35

    if-ne v12, v0, :cond_79

    .line 2806
    const-string v35, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_78

    const-string v35, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_78

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2807
    :cond_78
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2809
    :cond_79
    const v35, 0x7f10068f

    move/from16 v0, v35

    if-ne v12, v0, :cond_7b

    .line 2810
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v35

    if-eqz v35, :cond_7a

    const-string v35, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_7a

    const-string v35, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 2811
    :cond_7a
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2813
    :cond_7b
    const v35, 0x7f1006ad

    move/from16 v0, v35

    if-ne v12, v0, :cond_7c

    .line 2814
    const-string v35, "VZW"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2815
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2817
    :cond_7c
    const v35, 0x7f10065b

    move/from16 v0, v35

    if-ne v12, v0, :cond_80

    .line 2818
    sget-object v35, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v35

    if-nez v35, :cond_7e

    const-string v35, "VZW"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_7d

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v35

    if-nez v35, :cond_7e

    :cond_7d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v35

    const-string v36, "android.hardware.nfc"

    invoke-virtual/range {v35 .. v36}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_7f

    .line 2822
    :cond_7e
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2823
    :cond_7f
    const-string v35, "ATT"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2824
    const v35, 0x7f02025f

    move/from16 v0, v35

    iput v0, v9, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    goto/16 :goto_3

    .line 2826
    :cond_80
    const v35, 0x7f1006c4

    move/from16 v0, v35

    if-ne v12, v0, :cond_84

    .line 2827
    sget-object v35, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v35

    if-nez v35, :cond_82

    const-string v35, "VZW"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_81

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v35

    if-nez v35, :cond_82

    :cond_81
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v35

    const-string v36, "android.hardware.nfc"

    invoke-virtual/range {v35 .. v36}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_83

    .line 2830
    :cond_82
    const v35, 0x7f0a0fe3

    move/from16 v0, v35

    iput v0, v9, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 2832
    :cond_83
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v35

    if-eqz v35, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isConceptForVZW()Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2833
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2835
    :cond_84
    const v35, 0x7f1006c9

    move/from16 v0, v35

    if-ne v12, v0, :cond_85

    .line 2836
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v35

    if-eqz v35, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isConceptForVZW()Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2837
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2839
    :cond_85
    const v35, 0x7f1006c7

    move/from16 v0, v35

    if-ne v12, v0, :cond_86

    .line 2840
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v35

    if-eqz v35, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isConceptForVZW()Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2841
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2843
    :cond_86
    const v35, 0x7f10065d

    move/from16 v0, v35

    if-ne v12, v0, :cond_87

    .line 2844
    const-string v35, "VZW"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2845
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2847
    :cond_87
    const v35, 0x7f1006ae

    move/from16 v0, v35

    if-ne v12, v0, :cond_88

    .line 2848
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v35

    if-nez v35, :cond_5

    .line 2849
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2851
    :cond_88
    const v35, 0x7f100660

    move/from16 v0, v35

    if-ne v12, v0, :cond_89

    .line 2852
    const-string v35, "VZW"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2853
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2855
    :cond_89
    const v35, 0x7f100694

    move/from16 v0, v35

    if-ne v12, v0, :cond_8b

    .line 2856
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v35

    const-string v36, "com.sec.feature.multiwindow"

    invoke-virtual/range {v35 .. v36}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 2857
    .local v2, "UseMultiWindow":Z
    if-eqz v2, :cond_8a

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v35

    if-nez v35, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v35

    if-nez v35, :cond_5

    .line 2858
    :cond_8a
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2860
    .end local v2    # "UseMultiWindow":Z
    :cond_8b
    const v35, 0x7f100645

    move/from16 v0, v35

    if-ne v12, v0, :cond_8e

    .line 2861
    const-string v8, "com.vlingo.midas.settings.SettingsScreen"

    .line 2862
    .local v8, "fragment":Ljava/lang/String;
    sget-object v35, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "fragment of svoice : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v35, v0

    if-eqz v35, :cond_8c

    .line 2864
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v35, v0

    const-string v36, "com.vlingo.midas"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2865
    :cond_8c
    const-string v35, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SVOICE"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_8d

    const-string v35, "VZW"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2867
    :cond_8d
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2869
    .end local v8    # "fragment":Ljava/lang/String;
    :cond_8e
    const v35, 0x7f10068a

    move/from16 v0, v35

    if-ne v12, v0, :cond_90

    .line 2870
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "shopdemo"

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    .line 2871
    .restart local v29    # "shop":I
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_8f

    const/16 v35, 0x1

    move/from16 v0, v29

    move/from16 v1, v35

    if-ne v0, v1, :cond_5

    .line 2872
    :cond_8f
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2880
    .end local v29    # "shop":I
    :cond_90
    const v35, 0x7f10064d

    move/from16 v0, v35

    if-ne v12, v0, :cond_91

    .line 2881
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v35

    if-nez v35, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v35

    if-nez v35, :cond_5

    .line 2882
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2883
    :cond_91
    const v35, 0x7f10066f

    move/from16 v0, v35

    if-ne v12, v0, :cond_92

    .line 2884
    sget-object v35, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2885
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2886
    :cond_92
    const v35, 0x7f10069d

    move/from16 v0, v35

    if-ne v12, v0, :cond_95

    .line 2887
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v35

    if-eqz v35, :cond_93

    sget-object v35, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_94

    .line 2888
    :cond_93
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2889
    :cond_94
    const-string v35, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2890
    const v35, 0x7f0a16d1

    move/from16 v0, v35

    iput v0, v9, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto/16 :goto_3

    .line 2892
    :cond_95
    const v35, 0x7f10067c

    move/from16 v0, v35

    if-ne v12, v0, :cond_97

    .line 2893
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v35

    if-nez v35, :cond_96

    const-string v35, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_96

    sget-object v35, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->hasDCMhome(Landroid/content/Context;)Z

    move-result v35

    if-nez v35, :cond_96

    const-string v35, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE_30"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_96

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2898
    :cond_96
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2900
    :cond_97
    const v35, 0x7f10069a

    move/from16 v0, v35

    if-ne v12, v0, :cond_98

    .line 2901
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "shopdemo"

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    .line 2903
    .restart local v29    # "shop":I
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2904
    .end local v29    # "shop":I
    :cond_98
    const v35, 0x7f10063d

    move/from16 v0, v35

    if-ne v12, v0, :cond_9a

    .line 2905
    const-string v35, "DCM"

    const-string v36, "ro.csc.sales_code"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_99

    const-string v35, "VZW"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2906
    :cond_99
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2908
    :cond_9a
    const v35, 0x7f10067d

    move/from16 v0, v35

    if-ne v12, v0, :cond_9b

    .line 2910
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2912
    :cond_9b
    const v35, 0x7f10063e

    move/from16 v0, v35

    if-ne v12, v0, :cond_9c

    .line 2913
    const-string v35, "DCM"

    const-string v36, "ro.csc.sales_code"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 2914
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2916
    :cond_9c
    const v35, 0x7f1006c2

    move/from16 v0, v35

    if-ne v12, v0, :cond_9d

    .line 2920
    const v35, 0x7f0a107d

    move/from16 v0, v35

    iput v0, v9, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 2921
    const-string v35, "com.android.settings.powersavingmode.MenuPowerSavingModeSettings"

    move-object/from16 v0, v35

    iput-object v0, v9, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_3

    .line 2923
    :cond_9d
    const v35, 0x7f100646

    move/from16 v0, v35

    if-ne v12, v0, :cond_9e

    .line 2924
    const-string v35, "VZW"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 2925
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2927
    :cond_9e
    const v35, 0x7f1006c0

    move/from16 v0, v35

    if-ne v12, v0, :cond_9f

    .line 2928
    const-string v35, "VZW"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 2929
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2931
    :cond_9f
    const v35, 0x7f100636

    move/from16 v0, v35

    if-ne v12, v0, :cond_a0

    .line 2932
    const-string v35, "VZW"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2933
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2935
    :cond_a0
    const v35, 0x7f100639

    move/from16 v0, v35

    if-ne v12, v0, :cond_a1

    .line 2936
    const-string v35, "VZW"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2937
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2939
    :cond_a1
    const v35, 0x7f10063a

    move/from16 v0, v35

    if-ne v12, v0, :cond_a2

    .line 2940
    const-string v35, "VZW"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2941
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2943
    :cond_a2
    const v35, 0x7f100643

    move/from16 v0, v35

    if-ne v12, v0, :cond_a3

    .line 2944
    const-string v35, "VZW"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2945
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2947
    :cond_a3
    const v35, 0x7f10063c

    move/from16 v0, v35

    if-ne v12, v0, :cond_a4

    .line 2948
    const-string v35, "VZW"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2949
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2951
    :cond_a4
    const v35, 0x7f10063f

    move/from16 v0, v35

    if-ne v12, v0, :cond_a5

    .line 2952
    const-string v35, "VZW"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2953
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2955
    :cond_a5
    const v35, 0x7f100640

    move/from16 v0, v35

    if-ne v12, v0, :cond_a6

    .line 2956
    const-string v35, "VZW"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2957
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2959
    :cond_a6
    const v35, 0x7f100641

    move/from16 v0, v35

    if-ne v12, v0, :cond_a7

    .line 2960
    const-string v35, "VZW"

    sget-object v36, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2961
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2963
    :cond_a7
    const v35, 0x7f100686

    move/from16 v0, v35

    if-ne v12, v0, :cond_a8

    .line 2964
    sget-boolean v35, Lcom/android/settings/GridSettings;->sIsEnableDockSettings:Z

    if-nez v35, :cond_5

    .line 2965
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2967
    :cond_a8
    const v35, 0x7f1006a1

    move/from16 v0, v35

    if-ne v12, v0, :cond_a9

    .line 2968
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    move/from16 v35, v0

    if-eqz v35, :cond_5

    .line 2969
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2971
    :cond_a9
    const v35, 0x7f100693

    move/from16 v0, v35

    if-ne v12, v0, :cond_aa

    .line 2972
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    move/from16 v35, v0

    if-eqz v35, :cond_5

    .line 2973
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2978
    :cond_aa
    const v35, 0x7f1006b8

    move/from16 v0, v35

    if-ne v12, v0, :cond_5

    .line 2979
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v35

    const-string v36, "CscFeature_Common_EnableAirMessage"

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 2980
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2989
    :cond_ab
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v11, v0, :cond_ac

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v35

    if-ne v0, v9, :cond_ac

    if-eqz v16, :cond_ac

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    move/from16 v35, v0

    if-nez v35, :cond_ac

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->SETTINGS_FOR_KNOX:[I

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-static {v0, v12}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v35

    if-nez v35, :cond_ac

    .line 2992
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 2993
    :cond_ac
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v11, v0, :cond_ad

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v35

    if-ne v0, v9, :cond_ad

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    move/from16 v35, v0

    if-eqz v35, :cond_ad

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->SETTINGS_FOR_KIOSKCONTAINER:[I

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-static {v0, v12}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v35

    if-nez v35, :cond_ad

    .line 2995
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 2996
    :cond_ad
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v11, v0, :cond_ae

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v35

    if-ne v0, v9, :cond_ae

    iget-object v0, v9, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v35, v0

    if-eqz v35, :cond_ae

    iget-object v0, v9, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v35

    if-nez v35, :cond_ae

    .line 2998
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 2999
    :cond_ae
    const v35, 0x7f100691

    move/from16 v0, v35

    if-ne v12, v0, :cond_af

    .line 3000
    const-string v35, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v35 .. v35}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_6

    .line 3001
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 3005
    :cond_af
    const v35, 0x7f1006bf

    move/from16 v0, v35

    if-ne v12, v0, :cond_b0

    .line 3006
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v35

    if-nez v35, :cond_6

    .line 3007
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 3009
    :cond_b0
    const v35, 0x7f1006c3

    move/from16 v0, v35

    if-ne v12, v0, :cond_b2

    .line 3011
    :try_start_7
    sget-object v35, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v35

    const-string v36, "com.samsung.helphub"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 3012
    .local v14, "info":Landroid/content/pm/PackageInfo;
    iget v0, v14, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v35, v0

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_6

    .line 3013
    iget-object v0, v9, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v35, v0

    if-nez v35, :cond_b1

    .line 3014
    new-instance v35, Landroid/content/Intent;

    invoke-direct/range {v35 .. v35}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v35

    iput-object v0, v9, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 3016
    :cond_b1
    iget-object v0, v9, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v35, v0

    const-string v36, "com.samsung.helphub"

    const-string v37, "com.samsung.helphub.HelpHubActivity"

    invoke-virtual/range {v35 .. v37}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3017
    iget-object v0, v9, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v35, v0

    const v36, 0x10008000

    invoke-virtual/range {v35 .. v36}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_4

    .line 3019
    .end local v14    # "info":Landroid/content/pm/PackageInfo;
    :catch_7
    move-exception v6

    .line 3020
    .restart local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v35, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v36, "NameNotFoundException - Help"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3022
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_b2
    const v35, 0x7f100696

    move/from16 v0, v35

    if-ne v12, v0, :cond_b3

    .line 3024
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 3025
    :cond_b3
    const v35, 0x7f100679

    move/from16 v0, v35

    if-ne v12, v0, :cond_6

    .line 3026
    const-string v35, "CTC"

    const-string v36, "ro.csc.sales_code"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_b4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mDualFoldertype:Z

    move/from16 v35, v0

    if-nez v35, :cond_6

    .line 3027
    :cond_b4
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 3045
    .end local v9    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v12    # "id":I
    .end local v16    # "isKnoxUser":Z
    .end local v27    # "removed":Z
    :cond_b5
    return-void
.end method

.method private updateHomeSettingHeaders(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 7
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3137
    const-string v5, "home_prefs"

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/GridSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3138
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v5, "do_show"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3170
    :goto_0
    return v3

    .line 3143
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3144
    .local v1, "homeApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 3145
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 3150
    sget-boolean v5, Lcom/android/settings/GridSettings;->sShowNoHomeNotice:Z

    if-eqz v5, :cond_1

    .line 3151
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/settings/GridSettings;->sShowNoHomeNotice:Z

    .line 3152
    invoke-static {p0}, Lcom/android/settings/GridSettings$NoHomeDialogFragment;->show(Landroid/app/Activity;)V

    :cond_1
    move v3, v4

    .line 3154
    goto :goto_0

    .line 3159
    :cond_2
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-nez v4, :cond_3

    .line 3160
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 3162
    :cond_3
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v5, "show"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3169
    .end local v1    # "homeApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "do_show"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 3164
    :catch_0
    move-exception v0

    .line 3166
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Problem looking up home activity!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateQuickSettingsHeaders()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1462
    const v1, 0x7f07005f

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mQuickHeaders:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 1463
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mQuickHeaders:Ljava/util/List;

    invoke-direct {p0, v1, v4}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    .line 1465
    iget-object v1, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mQuickHeaders:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/HeaderListManager;->loadFavoriteList(Ljava/util/List;Ljava/util/HashMap;)V

    .line 1466
    iget-object v1, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    invoke-virtual {v1, v4}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 1467
    iget-object v1, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mQuickHeaders:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    .line 1469
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1470
    .local v0, "v":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mQuickHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1472
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mQuickSettingsCategoryView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    if-eqz v1, :cond_0

    .line 1473
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mQuickSettingsCategoryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 1474
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 1475
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    iput v1, p0, Lcom/android/settings/GridSettings;->headerViewCnt:I

    .line 1481
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    if-eqz v1, :cond_1

    .line 1482
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGridcontainer:Lcom/android/settings/grid/GridContainer;

    new-instance v2, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;

    sget-object v3, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/GridSettings;->mQuickHeaders:Ljava/util/List;

    invoke-direct {v2, v3, v4, p0}, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/grid/GridContainer;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1485
    :cond_1
    return-void

    .line 1478
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1479
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->addQuickSettingsView()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 607
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 608
    .local v0, "action":I
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSGD:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 609
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 610
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 617
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 612
    .end local v1    # "ret":Z
    :cond_0
    if-nez v0, :cond_1

    .line 613
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->isExpanding:Z

    .line 615
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .restart local v1    # "ret":Z
    goto :goto_0
.end method

.method public displayGrid(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 2067
    iput p1, p0, Lcom/android/settings/GridSettings;->prevScreen:I

    .line 2068
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 2069
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    if-eqz v1, :cond_0

    .line 2070
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2071
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    .line 2073
    :cond_0
    new-instance v1, Lcom/android/settings/grid/GridSettingsFragment;

    invoke-direct {v1}, Lcom/android/settings/grid/GridSettingsFragment;-><init>()V

    iput-object v1, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    .line 2074
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2075
    return-void
.end method

.method public getDBValue(I)I
    .locals 1
    .param p1, "select"    # I

    .prologue
    .line 1024
    const/4 v0, -0x1

    .line 1025
    .local v0, "viewType":I
    packed-switch p1, :pswitch_data_0

    .line 1035
    :goto_0
    return v0

    .line 1027
    :pswitch_0
    const/4 v0, 0x0

    .line 1028
    goto :goto_0

    .line 1030
    :pswitch_1
    const/4 v0, 0x2

    .line 1031
    goto :goto_0

    .line 1025
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getGridType()I
    .locals 1

    .prologue
    .line 3259
    const/4 v0, 0x0

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 1724
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1725
    .local v4, "superIntent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings/GridSettings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 1728
    .local v3, "startingFragment":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1729
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1730
    .local v2, "modIntent":Landroid/content/Intent;
    const-string v5, ":android:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1731
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1732
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1733
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 1737
    .end local v1    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1738
    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1741
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 1735
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v2    # "modIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "args":Landroid/os/Bundle;
    goto :goto_0

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 1741
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 3214
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getOptionDialogValue(I)I
    .locals 2
    .param p1, "dbValue"    # I

    .prologue
    .line 995
    const/4 v0, -0x1

    .line 996
    .local v0, "viewType":I
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 997
    packed-switch p1, :pswitch_data_0

    .line 1020
    :goto_0
    return v0

    .line 1000
    :pswitch_0
    const/4 v0, 0x0

    .line 1001
    goto :goto_0

    .line 1003
    :pswitch_1
    const/4 v0, 0x1

    .line 1004
    goto :goto_0

    .line 1009
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 1011
    :pswitch_2
    const/4 v0, 0x0

    .line 1012
    goto :goto_0

    .line 1014
    :pswitch_3
    const/4 v0, 0x1

    .line 1015
    goto :goto_0

    .line 997
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1009
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRealValue(I)I
    .locals 2
    .param p1, "select"    # I

    .prologue
    .line 966
    const/4 v0, 0x0

    .line 968
    .local v0, "viewType":I
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 969
    packed-switch p1, :pswitch_data_0

    .line 991
    :goto_0
    return v0

    .line 971
    :pswitch_0
    const/4 v0, 0x0

    .line 972
    goto :goto_0

    .line 974
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 978
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 980
    :pswitch_2
    const/4 v0, 0x1

    .line 981
    goto :goto_0

    .line 983
    :pswitch_3
    const/4 v0, 0x0

    .line 984
    goto :goto_0

    .line 986
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 969
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 978
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getSelectValue(I)I
    .locals 1
    .param p1, "db"    # I

    .prologue
    .line 1039
    const/4 v0, -0x1

    .line 1040
    .local v0, "viewType":I
    packed-switch p1, :pswitch_data_0

    .line 1050
    :goto_0
    :pswitch_0
    return v0

    .line 1042
    :pswitch_1
    const/4 v0, 0x0

    .line 1043
    goto :goto_0

    .line 1045
    :pswitch_2
    const/4 v0, 0x1

    .line 1046
    goto :goto_0

    .line 1040
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1749
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFragmentClass:Ljava/lang/String;

    .line 1761
    :cond_0
    :goto_0
    return-object v0

    .line 1751
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1752
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 1754
    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1758
    :cond_3
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 3209
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public isGiditemChecked(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 3253
    const/4 v0, 0x0

    return v0
.end method

.method public loadHeadersFromResource(ILjava/util/List;)V
    .locals 2
    .param p1, "oriList"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1840
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move v0, p1

    .line 1852
    .local v0, "list":I
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1853
    const v0, 0x7f070060

    .line 1856
    :cond_0
    invoke-super {p0, v0, p2}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 1857
    return-void
.end method

.method public loadHeadersFromResourceForTabView(ILjava/util/List;)V
    .locals 20
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1860
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move/from16 v9, p1

    .line 1861
    .local v9, "list":I
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1862
    const-string v16, "jjh"

    const-string v17, "grid list is enabled"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    const v9, 0x7f070060

    .line 1864
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-super {v0, v9, v1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 2023
    :cond_0
    :goto_0
    return-void

    .line 1867
    :cond_1
    const/4 v12, 0x0

    .line 1869
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 1870
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1874
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    .local v15, "type":I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 1878
    :cond_3
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1879
    .local v10, "nodeName":Ljava/lang/String;
    const-string v16, "preference-headers"

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 1880
    new-instance v16, Ljava/lang/RuntimeException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XML document must start with <preference-headers> tag; found"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " at "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2016
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v10    # "nodeName":Ljava/lang/String;
    .end local v15    # "type":I
    :catch_0
    move-exception v4

    .line 2017
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v16, Ljava/lang/RuntimeException;

    const-string v17, "Error parsing headers"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2021
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v16

    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4
    throw v16

    .line 1885
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v10    # "nodeName":Ljava/lang/String;
    .restart local v15    # "type":I
    :cond_5
    const/4 v3, 0x0

    .line 1887
    .local v3, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 1888
    .local v11, "outerDepth":I
    const/4 v6, 0x0

    .line 1890
    .local v6, "including":Z
    :cond_6
    :goto_1
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1f

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v16

    move/from16 v0, v16

    if-le v0, v11, :cond_1f

    .line 1891
    :cond_7
    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    .line 1895
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1896
    const-string v16, "header"

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1e

    .line 1897
    new-instance v5, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v5}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 1899
    .local v5, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget-object v17, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 1901
    .local v13, "sa":Landroid/content/res/TypedArray;
    const/16 v16, 0x1

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 1904
    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v5, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 1907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v16, v0

    if-eqz v16, :cond_13

    .line 1908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/HeaderListManager;->getTabList()[I

    move-result-object v16

    iget-wide v0, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 1909
    const/4 v6, 0x1

    .line 1920
    :cond_8
    :goto_2
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    .line 1922
    .local v14, "tv":Landroid/util/TypedValue;
    if-eqz v14, :cond_9

    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 1923
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    if-eqz v16, :cond_14

    .line 1924
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v5, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 1929
    :cond_9
    :goto_3
    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    .line 1931
    if-eqz v14, :cond_a

    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 1932
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    if-eqz v16, :cond_15

    .line 1933
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v5, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    .line 1938
    :cond_a
    :goto_4
    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    .line 1940
    if-eqz v14, :cond_b

    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 1941
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    if-eqz v16, :cond_16

    .line 1942
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1947
    :cond_b
    :goto_5
    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    .line 1949
    if-eqz v14, :cond_c

    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 1950
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    if-eqz v16, :cond_17

    .line 1951
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1956
    :cond_c
    :goto_6
    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    .line 1958
    if-eqz v14, :cond_d

    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 1959
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    if-eqz v16, :cond_18

    .line 1960
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v5, Landroid/preference/PreferenceActivity$Header;->titleDescriptionRes:I

    .line 1965
    :cond_d
    :goto_7
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    .line 1967
    if-eqz v14, :cond_e

    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 1968
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    if-eqz v16, :cond_19

    .line 1969
    iget v0, v14, Landroid/util/TypedValue;->resourceId:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v5, Landroid/preference/PreferenceActivity$Header;->summaryDescriptionRes:I

    .line 1975
    :cond_e
    :goto_8
    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1977
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1979
    if-nez v3, :cond_f

    .line 1980
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "curBundle":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1983
    .restart local v3    # "curBundle":Landroid/os/Bundle;
    :cond_f
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 1985
    .local v7, "innerDepth":I
    :cond_10
    :goto_9
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1c

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v16

    move/from16 v0, v16

    if-le v0, v7, :cond_1c

    .line 1986
    :cond_11
    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v15, v0, :cond_10

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v15, v0, :cond_10

    .line 1990
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1991
    .local v8, "innerNodeName":Ljava/lang/String;
    const-string v16, "extra"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 1992
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const-string v17, "extra"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1993
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    .line 2018
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "curBundle":Landroid/os/Bundle;
    .end local v5    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v6    # "including":Z
    .end local v7    # "innerDepth":I
    .end local v8    # "innerNodeName":Ljava/lang/String;
    .end local v10    # "nodeName":Ljava/lang/String;
    .end local v11    # "outerDepth":I
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v14    # "tv":Landroid/util/TypedValue;
    .end local v15    # "type":I
    :catch_1
    move-exception v4

    .line 2019
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v16, Ljava/lang/RuntimeException;

    const-string v17, "Error parsing headers"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1911
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v3    # "curBundle":Landroid/os/Bundle;
    .restart local v5    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v6    # "including":Z
    .restart local v10    # "nodeName":Ljava/lang/String;
    .restart local v11    # "outerDepth":I
    .restart local v13    # "sa":Landroid/content/res/TypedArray;
    .restart local v15    # "type":I
    :cond_12
    :try_start_4
    iget v0, v5, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    move/from16 v16, v0

    if-nez v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v16, v0

    iget-wide v0, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/settings/HeaderListManager;->isContain(I)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1912
    const/4 v6, 0x0

    .line 1913
    goto/16 :goto_1

    .line 1917
    :cond_13
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 1926
    .restart local v14    # "tv":Landroid/util/TypedValue;
    :cond_14
    iget-object v0, v14, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 1935
    :cond_15
    iget-object v0, v14, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 1944
    :cond_16
    iget-object v0, v14, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 1953
    :cond_17
    iget-object v0, v14, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto/16 :goto_6

    .line 1962
    :cond_18
    iget-object v0, v14, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->titleDescription:Ljava/lang/CharSequence;

    goto/16 :goto_7

    .line 1971
    :cond_19
    iget-object v0, v14, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->summaryDescription:Ljava/lang/CharSequence;

    goto/16 :goto_8

    .line 1995
    .restart local v7    # "innerDepth":I
    .restart local v8    # "innerNodeName":Ljava/lang/String;
    :cond_1a
    const-string v16, "intent"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b

    .line 1996
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v12, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto/16 :goto_9

    .line 1999
    :cond_1b
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9

    .line 2003
    .end local v8    # "innerNodeName":Ljava/lang/String;
    :cond_1c
    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v16

    if-lez v16, :cond_1d

    .line 2004
    iput-object v3, v5, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 2005
    const/4 v3, 0x0

    .line 2007
    :cond_1d
    if-eqz v6, :cond_6

    .line 2008
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2012
    .end local v5    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v7    # "innerDepth":I
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v14    # "tv":Landroid/util/TypedValue;
    :cond_1e
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 2021
    :cond_1f
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0x1610

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1574
    packed-switch p1, :pswitch_data_0

    .line 1587
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1588
    const/16 v0, 0x160f

    if-ne p1, v0, :cond_1

    .line 1589
    if-ne p2, v3, :cond_1

    .line 1590
    const-string v0, "Settings"

    const-string v1, "Search direct back!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    invoke-virtual {p0, v3}, Lcom/android/settings/GridSettings;->setResult(I)V

    .line 1592
    sput-boolean v2, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    .line 1593
    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 1594
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->finish()V

    .line 1599
    :cond_1
    return-void

    .line 1576
    :pswitch_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1577
    iput v1, p0, Lcom/android/settings/GridSettings;->prevScreen:I

    .line 1578
    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    if-eqz v0, :cond_0

    .line 1579
    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    invoke-virtual {v0, v1}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    goto :goto_0

    .line 1574
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1604
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1605
    sget-boolean v0, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    if-eqz v0, :cond_0

    .line 1606
    const/16 v0, 0x1610

    invoke-virtual {p0, v0}, Lcom/android/settings/GridSettings;->setResult(I)V

    .line 1610
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 1611
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2082
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v13, 0x0

    .line 2083
    .local v13, "isChanged":Z
    const/4 v14, 0x0

    .line 2092
    .local v14, "isEmergencyMode":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->onIsHidingHeaders()Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 2113
    const v20, 0x7f07005f

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 2116
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    .line 2120
    :cond_0
    sget-object v20, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mPhoneTabStyle : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v20

    if-eqz v20, :cond_12

    sget-boolean v20, Lcom/android/settings/GridSettings;->isListView:Z

    if-eqz v20, :cond_12

    .line 2123
    sget-object v20, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v9

    .line 2124
    .local v9, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v9}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v20

    if-nez v20, :cond_1

    .line 2125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 2127
    sget-object v20, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "listManager.getPosition : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/HeaderListManager;->getPosition()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/GridSettings;->updateQuickSettingsHeaders()V

    .line 2129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    const/16 v21, 0x63

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 2130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    .line 2148
    .end local v9    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 2149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    const-string v21, "show"

    sget-object v22, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v23, "eng"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 2153
    .local v16, "mTabDevTemp":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    .line 2154
    .local v8, "bar":Landroid/app/ActionBar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/HeaderListManager;->getPosition()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    invoke-virtual {v8}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v20

    if-nez v20, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 2157
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2158
    .local v4, "QuickHeaders":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v20, 0x7f07005f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 2159
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v4, v1}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    .line 2160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/android/settings/HeaderListManager;->loadFavoriteList(Ljava/util/List;Ljava/util/HashMap;)V

    .line 2161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 2162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    .line 2163
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v20

    if-eqz v20, :cond_15

    .line 2164
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_14

    invoke-virtual {v8}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v20

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    .line 2165
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/app/ActionBar;->removeTabAt(I)V

    .line 2182
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 2183
    new-instance v5, Lcom/android/settings/GridSettings$ViewPagerAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v5, v0, v1}, Lcom/android/settings/GridSettings$ViewPagerAdapter;-><init>(Lcom/android/settings/GridSettings;Landroid/content/Context;)V

    .line 2184
    .local v5, "adapter":Lcom/android/settings/GridSettings$ViewPagerAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2185
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 2187
    .end local v5    # "adapter":Lcom/android/settings/GridSettings$ViewPagerAdapter;
    :cond_5
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/GridSettings;->mTabDev:Z

    .line 2190
    .end local v4    # "QuickHeaders":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mTabDev:Z

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 2191
    new-instance v5, Lcom/android/settings/GridSettings$ViewPagerAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v5, v0, v1}, Lcom/android/settings/GridSettings$ViewPagerAdapter;-><init>(Lcom/android/settings/GridSettings;Landroid/content/Context;)V

    .line 2192
    .restart local v5    # "adapter":Lcom/android/settings/GridSettings$ViewPagerAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v20, v0

    invoke-virtual {v8}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v21

    add-int/lit8 v21, v21, -0x2

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2194
    invoke-virtual {v8}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x2

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 2195
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/GridSettings;->mTabDev:Z

    .line 2198
    .end local v5    # "adapter":Lcom/android/settings/GridSettings$ViewPagerAdapter;
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isGridSimple()Z

    move-result v20

    if-nez v20, :cond_8

    .line 2199
    const v20, 0x7f07005f

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 2200
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    .line 2203
    :cond_8
    new-instance v20, Lcom/android/settings/HeaderListManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/HeaderListManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    .line 2206
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 2207
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 2208
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "extra_tab_id"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 2209
    .local v19, "tap_index":I
    invoke-virtual {v8}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 2210
    add-int/lit8 v19, v19, -0x1

    .line 2212
    :cond_9
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 2217
    .end local v19    # "tap_index":I
    :cond_a
    invoke-virtual {v8}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v17

    .line 2218
    .local v17, "mTabIndex":I
    invoke-virtual {v8}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 2219
    add-int/lit8 v17, v17, 0x1

    .line 2221
    :cond_b
    packed-switch v17, :pswitch_data_0

    .line 2252
    const v20, 0x7f07005f

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 2253
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    .line 2255
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isGridSimple()Z

    move-result v20

    if-eqz v20, :cond_c

    if-lez v17, :cond_c

    .line 2256
    const v20, 0x7f07005f

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/GridSettings;->loadHeadersFromResourceForTabView(ILjava/util/List;)V

    .line 2257
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    .line 2258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HeaderListManager;->removeSubMenu(Ljava/util/List;Ljava/util/HashMap;)V

    .line 2259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/HeaderListManager;->removeEmptyCategory(Ljava/util/List;)V

    .line 2260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/HeaderListManager;->removeGridListCategory(Ljava/util/List;)V

    .line 2264
    .end local v8    # "bar":Landroid/app/ActionBar;
    .end local v16    # "mTabDevTemp":Z
    .end local v17    # "mTabIndex":I
    :cond_c
    if-nez p1, :cond_18

    const/4 v6, 0x0

    .line 2265
    .local v6, "afterLength":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/GridSettings;->prevLength:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v6, :cond_19

    const/4 v13, 0x1

    .line 2266
    :goto_4
    sget-object v20, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "prevLength : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/GridSettings;->prevLength:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    sget-object v20, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "afterLength : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/settings/GridSettings;->prevLength:I

    .line 2271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    if-nez v20, :cond_1a

    const/16 v18, 0x64

    .line 2273
    .local v18, "pos":I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->isGridView:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/GridSettings;->prevScreen:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    if-eqz v13, :cond_e

    .line 2274
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/GridSettings;->displayGrid(I)V

    .line 2278
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    if-eqz p1, :cond_11

    .line 2279
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_10

    .line 2280
    sget-wide v20, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-eqz v20, :cond_20

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    sget-wide v22, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    cmp-long v20, v20, v22

    if-nez v20, :cond_20

    .line 2281
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceActivity$Header;

    .line 2282
    .local v10, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v20

    if-eqz v20, :cond_1f

    .line 2283
    sget-wide v20, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    const-wide/32 v22, 0x7f1006b9

    cmp-long v20, v20, v22

    if-nez v20, :cond_1c

    .line 2284
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2285
    .local v7, "args":Landroid/os/Bundle;
    const-string v20, "extra_from_search"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1b

    .line 2288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2294
    :cond_f
    :goto_7
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 2295
    .local v12, "intent":Landroid/content/Intent;
    const-string v20, "android.app.cocktailbarservice.settings.SETTINGSMAIN"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2296
    const-string v20, "extra_search_bundle"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2297
    const-string v20, "extra_from_search"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2298
    const-string v20, "extra_depth_counter_key"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2299
    sget-object v20, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2322
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v10    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_10
    :goto_8
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 2325
    .end local v11    # "i":I
    :cond_11
    return-void

    .line 2135
    .end local v6    # "afterLength":I
    .end local v18    # "pos":I
    :cond_12
    sget-object v20, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mPhoneTabStyle : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    if-nez v14, :cond_1

    .line 2138
    sget-object v20, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "listManager.getPosition : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/HeaderListManager;->getPosition()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/HeaderListManager;->getPosition()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 2140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HeaderListManager;->loadFavoriteList(Ljava/util/List;Ljava/util/HashMap;)V

    .line 2141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    const/16 v21, 0x64

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 2142
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->invalidateOptionsMenu()V

    .line 2144
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 2166
    .restart local v4    # "QuickHeaders":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    .restart local v8    # "bar":Landroid/app/ActionBar;
    .restart local v16    # "mTabDevTemp":Z
    :cond_14
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    invoke-virtual {v8}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 2167
    invoke-virtual {v8}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v20

    new-instance v21, Lcom/android/settings/GridSettings$SettingsTabListener;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual/range {v20 .. v21}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v20

    const v21, 0x7f0a1da4

    invoke-virtual/range {v20 .. v21}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v15

    .line 2170
    .local v15, "mQuickTab":Landroid/app/ActionBar$Tab;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v15, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    goto/16 :goto_1

    .line 2173
    .end local v15    # "mQuickTab":Landroid/app/ActionBar$Tab;
    :cond_15
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_16

    invoke-virtual {v8}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v20

    if-eqz v20, :cond_16

    .line 2174
    invoke-virtual {v8}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v20

    new-instance v21, Lcom/android/settings/GridSettings$SettingsTabListener;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual/range {v20 .. v21}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v20

    const v21, 0x7f0a1da4

    invoke-virtual/range {v20 .. v21}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v15

    .line 2177
    .restart local v15    # "mQuickTab":Landroid/app/ActionBar$Tab;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v15, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    goto/16 :goto_1

    .line 2178
    .end local v15    # "mQuickTab":Landroid/app/ActionBar$Tab;
    :cond_16
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_4

    invoke-virtual {v8}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v20

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 2179
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/app/ActionBar;->removeTabAt(I)V

    goto/16 :goto_1

    .line 2223
    .end local v4    # "QuickHeaders":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    .restart local v17    # "mTabIndex":I
    :pswitch_0
    invoke-static {}, Lcom/android/settings/Utils;->isGridSimple()Z

    move-result v20

    if-eqz v20, :cond_17

    .line 2224
    const v20, 0x7f07005f

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 2225
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    .line 2227
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HeaderListManager;->loadFavoriteList(Ljava/util/List;Ljava/util/HashMap;)V

    .line 2228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 2229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_2

    .line 2232
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 2233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_2

    .line 2236
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 2237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_2

    .line 2240
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 2241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_2

    .line 2244
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 2245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_2

    .line 2248
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 2249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_2

    .line 2264
    .end local v8    # "bar":Landroid/app/ActionBar;
    .end local v16    # "mTabDevTemp":Z
    .end local v17    # "mTabIndex":I
    :cond_18
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    goto/16 :goto_3

    .line 2265
    .restart local v6    # "afterLength":I
    :cond_19
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 2271
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/HeaderListManager;->getPosition()I

    move-result v18

    goto/16 :goto_5

    .line 2290
    .restart local v7    # "args":Landroid/os/Bundle;
    .restart local v10    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v11    # "i":I
    .restart local v18    # "pos":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    .line 2291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto/16 :goto_7

    .line 2301
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_1c
    iget-wide v0, v10, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f10064e

    cmp-long v20, v20, v22

    if-eqz v20, :cond_1d

    iget-wide v0, v10, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f1006cf

    cmp-long v20, v20, v22

    if-eqz v20, :cond_1d

    iget-wide v0, v10, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x7f10064f

    cmp-long v20, v20, v22

    if-nez v20, :cond_1e

    .line 2307
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 2308
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_8

    .line 2310
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "extra_from_search"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2311
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setSelection(I)V

    .line 2312
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/GridSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_8

    .line 2316
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setSelection(I)V

    .line 2317
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/GridSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_8

    .line 2279
    .end local v10    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_20
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 2221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 4
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "shortTitleRes"    # I

    .prologue
    const/4 v3, 0x1

    .line 1786
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1791
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/DreamSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1807
    :cond_0
    const-string v1, "settings:ui_options"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1812
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1813
    const-class v1, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1814
    sget-object v1, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v2, "send split"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    const-string v1, "settings:ui_options"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1819
    :cond_2
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1820
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1374
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1376
    iget-object v2, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    if-eqz v2, :cond_0

    .line 1377
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 1378
    .local v1, "bar":Landroid/app/ActionBar;
    new-instance v0, Lcom/android/settings/GridSettings$ViewPagerAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/GridSettings$ViewPagerAdapter;-><init>(Lcom/android/settings/GridSettings;Landroid/content/Context;)V

    .line 1379
    .local v0, "adapter":Lcom/android/settings/GridSettings$ViewPagerAdapter;
    iget-object v2, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1380
    iget-object v2, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1382
    .end local v0    # "adapter":Lcom/android/settings/GridSettings$ViewPagerAdapter;
    .end local v1    # "bar":Landroid/app/ActionBar;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->populateKnoxCustomSettingsMap()V

    .line 627
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "settings:ui_options"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "settings:ui_options"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setUiOptions(I)V

    .line 630
    :cond_0
    sget-object v8, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v9, "onCreate"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v6, 0x0

    .line 632
    .local v6, "position":I
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "prevScreen"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 633
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "prevScreen"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 636
    :cond_1
    sput-object p0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    .line 637
    sget-object v8, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/android/settings/GridSettings;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    .line 638
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    .line 639
    invoke-static {p0}, Lcom/android/settings/Utils;->isEnableDockSettings(Landroid/content/Context;)Z

    move-result v8

    sput-boolean v8, Lcom/android/settings/GridSettings;->sIsEnableDockSettings:Z

    .line 643
    sget-object v8, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->mDualFoldertype:Z

    .line 644
    sget-object v8, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    const-string v9, "statusbar"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/StatusBarManager;

    iput-object v8, p0, Lcom/android/settings/GridSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 645
    iget-boolean v8, p0, Lcom/android/settings/GridSettings;->mDualFoldertype:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/GridSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v8, :cond_2

    .line 649
    :cond_2
    const-string v8, "development"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/GridSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 651
    sget-object v8, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->getTetheringTitle(Landroid/content/Context;)I

    move-result v8

    iput v8, p0, Lcom/android/settings/GridSettings;->tetherTitleRes:I

    .line 655
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "settings_listui"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 656
    const-string v8, "accessibility"

    invoke-virtual {p0, v8}, Lcom/android/settings/GridSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityManager;

    iput-object v8, p0, Lcom/android/settings/GridSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 658
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 659
    const-string v8, "com.android.settings.GridSettings"

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "settings_gridui"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_14

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    .line 662
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 663
    iget-boolean v8, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    if-eqz v8, :cond_15

    .line 664
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/settings/GridSettings;->isListView:Z

    .line 665
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    .line 666
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "settings_gridui"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 673
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "settings_gridui"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_17

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    .line 681
    :goto_3
    sget-object v8, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v9, "listManager is init!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v8, Lcom/android/settings/HeaderListManager;

    invoke-direct {v8, p0}, Lcom/android/settings/HeaderListManager;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    .line 694
    iget-boolean v8, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    if-eqz v8, :cond_4

    .line 695
    const v8, 0x7f0b0081

    invoke-virtual {p0, v8}, Lcom/android/settings/GridSettings;->setTheme(I)V

    .line 696
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->preventTabsEmbeddedOnActionBar()V

    .line 699
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->getMetaData()V

    .line 700
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    .line 701
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 702
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    .line 705
    iget-boolean v8, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    if-eqz v8, :cond_6

    .line 706
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v8

    if-nez v8, :cond_5

    .line 707
    new-instance v8, Landroid/view/ScaleGestureDetector;

    sget-object v9, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/settings/GridSettings$ScaleListner;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/settings/GridSettings$ScaleListner;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-direct {v8, v9, v10}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v8, p0, Lcom/android/settings/GridSettings;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 708
    :cond_5
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/settings/GridSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 712
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v8

    if-eqz v8, :cond_8

    sget-boolean v8, Lcom/android/settings/GridSettings;->isListView:Z

    if-eqz v8, :cond_8

    .line 713
    sget-object v8, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v2

    .line 714
    .local v2, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v8

    if-nez v8, :cond_7

    .line 715
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->addQuickSettingsView()V

    .line 717
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 718
    .local v5, "lv":Landroid/widget/ListView;
    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v8

    iput v8, p0, Lcom/android/settings/GridSettings;->headerViewCnt:I

    .line 719
    new-instance v8, Lcom/android/settings/GridSettings$4;

    invoke-direct {v8, p0}, Lcom/android/settings/GridSettings$4;-><init>(Lcom/android/settings/GridSettings;)V

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 732
    .end local v2    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v5    # "lv":Landroid/widget/ListView;
    :cond_8
    iget-boolean v8, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    if-eqz v8, :cond_a

    .line 733
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 735
    .local v1, "bar":Landroid/app/ActionBar;
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 736
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 737
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 738
    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v8

    new-instance v9, Lcom/android/settings/GridSettings$SettingsTabListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v8

    const v9, 0x7f0a1da4

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 743
    :cond_9
    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v8

    new-instance v9, Lcom/android/settings/GridSettings$SettingsTabListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v8

    const v9, 0x7f0a0fe8

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 747
    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v8

    new-instance v9, Lcom/android/settings/GridSettings$SettingsTabListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v8

    const v9, 0x7f0a1b96

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 751
    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v8

    new-instance v9, Lcom/android/settings/GridSettings$SettingsTabListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v8

    const v9, 0x7f0a1b97

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 755
    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v8

    new-instance v9, Lcom/android/settings/GridSettings$SettingsTabListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v8

    const v9, 0x7f0a1b98

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 759
    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v8

    new-instance v9, Lcom/android/settings/GridSettings$SettingsTabListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v8

    const v9, 0x7f0a15a9

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 763
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 764
    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v8

    const v9, 0x7f0a1b9a

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 765
    const/4 v8, 0x4

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v8

    const v9, 0x7f0a00ca

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 769
    .end local v1    # "bar":Landroid/app/ActionBar;
    :cond_a
    iget-boolean v8, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    if-eqz v8, :cond_b

    .line 770
    const v8, 0x7f040212

    invoke-virtual {p0, v8}, Lcom/android/settings/GridSettings;->setContentView(I)V

    .line 772
    const v8, 0x7f100066

    invoke-virtual {p0, v8}, Lcom/android/settings/GridSettings;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager;

    iput-object v8, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    .line 773
    new-instance v0, Lcom/android/settings/GridSettings$ViewPagerAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/GridSettings$ViewPagerAdapter;-><init>(Lcom/android/settings/GridSettings;Landroid/content/Context;)V

    .line 774
    .local v0, "adapter":Lcom/android/settings/GridSettings$ViewPagerAdapter;
    iget-object v8, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 775
    iget-object v8, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v9, Lcom/android/settings/GridSettings$5;

    invoke-direct {v9, p0}, Lcom/android/settings/GridSettings$5;-><init>(Lcom/android/settings/GridSettings;)V

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 798
    .end local v0    # "adapter":Lcom/android/settings/GridSettings$ViewPagerAdapter;
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsHidingHeaders()Z

    move-result v8

    if-nez v8, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsMultiPane()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 799
    iget v8, p0, Lcom/android/settings/GridSettings;->mTopLevelHeaderId:I

    invoke-direct {p0, v8}, Lcom/android/settings/GridSettings;->highlightHeader(I)V

    .line 802
    const v8, 0x7f0a01d7

    invoke-virtual {p0, v8}, Lcom/android/settings/GridSettings;->setTitle(I)V

    .line 806
    :cond_c
    if-eqz p1, :cond_d

    .line 807
    const-string v8, "com.android.settings.CURRENT_HEADER"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceActivity$Header;

    iput-object v8, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 808
    const-string v8, "com.android.settings.PARENT_HEADER"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceActivity$Header;

    iput-object v8, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 812
    :cond_d
    if-eqz p1, :cond_e

    iget-object v8, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v8, :cond_e

    .line 814
    iget-object v8, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v8, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/GridSettings;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 817
    :cond_e
    iget-object v8, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v8, :cond_f

    .line 818
    iget-object v8, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v8, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    new-instance v10, Lcom/android/settings/GridSettings$6;

    invoke-direct {v10, p0}, Lcom/android/settings/GridSettings$6;-><init>(Lcom/android/settings/GridSettings;)V

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/settings/GridSettings;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 827
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsMultiPane()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 828
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 829
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 834
    :cond_10
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 835
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 836
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "extra_from_search"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    .line 837
    sget-boolean v8, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    if-eqz v8, :cond_13

    .line 838
    sget-boolean v8, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 839
    const-string v8, "extra_header_id"

    const-wide/16 v10, -0x1

    invoke-virtual {v4, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    sput-wide v8, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    .line 840
    const-string v8, "extra_setting_value"

    const/4 v9, -0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/settings/GridSettings;->mSearchSettingValue:I

    .line 841
    const-string v8, "extra_fragment_bundle_key"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 842
    const-string v8, "extra_second_fragment_bundle_key"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 843
    iget-object v8, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v8, :cond_11

    .line 844
    const-string v8, "SettingsSearch"

    iget-object v9, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    const-string v10, "extra_parent_preference_key"

    const-string v11, "None"

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_11
    const-string v8, "extra_depth_counter_key"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    .line 847
    iget v8, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    .line 848
    sget v8, Lcom/android/settings/GridSettings;->mSearchSettingValue:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1b

    const/4 v8, 0x1

    :goto_4
    sput-boolean v8, Lcom/android/settings/GridSettings;->mDirectSettingEnabler:Z

    .line 850
    sget-wide v8, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    const-wide/32 v10, 0x7f100645

    cmp-long v8, v8, v10

    if-nez v8, :cond_13

    .line 851
    const-string v3, "com.vlingo.midas.gui.ConversationActivity"

    .line 852
    .local v3, "fragment":Ljava/lang/String;
    sget-object v8, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->checkVlingoAccepted(Landroid/content/Context;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_12

    .line 853
    const-string v3, "com.vlingo.midas.settings.SettingsScreen"

    .line 855
    :cond_12
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 856
    .local v7, "searchIntent":Landroid/content/Intent;
    const-string v8, "com.vlingo.midas"

    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 857
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 858
    invoke-virtual {p0, v7}, Lcom/android/settings/GridSettings;->startActivity(Landroid/content/Intent;)V

    .line 863
    .end local v3    # "fragment":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "searchIntent":Landroid/content/Intent;
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 864
    return-void

    .line 659
    :cond_14
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 668
    :cond_15
    const-string v8, "com.android.settings.GridSettings"

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "settings_gridui"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_16

    const/4 v8, 0x1

    :goto_5
    sput-boolean v8, Lcom/android/settings/GridSettings;->isListView:Z

    goto/16 :goto_1

    :cond_16
    const/4 v8, 0x0

    goto :goto_5

    .line 673
    :cond_17
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 675
    :cond_18
    const-string v8, "com.android.settings.GridSettings"

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "settings_gridui"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_19

    const/4 v8, 0x1

    :goto_6
    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    .line 678
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "settings_gridui"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1a

    const/4 v8, 0x1

    :goto_7
    iput-boolean v8, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    goto/16 :goto_3

    .line 675
    :cond_19
    const/4 v8, 0x0

    goto :goto_6

    .line 678
    :cond_1a
    const/4 v8, 0x0

    goto :goto_7

    .line 848
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_1b
    const/4 v8, 0x0

    goto/16 :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 875
    const-string v1, "com.android.settings.GridSettings"

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 876
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.providers.settingsearch"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 877
    const/16 v1, 0xc8

    const v2, 0x7f0a06aa

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 878
    .local v0, "item":Landroid/view/MenuItem;
    const v1, 0x7f020014

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 879
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 882
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 883
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isConceptForVZW()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isConceptForSPR()Z

    move-result v1

    if-nez v1, :cond_2

    .line 884
    :cond_1
    const/16 v1, 0xc9

    const v2, 0x7f0a0039

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 886
    :cond_2
    const/16 v1, 0xca

    const v2, 0x7f0a003d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 890
    :cond_3
    sget-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    sget-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 892
    :cond_5
    const/16 v1, 0xcc

    const v2, 0x7f0a1652

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0201f4

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 898
    :cond_6
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1561
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 1567
    iget-object v0, p0, Lcom/android/settings/GridSettings;->viewTypeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/GridSettings;->viewTypeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1568
    iget-object v0, p0, Lcom/android/settings/GridSettings;->viewTypeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/GridSettings;->viewTypeDialog:Landroid/app/Dialog;

    .line 1571
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 1770
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/GridSettings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 1771
    .local v0, "fragmentClass":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1772
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 1773
    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1774
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1775
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1776
    iput-object v1, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1780
    .end local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onGridItemSelected(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 6
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 3236
    const/4 v0, 0x0

    .line 3237
    .local v0, "isInScaleProgress":Z
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSGD:Landroid/view/ScaleGestureDetector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    .line 3238
    :cond_0
    sget-object v1, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSGD : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   isExpanding : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/GridSettings;->isExpanding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  isInScaleProgress :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    iget-boolean v1, p0, Lcom/android/settings/GridSettings;->isExpanding:Z

    if-nez v1, :cond_3

    .line 3240
    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f10000b

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 3241
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->makeFavoriteIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/GridSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3248
    :cond_1
    :goto_0
    return-void

    .line 3243
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/GridSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0

    .line 3246
    :cond_3
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/grid/GridSettingsFragment;->clearFocus()V

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 8
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 3284
    const/4 v3, 0x0

    .line 3288
    .local v3, "revert":Z
    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f100675

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    if-eqz v4, :cond_0

    .line 3291
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$DeviceInfoSettingsActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3293
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/android/settings/GridSettings;->getPersonalIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 3295
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/GridSettings;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3390
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 3355
    :cond_0
    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f1006b8

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 3356
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3357
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.bst.airmessage"

    const-string v6, "com.bst.airmessage.settings.AirMessageSettings"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3360
    const/4 v2, 0x1

    .line 3362
    .local v2, "isCoverAttached":Z
    sget-object v4, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_2

    .line 3363
    :cond_1
    const/4 v2, 0x0

    .line 3366
    :cond_2
    const-string v4, "S View cover attached"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3368
    invoke-virtual {p0, v1}, Lcom/android/settings/GridSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3373
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isCoverAttached":Z
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 3385
    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/android/settings/GridSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v4, :cond_4

    .line 3386
    iget-object v4, p0, Lcom/android/settings/GridSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v4, v4, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/android/settings/GridSettings;->highlightHeader(I)V

    goto :goto_0

    .line 3388
    :cond_4
    iput-object p1, p0, Lcom/android/settings/GridSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onIsMultiPane()Z
    .locals 1

    .prologue
    .line 1619
    const/4 v0, 0x0

    return v0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 2029
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1154
    const/16 v0, 0x54

    if-ne p1, v0, :cond_2

    .line 1155
    sget-object v0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1156
    :cond_0
    invoke-static {}, Lcom/android/settings/GridSettings;->callSearchMenu()V

    .line 1157
    :cond_1
    const/4 v0, 0x1

    .line 1159
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 1699
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1702
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 1703
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/settings/GridSettings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 1706
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1708
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 923
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 962
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 925
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->showDialog()V

    goto :goto_0

    .line 929
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 930
    sget-object v2, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings"

    const-string v4, "CQST"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->makeFavoriteIntent()Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/GridSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 940
    :pswitch_3
    invoke-static {}, Lcom/android/settings/GridSettings;->callSearchMenu()V

    goto :goto_0

    .line 944
    :pswitch_4
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 945
    sget-object v2, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings"

    const-string v4, "HQST"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 949
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 950
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "helphub:category"

    const-string v3, "settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 951
    invoke-virtual {p0, v1}, Lcom/android/settings/GridSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 958
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 959
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v3, "ActivityNotFoundException : com.samsung.helphub.HELP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 954
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 955
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "helphub:section"

    const-string v3, "edit_quick_settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 956
    invoke-virtual {p0, v1}, Lcom/android/settings/GridSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 923
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 7

    .prologue
    .line 1509
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 1511
    iget-object v5, p0, Lcom/android/settings/GridSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v5, :cond_0

    .line 1513
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/GridSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5}, Lcom/android/settings/GridSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1519
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 1520
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1521
    iget-object v5, p0, Lcom/android/settings/GridSettings;->mPagerListView:[Landroid/widget/ListView;

    aget-object v5, v5, v2

    if-nez v5, :cond_2

    .line 1520
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1514
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 1515
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1522
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/android/settings/GridSettings;->mPagerListView:[Landroid/widget/ListView;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 1523
    .local v4, "mPagerlistAdapter":Landroid/widget/ListAdapter;
    instance-of v5, v4, Lcom/android/settings/GridSettings$HeaderAdapter;

    if-eqz v5, :cond_1

    .line 1524
    check-cast v4, Lcom/android/settings/GridSettings$HeaderAdapter;

    .end local v4    # "mPagerlistAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v4}, Lcom/android/settings/GridSettings$HeaderAdapter;->pause()V

    goto :goto_2

    .line 1528
    .end local v2    # "i":I
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1529
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1530
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "ActivityName"

    const-string v6, "com.android.settings.GridSettings"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    const-string v5, "register"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1532
    iget-object v5, p0, Lcom/android/settings/GridSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 1535
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/GridSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v5, :cond_5

    .line 1537
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/GridSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5}, Lcom/android/settings/GridSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1542
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/android/settings/GridSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    if-eqz v5, :cond_6

    .line 1544
    :try_start_2
    sget-object v5, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/GridSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1549
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 1550
    .local v3, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v5, v3, Lcom/android/settings/GridSettings$HeaderAdapter;

    if-eqz v5, :cond_7

    .line 1551
    check-cast v3, Lcom/android/settings/GridSettings$HeaderAdapter;

    .end local v3    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v3}, Lcom/android/settings/GridSettings$HeaderAdapter;->pause()V

    .line 1554
    :cond_7
    iget-object v5, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1556
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1557
    return-void

    .line 1538
    :catch_1
    move-exception v1

    .line 1539
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 1545
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 1546
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 3417
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 3418
    .local v3, "titleRes":I
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3419
    const v3, 0x7f0a06ba

    .line 3428
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/GridSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 3430
    const/4 v0, 0x1

    return v0

    .line 3420
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3422
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3423
    const v3, 0x7f0a021d

    goto :goto_0

    .line 3425
    :cond_2
    const v3, 0x7f0a021b

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 905
    const/4 v0, 0x0

    .line 907
    .local v0, "pos":I
    const/16 v2, 0xcb

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 908
    .local v1, "selectItem":Landroid/view/MenuItem;
    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 915
    :goto_0
    return v2

    .line 910
    :cond_0
    iget-object v2, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    invoke-virtual {v2}, Lcom/android/settings/HeaderListManager;->getFavoriteCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 911
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 915
    :goto_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    goto :goto_0

    .line 913
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 12

    .prologue
    .line 1399
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1400
    sget-object v8, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v9, "onResume"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    iget-object v8, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v8

    if-lez v8, :cond_2

    .line 1403
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 1404
    iget-object v8, p0, Lcom/android/settings/GridSettings;->mPagerListView:[Landroid/widget/ListView;

    aget-object v8, v8, v2

    if-nez v8, :cond_1

    .line 1403
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1405
    :cond_1
    iget-object v8, p0, Lcom/android/settings/GridSettings;->mPagerListView:[Landroid/widget/ListView;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    .line 1406
    .local v5, "mPagerlistAdapter":Landroid/widget/ListAdapter;
    instance-of v8, v5, Lcom/android/settings/GridSettings$HeaderAdapter;

    if-eqz v8, :cond_0

    .line 1407
    check-cast v5, Lcom/android/settings/GridSettings$HeaderAdapter;

    .end local v5    # "mPagerlistAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v5}, Lcom/android/settings/GridSettings$HeaderAdapter;->resume()V

    goto :goto_1

    .line 1412
    .end local v2    # "i":I
    :cond_2
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v3

    .line 1413
    .local v3, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1414
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->finish()V

    .line 1418
    :cond_3
    const-string v8, "SPRINT"

    const-string v9, "ALL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1420
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/android/settings/GridSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 1421
    .local v7, "wm":Landroid/net/wifi/WifiManager;
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 1422
    .local v6, "msg":Landroid/os/Message;
    const/16 v8, 0x15

    iput v8, v6, Landroid/os/Message;->what:I

    .line 1423
    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v8

    iput v8, p0, Lcom/android/settings/GridSettings;->mTetheredData:I

    .line 1424
    sget-object v8, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mTetheredData: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings/GridSettings;->mTetheredData:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    .end local v6    # "msg":Landroid/os/Message;
    .end local v7    # "wm":Landroid/net/wifi/WifiManager;
    :cond_4
    new-instance v8, Lcom/android/settings/GridSettings$13;

    invoke-direct {v8, p0}, Lcom/android/settings/GridSettings$13;-><init>(Lcom/android/settings/GridSettings;)V

    iput-object v8, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1433
    iget-object v8, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v9, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1436
    sget-object v8, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/settings/GridSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1438
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 1439
    .local v4, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v8, v4, Lcom/android/settings/GridSettings$HeaderAdapter;

    if-eqz v8, :cond_5

    .line 1440
    check-cast v4, Lcom/android/settings/GridSettings$HeaderAdapter;

    .end local v4    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v4}, Lcom/android/settings/GridSettings$HeaderAdapter;->resume()V

    .line 1442
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->invalidateHeaders()V

    .line 1444
    iget-object v8, p0, Lcom/android/settings/GridSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/GridSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1446
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1447
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1448
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v8, "ActivityName"

    const-string v9, "com.android.settings.GridSettings"

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    const-string v8, "IconName"

    const-string v9, "Search;Edit quick settings;"

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    const-string v8, "register"

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1451
    iget-object v8, p0, Lcom/android/settings/GridSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v8, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 1455
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_6
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1456
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v8, "com.android.settings.Favorite"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1457
    const-string v8, "com.android.settings.Search"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1458
    iget-object v8, p0, Lcom/android/settings/GridSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v1}, Lcom/android/settings/GridSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1459
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1386
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1389
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 1390
    const-string v0, "com.android.settings.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    .line 1393
    const-string v0, "com.android.settings.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1395
    :cond_1
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 3442
    if-nez p1, :cond_0

    .line 3443
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 3450
    :goto_0
    return-void

    .line 3445
    :cond_0
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/GridSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 3448
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    new-instance v1, Lcom/android/settings/GridSettings$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/settings/GridSettings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/app/admin/DevicePolicyManager;)V

    invoke-super {p0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 3436
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/GridSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public showDialog()V
    .locals 11

    .prologue
    const v10, 0x7f0a0038

    const v9, 0x7f0a0037

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1054
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1055
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a0039

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1057
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1058
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "settings_gridui"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1063
    .local v2, "viewType":I
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1064
    new-array v1, v7, [Ljava/lang/String;

    .line 1065
    .local v1, "mViewTypeItem":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    .line 1066
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 1068
    invoke-virtual {p0, v2}, Lcom/android/settings/GridSettings;->getOptionDialogValue(I)I

    move-result v3

    new-instance v4, Lcom/android/settings/GridSettings$7;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/GridSettings$7;-><init>(Lcom/android/settings/GridSettings;I)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1097
    .end local v1    # "mViewTypeItem":[Ljava/lang/String;
    :goto_1
    const-string v3, "VZW"

    sget-object v4, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1098
    new-array v1, v7, [Ljava/lang/String;

    .line 1099
    .restart local v1    # "mViewTypeItem":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    .line 1100
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 1101
    invoke-virtual {p0, v2}, Lcom/android/settings/GridSettings;->getRealValue(I)I

    move-result v3

    new-instance v4, Lcom/android/settings/GridSettings$9;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/GridSettings$9;-><init>(Lcom/android/settings/GridSettings;I)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1132
    .end local v1    # "mViewTypeItem":[Ljava/lang/String;
    :cond_0
    :goto_2
    const v3, 0x7f0a01cf

    new-instance v4, Lcom/android/settings/GridSettings$11;

    invoke-direct {v4, p0}, Lcom/android/settings/GridSettings$11;-><init>(Lcom/android/settings/GridSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1140
    new-instance v3, Lcom/android/settings/GridSettings$12;

    invoke-direct {v3, p0}, Lcom/android/settings/GridSettings$12;-><init>(Lcom/android/settings/GridSettings;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1148
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/GridSettings;->viewTypeDialog:Landroid/app/Dialog;

    .line 1149
    iget-object v3, p0, Lcom/android/settings/GridSettings;->viewTypeDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 1150
    return-void

    .line 1061
    .end local v2    # "viewType":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "settings_gridui"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .restart local v2    # "viewType":I
    goto :goto_0

    .line 1084
    :cond_2
    const/high16 v3, 0x7f0c0000

    invoke-virtual {p0, v2}, Lcom/android/settings/GridSettings;->getRealValue(I)I

    move-result v4

    new-instance v5, Lcom/android/settings/GridSettings$8;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/GridSettings$8;-><init>(Lcom/android/settings/GridSettings;I)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1113
    :cond_3
    const-string v3, "GRIDLIST_SIMPLE"

    const-string v4, "DEFAULT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ATT"

    sget-object v4, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "TMB"

    sget-object v4, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1115
    :cond_4
    new-array v1, v7, [Ljava/lang/String;

    .line 1116
    .restart local v1    # "mViewTypeItem":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    .line 1117
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 1119
    invoke-virtual {p0, v2}, Lcom/android/settings/GridSettings;->getSelectValue(I)I

    move-result v3

    new-instance v4, Lcom/android/settings/GridSettings$10;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/GridSettings$10;-><init>(Lcom/android/settings/GridSettings;I)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 8
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleRes"    # I
    .param p6, "shortTitleRes"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1339
    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    if-eqz v0, :cond_3

    .line 1340
    const-string v0, "SettingsSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings , mSearchDepthCounter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    if-nez p2, :cond_0

    .line 1342
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "args":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1344
    .restart local p2    # "args":Landroid/os/Bundle;
    :cond_0
    const-string v0, "extra_from_search"

    invoke-virtual {p2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1346
    iget v0, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    if-le v0, v6, :cond_2

    .line 1347
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 1348
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1357
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-static/range {v0 .. v5}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v7

    .line 1359
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "extra_from_search"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1360
    const-string v0, "extra_depth_counter_key"

    iget v1, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1361
    const-string v0, "extra_second_fragment_bundle_key"

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1362
    const/16 v0, 0x160f

    invoke-virtual {p0, v7, v0}, Lcom/android/settings/GridSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1363
    iput-boolean v5, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 1369
    .end local v7    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 1351
    :cond_2
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 1352
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1366
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 7
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 1630
    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    if-nez v2, :cond_0

    .line 1631
    iput-object v3, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1632
    iput-object v3, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1635
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1636
    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    if-eqz v2, :cond_2

    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    sget-wide v4, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1637
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1639
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "extra_from_search"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1641
    iget v2, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    if-le v2, v6, :cond_3

    .line 1642
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 1643
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1651
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1652
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "extra_from_search"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1653
    const-string v2, "extra_depth_counter_key"

    iget v3, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1654
    const-string v2, "extra_second_fragment_bundle_key"

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1657
    iput-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1658
    iput-object v1, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 1659
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    .line 1663
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1664
    return-void

    .line 1646
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_3
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 1647
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public updateHotspotSSID()V
    .locals 4

    .prologue
    .line 3063
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/GridSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 3064
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3066
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    const-string v2, ""

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3067
    sget-object v2, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v3, "updateHotspotSSID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "chameleon_ssid"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3069
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 3071
    :cond_0
    return-void
.end method
