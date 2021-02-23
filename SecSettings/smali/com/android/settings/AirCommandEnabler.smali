.class public final Lcom/android/settings/AirCommandEnabler;
.super Ljava/lang/Object;
.source "AirCommandEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAirViewObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mEnableAirCommandDialog:Landroid/app/AlertDialog;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mPosition:I

.field private mSwitch:Landroid/widget/Switch;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    .line 59
    iput-object v1, p0, Lcom/android/settings/AirCommandEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/AirCommandEnabler;->mPosition:I

    .line 63
    iput-object v1, p0, Lcom/android/settings/AirCommandEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 64
    iput-object v1, p0, Lcom/android/settings/AirCommandEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 70
    new-instance v0, Lcom/android/settings/AirCommandEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirCommandEnabler$1;-><init>(Lcom/android/settings/AirCommandEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    .line 79
    iput-object p1, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    .line 82
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirCommandEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirCommandEnabler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AirCommandEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirCommandEnabler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/AirCommandEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AirCommandEnabler;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/AirCommandEnabler;->turnOnPenInfoPreview()V

    return-void
.end method

.method private dismissAllDialog()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 229
    :cond_0
    return-void
.end method

.method private showAirCommandEnabledPopup()V
    .locals 3

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/settings/AirCommandEnabler;->dismissAllDialog()V

    .line 201
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a132d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a12fa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/AirCommandEnabler$6;

    invoke-direct {v2, p0}, Lcom/android/settings/AirCommandEnabler$6;-><init>(Lcom/android/settings/AirCommandEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/AirCommandEnabler$5;

    invoke-direct {v2, p0}, Lcom/android/settings/AirCommandEnabler$5;-><init>(Lcom/android/settings/AirCommandEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 221
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 222
    return-void
.end method

.method private showTalkBackDisableDialog()V
    .locals 8

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/settings/AirCommandEnabler;->dismissAllDialog()V

    .line 156
    iget-object v2, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0a131f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    const v7, 0x7f0a12e9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "title":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0a12eb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0a1365

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0a0c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v2, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.feature.overlaymagnifier"

    invoke-static {v2, v3}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0a10

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/AirCommandEnabler$3;

    invoke-direct {v4, p0}, Lcom/android/settings/AirCommandEnabler$3;-><init>(Lcom/android/settings/AirCommandEnabler;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings/AirCommandEnabler$2;

    invoke-direct {v4, p0}, Lcom/android/settings/AirCommandEnabler$2;-><init>(Lcom/android/settings/AirCommandEnabler;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/AirCommandEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 187
    iget-object v2, p0, Lcom/android/settings/AirCommandEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 188
    iget-object v2, p0, Lcom/android/settings/AirCommandEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/settings/AirCommandEnabler$4;

    invoke-direct {v3, p0}, Lcom/android/settings/AirCommandEnabler$4;-><init>(Lcom/android/settings/AirCommandEnabler;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 196
    return-void
.end method

.method private turnOnPenInfoPreview()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 233
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 234
    iget-object v6, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_master_onoff"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v1, v4

    .line 235
    .local v1, "airViewState":Z
    :goto_0
    iget-object v6, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 236
    .local v0, "airViewMode":I
    iget-object v6, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v2, v4

    .line 237
    .local v2, "penHover":Z
    :goto_1
    iget-object v6, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_information_preview"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    move v3, v4

    .line 238
    .local v3, "penInforPreview":Z
    :goto_2
    if-nez v1, :cond_0

    .line 240
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_view_master_onoff"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    :cond_0
    sget v5, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    if-ne v0, v5, :cond_1

    .line 243
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_view_mode"

    sget v7, Lcom/android/settings/Utils;->AUTO_AIR_VIEW_MODE:I

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 245
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "finger_air_view"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 247
    :cond_1
    if-nez v2, :cond_2

    .line 248
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    :cond_2
    if-nez v3, :cond_3

    .line 251
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_information_preview"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    .end local v0    # "airViewMode":I
    .end local v1    # "airViewState":Z
    .end local v2    # "penHover":Z
    .end local v3    # "penInforPreview":Z
    :cond_3
    return-void

    :cond_4
    move v1, v5

    .line 234
    goto :goto_0

    .restart local v0    # "airViewMode":I
    .restart local v1    # "airViewState":Z
    :cond_5
    move v2, v5

    .line 236
    goto :goto_1

    .restart local v2    # "penHover":Z
    :cond_6
    move v3, v5

    .line 237
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

    .line 117
    if-eqz p2, :cond_a

    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "airViewState":Z
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 120
    iget-object v6, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_master_onoff"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    move v1, v4

    .line 124
    :goto_0
    iget-object v6, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 125
    .local v0, "airViewMode":I
    iget-object v6, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_information_preview"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v3, v4

    .line 127
    .local v3, "penInforPreview":Z
    :goto_1
    const/4 v2, 0x0

    .line 128
    .local v2, "hoverZoom":Z
    iget-object v6, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    const-string v7, "com.sec.feature.overlaymagnifier"

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 129
    iget-object v6, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accessibility_magnifier"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_6

    move v2, v4

    .line 130
    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accessibility_display_magnification_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v4, :cond_1

    if-eqz v2, :cond_7

    .line 133
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/AirCommandEnabler;->showTalkBackDisableDialog()V

    .line 143
    .end local v0    # "airViewMode":I
    .end local v1    # "airViewState":Z
    .end local v2    # "hoverZoom":Z
    .end local v3    # "penInforPreview":Z
    :goto_3
    return-void

    .restart local v1    # "airViewState":Z
    :cond_2
    move v1, v5

    .line 120
    goto :goto_0

    .line 122
    :cond_3
    iget-object v6, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 125
    goto :goto_1

    .restart local v2    # "hoverZoom":Z
    .restart local v3    # "penInforPreview":Z
    :cond_6
    move v2, v5

    .line 129
    goto :goto_2

    .line 135
    :cond_7
    if-eqz v1, :cond_8

    sget v5, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    if-eq v0, v5, :cond_8

    if-nez v3, :cond_9

    .line 136
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/AirCommandEnabler;->showAirCommandEnabledPopup()V

    goto :goto_3

    .line 138
    :cond_9
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_button_onoff"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 141
    .end local v0    # "airViewMode":I
    .end local v1    # "airViewState":Z
    .end local v2    # "hoverZoom":Z
    .end local v3    # "penInforPreview":Z
    :cond_a
    iget-object v4, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "air_button_onoff"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/AirCommandEnabler;->dismissAllDialog()V

    .line 100
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirCommandEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/settings/AirCommandEnabler;->updateSwitch()V

    .line 93
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_button_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/AirCommandEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 96
    return-void
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/AirCommandEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 88
    iput p2, p0, Lcom/android/settings/AirCommandEnabler;->mPosition:I

    .line 89
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    iput-object p1, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/AirCommandEnabler;->updateSwitch()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public updateSwitch()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    iget-object v3, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_button_onoff"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 148
    .local v0, "state":I
    iget-object v3, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 150
    iget-object v1, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/AirCommandEnabler;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isAirCommandModeAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 152
    return-void

    :cond_0
    move v1, v2

    .line 148
    goto :goto_0
.end method
