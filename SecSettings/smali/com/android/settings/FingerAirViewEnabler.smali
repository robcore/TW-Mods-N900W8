.class public final Lcom/android/settings/FingerAirViewEnabler;
.super Ljava/lang/Object;
.source "FingerAirViewEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mFingerAirViewObserver:Landroid/database/ContentObserver;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mIsTablet:Z

.field private mPosition:I

.field private mSwitch:Landroid/widget/Switch;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 49
    iput-boolean v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mIsTablet:Z

    .line 50
    iput-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 51
    iput v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mPosition:I

    .line 53
    iput-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 54
    iput-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 56
    new-instance v0, Lcom/android/settings/FingerAirViewEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/FingerAirViewEnabler$1;-><init>(Lcom/android/settings/FingerAirViewEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    .line 64
    iput-object p1, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 66
    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mIsTablet:Z

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FingerAirViewEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewEnabler;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/FingerAirViewEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewEnabler;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/FingerAirViewEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewEnabler;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/FingerAirViewEnabler;->showAllOptionDisabledDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/FingerAirViewEnabler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/FingerAirViewEnabler;->broadcastFingerAirViewChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/FingerAirViewEnabler;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewEnabler;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/FingerAirViewEnabler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewEnabler;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mPosition:I

    return v0
.end method

.method private broadcastFingerAirViewChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "finger_air_view_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 301
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 302
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const v7, 0x7f0a1364

    const v6, 0x7f0a0a0c

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 156
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 161
    iput-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 166
    iput-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 169
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0a1365

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_3
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_magnification_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_4
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.feature.overlaymagnifier"

    invoke-static {v1, v2}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 181
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_magnifier"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0a10

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0a1125

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/FingerAirViewEnabler$3;

    invoke-direct {v3, p0}, Lcom/android/settings/FingerAirViewEnabler$3;-><init>(Lcom/android/settings/FingerAirViewEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/FingerAirViewEnabler$2;

    invoke-direct {v3, p0}, Lcom/android/settings/FingerAirViewEnabler$2;-><init>(Lcom/android/settings/FingerAirViewEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 222
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 224
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/FingerAirViewEnabler$4;

    invoke-direct {v2, p0}, Lcom/android/settings/FingerAirViewEnabler$4;-><init>(Lcom/android/settings/FingerAirViewEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 240
    iput-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 245
    iput-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 248
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a1332

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1331

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/FingerAirViewEnabler$5;

    invoke-direct {v2, p0}, Lcom/android/settings/FingerAirViewEnabler$5;-><init>(Lcom/android/settings/FingerAirViewEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 270
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 275
    const/4 v2, 0x0

    .line 279
    .local v2, "isAllDisabled":I
    iget-object v10, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "finger_air_view_magnifier"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 280
    .local v3, "magnifier":I
    iget-object v10, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "finger_air_view_show_up_indicator"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 281
    .local v6, "showUpIndicator":I
    iget-object v10, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "finger_air_view_information_preview"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 282
    .local v1, "informationPreview":I
    iget-object v10, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "finger_air_view_full_text"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 284
    .local v0, "fullText":I
    iget-object v10, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "finger_air_view_pointer"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 285
    .local v4, "pointer":I
    iget-object v10, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "finger_air_view_pregress_bar_preview"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 286
    .local v5, "progressBarPreview":I
    iget-object v10, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "finger_air_view_speed_dial_tip"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 289
    .local v7, "speedDialTip":I
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 290
    or-int v10, v3, v6

    or-int/2addr v10, v1

    or-int/2addr v10, v0

    or-int v2, v10, v4

    .line 294
    :goto_0
    if-ge v2, v8, :cond_1

    :goto_1
    return v8

    .line 292
    :cond_0
    or-int v10, v3, v6

    or-int/2addr v10, v1

    or-int/2addr v10, v0

    or-int/2addr v10, v4

    or-int/2addr v10, v5

    or-int v2, v10, v7

    goto :goto_0

    :cond_1
    move v8, v9

    .line 294
    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    if-eqz p2, :cond_5

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "hoverZoom":Z
    iget-object v3, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    const-string v4, "com.sec.feature.overlaymagnifier"

    invoke-static {v3, v4}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_magnifier"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 112
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_magnification_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    if-eqz v0, :cond_3

    .line 114
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/FingerAirViewEnabler;->makeTalkBackDisablePopup()V

    .line 133
    .end local v0    # "hoverZoom":Z
    :goto_1
    return-void

    .restart local v0    # "hoverZoom":Z
    :cond_2
    move v0, v2

    .line 111
    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewEnabler;->isAllOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 116
    invoke-direct {p0}, Lcom/android/settings/FingerAirViewEnabler;->showAllOptionDisabledDialog()V

    goto :goto_1

    .line 118
    :cond_4
    iget-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    iget-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_highlight"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    invoke-direct {p0, p2}, Lcom/android/settings/FingerAirViewEnabler;->broadcastFingerAirViewChanged(Z)V

    .line 122
    const-string v1, "FingerAirViewEnabler"

    const-string v2, "switch is on"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 125
    .end local v0    # "hoverZoom":Z
    :cond_5
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "finger_air_view"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "finger_air_view_highlight"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    invoke-direct {p0, p2}, Lcom/android/settings/FingerAirViewEnabler;->broadcastFingerAirViewChanged(Z)V

    .line 129
    const-string v1, "FingerAirViewEnabler"

    const-string v2, "switch is off"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    const-string v0, "DCM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KDI"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 84
    iput-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 89
    iput-object v2, p0, Lcom/android/settings/FingerAirViewEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/FingerAirViewEnabler;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewEnabler;->updateSwitch()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/FingerAirViewEnabler;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 78
    return-void
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/FingerAirViewEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 71
    iput p2, p0, Lcom/android/settings/FingerAirViewEnabler;->mPosition:I

    .line 72
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    iput-object p1, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewEnabler;->updateSwitch()V

    .line 103
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public updateSwitch()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    iget-object v3, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 137
    .local v0, "state":I
    iget-object v3, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 152
    return-void

    :cond_0
    move v1, v2

    .line 137
    goto :goto_0
.end method
