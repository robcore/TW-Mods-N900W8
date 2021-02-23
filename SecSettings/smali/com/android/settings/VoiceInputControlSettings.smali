.class public Lcom/android/settings/VoiceInputControlSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VoiceInputControlSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static voiceInputControlSettings:Lcom/android/settings/VoiceInputControlSettings;


# instance fields
.field private final KEY_EASY_MODE_SWITCH:Ljava/lang/String;

.field private final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

.field private dialog:Landroid/app/AlertDialog;

.field private foundVoiceControlView:Landroid/view/View;

.field private headerView:Landroid/view/View;

.field private isTablet:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAlarm:Landroid/preference/CheckBoxPreference;

.field mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

.field private mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

.field private mCamera:Landroid/preference/CheckBoxPreference;

.field private mChatonV:Landroid/preference/CheckBoxPreference;

.field mHelpHandler:Landroid/os/Handler;

.field private mHelpState:I

.field private mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mIncommingCalls:Landroid/preference/CheckBoxPreference;

.field private mIndex:I

.field private mIsAutoHapticDialogShowing:Z

.field private mIsFromHelp:Z

.field private mListView:Landroid/widget/ListView;

.field private mMusic:Landroid/preference/CheckBoxPreference;

.field private mRotation:I

.field mTabletTabStyle:Z

.field private mVoiceInputCategory:Landroid/preference/PreferenceCategory;

.field private mVoiceInputControlObserver:Landroid/database/ContentObserver;

.field private onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private r:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/VoiceInputControlSettings;->voiceInputControlSettings:Lcom/android/settings/VoiceInputControlSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 88
    const-string v0, "voice_input_control"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

    .line 90
    const-string v0, "easy_mode_switch"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->KEY_EASY_MODE_SWITCH:Ljava/lang/String;

    .line 108
    iput-boolean v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsAutoHapticDialogShowing:Z

    .line 113
    iput-boolean v1, p0, Lcom/android/settings/VoiceInputControlSettings;->isTablet:Z

    .line 114
    iput-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->dialog:Landroid/app/AlertDialog;

    .line 115
    iput-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 116
    iput-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 117
    iput-boolean v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    .line 128
    iput v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpState:I

    .line 129
    iput v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIndex:I

    .line 132
    new-instance v0, Lcom/android/settings/VoiceInputControlSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/VoiceInputControlSettings$1;-><init>(Lcom/android/settings/VoiceInputControlSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mVoiceInputControlObserver:Landroid/database/ContentObserver;

    .line 270
    new-instance v0, Lcom/android/settings/VoiceInputControlSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/VoiceInputControlSettings$2;-><init>(Lcom/android/settings/VoiceInputControlSettings;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    .line 1031
    new-instance v0, Lcom/android/settings/VoiceInputControlSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/VoiceInputControlSettings$9;-><init>(Lcom/android/settings/VoiceInputControlSettings;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/VoiceInputControlSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/VoiceInputControlSettings;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->updateUIVoiceInputControl()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/VoiceInputControlSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/VoiceInputControlSettings;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/VoiceInputControlSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/VoiceInputControlSettings;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->showHelpStep1Dialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/VoiceInputControlSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/VoiceInputControlSettings;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/VoiceInputControlSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/VoiceInputControlSettings;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->showHelpStep2Dialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/VoiceInputControlSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/VoiceInputControlSettings;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->setTabletView()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/VoiceInputControlSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/VoiceInputControlSettings;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/VoiceInputControlSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/VoiceInputControlSettings;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/VoiceInputControlSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/VoiceInputControlSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsAutoHapticDialogShowing:Z

    return p1
.end method

.method public static getInstance()Lcom/android/settings/VoiceInputControlSettings;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/android/settings/VoiceInputControlSettings;->voiceInputControlSettings:Lcom/android/settings/VoiceInputControlSettings;

    return-object v0
.end method

.method public static getSalesCodeProperty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSwitch(Landroid/view/View;)Landroid/view/View;
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 895
    const/4 v3, 0x0

    .line 896
    .local v3, "switchView":Landroid/view/View;
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    move-object v5, p1

    .line 897
    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 898
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    move-object v5, p1

    .line 899
    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 900
    .local v1, "childView":Landroid/view/View;
    instance-of v5, v1, Landroid/widget/Switch;

    if-eqz v5, :cond_0

    .line 901
    move-object v3, v1

    move-object v4, v3

    .line 908
    .end local v0    # "childCount":I
    .end local v1    # "childView":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "switchView":Landroid/view/View;
    .local v4, "switchView":Landroid/view/View;
    :goto_1
    return-object v4

    .end local v4    # "switchView":Landroid/view/View;
    .restart local v0    # "childCount":I
    .restart local v1    # "childView":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v3    # "switchView":Landroid/view/View;
    :cond_0
    move-object v5, p1

    .line 904
    check-cast v5, Landroid/view/ViewGroup;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/VoiceInputControlSettings;->getSwitch(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 898
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "childCount":I
    .end local v1    # "childView":Landroid/view/View;
    .end local v2    # "i":I
    :cond_1
    move-object v4, v3

    .line 908
    .end local v3    # "switchView":Landroid/view/View;
    .restart local v4    # "switchView":Landroid/view/View;
    goto :goto_1
.end method

.method public static isChatONVPhone()Z
    .locals 3

    .prologue
    .line 635
    const/4 v0, 0x1

    .line 636
    .local v0, "isChatONV":Z
    invoke-static {}, Lcom/android/settings/VoiceInputControlSettings;->getSalesCodeProperty()Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 638
    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KTT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LGT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 641
    :cond_0
    const/4 v0, 0x0

    .line 644
    :cond_1
    return v0
.end method

.method private isChatOnVInstalled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 295
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.coolots.chaton"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return v1

    .line 298
    :catch_0
    move-exception v2

    .line 306
    :try_start_1
    const-string v2, "com.coolots.chatonforcanada"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 309
    :catch_1
    move-exception v1

    .line 315
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEasyModeOn()I
    .locals 3

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setPreferenceStatusBasedOnEasyMode(Landroid/preference/CheckBoxPreference;)V
    .locals 1
    .param p1, "mPref"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_0

    .line 479
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->isEasyModeOn()I

    move-result v0

    if-nez v0, :cond_1

    .line 480
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setTabletView()V
    .locals 18

    .prologue
    .line 958
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 961
    :cond_0
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    .line 962
    .local v12, "size":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "window"

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    .line 964
    .local v13, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 966
    iget v10, v12, Landroid/graphics/Point;->y:I

    .line 967
    .local v10, "screenHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0f01c1

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 970
    .local v7, "helpPointerWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Landroid/app/ListActivity;

    .line 971
    .local v9, "mListActivity":Landroid/app/ListActivity;
    invoke-virtual {v9}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mListView:Landroid/widget/ListView;

    .line 972
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mListView:Landroid/widget/ListView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    .line 973
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mListView:Landroid/widget/ListView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->foundVoiceControlView:Landroid/view/View;

    .line 975
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v14}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 977
    .local v3, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_1

    .line 978
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v14, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getId()I

    move-result v14

    const v15, 0x7f100690

    if-ne v14, v15, :cond_3

    .line 979
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v14, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    .line 984
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/VoiceInputControlSettings;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v14, v15}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 986
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getId()I

    move-result v14

    const v15, 0x7f100690

    if-eq v14, v15, :cond_5

    .line 987
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mIndex:I

    if-eqz v14, :cond_4

    .line 988
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/VoiceInputControlSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v15}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 989
    .local v4, "firstItem":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/VoiceInputControlSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v15}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 991
    .local v2, "LastItem":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v14}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/VoiceInputControlSettings;->mIndex:I

    if-ge v14, v15, :cond_2

    .line 992
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/VoiceInputControlSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v15}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    .line 994
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const/4 v15, 0x2

    const-wide/16 v16, 0x32

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1021
    .end local v2    # "LastItem":Landroid/view/View;
    .end local v4    # "firstItem":Landroid/view/View;
    :goto_1
    return-void

    .line 977
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 997
    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->foundVoiceControlView:Landroid/view/View;

    .line 998
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    .line 999
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const/4 v15, 0x2

    const-wide/16 v16, 0x32

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1003
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->foundVoiceControlView:Landroid/view/View;

    .line 1004
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->foundVoiceControlView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1005
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    invoke-virtual {v14, v15}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    .line 1006
    .local v6, "headerViewPosition":I
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/settings/VoiceInputControlSettings;->mIndex:I

    .line 1008
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v14}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v5

    .line 1009
    .local v5, "focusedView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v14}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v11

    .line 1010
    .local v11, "selectedView":Landroid/view/View;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    .line 1011
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mListView:Landroid/widget/ListView;

    div-int/lit8 v15, v10, 0x2

    invoke-virtual {v14, v6, v15}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    .line 1015
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 1016
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mTabletTabStyle:Z

    if-eqz v14, :cond_8

    .line 1017
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1012
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v10, v14

    mul-int/lit8 v15, v7, 0x3

    if-gt v14, v15, :cond_6

    .line 1013
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mListView:Landroid/widget/ListView;

    div-int/lit8 v15, v10, 0x2

    invoke-virtual {v14, v6, v15}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_2

    .line 1019
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    const-wide/16 v16, 0x5dc

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1
.end method

.method private showHelpStep1Dialog()V
    .locals 26

    .prologue
    .line 792
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "voice_input_control"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 794
    .local v21, "voiceInputControlState":I
    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 799
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 802
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 803
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/VoiceInputControlSettings;->isTablet:Z

    move/from16 v23, v0

    if-nez v23, :cond_3

    .line 804
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v23

    const v24, 0x7f0400d9

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 806
    .local v20, "view":Landroid/view/View;
    new-instance v23, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    goto/16 :goto_0

    .line 814
    .end local v20    # "view":Landroid/view/View;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v23

    const v24, 0x7f0400da

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 816
    .restart local v20    # "view":Landroid/view/View;
    new-instance v23, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 819
    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    .line 820
    .local v16, "size":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const-string v24, "window"

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/WindowManager;

    .line 822
    .local v22, "windowManager":Landroid/view/WindowManager;
    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 823
    move-object/from16 v0, v16

    iget v15, v0, Landroid/graphics/Point;->x:I

    .line 824
    .local v15, "screenWidth":I
    move-object/from16 v0, v16

    iget v14, v0, Landroid/graphics/Point;->y:I

    .line 826
    .local v14, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->foundVoiceControlView:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 829
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/VoiceInputControlSettings;->foundVoiceControlView:Landroid/view/View;

    check-cast v11, Landroid/widget/LinearLayout;

    .line 830
    .local v11, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    .line 831
    .local v7, "childCount":I
    add-int/lit8 v23, v7, -0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 832
    .local v12, "mView":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mRotation:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 833
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/VoiceInputControlSettings;->getSwitch(Landroid/view/View;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    .line 848
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v18, v23, v24

    .line 852
    .local v18, "switchWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v17, v23, v24

    .line 854
    .local v17, "switchHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0f01c1

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 856
    .local v8, "helpPointerWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0f01ca

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 858
    .local v6, "bubbleTopMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0f0209

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 861
    .local v5, "bubbleRightMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v24, v18, v8

    div-int/lit8 v24, v24, 0x2

    add-int v10, v23, v24

    .line 863
    .local v10, "leftMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    sub-int v13, v15, v23

    .line 865
    .local v13, "rightMargin":I
    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v24, v17, v8

    div-int/lit8 v24, v24, 0x2

    add-int v19, v23, v24

    .line 871
    .local v19, "topMargin":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    sub-int v4, v13, v23

    .line 872
    .local v4, "bubbleMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 874
    .local v3, "bubbleLeftMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 876
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mRotation:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0f000e

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    add-int v24, v24, v13

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setLayoutMarginDialogCenter(III)V

    .line 885
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    goto/16 :goto_0

    .line 835
    .end local v3    # "bubbleLeftMargin":I
    .end local v4    # "bubbleMargin":I
    .end local v5    # "bubbleRightMargin":I
    .end local v6    # "bubbleTopMargin":I
    .end local v8    # "helpPointerWidth":I
    .end local v10    # "leftMargin":I
    .end local v13    # "rightMargin":I
    .end local v17    # "switchHeight":I
    .end local v18    # "switchWidth":I
    .end local v19    # "topMargin":I
    :cond_5
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v23

    move/from16 v0, v23

    if-ge v9, v0, :cond_4

    .line 836
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getId()I

    move-result v23

    const v24, 0x1020018

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 837
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    goto/16 :goto_1

    .line 840
    :cond_6
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    if-ne v9, v0, :cond_7

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 842
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    goto/16 :goto_0

    .line 835
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 868
    .end local v9    # "i":I
    .restart local v5    # "bubbleRightMargin":I
    .restart local v6    # "bubbleTopMargin":I
    .restart local v8    # "helpPointerWidth":I
    .restart local v10    # "leftMargin":I
    .restart local v13    # "rightMargin":I
    .restart local v17    # "switchHeight":I
    .restart local v18    # "switchWidth":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v24, v17, v8

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->getStatusBarHeight()I

    move-result v24

    sub-int v19, v23, v24

    .restart local v19    # "topMargin":I
    goto/16 :goto_2

    .line 881
    .restart local v3    # "bubbleLeftMargin":I
    .restart local v4    # "bubbleMargin":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0f0208

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    sub-int v24, v13, v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v6, v5}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setLayoutMarginDialogRight(IIII)V

    goto/16 :goto_3
.end method

.method private showHelpStep2Dialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 912
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_input_control"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 914
    .local v2, "voiceInputControlState":I
    if-nez v2, :cond_1

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v3, :cond_2

    .line 919
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 920
    iput-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 923
    :cond_2
    iput v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpState:I

    .line 924
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 925
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400db

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 926
    .local v1, "view":Landroid/view/View;
    const v3, 0x7f10013a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 928
    .local v0, "closeBtn":Landroid/widget/ImageView;
    new-instance v3, Lcom/android/settings/VoiceInputControlSettings$8;

    invoke-direct {v3, p0}, Lcom/android/settings/VoiceInputControlSettings$8;-><init>(Lcom/android/settings/VoiceInputControlSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 937
    new-instance v3, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 938
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v3, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 939
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v4, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v3, v4}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 940
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v3, v5}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 941
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 942
    iget-boolean v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsAutoHapticDialogShowing:Z

    if-nez v3, :cond_0

    .line 943
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    goto :goto_0
.end method

.method private updateUIVoiceInputControl()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 490
    .local v0, "voiceInputControlState":I
    if-ne v0, v4, :cond_7

    .line 491
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 492
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 497
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 499
    :cond_2
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    .line 500
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/VoiceInputControlSettings;->setPreferenceStatusBasedOnEasyMode(Landroid/preference/CheckBoxPreference;)V

    .line 501
    :cond_3
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    .line 502
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 504
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_5

    .line 505
    iget-boolean v1, p0, Lcom/android/settings/VoiceInputControlSettings;->isTablet:Z

    if-eqz v1, :cond_6

    .line 506
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_5

    .line 507
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 508
    iput-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 542
    :cond_5
    :goto_0
    return-void

    .line 511
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->showHelpStep2Dialog()V

    goto :goto_0

    .line 515
    :cond_7
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 516
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_8

    .line 517
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 518
    :cond_8
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_9

    .line 519
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 520
    :cond_9
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_a

    .line 521
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 522
    :cond_a
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_b

    .line 523
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 524
    :cond_b
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_c

    .line 525
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 527
    :cond_c
    iget-boolean v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_5

    .line 528
    iget-boolean v1, p0, Lcom/android/settings/VoiceInputControlSettings;->isTablet:Z

    if-eqz v1, :cond_d

    .line 529
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 531
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 533
    :cond_d
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_e

    .line 534
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 535
    iput-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 537
    :cond_e
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 538
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public getHelpHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 6

    .prologue
    .line 948
    const/4 v1, 0x0

    .line 949
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 950
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 951
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 953
    :cond_0
    return v1
.end method

.method public isAllOptionDisabled()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 619
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 620
    .local v4, "cr":Landroid/content/ContentResolver;
    const-string v8, "voice_input_control_incomming_calls"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 621
    .local v1, "call":I
    const-string v8, "voice_input_control_alarm"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 622
    .local v0, "alarm":I
    const-string v8, "voice_input_control_camera"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 623
    .local v2, "camera":I
    const-string v8, "voice_input_control_music"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 624
    .local v5, "music":I
    const-string v8, "voice_input_control_chatonv"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 626
    .local v3, "chatonv":I
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v5, :cond_0

    if-nez v3, :cond_0

    .line 627
    const-string v8, "voice_input_control"

    invoke-static {v4, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 630
    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method public isFromHelpApp()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voiceinputcontrol_showNeverAgain"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 320
    .local v3, "showNeverAgain":I
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voice_input_control"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 321
    .local v5, "voiceState":I
    const-string v8, "vibrator"

    invoke-virtual {p0, v8}, Lcom/android/settings/VoiceInputControlSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 323
    .local v4, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voice_input_control"

    if-eqz p2, :cond_0

    move v6, v7

    :cond_0
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 326
    if-eqz p2, :cond_1

    if-nez v5, :cond_1

    if-nez v3, :cond_1

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 327
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/settings/VoiceInputControlSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 328
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040066

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 329
    .local v2, "layout":Landroid/view/View;
    const v6, 0x7f100110

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 330
    .local v0, "check":Landroid/widget/CheckBox;
    const v6, 0x7f10010f

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    const v8, 0x7f0a15ba

    :goto_0
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 331
    new-instance v6, Lcom/android/settings/VoiceInputControlSettings$3;

    invoke-direct {v6, p0}, Lcom/android/settings/VoiceInputControlSettings$3;-><init>(Lcom/android/settings/VoiceInputControlSettings;)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    .line 337
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0a15b9

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 338
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0a15bc

    new-instance v9, Lcom/android/settings/VoiceInputControlSettings$4;

    invoke-direct {v9, p0, v0}, Lcom/android/settings/VoiceInputControlSettings$4;-><init>(Lcom/android/settings/VoiceInputControlSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 345
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0a15bd

    new-instance v9, Lcom/android/settings/VoiceInputControlSettings$5;

    invoke-direct {v9, p0}, Lcom/android/settings/VoiceInputControlSettings$5;-><init>(Lcom/android/settings/VoiceInputControlSettings;)V

    invoke-virtual {v6, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 352
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 353
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/android/settings/VoiceInputControlSettings$6;

    invoke-direct {v8, p0}, Lcom/android/settings/VoiceInputControlSettings$6;-><init>(Lcom/android/settings/VoiceInputControlSettings;)V

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 361
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/android/settings/VoiceInputControlSettings$7;

    invoke-direct {v8, p0}, Lcom/android/settings/VoiceInputControlSettings$7;-><init>(Lcom/android/settings/VoiceInputControlSettings;)V

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 372
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->dialog:Landroid/app/AlertDialog;

    .line 373
    iput-boolean v7, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsAutoHapticDialogShowing:Z

    .line 375
    .end local v0    # "check":Landroid/widget/CheckBox;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "layout":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->updateUIVoiceInputControl()V

    .line 376
    return-void

    .line 330
    .restart local v0    # "check":Landroid/widget/CheckBox;
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    .restart local v2    # "layout":Landroid/view/View;
    :cond_2
    const v8, 0x7f0a15bb

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 763
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 764
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 766
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 768
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mRotation:I

    .line 769
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->updateUIVoiceInputControl()V

    .line 770
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x10

    const/4 v11, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 154
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 155
    sput-object p0, Lcom/android/settings/VoiceInputControlSettings;->voiceInputControlSettings:Lcom/android/settings/VoiceInputControlSettings;

    .line 156
    new-instance v5, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v5}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mRotation:I

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 161
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 162
    const-string v5, "fromHelp"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    .line 163
    if-eqz p1, :cond_0

    .line 165
    const-string v5, "isfromhelp"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    .line 167
    :cond_0
    const-string v5, "fromHelp"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 172
    :cond_1
    const v5, 0x7f0700e9

    invoke-virtual {p0, v5}, Lcom/android/settings/VoiceInputControlSettings;->addPreferencesFromResource(I)V

    .line 174
    invoke-static {}, Lcom/android/settings/VoiceInputControlSettings;->isChatONVPhone()Z

    move-result v5

    if-nez v5, :cond_a

    move v1, v6

    .line 176
    .local v1, "chatONVHide1":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 177
    .local v0, "activity":Landroid/app/Activity;
    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 179
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 180
    iput-boolean v6, p0, Lcom/android/settings/VoiceInputControlSettings;->isTablet:Z

    .line 182
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0f0054

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 184
    .local v4, "padding":I
    iget-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v7, v7, v4, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 185
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 187
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v9, Landroid/app/ActionBar$LayoutParams;

    const/16 v10, 0x15

    invoke-direct {v9, v11, v11, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v8, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 192
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarLayout:Landroid/view/View;

    .line 194
    iget-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 196
    const-string v5, "voice_input_control"

    invoke-virtual {p0, v5}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mVoiceInputCategory:Landroid/preference/PreferenceCategory;

    .line 197
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 198
    iget-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mVoiceInputCategory:Landroid/preference/PreferenceCategory;

    if-eqz v5, :cond_3

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlSettings;->mVoiceInputCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    :cond_3
    const-string v5, "voice_input_control_incomming_calls"

    invoke-virtual {p0, v5}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    .line 204
    const-string v5, "voice_input_control_chatonv"

    invoke-virtual {p0, v5}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    .line 205
    const-string v5, "voice_input_control_alarm"

    invoke-virtual {p0, v5}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    .line 206
    const-string v5, "voice_input_control_camera"

    invoke-virtual {p0, v5}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    .line 207
    const-string v5, "voice_input_control_music"

    invoke-virtual {p0, v5}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 212
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "voice_input_control_incomming_calls"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    :cond_5
    if-eq v1, v6, :cond_6

    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->isChatOnVInstalled()Z

    move-result v5

    if-nez v5, :cond_7

    .line 217
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "voice_input_control_chatonv"

    const/4 v9, 0x0

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_7
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->hasNewVoiceControlConcept()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "voice_input_control_alarm"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "voice_input_control_music"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 235
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    if-nez v5, :cond_9

    .line 236
    invoke-virtual {p0, v6}, Lcom/android/settings/VoiceInputControlSettings;->setHasOptionsMenu(Z)V

    .line 240
    :cond_9
    return-void

    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "chatONVHide1":Z
    .end local v4    # "padding":I
    :cond_a
    move v1, v7

    .line 174
    goto/16 :goto_0

    .line 220
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "chatONVHide1":Z
    .restart local v4    # "padding":I
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "Svoice"

    const-string v8, "VOICEINPUTCONTROL_CHATONV"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 246
    const/4 v0, 0x1

    const v1, 0x7f0a1652

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201de

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 248
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 776
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 778
    iput-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 782
    iput-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 786
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 787
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 788
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 1025
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 1026
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1029
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 252
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 259
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 254
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "voice_control"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/settings/VoiceInputControlSettings;->startActivity(Landroid/content/Intent;)V

    .line 257
    const/4 v1, 0x1

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 548
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 549
    .local v0, "state":I
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v4, v0, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a19b4

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 551
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 552
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mVoiceInputControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 556
    iput v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpState:I

    .line 558
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 559
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 560
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 561
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 583
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 584
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_input_control_incomming_calls"

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 601
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 606
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 607
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a19b4

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 608
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 612
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.VOICECONTROL_SWITCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 613
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 615
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    move v1, v3

    .line 584
    goto :goto_0

    .line 587
    :cond_3
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 588
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_input_control_chatonv"

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_4
    move v1, v3

    goto :goto_3

    .line 590
    :cond_5
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 591
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_input_control_alarm"

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_4
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_6
    move v1, v3

    goto :goto_4

    .line 593
    :cond_7
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 594
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_input_control_camera"

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_5
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_8
    move v1, v3

    goto :goto_5

    .line 596
    :cond_9
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_input_control_music"

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_6
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_a
    move v1, v3

    goto :goto_6

    .line 610
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "voice_input_control"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 380
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "settings_listui"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_6

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mTabletTabStyle:Z

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->setBargeInSummary()V

    .line 388
    new-array v1, v4, [Ljava/lang/String;

    const-string v3, "null"

    aput-object v3, v1, v5

    .line 389
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v7, "isMicrophoneEnabled"

    invoke-static {v3, v6, v7, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 391
    .local v0, "isMicrophoneEnabled":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_7

    if-eq v0, v4, :cond_7

    .line 393
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 394
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 395
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 397
    :cond_0
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 398
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 399
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 401
    :cond_1
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 402
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 403
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 405
    :cond_2
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_3

    .line 406
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 407
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 409
    :cond_3
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_4

    .line 410
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 411
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 413
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->finish()V

    .line 468
    :cond_5
    :goto_1
    return-void

    .end local v0    # "isMicrophoneEnabled":I
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    :cond_6
    move v3, v5

    .line 381
    goto :goto_0

    .line 416
    .restart local v0    # "isMicrophoneEnabled":I
    .restart local v1    # "selectionArgs":[Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_8

    .line 417
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 419
    :cond_8
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_9

    .line 420
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 422
    :cond_9
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_a

    .line 423
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 428
    :cond_a
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->updateUIVoiceInputControl()V

    .line 429
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "voice_input_control"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/VoiceInputControlSettings;->mVoiceInputControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 435
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_b

    .line 436
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "voice_input_control_incomming_calls"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_10

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 441
    :cond_b
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_c

    .line 442
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "voice_input_control_chatonv"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_11

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 446
    :cond_c
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_d

    .line 447
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "voice_input_control_alarm"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_12

    move v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 451
    :cond_d
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_e

    .line 452
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "voice_input_control_camera"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_13

    move v3, v4

    :goto_5
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 456
    :cond_e
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_f

    .line 457
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voice_input_control_music"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_14

    :goto_6
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 460
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_input_control"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 463
    .local v2, "voiceInputControlState":I
    if-nez v2, :cond_5

    .line 464
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->dialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 465
    iget-object v3, p0, Lcom/android/settings/VoiceInputControlSettings;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_1

    .end local v2    # "voiceInputControlState":I
    :cond_10
    move v3, v5

    .line 436
    goto :goto_2

    :cond_11
    move v3, v5

    .line 442
    goto :goto_3

    :cond_12
    move v3, v5

    .line 447
    goto :goto_4

    :cond_13
    move v3, v5

    .line 452
    goto :goto_5

    :cond_14
    move v4, v5

    .line 457
    goto :goto_6
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 264
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 265
    iget-boolean v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    if-ne v0, v1, :cond_0

    .line 266
    const-string v0, "isfromhelp"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 268
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 565
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 570
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 572
    iput-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 576
    iput-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 578
    :cond_1
    return-void
.end method

.method public setBargeInSummary()V
    .locals 32

    .prologue
    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 654
    .local v8, "context":Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 655
    .local v18, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 656
    .local v7, "configuration":Landroid/content/res/Configuration;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    .line 657
    .local v17, "previousLocale":Ljava/util/Locale;
    const/4 v15, 0x1

    .line 659
    .local v15, "mVoiceLaunched":Z
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "voicetalk_language"

    invoke-static/range {v29 .. v30}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 661
    .local v26, "voiceLocale":Ljava/lang/String;
    if-nez v26, :cond_b

    .line 662
    const/4 v15, 0x0

    .line 663
    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v26

    .line 673
    :cond_0
    :goto_0
    const-string v29, "en-gb_GB"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 674
    const-string v26, "en_GB"

    .line 676
    :cond_1
    new-instance v27, Ljava/util/Locale;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 678
    .local v27, "voicetalkLocale":Ljava/util/Locale;
    const-string v29, "pt-BR"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 679
    const-string v29, "-"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 680
    .local v19, "splitVoiceLocale":[Ljava/lang/String;
    new-instance v27, Ljava/util/Locale;

    .end local v27    # "voicetalkLocale":Ljava/util/Locale;
    const/16 v29, 0x0

    aget-object v29, v19, v29

    const/16 v30, 0x1

    aget-object v30, v19, v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v27    # "voicetalkLocale":Ljava/util/Locale;
    move-object/from16 v28, v27

    .line 682
    .end local v19    # "splitVoiceLocale":[Ljava/lang/String;
    .end local v27    # "voicetalkLocale":Ljava/util/Locale;
    .local v28, "voicetalkLocale":Ljava/util/Locale;
    :goto_1
    if-eqz v26, :cond_c

    const-string v29, "-"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 683
    const-string v29, "-"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 685
    .restart local v19    # "splitVoiceLocale":[Ljava/lang/String;
    :try_start_0
    new-instance v27, Ljava/util/Locale;

    const/16 v29, 0x0

    aget-object v29, v19, v29

    const/16 v30, 0x1

    aget-object v30, v19, v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    .end local v19    # "splitVoiceLocale":[Ljava/lang/String;
    .end local v28    # "voicetalkLocale":Ljava/util/Locale;
    .restart local v27    # "voicetalkLocale":Ljava/util/Locale;
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v29

    if-eqz v29, :cond_3

    const-string v29, "zh-CN"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_2

    const-string v29, "zh"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 692
    :cond_2
    const-string v29, "VoiceInputControlSettings"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "voiceLocale = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "previousLocale.getLanguage() = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const-string v29, "HK"

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    if-nez v15, :cond_d

    .line 694
    sget-object v27, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 699
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isUseChineseModel()Z

    move-result v29

    if-nez v29, :cond_4

    invoke-virtual/range {v27 .. v27}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, "zh_CN"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 700
    sget-object v27, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 703
    :cond_4
    move-object/from16 v0, v27

    iput-object v0, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 704
    const/16 v29, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v7, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 706
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0c0014

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 707
    .local v4, "bargeInCallCommands":[Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0c0015

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 708
    .local v3, "bargeInAlarmCommands":[Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0c0016

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 709
    .local v5, "bargeInCameraCommands":[Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0c0017

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 712
    .local v6, "bargeInMusicCommands":[Ljava/lang/String;
    move-object/from16 v0, v17

    iput-object v0, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 713
    const/16 v29, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v7, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 714
    const/16 v25, 0x0

    .line 716
    .local v25, "versionName":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    const-string v30, "com.sec.android.app.camera"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 718
    .local v16, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v25, v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 723
    .end local v16    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_4
    const v29, 0x7f0a15cb

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 724
    .local v21, "tempForCall":Ljava/lang/String;
    const v29, 0x7f0a15cc

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 725
    .local v23, "tempForChatOn":Ljava/lang/String;
    const v29, 0x7f0a15cd

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 726
    .local v20, "tempForAlarm":Ljava/lang/String;
    const v29, 0x7f0a15ce

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 727
    .local v22, "tempForCamera":Ljava/lang/String;
    const v29, 0x7f0a15d0

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 728
    .local v24, "tempForMusic":Ljava/lang/String;
    if-eqz v25, :cond_5

    const-string v29, "1.5"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_5

    .line 729
    const v29, 0x7f0a15cf

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 733
    :cond_5
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aget-object v31, v4, v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    const/16 v31, 0x1

    aget-object v31, v4, v31

    aput-object v31, v29, v30

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 734
    .local v11, "guideCallString":Ljava/lang/String;
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aget-object v31, v4, v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    const/16 v31, 0x1

    aget-object v31, v4, v31

    aput-object v31, v29, v30

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 735
    .local v13, "guideChatOnVString":Ljava/lang/String;
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aget-object v31, v3, v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    const/16 v31, 0x1

    aget-object v31, v3, v31

    aput-object v31, v29, v30

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 736
    .local v10, "guideAlarmString":Ljava/lang/String;
    const/4 v12, 0x0

    .line 737
    .local v12, "guideCameraString":Ljava/lang/String;
    if-eqz v25, :cond_e

    const-string v29, "1.5"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_e

    .line 738
    const/16 v29, 0x5

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aget-object v31, v5, v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    const/16 v31, 0x1

    aget-object v31, v5, v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    const/16 v31, 0x2

    aget-object v31, v5, v31

    aput-object v31, v29, v30

    const/16 v30, 0x3

    const/16 v31, 0x3

    aget-object v31, v5, v31

    aput-object v31, v29, v30

    const/16 v30, 0x4

    const/16 v31, 0x4

    aget-object v31, v5, v31

    aput-object v31, v29, v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 747
    :goto_5
    const/16 v29, 0x6

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aget-object v31, v6, v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    const/16 v31, 0x1

    aget-object v31, v6, v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    const/16 v31, 0x2

    aget-object v31, v6, v31

    aput-object v31, v29, v30

    const/16 v30, 0x3

    const/16 v31, 0x3

    aget-object v31, v6, v31

    aput-object v31, v29, v30

    const/16 v30, 0x4

    const/16 v31, 0x4

    aget-object v31, v6, v31

    aput-object v31, v29, v30

    const/16 v30, 0x5

    const/16 v31, 0x5

    aget-object v31, v6, v31

    aput-object v31, v29, v30

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 749
    .local v14, "guideMusicString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_6

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 751
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_7

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 753
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_8

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 755
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_9

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 757
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_a

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 759
    :cond_a
    return-void

    .line 664
    .end local v3    # "bargeInAlarmCommands":[Ljava/lang/String;
    .end local v4    # "bargeInCallCommands":[Ljava/lang/String;
    .end local v5    # "bargeInCameraCommands":[Ljava/lang/String;
    .end local v6    # "bargeInMusicCommands":[Ljava/lang/String;
    .end local v10    # "guideAlarmString":Ljava/lang/String;
    .end local v11    # "guideCallString":Ljava/lang/String;
    .end local v12    # "guideCameraString":Ljava/lang/String;
    .end local v13    # "guideChatOnVString":Ljava/lang/String;
    .end local v14    # "guideMusicString":Ljava/lang/String;
    .end local v20    # "tempForAlarm":Ljava/lang/String;
    .end local v21    # "tempForCall":Ljava/lang/String;
    .end local v22    # "tempForCamera":Ljava/lang/String;
    .end local v23    # "tempForChatOn":Ljava/lang/String;
    .end local v24    # "tempForMusic":Ljava/lang/String;
    .end local v25    # "versionName":Ljava/lang/String;
    .end local v27    # "voicetalkLocale":Ljava/util/Locale;
    :cond_b
    const-string v29, "v-es-LA"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 665
    const-string v26, "es"

    goto/16 :goto_0

    .line 686
    .restart local v19    # "splitVoiceLocale":[Ljava/lang/String;
    .restart local v28    # "voicetalkLocale":Ljava/util/Locale;
    :catch_0
    move-exception v9

    .line 687
    .local v9, "excep":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v29, "VoiceInputControlSettings"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Exception occurred while settings Voice control locale : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v9}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9    # "excep":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v19    # "splitVoiceLocale":[Ljava/lang/String;
    :cond_c
    move-object/from16 v27, v28

    .end local v28    # "voicetalkLocale":Ljava/util/Locale;
    .restart local v27    # "voicetalkLocale":Ljava/util/Locale;
    goto/16 :goto_2

    .line 696
    :cond_d
    sget-object v27, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    goto/16 :goto_3

    .line 743
    .restart local v3    # "bargeInAlarmCommands":[Ljava/lang/String;
    .restart local v4    # "bargeInCallCommands":[Ljava/lang/String;
    .restart local v5    # "bargeInCameraCommands":[Ljava/lang/String;
    .restart local v6    # "bargeInMusicCommands":[Ljava/lang/String;
    .restart local v10    # "guideAlarmString":Ljava/lang/String;
    .restart local v11    # "guideCallString":Ljava/lang/String;
    .restart local v12    # "guideCameraString":Ljava/lang/String;
    .restart local v13    # "guideChatOnVString":Ljava/lang/String;
    .restart local v20    # "tempForAlarm":Ljava/lang/String;
    .restart local v21    # "tempForCall":Ljava/lang/String;
    .restart local v22    # "tempForCamera":Ljava/lang/String;
    .restart local v23    # "tempForChatOn":Ljava/lang/String;
    .restart local v24    # "tempForMusic":Ljava/lang/String;
    .restart local v25    # "versionName":Ljava/lang/String;
    :cond_e
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aget-object v31, v5, v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    const/16 v31, 0x1

    aget-object v31, v5, v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    const/16 v31, 0x2

    aget-object v31, v5, v31

    aput-object v31, v29, v30

    const/16 v30, 0x3

    const/16 v31, 0x3

    aget-object v31, v5, v31

    aput-object v31, v29, v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5

    .line 719
    .end local v10    # "guideAlarmString":Ljava/lang/String;
    .end local v11    # "guideCallString":Ljava/lang/String;
    .end local v12    # "guideCameraString":Ljava/lang/String;
    .end local v13    # "guideChatOnVString":Ljava/lang/String;
    .end local v20    # "tempForAlarm":Ljava/lang/String;
    .end local v21    # "tempForCall":Ljava/lang/String;
    .end local v22    # "tempForCamera":Ljava/lang/String;
    .end local v23    # "tempForChatOn":Ljava/lang/String;
    .end local v24    # "tempForMusic":Ljava/lang/String;
    :catch_1
    move-exception v29

    goto/16 :goto_4

    .end local v3    # "bargeInAlarmCommands":[Ljava/lang/String;
    .end local v4    # "bargeInCallCommands":[Ljava/lang/String;
    .end local v5    # "bargeInCameraCommands":[Ljava/lang/String;
    .end local v6    # "bargeInMusicCommands":[Ljava/lang/String;
    .end local v25    # "versionName":Ljava/lang/String;
    :cond_f
    move-object/from16 v28, v27

    .end local v27    # "voicetalkLocale":Ljava/util/Locale;
    .restart local v28    # "voicetalkLocale":Ljava/util/Locale;
    goto/16 :goto_1
.end method
