.class public Lcom/android/settings/DirectPenInputSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DirectPenInputSettings.java"


# static fields
.field private static mActionBarLayout:Landroid/view/View;


# instance fields
.field private ACCESSIBILITY_ENABLED:Ljava/lang/String;

.field private ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;

.field private ACCESSIBILITY_MAGNIFIER:Ljava/lang/String;

.field private DEFAULT_SCREENREADER_NAME:Ljava/lang/String;

.field private URI_INPUT_LANGUAGE:Ljava/lang/String;

.field private URI_PEN_WRITING_BUDDY:Ljava/lang/String;

.field private URI_TEXT_SUGGESTION:Ljava/lang/String;

.field private actionBarSwitch:Landroid/widget/Switch;

.field private enabledServicesSeparator:C

.field private isShowEnablePopup:Z

.field private mActivity:Landroid/app/Activity;

.field private mListView:Landroid/widget/ListView;

.field private mTryBtnClickListener:Landroid/view/View$OnClickListener;

.field private onPredictionClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private onWritingBuddyChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private tryBtn:Landroid/widget/Button;

.field private tryItView:Landroid/view/View;

.field private withOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private withoutOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 52
    const-string v0, "pen_writing_buddy"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    .line 53
    const-string v0, "pen_writing_buddy_text_suggestion"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->URI_TEXT_SUGGESTION:Ljava/lang/String;

    .line 54
    const-string v0, "pen_writing_buddy_input_language"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->URI_INPUT_LANGUAGE:Ljava/lang/String;

    .line 55
    const-string v0, "accessibility_display_magnification_enabled"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;

    .line 56
    const-string v0, "accessibility_magnifier"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFIER:Ljava/lang/String;

    .line 59
    const-string v0, "enabled_accessibility_services"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_ENABLED:Ljava/lang/String;

    .line 60
    const-string v0, "com.google.android.marvin.talkback"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->DEFAULT_SCREENREADER_NAME:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryItView:Landroid/view/View;

    .line 63
    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    .line 64
    const/16 v0, 0x3a

    iput-char v0, p0, Lcom/android/settings/DirectPenInputSettings;->enabledServicesSeparator:C

    .line 66
    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z

    .line 68
    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    .line 275
    new-instance v0, Lcom/android/settings/DirectPenInputSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/DirectPenInputSettings$3;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->onWritingBuddyChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 306
    new-instance v0, Lcom/android/settings/DirectPenInputSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/DirectPenInputSettings$4;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    .line 349
    new-instance v0, Lcom/android/settings/DirectPenInputSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/DirectPenInputSettings$5;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->onPredictionClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 451
    new-instance v0, Lcom/android/settings/DirectPenInputSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/DirectPenInputSettings$8;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->withOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 467
    new-instance v0, Lcom/android/settings/DirectPenInputSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/DirectPenInputSettings$9;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->withoutOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFIER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/DirectPenInputSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/DirectPenInputSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/DirectPenInputSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/DirectPenInputSettings;->isTalkbackAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/DirectPenInputSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/DirectPenInputSettings;->setPreferenceEnabled()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/DirectPenInputSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/DirectPenInputSettings;->startTryIt()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->URI_TEXT_SUGGESTION:Ljava/lang/String;

    return-object v0
.end method

.method private isTalkbackAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 480
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.google.android.marvin.talkback"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private setPreferenceEnabled()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 198
    iget-object v3, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 199
    .local v2, "writingBuddyOn":Z
    :cond_0
    const-string v3, "input_language"

    invoke-virtual {p0, v3}, Lcom/android/settings/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 200
    .local v1, "preference":Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 201
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 204
    :cond_1
    const-string v3, "predictive_text"

    invoke-virtual {p0, v3}, Lcom/android/settings/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 205
    .local v0, "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 208
    :cond_2
    return-void
.end method

.method private startTryIt()V
    .locals 3

    .prologue
    .line 341
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 342
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.app.contacts.action.WRITINGBUDDY_SEARCH_INPUT_TUTORIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0, v1}, Lcom/android/settings/DirectPenInputSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startWritingBuddyService()V
    .locals 5

    .prologue
    .line 490
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 491
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.writingbuddyservice"

    const-string v4, "com.samsung.android.writingbuddyservice.WritingBuddyServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DirectPenInputSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting writingbuddy service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public isTalkBackEnabled()Z
    .locals 7

    .prologue
    .line 368
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    iget-char v5, p0, Lcom/android/settings/DirectPenInputSettings;->enabledServicesSeparator:C

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 369
    .local v4, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_ENABLED:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "enabledServicesSetting":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 372
    const-string v3, ""

    .line 375
    :cond_0
    move-object v0, v4

    .line 376
    .local v0, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 378
    :cond_1
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 379
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, "componentNameString":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 381
    .local v2, "enabledService":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 382
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->DEFAULT_SCREENREADER_NAME:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 384
    const/4 v5, 0x1

    .line 387
    .end local v1    # "componentNameString":Ljava/lang/String;
    .end local v2    # "enabledService":Landroid/content/ComponentName;
    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 152
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 153
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f070045

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryItView:Landroid/view/View;

    .line 154
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryItView:Landroid/view/View;

    const v2, 0x7f1000bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    .line 155
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_1

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DirectPenInputSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    .line 182
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 184
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 185
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings/DirectPenInputSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/DirectPenInputSettings$2;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/DirectPenInputSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DirectPenInputSettings;->tryItView:Landroid/view/View;

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 194
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 195
    return-void

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/DirectPenInputSettings;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/DirectPenInputSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/DirectPenInputSettings$1;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    .line 85
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/settings/DirectPenInputSettings;->setHasOptionsMenu(Z)V

    .line 86
    const v10, 0x7f070044

    invoke-virtual {p0, v10}, Lcom/android/settings/DirectPenInputSettings;->addPreferencesFromResource(I)V

    .line 88
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_6

    const/4 v9, 0x1

    .line 89
    .local v9, "writingBuddyOn":Z
    :goto_0
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "default_input_method"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "inputMethodId":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaHKTWModel()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 94
    :cond_0
    const-string v10, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 95
    const-string v10, "input_language"

    invoke-virtual {p0, v10}, Lcom/android/settings/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 96
    .local v6, "pf":Landroid/preference/Preference;
    if-eqz v6, :cond_1

    .line 97
    const-string v10, "settings_more_information"

    invoke-virtual {p0, v10}, Lcom/android/settings/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 98
    .local v5, "pc":Landroid/preference/PreferenceCategory;
    if-eqz v5, :cond_1

    .line 99
    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 113
    .end local v5    # "pc":Landroid/preference/PreferenceCategory;
    .end local v6    # "pf":Landroid/preference/Preference;
    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 114
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_3

    .line 115
    const-string v10, "ro.build.characteristics"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "deviceType":Ljava/lang/String;
    const-string v10, "tablet"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 117
    .local v4, "isTablet":Z
    if-nez v4, :cond_8

    .line 118
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 122
    :goto_2
    new-instance v10, Landroid/widget/Switch;

    iget-object v11, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v10, v11}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/DirectPenInputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0054

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    .line 124
    .local v7, "rightPadding":I
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v7, v13}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 125
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v10, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 126
    const/16 v10, 0x10

    const/16 v11, 0x10

    invoke-virtual {v0, v10, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 128
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v10

    if-nez v10, :cond_2

    .line 129
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    iget-object v11, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0205fa

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    iget-object v11, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0205fb

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :cond_2
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v11, Landroid/app/ActionBar$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    const v14, 0x800015

    invoke-direct {v11, v12, v13, v14}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v10, v11}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 136
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v10

    sput-object v10, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    .line 137
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    iget-object v11, p0, Lcom/android/settings/DirectPenInputSettings;->onWritingBuddyChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v10, v11}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 140
    .end local v2    # "deviceType":Ljava/lang/String;
    .end local v4    # "isTablet":Z
    .end local v7    # "rightPadding":I
    :cond_3
    const-string v10, "predictive_text"

    invoke-virtual {p0, v10}, Lcom/android/settings/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 141
    .local v1, "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v1, :cond_5

    .line 142
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/DirectPenInputSettings;->URI_TEXT_SUGGESTION:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_9

    const/4 v8, 0x1

    .line 143
    .local v8, "textSuggestion":Z
    :goto_3
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eq v10, v8, :cond_4

    .line 144
    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 146
    :cond_4
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->onPredictionClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v10}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 148
    .end local v8    # "textSuggestion":Z
    :cond_5
    return-void

    .line 88
    .end local v0    # "bar":Landroid/app/ActionBar;
    .end local v1    # "cp":Landroid/preference/CheckBoxPreference;
    .end local v3    # "inputMethodId":Ljava/lang/String;
    .end local v9    # "writingBuddyOn":Z
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 104
    .restart local v3    # "inputMethodId":Ljava/lang/String;
    .restart local v9    # "writingBuddyOn":Z
    :cond_7
    const-string v10, "input_language"

    invoke-virtual {p0, v10}, Lcom/android/settings/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 105
    .restart local v6    # "pf":Landroid/preference/Preference;
    if-eqz v6, :cond_1

    .line 106
    const-string v10, "settings_more_information"

    invoke-virtual {p0, v10}, Lcom/android/settings/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 107
    .restart local v5    # "pc":Landroid/preference/PreferenceCategory;
    if-eqz v5, :cond_1

    .line 108
    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 120
    .end local v5    # "pc":Landroid/preference/PreferenceCategory;
    .end local v6    # "pf":Landroid/preference/Preference;
    .restart local v0    # "bar":Landroid/app/ActionBar;
    .restart local v2    # "deviceType":Ljava/lang/String;
    .restart local v4    # "isTablet":Z
    :cond_8
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto/16 :goto_2

    .line 142
    .end local v2    # "deviceType":Ljava/lang/String;
    .end local v4    # "isTablet":Z
    .restart local v1    # "cp":Landroid/preference/CheckBoxPreference;
    :cond_9
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 250
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 251
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x1

    const v1, 0x7f0a1652

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201f4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 256
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 241
    sget-object v0, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 245
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 246
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 260
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 271
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 263
    :pswitch_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "helphub:section"

    const-string v3, "writing_buddy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    invoke-virtual {p0, v1}, Lcom/android/settings/DirectPenInputSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 213
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 215
    const-string v5, "writingbuddymanagerservice"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/android/settings/DirectPenInputSettings;->startWritingBuddyService()V

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DirectPenInputSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    .line 219
    .local v2, "writingBuddyOn":Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    if-eq v5, v2, :cond_1

    .line 220
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 222
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/DirectPenInputSettings;->setPreferenceEnabled()V

    .line 223
    const-string v5, "input_language"

    invoke-virtual {p0, v5}, Lcom/android/settings/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 224
    .local v0, "pf":Landroid/preference/Preference;
    if-eqz v0, :cond_2

    .line 225
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->URI_INPUT_LANGUAGE:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "summary":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 228
    .end local v1    # "summary":Ljava/lang/String;
    :cond_2
    sget-object v5, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 229
    sget-object v5, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v4, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 232
    :cond_3
    return-void

    .end local v0    # "pf":Landroid/preference/Preference;
    .end local v2    # "writingBuddyOn":Z
    :cond_4
    move v2, v4

    .line 218
    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 236
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 237
    return-void
.end method

.method public showEnableDialog(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "withOffFunctions"    # Z

    .prologue
    const v4, 0x7f0a1157

    .line 421
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z

    .line 422
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a115b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a1158

    new-instance v3, Lcom/android/settings/DirectPenInputSettings$7;

    invoke-direct {v3, p0}, Lcom/android/settings/DirectPenInputSettings$7;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/DirectPenInputSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/DirectPenInputSettings$6;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 443
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_0

    .line 444
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->withOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 448
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 449
    return-void

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->withoutOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public turnOffTalkBack()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 391
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    iget-char v7, p0, Lcom/android/settings/DirectPenInputSettings;->enabledServicesSeparator:C

    invoke-direct {v4, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 392
    .local v4, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    iget-object v7, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_ENABLED:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, "enabledServicesSetting":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 414
    :cond_0
    :goto_0
    return v6

    .line 396
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .local v0, "builder":Ljava/lang/StringBuilder;
    move-object v1, v4

    .line 401
    .local v1, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 402
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 403
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "componentNameString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 405
    iget-char v6, p0, Lcom/android/settings/DirectPenInputSettings;->enabledServicesSeparator:C

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 407
    :cond_3
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->DEFAULT_SCREENREADER_NAME:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 408
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 411
    .end local v2    # "componentNameString":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_ENABLED:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 412
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.action.talkback_off"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v5, "talk_back_off":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 414
    const/4 v6, 0x1

    goto :goto_0
.end method
