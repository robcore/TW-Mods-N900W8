.class public Lcom/android/settings/SettingsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# static fields
.field private static final LOG_ENTRY_FRAGMENTS:[Ljava/lang/String;

.field private static final LOG_STRINGS:[Ljava/lang/String;

.field private static mArrayLinkKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static mSettingValue:I


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentRootAdapter:Landroid/widget/ListAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mHelpUrl:Ljava/lang/String;

.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsDataSetObserverRegistered:Z

.field protected mOpenDetailMenu:Z

.field private mOpenDetailMenuKey:Ljava/lang/String;

.field private mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

.field private mPreferenceHighlighted:Z

.field private mPreferenceKey:Ljava/lang/String;

.field protected mSecondSettingValue:I

.field private pref_key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/SettingsPreferenceFragment;->mSettingValue:I

    .line 102
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    .line 108
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.settings.NotificationPanelMenu"

    aput-object v1, v0, v3

    const-string v1, "com.android.settings.motion2014.MotionSettings2014"

    aput-object v1, v0, v4

    const-string v1, "com.android.settings.smartbonding.SmartBondingSettings"

    aput-object v1, v0, v5

    const-string v1, "com.android.settings.fingerprint.FingerprintSettings"

    aput-object v1, v0, v6

    const-string v1, "com.android.settings.safetycare.SafetyCareSettings"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.settings.OneHandSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.settings.TetherSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.settings.vpn2.VpnSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.settings.easymode.EasyModeApp"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.settings.accessibility.ToggleAccessibilityServicePreferenceFragment"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.settings.PenAirViewSettingsMenu"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/SettingsPreferenceFragment;->LOG_ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 122
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NOTI"

    aput-object v1, v0, v3

    const-string v1, "MOGE"

    aput-object v1, v0, v4

    const-string v1, "DOWN"

    aput-object v1, v0, v5

    const-string v1, "FING"

    aput-object v1, v0, v6

    const-string v1, "SAFE"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ONEH"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "HOTS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "VPNS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EASY"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "TALK"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "AIRV"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/SettingsPreferenceFragment;->LOG_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 77
    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 82
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsPreferenceFragment$1;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 98
    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mSecondSettingValue:I

    .line 589
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsPreferenceFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsPreferenceFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p1, "x1"    # Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method

.method private canUseListViewForHighLighting(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->hasListView()Z

    move-result v3

    if-nez v3, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v2

    .line 338
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 339
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 341
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v3, :cond_0

    .line 342
    invoke-direct {p0, v0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->findListPositionFromKey(Landroid/widget/ListAdapter;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private findListPositionFromKey(Landroid/widget/ListAdapter;Ljava/lang/String;)I
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 382
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 383
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 384
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 385
    .local v1, "item":Ljava/lang/Object;
    instance-of v5, v1, Landroid/preference/Preference;

    if-eqz v5, :cond_0

    move-object v3, v1

    .line 386
    check-cast v3, Landroid/preference/Preference;

    .line 387
    .local v3, "preference":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, "preferenceKey":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 393
    .end local v1    # "item":Ljava/lang/Object;
    .end local v2    # "n":I
    .end local v3    # "preference":Landroid/preference/Preference;
    .end local v4    # "preferenceKey":Ljava/lang/String;
    :goto_1
    return v2

    .line 383
    .restart local v1    # "item":Ljava/lang/Object;
    .restart local v2    # "n":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 393
    .end local v1    # "item":Ljava/lang/Object;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0204c8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private highlightPreference(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 351
    .local v1, "highlight":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->canUseListViewForHighLighting(Ljava/lang/String;)I

    move-result v3

    .line 352
    .local v3, "position":I
    if-ltz v3, :cond_0

    .line 353
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 356
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/ListAdapter;
    move-object v4, v0

    .line 358
    check-cast v4, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroupAdapter;->setHighlightedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    check-cast v0, Landroid/preference/PreferenceGroupAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroupAdapter;->setHighlighted(I)V

    .line 361
    new-instance v4, Lcom/android/settings/SettingsPreferenceFragment$2;

    invoke-direct {v4, p0, v2, v3, v1}, Lcom/android/settings/SettingsPreferenceFragment$2;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/widget/ListView;ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 379
    .end local v2    # "listView":Landroid/widget/ListView;
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 703
    :cond_0
    return-void
.end method

.method public final finishFragment()V
    .locals 1

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 499
    return-void
.end method

.method protected getArrayLinkKey()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    sget-object v0, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 508
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 511
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object v1
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/settings/ButtonBarHandler;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/settings/ButtonBarHandler;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public highlightPreferenceIfNeeded()V
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreference(Ljava/lang/String;)V

    .line 321
    :cond_0
    return-void
.end method

.method protected initArrayLinkKey()V
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 457
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    .line 458
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 235
    :cond_0
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->registerObserverIfNeeded()V

    .line 282
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 138
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    if-eqz p1, :cond_0

    .line 141
    const-string v6, "android:preference_highlighted"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getHelpResource()I

    move-result v1

    .line 146
    .local v1, "helpResource":I
    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 153
    .local v0, "extra_bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_5

    .line 154
    const-string v6, "extra_from_search"

    invoke-virtual {v0, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 155
    const-string v6, "extra_parent_preference_key"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    .line 156
    iget-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v6, :cond_5

    .line 157
    sget-object v6, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 158
    :cond_3
    const-string v6, "extra_link_key_array"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    sput-object v6, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    .line 159
    sget-object v6, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 160
    sput-object v7, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    .line 161
    iput-object v7, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    .line 164
    :cond_4
    iget-object v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v6, :cond_a

    sget-object v6, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    sget-object v7, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 165
    const-string v6, "extra_setting_value"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/settings/SettingsPreferenceFragment;->mSettingValue:I

    .line 174
    :cond_5
    :goto_0
    sget-object v6, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    sget-object v6, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_6

    .line 175
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 177
    :cond_6
    iget-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v6, :cond_7

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "extra_second_fragment_bundle_key"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 180
    .local v2, "second_extra_bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_7

    .line 181
    const-string v6, "extra_setting_value"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mSecondSettingValue:I

    .line 187
    .end local v0    # "extra_bundle":Landroid/os/Bundle;
    .end local v2    # "second_extra_bundle":Landroid/os/Bundle;
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 188
    .local v3, "sub_extra":Landroid/os/Bundle;
    if-eqz v3, :cond_9

    .line 189
    const-string v6, "pref_key"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 190
    const-string v6, "pref_key"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->pref_key:Ljava/lang/String;

    .line 192
    :cond_8
    const-string v6, "root_title"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 193
    const-string v6, "root_title"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "string"

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v4, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 195
    .local v5, "titleId":I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Activity;->setTitle(I)V

    .line 198
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "titleId":I
    :cond_9
    return-void

    .line 168
    .end local v3    # "sub_extra":Landroid/os/Bundle;
    .restart local v0    # "extra_bundle":Landroid/os/Bundle;
    :cond_a
    sput v8, Lcom/android/settings/SettingsPreferenceFragment;->mSettingValue:I

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 550
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 487
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 488
    const/16 v1, 0x65

    const v2, 0x7f0a0e58

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 489
    .local v0, "helpItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/settings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 491
    .end local v0    # "helpItem":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 203
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 204
    .local v0, "root":Landroid/view/View;
    const v1, 0x7f100250

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    .line 205
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 536
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    .line 537
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 587
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    .line 239
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 242
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 243
    const-string v6, ":settings:fragment_args_key"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 248
    :cond_1
    sget-object v6, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 249
    sget-object v6, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    .line 251
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 253
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 255
    .local v4, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 256
    .local v2, "fragmentName":Ljava/lang/String;
    const-string v6, "SettingsPreferenceFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intent.hasExtra(SettingsActivity.EXTRA_SHOW_FRAGMENT : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":settings:show_fragment"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v6, ":settings:show_fragment"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 258
    const-string v6, ":settings:show_fragment"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    const-string v6, "SettingsPreferenceFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fragmentName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v6, Lcom/android/settings/SettingsPreferenceFragment;->LOG_ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_5

    .line 262
    sget-object v6, Lcom/android/settings/SettingsPreferenceFragment;->LOG_ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "com.android.settings"

    sget-object v8, Lcom/android/settings/SettingsPreferenceFragment;->LOG_STRINGS:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-static {v6, v7, v8}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    .end local v2    # "fragmentName":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 270
    .local v5, "root":Landroid/preference/PreferenceScreen;
    iget-object v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->pref_key:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 271
    iget-object v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->pref_key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 272
    .local v1, "favoriteItem":Landroid/preference/Preference;
    if-eqz v1, :cond_6

    .line 273
    invoke-virtual {v1, v5}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 275
    :cond_6
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->pref_key:Ljava/lang/String;

    .line 277
    .end local v1    # "favoriteItem":Landroid/preference/Preference;
    :cond_7
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 226
    const-string v0, "android:preference_highlighted"

    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 291
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    .line 294
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    .line 287
    return-void
.end method

.method protected openSearchDetailMenu()V
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 399
    iget-boolean v9, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v9, :cond_4

    .line 400
    iget-object v9, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 401
    const-string v9, "SettingsSearch"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "=== mOpenDetailMenuKey:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v9, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/settings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 403
    .local v7, "open_item":Landroid/preference/Preference;
    if-eqz v7, :cond_1

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 405
    .local v0, "ps":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 406
    .local v1, "list":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    .line 407
    .local v8, "preferenceAdapter":Landroid/widget/ListAdapter;
    const-string v9, "SettingsSearch"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPreferenceCount : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , preferenceAdapter size : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v3, 0x0

    .line 410
    .local v3, "position":I
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 411
    invoke-interface {v8, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/Preference;

    .line 414
    .local v6, "check_item":Landroid/preference/Preference;
    iget-object v9, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 415
    const-string v9, "SettingsSearch"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "=== position : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 417
    sget v9, Lcom/android/settings/SettingsPreferenceFragment;->mSettingValue:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    .line 418
    instance-of v9, v7, Lcom/android/settings/SwitchPreferenceScreen;

    if-nez v9, :cond_0

    instance-of v9, v7, Lcom/android/settings/SettingsSwitchPreference;

    if-nez v9, :cond_0

    .line 420
    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 434
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->removeOneDepthArrayLinkKey()V

    .line 439
    .end local v0    # "ps":Landroid/preference/PreferenceScreen;
    .end local v1    # "list":Landroid/widget/ListView;
    .end local v3    # "position":I
    .end local v6    # "check_item":Landroid/preference/Preference;
    .end local v8    # "preferenceAdapter":Landroid/widget/ListAdapter;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 440
    :cond_2
    if-nez v7, :cond_3

    .line 441
    const-string v4, "SettingsSearch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "There is no item in preference : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    sput-object v2, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    .line 447
    .end local v7    # "open_item":Landroid/preference/Preference;
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 449
    :cond_4
    return-void

    .line 423
    .restart local v0    # "ps":Landroid/preference/PreferenceScreen;
    .restart local v1    # "list":Landroid/widget/ListView;
    .restart local v3    # "position":I
    .restart local v6    # "check_item":Landroid/preference/Preference;
    .restart local v7    # "open_item":Landroid/preference/Preference;
    .restart local v8    # "preferenceAdapter":Landroid/widget/ListAdapter;
    :cond_5
    instance-of v9, v7, Landroid/preference/CheckBoxPreference;

    if-nez v9, :cond_6

    instance-of v9, v7, Landroid/preference/TwoStatePreference;

    if-nez v9, :cond_6

    instance-of v9, v7, Lcom/android/settings/notification/DropDownPreference;

    if-nez v9, :cond_6

    invoke-virtual {v6}, Landroid/preference/Preference;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 427
    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_1

    .line 428
    :cond_6
    instance-of v9, v7, Lcom/android/settings/SwitchPreferenceScreen;

    if-eqz v9, :cond_7

    .line 429
    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_1

    .line 431
    :cond_7
    sput-object v2, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    goto :goto_1

    .line 410
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public registerObserverIfNeeded()V
    .locals 2

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-nez v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    .line 302
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 305
    :cond_1
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 560
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 561
    return-void
.end method

.method protected removeOneDepthArrayLinkKey()V
    .locals 2

    .prologue
    .line 461
    sget-object v0, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 462
    sget-object v0, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 464
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/SettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    .line 466
    :cond_0
    return-void
.end method

.method protected removePreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 471
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 472
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 475
    :cond_0
    return-void
.end method

.method protected setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-static {v0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->access$002(Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;

    .line 572
    :cond_0
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-static {v0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->access$102(Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    .line 583
    :cond_0
    return-void
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "pinnedHeader"    # Landroid/view/View;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 211
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 213
    :cond_0
    return-void
.end method

.method protected showDialog(I)V
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 543
    const-string v0, "SettingsPreferenceFragment"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 546
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 727
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v0, :cond_0

    .line 728
    const-string v0, "extra_from_search"

    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 729
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 730
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 734
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v0, :cond_0

    .line 735
    const-string v0, "extra_from_search"

    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 736
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 737
    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "fragmentClass"    # Ljava/lang/String;
    .param p3, "titleRes"    # I
    .param p4, "requestCode"    # I
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 707
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 708
    .local v7, "activity":Landroid/app/Activity;
    instance-of v1, v7, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    move-object v0, v7

    .line 709
    check-cast v0, Lcom/android/settings/SettingsActivity;

    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    move-object v1, p2

    move-object v2, p5

    move v3, p3

    move-object v5, p1

    move v6, p4

    .line 710
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move v1, v8

    .line 721
    .end local v0    # "sa":Lcom/android/settings/SettingsActivity;
    :goto_0
    return v1

    .line 712
    :cond_0
    instance-of v1, v7, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_1

    move-object v0, v7

    .line 713
    check-cast v0, Landroid/preference/PreferenceActivity;

    .local v0, "sa":Landroid/preference/PreferenceActivity;
    move-object v1, p2

    move-object v2, p5

    move v3, p3

    move-object v5, p1

    move v6, p4

    .line 714
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move v1, v8

    .line 715
    goto :goto_0

    .line 717
    .end local v0    # "sa":Landroid/preference/PreferenceActivity;
    :cond_1
    const-string v1, "SettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t SettingsActivity nor PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterObserverIfNeeded()V
    .locals 2

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    .line 313
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 315
    :cond_1
    return-void
.end method
