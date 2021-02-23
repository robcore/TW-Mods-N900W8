.class public Lcom/android/settings/GridSettings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GridSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GridSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/app/admin/DevicePolicyManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3571
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 3574
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/GridSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 3575
    iput-object p3, p0, Lcom/android/settings/GridSettings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 3576
    return-void
.end method

.method public static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 6
    .param p0, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/4 v0, 0x1

    .line 3525
    iget-wide v2, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f10000b

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 3539
    :cond_0
    :goto_0
    return v0

    .line 3527
    :cond_1
    iget-object v1, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 3533
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;)V
    .locals 4
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "holder"    # Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;

    .prologue
    .line 3737
    iget-object v0, p2, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v1, p1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3739
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10064c

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3740
    invoke-static {}, Lcom/android/settings/GridSettings;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getTetheringTitle(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 3743
    :cond_0
    iget-object v0, p2, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/GridSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3745
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100634

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 3746
    iget-object v0, p2, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x7f0a1e33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3748
    :cond_1
    iget-object v0, p2, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3750
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 3551
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 3545
    invoke-virtual {p0, p1}, Lcom/android/settings/GridSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 3546
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/GridSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 3581
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/GridSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceActivity$Header;

    .line 3582
    .local v6, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v6}, Lcom/android/settings/GridSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v7

    .line 3583
    .local v7, "headerType":I
    const/4 v10, 0x0

    .line 3585
    .local v10, "view":Landroid/view/View;
    if-nez p2, :cond_1

    .line 3586
    new-instance v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;

    const/4 v11, 0x0

    invoke-direct {v8, v11}, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/GridSettings$1;)V

    .line 3587
    .local v8, "holder":Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;
    packed-switch v7, :pswitch_data_0

    .line 3642
    :goto_0
    invoke-virtual {v10, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3649
    :goto_1
    packed-switch v7, :pswitch_data_1

    .line 3732
    :cond_0
    :goto_2
    :pswitch_0
    return-object v10

    .line 3591
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/GridSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f0400fa

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 3593
    const v11, 0x1020016

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 3597
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/GridSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f040190

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 3599
    const v11, 0x7f100085

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3600
    const v11, 0x1020016

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3602
    const v11, 0x1020010

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 3604
    const v11, 0x7f100065

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Switch;

    iput-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto :goto_0

    .line 3608
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/GridSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f04018c

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 3610
    const v11, 0x7f100085

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3611
    const v11, 0x1020016

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3613
    const v11, 0x1020010

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 3615
    const v11, 0x7f100395

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    iput-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    .line 3616
    const v11, 0x7f100198

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    goto/16 :goto_0

    .line 3620
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/GridSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f04018e

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 3623
    const v11, 0x7f100085

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3624
    const v11, 0x1020016

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3626
    const v11, 0x1020010

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 3631
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/GridSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f04018f

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 3634
    const v11, 0x7f100396

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    iput-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->check_:Landroid/widget/CheckBox;

    .line 3635
    const v11, 0x7f100085

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3636
    const v11, 0x1020016

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3638
    const v11, 0x1020010

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 3644
    .end local v8    # "holder":Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;
    :cond_1
    move-object/from16 v10, p2

    .line 3645
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;

    .restart local v8    # "holder":Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 3651
    :pswitch_6
    iget-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget v13, v6, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3652
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget v13, v6, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/GridSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0025

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3653
    .local v2, "contentDescription":Ljava/lang/String;
    iget-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3654
    const v11, 0x7f1001a9

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3655
    .local v3, "divider":Landroid/view/View;
    const v11, 0x7f100230

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 3656
    .local v4, "divider_first":Landroid/view/View;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 3657
    if-nez p1, :cond_2

    .line 3658
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 3659
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 3661
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 3662
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 3668
    .end local v2    # "contentDescription":Ljava/lang/String;
    .end local v3    # "divider":Landroid/view/View;
    .end local v4    # "divider_first":Landroid/view/View;
    :pswitch_7
    iget-wide v12, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f10066f

    cmp-long v11, v12, v14

    if-nez v11, :cond_4

    .line 3670
    const/4 v5, 0x0

    .line 3671
    .local v5, "hasCert":Z
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3672
    const/4 v5, 0x0

    .line 3674
    :cond_3
    if-eqz v5, :cond_7

    .line 3675
    iget-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3676
    iget-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3677
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/GridSettings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v11}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    const/4 v9, 0x1

    .line 3678
    .local v9, "isManaged":Z
    :goto_3
    if-eqz v9, :cond_6

    .line 3679
    iget-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v12, 0x7f0202a9

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3684
    :goto_4
    iget-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    new-instance v12, Lcom/android/settings/GridSettings$HeaderAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/settings/GridSettings$HeaderAdapter$1;-><init>(Lcom/android/settings/GridSettings$HeaderAdapter;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3697
    .end local v5    # "hasCert":Z
    .end local v9    # "isManaged":Z
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8}, Lcom/android/settings/GridSettings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 3677
    .restart local v5    # "hasCert":Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 3681
    .restart local v9    # "isManaged":Z
    :cond_6
    iget-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v12, 0x1080078

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_4

    .line 3693
    .end local v9    # "isManaged":Z
    :cond_7
    iget-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3694
    iget-object v11, v8, Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 3701
    .end local v5    # "hasCert":Z
    :pswitch_8
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8}, Lcom/android/settings/GridSettings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/GridSettings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 3587
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_3
    .end packed-switch

    .line 3649
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 3561
    const/4 v0, 0x5

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 3566
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 3556
    invoke-virtual {p0, p1}, Lcom/android/settings/GridSettings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 3759
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 3755
    return-void
.end method
