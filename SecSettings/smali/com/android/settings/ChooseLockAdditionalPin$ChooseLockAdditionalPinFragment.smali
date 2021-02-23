.class public Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;
.super Landroid/app/Fragment;
.source "ChooseLockAdditionalPin.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockAdditionalPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockAdditionalPinFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;
    }
.end annotation


# instance fields
.field private isBlock:Z

.field private isFallback:Z

.field private isSetLockToSignature:Z

.field private isSignature:Z

.field private isSignatureOwnAdditionalPin:Z

.field private mBoundToSignService:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstLockQuality:I

.field private mFirstLockString:Ljava/lang/String;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockText:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mRequestedQuality:I

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSignService:Lcom/android/internal/policy/ISignServiceInterface;

.field private final mSignServiceRunningLock:Ljava/lang/Object;

.field private mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x20000

    const/4 v1, 0x0

    .line 207
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 127
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    .line 128
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    .line 129
    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLetters:I

    .line 130
    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinUpperCase:I

    .line 131
    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLowerCase:I

    .line 132
    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinSymbols:I

    .line 133
    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinNumeric:I

    .line 134
    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinNonLetter:I

    .line 136
    iput v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    .line 137
    iput v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    .line 138
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    .line 139
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isBlock:Z

    .line 140
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignature:Z

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    .line 146
    sget-object v0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    .line 167
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mBoundToSignService:Z

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mSignServiceRunningLock:Ljava/lang/Object;

    .line 171
    new-instance v0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$1;-><init>(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    .line 373
    new-instance v0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$3;-><init>(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mSignServiceRunningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)Lcom/android/internal/policy/ISignServiceInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;Lcom/android/internal/policy/ISignServiceInterface;)Lcom/android/internal/policy/ISignServiceInterface;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;
    .param p1, "x1"    # Lcom/android/internal/policy/ISignServiceInterface;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    return-object p1
.end method

.method private handleNext()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 479
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "pin":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    const/4 v0, 0x0

    .line 484
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v8, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v7, v8, :cond_3

    .line 485
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    if-nez v0, :cond_2

    .line 487
    iput-object v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    .line 488
    sget-object v5, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    .line 489
    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 557
    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-direct {p0, v0, v5}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->showError(Ljava/lang/String;Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    goto :goto_0

    .line 491
    :cond_3
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v8, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v7, v8, :cond_2

    .line 492
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 495
    iget-boolean v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    if-eqz v7, :cond_4

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "db_lockscreen_is_smart_lock"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 497
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->saveAdditionalPinForSignatureAndFinish(Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :cond_4
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v7

    if-nez v7, :cond_7

    move v1, v5

    .line 503
    .local v1, "lockVirgin":Z
    :goto_2
    iget-boolean v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isBlock:Z

    if-eqz v7, :cond_8

    .line 504
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 505
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v7}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 507
    :cond_5
    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockString:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    .line 509
    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPin(Ljava/lang/String;I)V

    .line 510
    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    iget-boolean v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    iget-boolean v9, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignature:Z

    iget-boolean v10, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isBlock:Z

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;ZZZ)V

    .line 511
    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 512
    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->setSmartUnlockEnabled(Z)V

    .line 513
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "db_lockscreen_is_smart_lock"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 534
    :goto_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 535
    .local v4, "warningClearIntent":Landroid/content/Intent;
    const-string v6, "android.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 539
    if-eqz v1, :cond_6

    .line 540
    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    .line 543
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Activity;->setResult(I)V

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 545
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v6, 0x64

    if-ge v5, v6, :cond_2

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v1    # "lockVirgin":Z
    .end local v4    # "warningClearIntent":Landroid/content/Intent;
    :cond_7
    move v1, v6

    .line 501
    goto/16 :goto_2

    .line 519
    .restart local v1    # "lockVirgin":Z
    :cond_8
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->clearLockExceptPwd(Z)V

    .line 520
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 521
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->clearLockExceptPwd(Z)V

    .line 526
    :goto_4
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v7, v2, v8}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPin(Ljava/lang/String;I)V

    .line 528
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockString:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    .line 529
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    iget-boolean v9, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Z)V

    .line 530
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 531
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "db_lockscreen_is_smart_lock"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 523
    :cond_9
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    goto :goto_4

    .line 549
    .end local v1    # "lockVirgin":Z
    :cond_a
    sget-object v5, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    .line 550
    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 551
    .local v3, "tmp":Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    move-object v5, v3

    .line 552
    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_1
.end method

.method private saveAdditionalPinForSignatureAndFinish(Ljava/lang/String;)V
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 648
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->saveSignatureBackupPin(Ljava/lang/String;)V

    .line 651
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSetLockToSignature:Z

    if-eqz v0, :cond_0

    .line 652
    invoke-direct {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->saveRealSignatureData()V

    .line 653
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 654
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockAsSignature(Z)V

    .line 657
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 658
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 659
    return-void
.end method

.method private saveRealSignatureData()V
    .locals 2

    .prologue
    .line 641
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/ISignServiceInterface;->replaceSignatureData()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :goto_0
    return-void

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "next"    # Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    .prologue
    const/4 v2, 0x1

    .line 577
    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 579
    .local v0, "mesg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 580
    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 581
    return-void
.end method

.method private updateUi()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 598
    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 599
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 601
    .local v1, "length":I
    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v7, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v6, v7, :cond_2

    if-lez v1, :cond_2

    .line 602
    iget v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    if-ge v1, v6, :cond_0

    .line 603
    const v6, 0x7f0a02ac

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {p0, v6, v4}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v4, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 620
    .end local v2    # "msg":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iget v5, v5, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->buttonText:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 621
    return-void

    .line 607
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 609
    iget-object v4, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v4, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 612
    :cond_1
    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f0a02ad

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 613
    iget-object v5, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 617
    .end local v0    # "error":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iget v7, v7, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->numericHint:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 618
    iget-object v6, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    if-lez v1, :cond_3

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 429
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    if-ge v7, v8, :cond_1

    .line 430
    const v6, 0x7f0a02ac

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 475
    :cond_0
    :goto_0
    return-object v6

    .line 432
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    if-le v7, v8, :cond_2

    .line 433
    const v6, 0x7f0a02b0

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 435
    :cond_2
    const/4 v2, 0x0

    .line 436
    .local v2, "letters":I
    const/4 v4, 0x0

    .line 437
    .local v4, "numbers":I
    const/4 v5, 0x0

    .line 438
    .local v5, "symbols":I
    const/4 v3, 0x0

    .line 439
    .local v3, "nonletter":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_8

    .line 440
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 442
    .local v0, "c":C
    const/16 v7, 0x20

    if-le v0, v7, :cond_3

    const/16 v7, 0x7f

    if-le v0, v7, :cond_4

    .line 443
    :cond_3
    const v6, 0x7f0a02b3

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 445
    :cond_4
    const/16 v7, 0x30

    if-lt v0, v7, :cond_5

    const/16 v7, 0x39

    if-gt v0, v7, :cond_5

    .line 446
    add-int/lit8 v4, v4, 0x1

    .line 447
    add-int/lit8 v3, v3, 0x1

    .line 439
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 448
    :cond_5
    const/16 v7, 0x41

    if-lt v0, v7, :cond_6

    const/16 v7, 0x5a

    if-gt v0, v7, :cond_6

    .line 449
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 450
    :cond_6
    const/16 v7, 0x61

    if-lt v0, v7, :cond_7

    const/16 v7, 0x7a

    if-gt v0, v7, :cond_7

    .line 451
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 453
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 454
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 457
    .end local v0    # "c":C
    :cond_8
    const/high16 v7, 0x20000

    iget v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    if-ne v7, v8, :cond_a

    if-gtz v2, :cond_9

    if-lez v5, :cond_a

    .line 461
    :cond_9
    const v6, 0x7f0a02b1

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 462
    :cond_a
    const/high16 v7, 0x70000

    iget v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    if-ne v7, v8, :cond_c

    .line 465
    if-gtz v2, :cond_b

    if-lez v5, :cond_0

    .line 466
    :cond_b
    const v6, 0x7f0a027e

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 472
    :cond_c
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 473
    const v6, 0x7f0a02b2

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 626
    sget-object v0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    .line 628
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateUi()V

    .line 629
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 633
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 405
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 406
    const-string v0, "ChooseLockAdditionalPin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    packed-switch p1, :pswitch_data_0

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 409
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 411
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 407
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 562
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 574
    :goto_0
    return-void

    .line 564
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->handleNext()V

    goto :goto_0

    .line 569
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 570
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 562
    :pswitch_data_0
    .packed-switch 0x7f10009c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 213
    iget-object v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "pin":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 215
    .local v0, "cursorPos":I
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->onDestroyView()V

    .line 216
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 224
    :cond_0
    const-string v2, ""

    iget-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 229
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v4, 0x10000

    const/4 v3, 0x0

    .line 233
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 234
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 237
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    .line 238
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    .line 239
    const-string v1, "firstlock"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockString:Ljava/lang/String;

    .line 240
    const-string v1, "lockscreen.password_min"

    iget v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    .line 241
    const-string v1, "lockscreen.password_max"

    iget v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    .line 242
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    .line 243
    const-string v1, "Block"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isBlock:Z

    .line 244
    const-string v1, "lockscreen.signature_fallback"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignature:Z

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 247
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    .line 249
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 251
    const-string v1, "SignatureOwnAdditionalPin"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    .line 252
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    if-eqz v1, :cond_0

    .line 253
    const-string v1, "SignatureLockSetting"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSetLockToSignature:Z

    .line 254
    iput v4, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    .line 255
    iput v4, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    .line 256
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    .line 257
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    .line 259
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 265
    const v7, 0x7f04003c

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 266
    .local v6, "view":Landroid/view/View;
    invoke-static {v11}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 267
    instance-of v7, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v7, :cond_0

    .line 268
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v10, v7, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 270
    :cond_0
    const v7, 0x7f10009c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mCancelButton:Landroid/widget/Button;

    .line 271
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    const v7, 0x7f10009d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    .line 274
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    const v7, 0x7f10009e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 278
    const v7, 0x7f10009a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 279
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setWritingBuddyEnabled(Z)V

    .line 280
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 281
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 282
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v8, 0x2000000

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 285
    .local v0, "activity":Landroid/app/Activity;
    new-instance v7, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v8, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v9, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v7, v0, v8, v9}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 287
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    invoke-virtual {v7, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 289
    const v7, 0x7f100099

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    .line 290
    const v7, 0x7f10009b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    .line 291
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v7}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 293
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v8, 0x12

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setInputType(I)V

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 297
    .local v2, "intent":Landroid/content/Intent;
    if-nez p3, :cond_3

    .line 298
    sget-object v7, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    .line 309
    :cond_1
    :goto_0
    instance-of v7, v0, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_2

    move-object v3, v0

    .line 310
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 311
    .local v3, "preferenceActivity":Landroid/preference/PreferenceActivity;
    const v1, 0x7f0a1595

    .line 312
    .local v1, "id":I
    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 313
    .local v5, "title":Ljava/lang/CharSequence;
    invoke-virtual {v3, v5, v5}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 314
    invoke-static {v11}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 315
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 318
    .end local v1    # "id":I
    .end local v3    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v8, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$2;

    invoke-direct {v8, p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$2;-><init>(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 331
    return-object v6

    .line 301
    :cond_3
    const-string v7, "first_pin"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    .line 302
    const-string v7, "ui_stage"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, "state":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 304
    invoke-static {v4}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    .line 305
    iget-object v7, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 585
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 588
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->handleNext()V

    .line 589
    const/4 v0, 0x1

    .line 591
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 360
    iget-object v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 363
    const-string v0, "ChooseLockAdditionalPin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause: mBoundToSignService is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mBoundToSignService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mBoundToSignService:Z

    if-ne v0, v3, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mBoundToSignService:Z

    .line 370
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 371
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 337
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 338
    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    .line 339
    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 342
    const-string v1, "ChooseLockAdditionalPin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume: mBoundToSignService is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mBoundToSignService:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mBoundToSignService:Z

    if-nez v1, :cond_0

    .line 344
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.signaturelock"

    const-string v3, "com.sec.android.signaturelock.SignService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 348
    iput-boolean v4, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mBoundToSignService:Z

    .line 351
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    if-eqz v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    const v2, 0x7f0a1597

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    const v2, 0x7f0a1596

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 397
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 398
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 637
    return-void
.end method

.method protected updateStage(Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V
    .locals 0
    .param p1, "stage"    # Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    .line 419
    invoke-direct {p0}, Lcom/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateUi()V

    .line 420
    return-void
.end method
