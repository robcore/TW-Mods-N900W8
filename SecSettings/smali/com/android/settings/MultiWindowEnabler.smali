.class public Lcom/android/settings/MultiWindowEnabler;
.super Ljava/lang/Object;
.source "MultiWindowEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mAlertDialog:Landroid/app/AlertDialog;

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private final MAX_TASKS:I

.field private mAccessControlObserver:Landroid/database/ContentObserver;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mMultiWindowObserver:Landroid/database/ContentObserver;

.field private mPosition:I

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/MultiWindowEnabler;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    .line 39
    iput-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/MultiWindowEnabler;->mPosition:I

    .line 48
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/MultiWindowEnabler;->MAX_TASKS:I

    .line 51
    new-instance v0, Lcom/android/settings/MultiWindowEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MultiWindowEnabler$1;-><init>(Lcom/android/settings/MultiWindowEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mMultiWindowObserver:Landroid/database/ContentObserver;

    .line 61
    new-instance v0, Lcom/android/settings/MultiWindowEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MultiWindowEnabler$2;-><init>(Lcom/android/settings/MultiWindowEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mAccessControlObserver:Landroid/database/ContentObserver;

    .line 72
    iput-object p1, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MultiWindowEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MultiWindowEnabler;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/MultiWindowEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MultiWindowEnabler;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/MultiWindowEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MultiWindowEnabler;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/MultiWindowEnabler;->removeEnabledScreenReaderValue()V

    return-void
.end method

.method private isEnabledScreenReaderService()Z
    .locals 6

    .prologue
    .line 150
    iget-object v4, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "enabledServicesSetting":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 154
    const-string v3, ""

    .line 157
    :cond_0
    sget-object v0, Lcom/android/settings/MultiWindowEnabler;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 159
    .local v0, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 161
    :cond_1
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "componentNameString":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 165
    .local v2, "enabledService":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 166
    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    const/4 v4, 0x1

    .line 172
    .end local v1    # "componentNameString":Ljava/lang/String;
    .end local v2    # "enabledService":Landroid/content/ComponentName;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isPopupWindowActive()Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 270
    iget-object v3, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/settings/MultiWindowEnabler;->mActivityManager:Landroid/app/ActivityManager;

    .line 272
    iget-object v3, p0, Lcom/android/settings/MultiWindowEnabler;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 273
    .local v1, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 274
    .local v2, "ti":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 275
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 279
    .end local v2    # "ti":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method private removeEnabledScreenReaderValue()V
    .locals 7

    .prologue
    .line 214
    iget-object v4, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "enabledServicesSetting":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    :goto_0
    return-void

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v0, "builder":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/settings/MultiWindowEnabler;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 222
    .local v1, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 224
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 225
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "componentNameString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 228
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    :cond_2
    if-eqz v2, :cond_1

    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 232
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 235
    .end local v2    # "componentNameString":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private showPopupWindowsDisablePopup()V
    .locals 3

    .prologue
    .line 240
    sget-object v0, Lcom/android/settings/MultiWindowEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/MultiWindowEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 242
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a06dd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a06dc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/MultiWindowEnabler$8;

    invoke-direct {v2, p0}, Lcom/android/settings/MultiWindowEnabler$8;-><init>(Lcom/android/settings/MultiWindowEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/MultiWindowEnabler$7;

    invoke-direct {v2, p0}, Lcom/android/settings/MultiWindowEnabler$7;-><init>(Lcom/android/settings/MultiWindowEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/MultiWindowEnabler$6;

    invoke-direct {v1, p0}, Lcom/android/settings/MultiWindowEnabler$6;-><init>(Lcom/android/settings/MultiWindowEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/android/settings/MultiWindowEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showTalkBackDisablePopup()V
    .locals 3

    .prologue
    .line 176
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a1124

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1123

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/MultiWindowEnabler$5;

    invoke-direct {v2, p0}, Lcom/android/settings/MultiWindowEnabler$5;-><init>(Lcom/android/settings/MultiWindowEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/MultiWindowEnabler$4;

    invoke-direct {v2, p0}, Lcom/android/settings/MultiWindowEnabler$4;-><init>(Lcom/android/settings/MultiWindowEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/MultiWindowEnabler$3;

    invoke-direct {v1, p0}, Lcom/android/settings/MultiWindowEnabler$3;-><init>(Lcom/android/settings/MultiWindowEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 211
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v0, 0x1

    .line 111
    invoke-direct {p0}, Lcom/android/settings/MultiWindowEnabler;->isEnabledScreenReaderService()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    if-eqz p2, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/android/settings/MultiWindowEnabler;->showTalkBackDisablePopup()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/MultiWindowEnabler;->isPopupWindowActive()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    .line 116
    invoke-direct {p0}, Lcom/android/settings/MultiWindowEnabler;->showPopupWindowsDisablePopup()V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_window_enabled"

    if-ne p2, v0, :cond_3

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MultiWindowEnabler;->mMultiWindowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MultiWindowEnabler;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowEnabler;->updateSwitch()V

    .line 83
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_window_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/MultiWindowEnabler;->mMultiWindowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/MultiWindowEnabler;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 89
    return-void
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings/MultiWindowEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 78
    iput p2, p0, Lcom/android/settings/MultiWindowEnabler;->mPosition:I

    .line 79
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    iput-object p1, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowEnabler;->updateSwitch()V

    .line 106
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public updateSwitch()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 124
    iget-object v5, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 125
    iget-object v5, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "access_control_enabled"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    move v0, v3

    .line 127
    .local v0, "bAccessControlDisabled":Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "easy_mode_switch"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v1, v3

    .line 130
    .local v1, "bBasicMode":Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "multi_window_enabled"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 133
    .local v2, "state":I
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 134
    iget-object v5, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v2, v3, :cond_3

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 140
    :goto_3
    iget-object v3, p0, Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isMultiWindowModeAllowed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 144
    :cond_0
    iget-object v3, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 145
    return-void

    .end local v0    # "bAccessControlDisabled":Z
    .end local v1    # "bBasicMode":Z
    .end local v2    # "state":I
    :cond_1
    move v0, v4

    .line 125
    goto :goto_0

    .restart local v0    # "bAccessControlDisabled":Z
    :cond_2
    move v1, v4

    .line 127
    goto :goto_1

    .restart local v1    # "bBasicMode":Z
    .restart local v2    # "state":I
    :cond_3
    move v3, v4

    .line 134
    goto :goto_2

    .line 136
    :cond_4
    iget-object v5, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v2, v3, :cond_5

    :goto_4
    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 137
    iget-object v3, p0, Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_3

    :cond_5
    move v3, v4

    .line 136
    goto :goto_4
.end method
