.class public Lcom/android/settings/AirButtonHelp;
.super Landroid/app/Fragment;
.source "AirButtonHelp.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAddingButton:Landroid/widget/Button;

.field private mAirCommanObserver:Landroid/database/ContentObserver;

.field private mAttachingButton:Landroid/widget/Button;

.field private mDBItem:Ljava/lang/String;

.field private mEnableAirCommandDialog:Landroid/app/AlertDialog;

.field private mFunctionalMenuButton:Landroid/widget/Button;

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 74
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/AirButtonHelp;->mDBItem:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/android/settings/AirButtonHelp;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 81
    iput-object v1, p0, Lcom/android/settings/AirButtonHelp;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 90
    new-instance v0, Lcom/android/settings/AirButtonHelp$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirButtonHelp$1;-><init>(Lcom/android/settings/AirButtonHelp;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirButtonHelp;->mAirCommanObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirButtonHelp;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirButtonHelp;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AirButtonHelp;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirButtonHelp;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/AirButtonHelp;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AirButtonHelp;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/AirButtonHelp;->turnOnPenInfoPreview()V

    return-void
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 303
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 305
    iput-object v1, p0, Lcom/android/settings/AirButtonHelp;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 309
    iput-object v1, p0, Lcom/android/settings/AirButtonHelp;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 311
    :cond_1
    return-void
.end method

.method private showAirCommandEnabledPopup()V
    .locals 3

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/android/settings/AirButtonHelp;->dismissAllDialog()V

    .line 270
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a132d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a12fa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/AirButtonHelp$6;

    invoke-direct {v2, p0}, Lcom/android/settings/AirButtonHelp$6;-><init>(Lcom/android/settings/AirButtonHelp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/AirButtonHelp$5;

    invoke-direct {v2, p0}, Lcom/android/settings/AirButtonHelp$5;-><init>(Lcom/android/settings/AirButtonHelp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirButtonHelp;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 290
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 292
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/AirButtonHelp$7;

    invoke-direct {v1, p0}, Lcom/android/settings/AirButtonHelp$7;-><init>(Lcom/android/settings/AirButtonHelp;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 300
    return-void
.end method

.method private showTalkBackDisableDialog()V
    .locals 6

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/settings/AirButtonHelp;->dismissAllDialog()V

    .line 225
    const v2, 0x7f0a131f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f0a12e9

    invoke-virtual {p0, v5}, Lcom/android/settings/AirButtonHelp;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/AirButtonHelp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "title":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0a12eb

    invoke-virtual {p0, v3}, Lcom/android/settings/AirButtonHelp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a1365

    invoke-virtual {p0, v3}, Lcom/android/settings/AirButtonHelp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a0a0c

    invoke-virtual {p0, v3}, Lcom/android/settings/AirButtonHelp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    iget-object v2, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    const-string v3, "com.sec.feature.overlaymagnifier"

    invoke-static {v2, v3}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a0a10

    invoke-virtual {p0, v3}, Lcom/android/settings/AirButtonHelp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/AirButtonHelp$3;

    invoke-direct {v4, p0}, Lcom/android/settings/AirButtonHelp$3;-><init>(Lcom/android/settings/AirButtonHelp;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings/AirButtonHelp$2;

    invoke-direct {v4, p0}, Lcom/android/settings/AirButtonHelp$2;-><init>(Lcom/android/settings/AirButtonHelp;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/AirButtonHelp;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 256
    iget-object v2, p0, Lcom/android/settings/AirButtonHelp;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 257
    iget-object v2, p0, Lcom/android/settings/AirButtonHelp;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/settings/AirButtonHelp$4;

    invoke-direct {v3, p0}, Lcom/android/settings/AirButtonHelp$4;-><init>(Lcom/android/settings/AirButtonHelp;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 265
    return-void
.end method

.method private turnOnPenInfoPreview()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 315
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 316
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_master_onoff"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v1, v4

    .line 317
    .local v1, "airViewState":Z
    :goto_0
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 318
    .local v0, "airViewMode":I
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v2, v4

    .line 319
    .local v2, "penHover":Z
    :goto_1
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_information_preview"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    move v3, v4

    .line 320
    .local v3, "penInforPreview":Z
    :goto_2
    if-nez v1, :cond_0

    .line 322
    iget-object v5, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_view_master_onoff"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 324
    :cond_0
    sget v5, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    if-ne v0, v5, :cond_1

    .line 325
    iget-object v5, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_view_mode"

    sget v7, Lcom/android/settings/Utils;->AUTO_AIR_VIEW_MODE:I

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 326
    iget-object v5, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 327
    iget-object v5, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "finger_air_view"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    :cond_1
    if-nez v2, :cond_2

    .line 330
    iget-object v5, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    :cond_2
    if-nez v3, :cond_3

    .line 333
    iget-object v5, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_information_preview"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 336
    .end local v0    # "airViewMode":I
    .end local v1    # "airViewState":Z
    .end local v2    # "penHover":Z
    .end local v3    # "penInforPreview":Z
    :cond_3
    return-void

    :cond_4
    move v1, v5

    .line 316
    goto :goto_0

    .restart local v0    # "airViewMode":I
    .restart local v1    # "airViewState":Z
    :cond_5
    move v2, v5

    .line 318
    goto :goto_1

    .restart local v2    # "penHover":Z
    :cond_6
    move v3, v5

    .line 319
    goto :goto_2
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 184
    const/4 v2, 0x0

    .line 185
    .local v2, "hoverZoom":Z
    if-eqz p2, :cond_f

    .line 186
    invoke-static {}, Lcom/android/settings/Utils;->isSPenNewLayoutFromT()Z

    move-result v6

    if-nez v6, :cond_a

    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, "airViewState":Z
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_master_onoff"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    move v1, v4

    .line 193
    :goto_0
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 194
    .local v0, "airViewMode":I
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_information_preview"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v3, v4

    .line 195
    .local v3, "penInforPreview":Z
    :goto_1
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    const-string v7, "com.sec.feature.overlaymagnifier"

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 196
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accessibility_magnifier"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_6

    move v2, v4

    .line 197
    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accessibility_display_magnification_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v4, :cond_1

    if-eqz v2, :cond_7

    .line 200
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/AirButtonHelp;->showTalkBackDisableDialog()V

    .line 221
    .end local v0    # "airViewMode":I
    .end local v1    # "airViewState":Z
    .end local v3    # "penInforPreview":Z
    :goto_3
    return-void

    .restart local v1    # "airViewState":Z
    :cond_2
    move v1, v5

    .line 189
    goto :goto_0

    .line 191
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v1, v4

    :goto_4
    goto :goto_0

    :cond_4
    move v1, v5

    goto :goto_4

    .restart local v0    # "airViewMode":I
    :cond_5
    move v3, v5

    .line 194
    goto :goto_1

    .restart local v3    # "penInforPreview":Z
    :cond_6
    move v2, v5

    .line 196
    goto :goto_2

    .line 201
    :cond_7
    if-eqz v1, :cond_8

    sget v5, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    if-eq v0, v5, :cond_8

    if-nez v3, :cond_9

    .line 202
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/AirButtonHelp;->showAirCommandEnabledPopup()V

    goto :goto_3

    .line 204
    :cond_9
    iget-object v5, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_button_onoff"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 208
    .end local v0    # "airViewMode":I
    .end local v1    # "airViewState":Z
    .end local v3    # "penInforPreview":Z
    :cond_a
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    const-string v7, "com.sec.feature.overlaymagnifier"

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 209
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accessibility_magnifier"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_d

    move v2, v4

    .line 210
    :cond_b
    :goto_5
    iget-object v6, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accessibility_display_magnification_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v4, :cond_c

    if-eqz v2, :cond_e

    .line 213
    :cond_c
    invoke-direct {p0}, Lcom/android/settings/AirButtonHelp;->showTalkBackDisableDialog()V

    goto :goto_3

    :cond_d
    move v2, v5

    .line 209
    goto :goto_5

    .line 215
    :cond_e
    iget-object v5, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_button_onoff"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 219
    :cond_f
    iget-object v4, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "air_button_onoff"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x10

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/AirButtonHelp;->setHasOptionsMenu(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    .line 103
    iget-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActionBarLayout:Landroid/view/View;

    .line 106
    iget-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AirButtonHelp;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 109
    new-instance v1, Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActionBarSwitch:Landroid/widget/Switch;

    .line 111
    iget-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 116
    .local v0, "padding":I
    iget-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 117
    iget-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 119
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0205fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0205fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirButtonHelp;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 127
    iget-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AirButtonHelp;->mActionBarLayout:Landroid/view/View;

    .line 129
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 612
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 614
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    const/4 v0, 0x1

    const v1, 0x7f0a1321

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201f4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 619
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f100036

    const v5, 0x7f0a130d

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 340
    const/4 v1, 0x0

    .line 341
    .local v1, "view":Landroid/view/View;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    const v2, 0x7f040014

    invoke-virtual {p1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 344
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 345
    .local v0, "tv":Landroid/widget/TextView;
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v5, v2}, Lcom/android/settings/AirButtonHelp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    :goto_0
    return-object v1

    .line 350
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_0
    const v2, 0x7f040013

    invoke-virtual {p1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 352
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 353
    .restart local v0    # "tv":Landroid/widget/TextView;
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v5, v2}, Lcom/android/settings/AirButtonHelp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 164
    invoke-direct {p0}, Lcom/android/settings/AirButtonHelp;->dismissAllDialog()V

    .line 165
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 178
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 179
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 623
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 629
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 625
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->startHelpActivity()V

    .line 626
    const/4 v0, 0x1

    goto :goto_0

    .line 623
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 158
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirButtonHelp;->mAirCommanObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 159
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 133
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 134
    iget-object v3, p0, Lcom/android/settings/AirButtonHelp;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/android/settings/AirButtonHelp;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 139
    :cond_0
    iget-object v3, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_button_onoff"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 140
    .local v0, "airCommandEngineState":Z
    :cond_1
    iget-object v3, p0, Lcom/android/settings/AirButtonHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 141
    iget-object v3, p0, Lcom/android/settings/AirButtonHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 144
    iget-object v3, p0, Lcom/android/settings/AirButtonHelp;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isAirCommandModeAllowed()Z

    move-result v1

    .line 145
    .local v1, "allowed":Z
    iget-object v3, p0, Lcom/android/settings/AirButtonHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 147
    iget-object v3, p0, Lcom/android/settings/AirButtonHelp;->mAttachingButton:Landroid/widget/Button;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/AirButtonHelp;->mAttachingButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 148
    :cond_2
    iget-object v3, p0, Lcom/android/settings/AirButtonHelp;->mAddingButton:Landroid/widget/Button;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/AirButtonHelp;->mAddingButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 149
    :cond_3
    iget-object v3, p0, Lcom/android/settings/AirButtonHelp;->mFunctionalMenuButton:Landroid/widget/Button;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/AirButtonHelp;->mFunctionalMenuButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 152
    :cond_4
    iget-object v3, p0, Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_button_onoff"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/AirButtonHelp;->mAirCommanObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 153
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 170
    return-void
.end method

.method public startHelpActivity()V
    .locals 3

    .prologue
    .line 634
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 635
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "air_button"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    invoke-virtual {p0}, Lcom/android/settings/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 637
    return-void
.end method
