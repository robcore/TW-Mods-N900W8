.class public Lcom/android/settings/SelectItemDisplay;
.super Landroid/app/Activity;
.source "SelectItemDisplay.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SelectItemDisplay$ViewHolder;,
        Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;
    }
.end annotation


# static fields
.field public static final DEFULT_WALLPAPER_BACKGROUND:I


# instance fields
.field private isKeepDisplay:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNetworkPopup:Landroid/widget/LinearLayout;

.field private mOpenCoverPopup:Landroid/widget/LinearLayout;

.field private mPedometerDBKey:Ljava/lang/String;

.field private mSHealthItentExtra_type:Ljava/lang/String;

.field private mShortcutCameraDBKey:Ljava/lang/String;

.field private mUseLocationPopup:Landroid/widget/LinearLayout;

.field private mWeatherAgreed:Z

.field private mWeatherDBKey:Ljava/lang/String;

.field private mWeatherOpenCoverPopup:Landroid/widget/LinearLayout;

.field private mWeatherToShowPopup:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/16 v0, 0x2e

    const/16 v1, 0x1a

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SelectItemDisplay;->DEFULT_WALLPAPER_BACKGROUND:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    iput-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    .line 82
    iput-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherOpenCoverPopup:Landroid/widget/LinearLayout;

    .line 83
    iput-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherToShowPopup:Landroid/widget/LinearLayout;

    .line 86
    iput-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mShortcutCameraDBKey:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherDBKey:Ljava/lang/String;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherAgreed:Z

    .line 89
    iput-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mSHealthItentExtra_type:Ljava/lang/String;

    .line 414
    new-instance v0, Lcom/android/settings/SelectItemDisplay$8;

    invoke-direct {v0, p0}, Lcom/android/settings/SelectItemDisplay$8;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    iput-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 611
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SelectItemDisplay;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectItemDisplay;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SelectItemDisplay;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectItemDisplay;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SelectItemDisplay;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectItemDisplay;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SelectItemDisplay;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectItemDisplay;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherOpenCoverPopup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SelectItemDisplay;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectItemDisplay;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherToShowPopup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/SelectItemDisplay;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectItemDisplay;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/settings/SelectItemDisplay;->isKeepDisplay:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/SelectItemDisplay;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectItemDisplay;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/SelectItemDisplay;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectItemDisplay;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mShortcutCameraDBKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/SelectItemDisplay;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectItemDisplay;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherDBKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/SelectItemDisplay;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectItemDisplay;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    return-object v0
.end method

.method private checkGuidePopupAvailable(I)Z
    .locals 6
    .param p1, "selectedItem"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 886
    const/4 v0, 0x0

    .line 889
    .local v0, "doNotShow":Z
    const/16 v5, 0x7d1

    if-ne p1, v5, :cond_1

    .line 890
    const-string v2, "com.android.settings.SViewCoverPopup.ShortcutCamera"

    .line 896
    .local v2, "spName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/SelectItemDisplay;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 897
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 898
    const-string v5, "DoNotShowDialog"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 899
    :cond_0
    if-nez v0, :cond_3

    :goto_1
    return v3

    .line 891
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "spName":Ljava/lang/String;
    :cond_1
    const/16 v5, 0x7d2

    if-ne p1, v5, :cond_2

    .line 892
    const-string v2, "com.android.settings.SViewCoverPopup.Weather"

    .restart local v2    # "spName":Ljava/lang/String;
    goto :goto_0

    .line 894
    .end local v2    # "spName":Ljava/lang/String;
    :cond_2
    const-string v2, "com.android.settings.SViewCoverPopup.Pedometer"

    .restart local v2    # "spName":Ljava/lang/String;
    goto :goto_0

    .restart local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    move v3, v4

    .line 899
    goto :goto_1
.end method

.method private clickItem(I)V
    .locals 14
    .param p1, "selectedItem"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 687
    const/16 v10, 0x7d1

    if-ne p1, v10, :cond_3

    .line 688
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectItemDisplay;->mShortcutCameraDBKey:Ljava/lang/String;

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_1

    move v1, v8

    .line 690
    .local v1, "ShortcutCameraState":Z
    :goto_0
    const-string v10, "SelectItemDisplay"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onItemClick - Camera Shortcut:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectItemDisplay;->mShortcutCameraDBKey:Ljava/lang/String;

    if-nez v1, :cond_2

    :goto_1
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 801
    .end local v1    # "ShortcutCameraState":Z
    :cond_0
    :goto_2
    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    invoke-virtual {v8}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->notifyDataSetChanged()V

    .line 802
    :goto_3
    return-void

    :cond_1
    move v1, v9

    .line 688
    goto :goto_0

    .restart local v1    # "ShortcutCameraState":Z
    :cond_2
    move v8, v9

    .line 691
    goto :goto_1

    .line 693
    .end local v1    # "ShortcutCameraState":Z
    :cond_3
    const/16 v10, 0x7d2

    if-ne p1, v10, :cond_d

    .line 694
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherDBKey:Ljava/lang/String;

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_4

    move v5, v8

    .line 696
    .local v5, "mWeaterState":Z
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isSViewWeatherforT()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 697
    invoke-static {p0}, Lcom/android/settings/Utils;->checkWeatherWidgetEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 698
    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 699
    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 700
    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->requestAccessibilityFocus()Z

    goto :goto_3

    .end local v5    # "mWeaterState":Z
    :cond_4
    move v5, v9

    .line 694
    goto :goto_4

    .line 703
    .restart local v5    # "mWeaterState":Z
    :cond_5
    iget-object v10, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherToShowPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 704
    iget-object v10, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherToShowPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 705
    iget-object v10, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherToShowPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->requestAccessibilityFocus()Z

    .line 733
    :cond_6
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherDBKey:Ljava/lang/String;

    if-nez v5, :cond_a

    move v10, v8

    :goto_6
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 734
    if-nez v5, :cond_b

    move v10, v8

    :goto_7
    invoke-static {p0, v10}, Lcom/android/settings/Utils;->sendSViewCoverWeatherIntent(Landroid/content/Context;Z)V

    .line 736
    invoke-static {p0}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 738
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_show_info"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 739
    .local v0, "LockScreenShowAdditionalInfo":I
    if-ne v0, v8, :cond_0

    .line 740
    if-nez v5, :cond_c

    :goto_8
    invoke-static {p0, v8}, Lcom/android/settings/Utils;->sendLockScreenWeatherIntent(Landroid/content/Context;Z)V

    goto :goto_2

    .line 707
    .end local v0    # "LockScreenShowAdditionalInfo":I
    :cond_7
    invoke-static {p0}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-static {p0}, Lcom/android/settings/Utils;->hasSViewCoverWeather2014(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 710
    :cond_8
    const-string v10, "SelectItemDisplay"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onItemClick, CurrentLocation : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherAgreed:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " / Weather state : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-boolean v10, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherAgreed:Z

    if-nez v10, :cond_6

    if-nez v5, :cond_6

    .line 713
    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 714
    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 715
    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->requestAccessibilityFocus()Z

    goto/16 :goto_3

    .line 719
    :cond_9
    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->checkNetwork()Z

    move-result v10

    if-nez v10, :cond_6

    .line 720
    iget-object v10, p0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 721
    iget-object v10, p0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 722
    iget-object v10, p0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->requestAccessibilityFocus()Z

    .line 723
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    new-instance v11, Lcom/android/settings/SelectItemDisplay$9;

    invoke-direct {v11, p0}, Lcom/android/settings/SelectItemDisplay$9;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    const-wide/16 v12, 0x1388

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    :cond_a
    move v10, v9

    .line 733
    goto/16 :goto_6

    :cond_b
    move v10, v9

    .line 734
    goto/16 :goto_7

    .restart local v0    # "LockScreenShowAdditionalInfo":I
    :cond_c
    move v8, v9

    .line 740
    goto :goto_8

    .line 744
    .end local v0    # "LockScreenShowAdditionalInfo":I
    .end local v5    # "mWeaterState":Z
    :cond_d
    const/16 v10, 0x7d4

    if-ne p1, v10, :cond_10

    .line 745
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "air_message"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_e

    move v2, v8

    .line 746
    .local v2, "mAirMsgState":Z
    :goto_9
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "air_message"

    if-nez v2, :cond_f

    :goto_a
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .end local v2    # "mAirMsgState":Z
    :cond_e
    move v2, v9

    .line 745
    goto :goto_9

    .restart local v2    # "mAirMsgState":Z
    :cond_f
    move v8, v9

    .line 746
    goto :goto_a

    .line 750
    .end local v2    # "mAirMsgState":Z
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "shealth_pedometer_status_running"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 752
    .local v6, "pedometerstatus":I
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "shealth_profile_initialized"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 753
    .local v7, "sHealthProfileState":I
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_11

    move v4, v8

    .line 754
    .local v4, "mMateState":Z
    :goto_b
    const-string v10, "SelectItemDisplay"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onItemClick - walk_mate:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " shealth_pedometer_status_running:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " shealth_profile_initialized:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    if-ne v6, v8, :cond_15

    .line 758
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    if-nez v4, :cond_12

    move v10, v8

    :goto_c
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 759
    const-string v11, "SelectItemDisplay"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onItemClick pedometerstatus-1 walk_mate-"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v4, :cond_13

    move v10, v8

    :goto_d
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ":sendBroadcast "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "com.sec.android.app.shealth.COVER"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sec.android.app.shealth.COVER"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 762
    .local v3, "mIntent":Landroid/content/Intent;
    const-string v10, "visibility"

    if-nez v4, :cond_14

    :goto_e
    invoke-virtual {v3, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 763
    const-string v8, "type"

    iget-object v9, p0, Lcom/android/settings/SelectItemDisplay;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    invoke-virtual {p0, v3}, Lcom/android/settings/SelectItemDisplay;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .end local v3    # "mIntent":Landroid/content/Intent;
    .end local v4    # "mMateState":Z
    :cond_11
    move v4, v9

    .line 753
    goto :goto_b

    .restart local v4    # "mMateState":Z
    :cond_12
    move v10, v9

    .line 758
    goto :goto_c

    :cond_13
    move v10, v9

    .line 759
    goto :goto_d

    .restart local v3    # "mIntent":Landroid/content/Intent;
    :cond_14
    move v8, v9

    .line 762
    goto :goto_e

    .line 766
    .end local v3    # "mIntent":Landroid/content/Intent;
    :cond_15
    if-nez v4, :cond_17

    .line 767
    if-nez v7, :cond_16

    .line 768
    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 769
    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 770
    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->requestAccessibilityFocus()Z

    .line 780
    :goto_f
    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    invoke-virtual {v8}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->notifyDataSetChanged()V

    .line 781
    iput-boolean v9, p0, Lcom/android/settings/SelectItemDisplay;->isKeepDisplay:Z

    goto/16 :goto_3

    .line 772
    :cond_16
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 773
    const-string v8, "SelectItemDisplay"

    const-string v10, "onItemClick walk_mate(1): sendBroadcast com.sec.android.app.shealth.COVER"

    invoke-static {v8, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.sec.android.app.shealth.COVER"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 776
    .restart local v3    # "mIntent":Landroid/content/Intent;
    const-string v8, "visibility"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 777
    const-string v8, "type"

    iget-object v10, p0, Lcom/android/settings/SelectItemDisplay;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 778
    invoke-virtual {p0, v3}, Lcom/android/settings/SelectItemDisplay;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_f

    .line 791
    .end local v3    # "mIntent":Landroid/content/Intent;
    :cond_17
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    if-nez v4, :cond_18

    move v10, v8

    :goto_10
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 792
    const-string v11, "SelectItemDisplay"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onItemClick walk_mate-"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v4, :cond_19

    move v10, v8

    :goto_11
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ": sendBroadcast "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "com.sec.android.app.shealth.COVER"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sec.android.app.shealth.COVER"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 795
    .restart local v3    # "mIntent":Landroid/content/Intent;
    const-string v10, "visibility"

    if-nez v4, :cond_1a

    :goto_12
    invoke-virtual {v3, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 796
    const-string v8, "type"

    iget-object v9, p0, Lcom/android/settings/SelectItemDisplay;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    invoke-virtual {p0, v3}, Lcom/android/settings/SelectItemDisplay;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .end local v3    # "mIntent":Landroid/content/Intent;
    :cond_18
    move v10, v9

    .line 791
    goto :goto_10

    :cond_19
    move v10, v9

    .line 792
    goto :goto_11

    .restart local v3    # "mIntent":Landroid/content/Intent;
    :cond_1a
    move v8, v9

    .line 795
    goto :goto_12
.end method

.method public static getUseLocationAgreed(Landroid/content/Context;)I
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 860
    const/4 v8, 0x0

    .line 862
    .local v8, "result":I
    if-nez p0, :cond_0

    move v9, v8

    .line 882
    .end local v8    # "result":I
    .local v9, "result":I
    :goto_0
    return v9

    .line 865
    .end local v9    # "result":I
    .restart local v8    # "result":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 866
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 867
    const-string v1, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "SHOW_USE_LOCATION_POPUP"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 871
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 872
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 874
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 879
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    move v9, v8

    .line 882
    .end local v8    # "result":I
    .restart local v9    # "result":I
    goto :goto_0

    .line 875
    .end local v9    # "result":I
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "result":I
    :catch_0
    move-exception v7

    .line 876
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private saveSharedPreferences(I)V
    .locals 5
    .param p1, "selectedItem"    # I

    .prologue
    const/4 v4, 0x1

    .line 905
    const/16 v3, 0x7d1

    if-ne p1, v3, :cond_0

    .line 906
    const-string v2, "com.android.settings.SViewCoverPopup.ShortcutCamera"

    .line 912
    .local v2, "spName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v2, v4}, Lcom/android/settings/SelectItemDisplay;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 913
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 914
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v3, "DoNotShowDialog"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 915
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 916
    return-void

    .line 907
    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "spName":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x7d2

    if-ne p1, v3, :cond_1

    .line 908
    const-string v2, "com.android.settings.SViewCoverPopup.Weather"

    .restart local v2    # "spName":Ljava/lang/String;
    goto :goto_0

    .line 910
    .end local v2    # "spName":Ljava/lang/String;
    :cond_1
    const-string v2, "com.android.settings.SViewCoverPopup.Pedometer"

    .restart local v2    # "spName":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public CoverOpen()V
    .locals 7

    .prologue
    const/high16 v6, 0x10800000

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 425
    const-string v2, "SelectItemDisplay"

    const-string v3, "CoverOpen()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->finish()V

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 434
    const-string v2, "SelectItemDisplay"

    const-string v3, "CoverOpen walk_mate(1): sendBroadcast com.sec.android.app.shealth.COVER"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.shealth.COVER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "visibility"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 438
    const-string v2, "type"

    iget-object v3, p0, Lcom/android/settings/SelectItemDisplay;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    invoke-virtual {p0, v1}, Lcom/android/settings/SelectItemDisplay;->sendBroadcast(Landroid/content/Intent;)V

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->finish()V

    .line 443
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 444
    .restart local v1    # "mIntent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$SelectInfoCoverSettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0, v1}, Lcom/android/settings/SelectItemDisplay;->startActivity(Landroid/content/Intent;)V

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->finish()V

    .line 449
    invoke-static {p0}, Lcom/android/settings/Utils;->hasSViewCoverWeather2014(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 450
    iget-object v2, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 451
    const-string v2, "SelectItemDisplay"

    const-string v3, "CoverOpen(), call the WeatherSettings"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 453
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WeatherSettingsFragmentActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    invoke-static {p0}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 455
    const-string v2, "sview"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 458
    :goto_1
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0, v0}, Lcom/android/settings/SelectItemDisplay;->startActivity(Landroid/content/Intent;)V

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->finish()V

    .line 463
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSViewWeatherforT()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    iget-object v2, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 465
    const-string v2, "SelectItemDisplay"

    const-string v3, "CoverOpen(), call the WeatherWidget"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.weather.intent.action.START_ACTIVITY_SETTING_VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "PACKAGE"

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    invoke-virtual {p0, v0}, Lcom/android/settings/SelectItemDisplay;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->finish()V

    goto/16 :goto_0

    .line 457
    :cond_4
    const-string v2, "sview"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method public checkNetwork()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 838
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectItemDisplay;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 839
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 840
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-nez v3, :cond_1

    .line 856
    :cond_0
    :goto_0
    return v4

    .line 844
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 845
    .local v2, "isWifiAvail":Z
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 847
    if-nez v3, :cond_2

    move v4, v2

    .line 849
    goto :goto_0

    .line 852
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 856
    .local v1, "isMobileAvail":Z
    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public getBackgroundColor()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, "color":I
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_color_use_all"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 510
    .local v3, "mColorUseAll":I
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 512
    .local v1, "mBackgroundColor":I
    if-ne v3, v7, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_color_random"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 514
    .local v2, "mColorRandom":I
    packed-switch v2, :pswitch_data_0

    .line 524
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 529
    .end local v2    # "mColorRandom":I
    :cond_0
    :goto_0
    const/16 v4, 0xef

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 531
    return v0

    .line 516
    .restart local v2    # "mColorRandom":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "s_vew_cover_background_color"

    sget v6, Lcom/android/settings/SelectItemDisplay;->DEFULT_WALLPAPER_BACKGROUND:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 518
    goto :goto_0

    .line 520
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_bg_display_random"

    sget v6, Lcom/android/settings/SelectItemDisplay;->DEFULT_WALLPAPER_BACKGROUND:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 522
    goto :goto_0

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 806
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 807
    const/16 v1, 0x7d1

    if-eq p1, v1, :cond_0

    const/16 v1, 0x7d2

    if-eq p1, v1, :cond_0

    const/16 v1, 0x7d3

    if-ne p1, v1, :cond_3

    .line 808
    :cond_0
    const/4 v0, 0x0

    .line 809
    .local v0, "DoNotShow":Z
    if-eqz p3, :cond_1

    .line 810
    const-string v1, "DoNotShow"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 811
    :cond_1
    const-string v1, "SelectItemDisplay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult requestCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", donotshow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 814
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 815
    invoke-direct {p0, p1}, Lcom/android/settings/SelectItemDisplay;->saveSharedPreferences(I)V

    .line 816
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/SelectItemDisplay;->clickItem(I)V

    .line 834
    .end local v0    # "DoNotShow":Z
    :cond_3
    iput-boolean v4, p0, Lcom/android/settings/SelectItemDisplay;->isKeepDisplay:Z

    .line 835
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 33
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->requestWindowFeature(I)Z

    .line 107
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const-string v29, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/view/LayoutInflater;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mInflater:Landroid/view/LayoutInflater;

    .line 111
    const/high16 v20, 0x4080000

    .line 112
    .local v20, "mFlag":I
    const/high16 v27, 0x400000

    .line 113
    .local v27, "secure_flags":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "automatic_unlock"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 114
    .local v9, "isAutoUnlock":I
    const-string v29, "keyguard"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/KeyguardManager;

    .line 115
    .local v23, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual/range {v23 .. v23}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v10

    .line 117
    .local v10, "isSecureLock":Z
    if-nez v10, :cond_0

    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v9, v0, :cond_0

    .line 118
    or-int v20, v20, v27

    .line 120
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v30, v0

    or-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v29

    const-wide/16 v30, 0x1770

    move-wide/from16 v0, v30

    move-object/from16 v2, v29

    iput-wide v0, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v29

    const-wide/16 v30, 0x0

    move-wide/from16 v0, v30

    move-object/from16 v2, v29

    iput-wide v0, v2, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v29

    const/16 v30, -0x1

    const/16 v31, -0x1

    invoke-virtual/range {v29 .. v31}, Landroid/view/Window;->setLayout(II)V

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v29

    const/16 v30, 0x2

    invoke-virtual/range {v29 .. v30}, Landroid/view/Window;->clearFlags(I)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v29

    new-instance v30, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual/range {v29 .. v30}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 129
    .local v11, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v29, 0x0

    move/from16 v0, v29

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 131
    new-instance v29, Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v30

    const/16 v31, 0x1

    invoke-virtual/range {v29 .. v31}, Lcom/samsung/android/sdk/cover/ScoverManager;->setCoverModeToWindow(Landroid/view/Window;I)V

    .line 134
    const v29, 0x7f04004c

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->setContentView(I)V

    .line 136
    const v29, 0x7f1000d7

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    new-instance v30, Lcom/android/settings/SelectItemDisplay$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$1;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 148
    const v29, 0x7f1000d9

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    new-instance v30, Lcom/android/settings/SelectItemDisplay$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$2;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    const v29, 0x7f1000db

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    new-instance v30, Lcom/android/settings/SelectItemDisplay$3;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$3;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 172
    invoke-static {}, Lcom/android/settings/Utils;->isSViewWeatherforT()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 173
    const v29, 0x7f1000dc

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mWeatherOpenCoverPopup:Landroid/widget/LinearLayout;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mWeatherOpenCoverPopup:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    new-instance v30, Lcom/android/settings/SelectItemDisplay$4;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$4;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 185
    const v29, 0x7f1000dd

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mWeatherToShowPopup:Landroid/widget/LinearLayout;

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mWeatherToShowPopup:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    new-instance v30, Lcom/android/settings/SelectItemDisplay$5;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$5;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    :cond_1
    const v29, 0x7f1000d3

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout;

    .line 200
    .local v15, "mCoverShorcutBG":Landroid/widget/FrameLayout;
    const v29, 0x7f1000d4

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 201
    .local v18, "mDIMBG":Landroid/widget/ImageView;
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSViewCover2014Supported(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_10

    invoke-static {}, Lcom/android/settings/Utils;->isSViewWallpaperOldSupported()Z

    move-result v29

    if-nez v29, :cond_10

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "sview_color_wallpaper"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 204
    .local v4, "CurrentCoverBackgroundDbId":I
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v4, v0, :cond_f

    .line 205
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getSViewWallpaperDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    const/16 v29, 0x4d

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Landroid/graphics/Color;->argb(IIII)I

    move-result v29

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 291
    .end local v4    # "CurrentCoverBackgroundDbId":I
    :cond_2
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 293
    const-string v29, "set_shortcuts_mode"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mShortcutCameraDBKey:Ljava/lang/String;

    .line 294
    const-string v29, "lock_additional_weather"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mWeatherDBKey:Ljava/lang/String;

    .line 295
    const-string v29, "lock_additional_steps"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    .line 296
    const-string v29, "WALKMATE_TMR"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mSHealthItentExtra_type:Ljava/lang/String;

    .line 303
    :goto_1
    const v29, 0x7f1000d5

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 304
    .local v26, "mTitleName":Landroid/widget/TextView;
    const v29, 0x7f0a0f85

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 306
    const v29, 0x7f10009c

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    .line 307
    .local v12, "mCoverCancel":Landroid/widget/ImageButton;
    new-instance v29, Lcom/android/settings/SelectItemDisplay$6;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$6;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    const v29, 0x7f1000d6

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ListView;

    .line 316
    .local v14, "mCoverSettings":Landroid/widget/ListView;
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isPedometerSupported(Landroid/content/Context;)Z

    move-result v24

    .line 318
    .local v24, "mPedometerSupported":Z
    const/16 v21, 0x1

    .line 320
    .local v21, "mGlassMessageExist":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    const-string v30, "com.bst.airmessage"

    const/16 v31, 0x5

    invoke-virtual/range {v29 .. v31}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v29

    const-string v30, "CscFeature_Common_EnableAirMessage"

    invoke-virtual/range {v29 .. v30}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_3

    .line 326
    const/16 v21, 0x0

    .line 328
    :cond_3
    const/4 v8, 0x0

    .line 329
    .local v8, "hasShortcutCamera":Z
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 330
    const/4 v8, 0x1

    .line 332
    :cond_4
    const/16 v28, 0x0

    .line 333
    .local v28, "styleClockEnabled":Z
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isSViewStyleClockEnabled(Landroid/content/Context;Landroid/content/ContentResolver;)Z

    move-result v28

    .line 340
    :cond_5
    const/4 v5, 0x0

    .line 341
    .local v5, "count":I
    if-eqz v8, :cond_6

    .line 342
    add-int/lit8 v5, v5, 0x1

    .line 343
    :cond_6
    if-nez v28, :cond_7

    .line 344
    add-int/lit8 v5, v5, 0x1

    .line 345
    :cond_7
    if-eqz v24, :cond_8

    if-nez v28, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v29

    if-nez v29, :cond_8

    .line 346
    add-int/lit8 v5, v5, 0x1

    .line 347
    :cond_8
    if-eqz v21, :cond_9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v29

    if-nez v29, :cond_9

    .line 348
    add-int/lit8 v5, v5, 0x1

    .line 350
    :cond_9
    new-array v0, v5, [I

    move-object/from16 v17, v0

    .line 351
    .local v17, "mCoverTitleItem":[I
    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 352
    .local v16, "mCoverSummaryItem":[Ljava/lang/String;
    new-array v13, v5, [Z

    .line 353
    .local v13, "mCoverCheckBoxVisible":[Z
    const/4 v5, 0x0

    .line 354
    if-eqz v8, :cond_a

    .line 355
    const v29, 0x7f0a15b0

    aput v29, v17, v5

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0a15b0

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v16, v5

    .line 357
    const/16 v29, 0x1

    aput-boolean v29, v13, v5

    .line 358
    add-int/lit8 v5, v5, 0x1

    .line 360
    :cond_a
    if-nez v28, :cond_b

    .line 361
    const v29, 0x7f0a0f80

    aput v29, v17, v5

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0a0f81

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v16, v5

    .line 363
    invoke-static {}, Lcom/android/settings/Utils;->isSViewWeatherforT()Z

    move-result v29

    if-eqz v29, :cond_15

    .line 364
    const/16 v29, 0x0

    aput-boolean v29, v13, v5

    .line 368
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 370
    :cond_b
    if-eqz v24, :cond_c

    if-nez v28, :cond_c

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v29

    if-nez v29, :cond_c

    .line 371
    const v29, 0x7f0a0f88

    aput v29, v17, v5

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0a0f89

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v16, v5

    .line 373
    const/16 v29, 0x1

    aput-boolean v29, v13, v5

    .line 374
    add-int/lit8 v5, v5, 0x1

    .line 376
    :cond_c
    if-eqz v21, :cond_d

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v29

    if-nez v29, :cond_d

    .line 377
    const v29, 0x7f0a0f8a

    aput v29, v17, v5

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0a0f8a

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v16, v5

    .line 379
    const/16 v29, 0x1

    aput-boolean v29, v13, v5

    .line 380
    add-int/lit8 v5, v5, 0x1

    .line 383
    :cond_d
    new-instance v29, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;-><init>(Lcom/android/settings/SelectItemDisplay;[I[Ljava/lang/String;[Z)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 385
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 387
    new-instance v25, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct/range {v25 .. v25}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    .line 388
    .local v25, "mScover":Lcom/samsung/android/sdk/cover/Scover;
    const/16 v19, 0x1

    .line 390
    .local v19, "mDeviceSupportCoverSDK":Z
    :try_start_1
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 396
    :goto_4
    if-eqz v19, :cond_e

    .line 397
    new-instance v29, Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 398
    new-instance v29, Lcom/android/settings/SelectItemDisplay$7;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$7;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 409
    :cond_e
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 410
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v29, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v7}, Lcom/android/settings/SelectItemDisplay;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 412
    return-void

    .line 208
    .end local v5    # "count":I
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "hasShortcutCamera":Z
    .end local v12    # "mCoverCancel":Landroid/widget/ImageButton;
    .end local v13    # "mCoverCheckBoxVisible":[Z
    .end local v14    # "mCoverSettings":Landroid/widget/ListView;
    .end local v16    # "mCoverSummaryItem":[Ljava/lang/String;
    .end local v17    # "mCoverTitleItem":[I
    .end local v19    # "mDeviceSupportCoverSDK":Z
    .end local v21    # "mGlassMessageExist":Z
    .end local v24    # "mPedometerSupported":Z
    .end local v25    # "mScover":Lcom/samsung/android/sdk/cover/Scover;
    .end local v26    # "mTitleName":Landroid/widget/TextView;
    .end local v28    # "styleClockEnabled":Z
    .restart local v4    # "CurrentCoverBackgroundDbId":I
    :cond_f
    packed-switch v4, :pswitch_data_0

    .line 231
    const v29, 0x7f0205ef

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 234
    :goto_5
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Landroid/graphics/Color;->argb(IIII)I

    move-result v29

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 210
    :pswitch_0
    const v29, 0x7f0205f0

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_5

    .line 213
    :pswitch_1
    const v29, 0x7f0205f1

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_5

    .line 216
    :pswitch_2
    const v29, 0x7f0205f2

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_5

    .line 219
    :pswitch_3
    const v29, 0x7f0205f3

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_5

    .line 222
    :pswitch_4
    const v29, 0x7f0205f4

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_5

    .line 225
    :pswitch_5
    const v29, 0x7f0205f5

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_5

    .line 228
    :pswitch_6
    const v29, 0x7f0205f6

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_5

    .line 236
    .end local v4    # "CurrentCoverBackgroundDbId":I
    :cond_10
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSViewCover2014Supported(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isSViewWallpaperOldSupported()Z

    move-result v29

    if-eqz v29, :cond_12

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "sview_color_wallpaper"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 239
    .restart local v4    # "CurrentCoverBackgroundDbId":I
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v4, v0, :cond_11

    .line 240
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getSViewWallpaperDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    const/16 v29, 0x4d

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Landroid/graphics/Color;->argb(IIII)I

    move-result v29

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 243
    :cond_11
    packed-switch v4, :pswitch_data_1

    .line 275
    const v29, 0x7f0205ef

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 278
    :goto_6
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Landroid/graphics/Color;->argb(IIII)I

    move-result v29

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 245
    :pswitch_7
    const v29, 0x7f0205ef

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 248
    :pswitch_8
    const v29, 0x7f0205f0

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 251
    :pswitch_9
    const v29, 0x7f0205f1

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 254
    :pswitch_a
    const v29, 0x7f0205f2

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 257
    :pswitch_b
    const v29, 0x7f0205f3

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 260
    :pswitch_c
    const v29, 0x7f0205f4

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 263
    :pswitch_d
    const v29, 0x7f0205f5

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 266
    :pswitch_e
    const v29, 0x7f0205f6

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 269
    :pswitch_f
    const v29, 0x7f0205f7

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 272
    :pswitch_10
    const v29, 0x7f0205f8

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 281
    .end local v4    # "CurrentCoverBackgroundDbId":I
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getBackgroundColor()I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "sview_color_wallpaper"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    if-eqz v29, :cond_13

    const/16 v22, 0x1

    .line 284
    .local v22, "mIsWallpaper":Z
    :goto_7
    if-eqz v22, :cond_2

    .line 285
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getSViewWallpaperDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    const/16 v29, 0x4d

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Landroid/graphics/Color;->argb(IIII)I

    move-result v29

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 282
    .end local v22    # "mIsWallpaper":Z
    :cond_13
    const/16 v22, 0x0

    goto :goto_7

    .line 298
    :cond_14
    const-string v29, "weather_cover"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mWeatherDBKey:Ljava/lang/String;

    .line 299
    const-string v29, "walk_mate"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    .line 300
    const-string v29, "WALKMATE"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mSHealthItentExtra_type:Ljava/lang/String;

    goto/16 :goto_1

    .line 321
    .restart local v12    # "mCoverCancel":Landroid/widget/ImageButton;
    .restart local v14    # "mCoverSettings":Landroid/widget/ListView;
    .restart local v21    # "mGlassMessageExist":Z
    .restart local v24    # "mPedometerSupported":Z
    .restart local v26    # "mTitleName":Landroid/widget/TextView;
    :catch_0
    move-exception v6

    .line 322
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 366
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "count":I
    .restart local v8    # "hasShortcutCamera":Z
    .restart local v13    # "mCoverCheckBoxVisible":[Z
    .restart local v16    # "mCoverSummaryItem":[Ljava/lang/String;
    .restart local v17    # "mCoverTitleItem":[I
    .restart local v28    # "styleClockEnabled":Z
    :cond_15
    const/16 v29, 0x1

    aput-boolean v29, v13, v5

    goto/16 :goto_3

    .line 391
    .restart local v19    # "mDeviceSupportCoverSDK":Z
    .restart local v25    # "mScover":Lcom/samsung/android/sdk/cover/Scover;
    :catch_1
    move-exception v6

    .line 392
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const/16 v19, 0x0

    .line 395
    goto/16 :goto_4

    .line 393
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    .line 394
    .local v6, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 208
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 243
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SelectItemDisplay;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 504
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 505
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .line 619
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 620
    iget-object v4, p0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 621
    iget-object v4, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 622
    iget-object v4, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 624
    :cond_0
    const/4 v1, 0x0

    .line 625
    .local v1, "selectedItem":I
    const/4 v3, 0x0

    .line 626
    .local v3, "titleId":I
    const/4 v2, 0x0

    .line 627
    .local v2, "state":Z
    const-wide/32 v4, 0x7f0a15b0

    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    invoke-virtual {v6, p3}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 628
    const/16 v1, 0x7d1

    .line 629
    const v3, 0x7f0a15b0

    .line 630
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SelectItemDisplay;->mShortcutCameraDBKey:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 632
    :goto_0
    const-string v4, "SelectItemDisplay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemClick, Shortcut Camera - state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :goto_1
    const/16 v4, 0x7d4

    if-ne v1, v4, :cond_8

    .line 654
    invoke-direct {p0, v1}, Lcom/android/settings/SelectItemDisplay;->clickItem(I)V

    .line 684
    :goto_2
    return-void

    .line 630
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 633
    :cond_2
    const-wide/32 v4, 0x7f0a0f80

    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    invoke-virtual {v6, p3}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 634
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherDBKey:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    .line 635
    :goto_3
    const v3, 0x7f0a0f80

    .line 636
    const/16 v1, 0x7d2

    .line 637
    const-string v4, "SelectItemDisplay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemClick, weather - state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 634
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 639
    :cond_4
    const-wide/32 v4, 0x7f0a0f8a

    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    invoke-virtual {v6, p3}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 640
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_message"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x1

    .line 641
    :goto_4
    const v3, 0x7f0a0f8a

    .line 642
    const/16 v1, 0x7d4

    .line 643
    const-string v4, "SelectItemDisplay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemClick, air message - state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 640
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 646
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x1

    .line 647
    :goto_5
    const v3, 0x7f0a0f88

    .line 648
    const/16 v1, 0x7d3

    .line 649
    const-string v4, "SelectItemDisplay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemClick, Pedometer - state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 646
    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    .line 659
    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isSViewWeatherforT()Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0x7d2

    if-ne v1, v4, :cond_9

    .line 660
    invoke-direct {p0, v1}, Lcom/android/settings/SelectItemDisplay;->clickItem(I)V

    goto/16 :goto_2

    .line 664
    :cond_9
    invoke-static {p0}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 665
    const/16 v4, 0x7d2

    if-ne v1, v4, :cond_a

    .line 666
    iget-boolean v4, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherAgreed:Z

    if-nez v4, :cond_a

    if-nez v2, :cond_a

    .line 667
    invoke-direct {p0, v1}, Lcom/android/settings/SelectItemDisplay;->clickItem(I)V

    goto/16 :goto_2

    .line 671
    :cond_a
    invoke-direct {p0, v1}, Lcom/android/settings/SelectItemDisplay;->checkGuidePopupAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 672
    const-string v4, "SelectItemDisplay"

    const-string v5, "onItemClick, SViewCoverPopup"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/SelectItemDisplay;->isKeepDisplay:Z

    .line 674
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 675
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.SViewCoverPopup"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    const-string v5, "enable"

    if-nez v2, :cond_b

    const/4 v4, 0x1

    :goto_6
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 677
    const-string v4, "titleId"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 678
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SelectItemDisplay;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 676
    :cond_b
    const/4 v4, 0x0

    goto :goto_6

    .line 683
    .end local v0    # "mIntent":Landroid/content/Intent;
    :cond_c
    invoke-direct {p0, v1}, Lcom/android/settings/SelectItemDisplay;->clickItem(I)V

    goto/16 :goto_2
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 494
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 495
    const-string v0, "SelectItemDisplay"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 498
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 476
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 478
    invoke-static {p0}, Lcom/android/settings/Utils;->hasSViewCoverWeather2014(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    invoke-static {p0}, Lcom/android/settings/SelectItemDisplay;->getUseLocationAgreed(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v1, :cond_3

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherAgreed:Z

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v1, :cond_1

    .line 482
    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 484
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    .line 485
    .local v0, "state":Lcom/samsung/android/sdk/cover/ScoverState;
    if-nez v0, :cond_4

    .line 490
    :cond_2
    :goto_1
    return-void

    .line 479
    .end local v0    # "state":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 488
    .restart local v0    # "state":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_4
    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->CoverOpen()V

    goto :goto_1
.end method
