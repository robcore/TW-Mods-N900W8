.class public Lcom/android/settings/print/PrintServiceSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;,
        Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;,
        Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;
    }
.end annotation


# instance fields
.field private fragmentTitle:Ljava/lang/String;

.field private mAddPrintersIntent:Landroid/content/Intent;

.field private mAddPrintersTitle:Ljava/lang/CharSequence;

.field private mComponentName:Landroid/content/ComponentName;

.field private final mDataObserver:Landroid/database/DataSetObserver;

.field private mEnableWarningMessage:Ljava/lang/CharSequence;

.field private mEnableWarningTitle:Ljava/lang/CharSequence;

.field private mLastUnfilteredItemCount:I

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mPreferenceKey:Ljava/lang/String;

.field private mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

.field private mServiceEnabled:Z

.field private final mSettingsContentObserver:Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSettingsTitle:Ljava/lang/CharSequence;

.field private mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 91
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$1;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;

    .line 99
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$2;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mDataObserver:Landroid/database/DataSetObserver;

    .line 689
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/print/PrintServiceSettingsFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/print/PrintServiceSettingsFragment;)Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/print/PrintServiceSettingsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/print/PrintServiceSettingsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/print/PrintServiceSettingsFragment;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/print/PrintServiceSettingsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/print/PrintServiceSettingsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/print/PrintServiceSettingsFragment;)Lcom/android/settings/widget/ToggleSwitch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    return-object v0
.end method

.method private createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/widget/ToggleSwitch;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v6, 0x10

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 485
    new-instance v1, Lcom/android/settings/widget/ToggleSwitch;

    invoke-direct {v1, p1}, Lcom/android/settings/widget/ToggleSwitch;-><init>(Landroid/content/Context;)V

    .line 486
    .local v1, "toggleSwitch":Lcom/android/settings/widget/ToggleSwitch;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 487
    .local v0, "padding":I
    invoke-virtual {v1, v4, v4, v0, v4}, Lcom/android/settings/widget/ToggleSwitch;->setPaddingRelative(IIII)V

    .line 488
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 490
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 494
    return-object v1
.end method

.method private initComponents()V
    .locals 4

    .prologue
    .line 298
    new-instance v1, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;Lcom/android/settings/print/PrintServiceSettingsFragment$1;)V

    iput-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    .line 299
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    iget-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 309
    .local v0, "activity":Landroid/app/Activity;
    invoke-direct {p0, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 311
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v2, Lcom/android/settings/print/PrintServiceSettingsFragment$3;

    invoke-direct {v2, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$3;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 329
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v2, Lcom/android/settings/print/PrintServiceSettingsFragment$4;

    invoke-direct {v2, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$4;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 346
    return-void
.end method

.method private onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 179
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 180
    .local v0, "service":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/print/PrintSettingsUtils;->readEnabledPrintServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 181
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz p2, :cond_0

    .line 182
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/print/PrintSettingsUtils;->writeEnabledPrintServices(Landroid/content/Context;Ljava/util/List;)V

    .line 187
    return-void

    .line 184
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateEmptyView()V
    .locals 12

    .prologue
    const v11, 0x7f100075

    const v10, 0x7f0a0ab5

    const v9, 0x7f0a0aab

    const v8, 0x7f0400ac

    const/4 v7, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 235
    .local v3, "listView":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 236
    .local v0, "contentRoot":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    .line 237
    .local v1, "emptyView":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v5}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    .line 238
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f10019c

    if-eq v5, v6, :cond_0

    .line 239
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 240
    const/4 v1, 0x0

    .line 242
    :cond_0
    if-nez v1, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v8, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 245
    const v5, 0x7f100085

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 246
    .local v2, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, v10}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 247
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 248
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    .line 249
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 250
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 280
    .end local v2    # "iconView":Landroid/widget/ImageView;
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 252
    :cond_2
    iget-object v5, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v5}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v5

    if-gtz v5, :cond_4

    .line 253
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f10019d

    if-eq v5, v6, :cond_3

    .line 255
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 256
    const/4 v1, 0x0

    .line 258
    :cond_3
    if-nez v1, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0400ad

    invoke-virtual {v5, v6, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 261
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 262
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 264
    :cond_4
    iget-object v5, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v5}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getCount()I

    move-result v5

    if-gtz v5, :cond_1

    .line 265
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f10019c

    if-eq v5, v6, :cond_5

    .line 266
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 267
    const/4 v1, 0x0

    .line 269
    :cond_5
    if-nez v1, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v8, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 272
    const v5, 0x7f100085

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 273
    .restart local v2    # "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, v9}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 275
    .restart local v4    # "textView":Landroid/widget/TextView;
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(I)V

    .line 276
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 277
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateUiForArguments()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 358
    .local v3, "arguments":Landroid/os/Bundle;
    const-string v9, "EXTRA_PREFERENCE_KEY"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    .line 359
    const-string v9, "EXTRA_TITLE"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->fragmentTitle:Ljava/lang/String;

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->fragmentTitle:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 362
    const-string v9, "EXTRA_CHECKED"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 364
    .local v4, "enabled":Z
    iget-object v9, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v9, v4}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 367
    const-string v9, "EXTRA_SETTINGS_TITLE"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 368
    .local v8, "settingsTitle":Ljava/lang/String;
    const-string v9, "EXTRA_SETTINGS_COMPONENT_NAME"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 370
    .local v6, "settingsComponentName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 371
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    .line 373
    .local v7, "settingsIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v7, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 375
    .local v5, "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 377
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v9, v9, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v9, :cond_0

    .line 378
    iput-object v8, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    .line 379
    iput-object v7, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 385
    .end local v5    # "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "settingsIntent":Landroid/content/Intent;
    :cond_0
    const-string v9, "EXTRA_ADD_PRINTERS_TITLE"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "addPrintersTitle":Ljava/lang/String;
    const-string v9, "EXTRA_ADD_PRINTERS_COMPONENT_NAME"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "addPrintersComponentName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 391
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 393
    .local v2, "addPritnersIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v2, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 395
    .restart local v5    # "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 397
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v9, v9, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v9, :cond_1

    .line 398
    iput-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersTitle:Ljava/lang/CharSequence;

    .line 399
    iput-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    .line 405
    .end local v2    # "addPritnersIntent":Landroid/content/Intent;
    .end local v5    # "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    const-string v9, "EXTRA_ENABLE_WARNING_TITLE"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 409
    const-string v9, "EXTRA_ENABLE_WARNING_MESSAGE"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 413
    const-string v9, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    .line 416
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/settings/print/PrintServiceSettingsFragment;->setHasOptionsMenu(Z)V

    .line 417
    return-void
.end method

.method private updateUiForServiceState()V
    .locals 3

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsUtils;->readEnabledPrintServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 284
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    .line 285
    iget-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 288
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->enable()V

    .line 294
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 295
    return-void

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 292
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->disable()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 213
    packed-switch p2, :pswitch_data_0

    .line 229
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 215
    :pswitch_0
    const/4 v0, 0x1

    .line 217
    .local v0, "checked":Z
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_CHECKED"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 231
    :goto_0
    return-void

    .line 222
    .end local v0    # "checked":Z
    :pswitch_1
    const/4 v0, 0x0

    .line 224
    .restart local v0    # "checked":Z
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_CHECKED"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 226
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "dialogId"    # I

    .prologue
    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, "title":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 193
    .local v0, "message":Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_0

    .line 199
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 195
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 196
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 201
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<font color=\'#000000\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v7, 0x7f1006fb

    const v6, 0x7f1006fa

    const v5, 0x7f1006f9

    .line 421
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 422
    const v4, 0x7f120007

    invoke-virtual {p2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 424
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 425
    .local v0, "addPrinters":Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 427
    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 432
    :goto_0
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 433
    .local v3, "settings":Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v4, :cond_1

    .line 435
    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 440
    :goto_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 441
    .local v1, "searchItem":Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v4}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 442
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    .line 443
    .local v2, "searchView":Landroid/widget/SearchView;
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 444
    new-instance v4, Lcom/android/settings/print/PrintServiceSettingsFragment$5;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/print/PrintServiceSettingsFragment$5;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;Landroid/widget/SearchView;)V

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 459
    new-instance v4, Lcom/android/settings/print/PrintServiceSettingsFragment$6;

    invoke-direct {v4, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$6;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 482
    .end local v2    # "searchView":Landroid/widget/SearchView;
    :goto_2
    return-void

    .line 429
    .end local v1    # "searchItem":Landroid/view/MenuItem;
    .end local v3    # "settings":Landroid/view/MenuItem;
    :cond_0
    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    .line 437
    .restart local v3    # "settings":Landroid/view/MenuItem;
    :cond_1
    invoke-interface {p1, v7}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1

    .line 480
    .restart local v1    # "searchItem":Landroid/view/MenuItem;
    :cond_2
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_2
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 176
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 158
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 159
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 150
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 151
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateEmptyView()V

    .line 152
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    .line 153
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateEmptyView()V

    .line 352
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 164
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->initComponents()V

    .line 165
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateUiForArguments()V

    .line 166
    return-void
.end method
