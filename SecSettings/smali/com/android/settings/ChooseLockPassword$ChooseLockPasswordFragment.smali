.class public Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
.super Landroid/app/Fragment;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    }
.end annotation


# instance fields
.field private cacCardLocked:Z

.field private cacRegistrationComplete:Z

.field private cacRegistrationError:Z

.field private cacRegistrationResult:Ljava/lang/String;

.field clickedEmergencyCall:Z

.field private hasPwdPatternRestriction:Z

.field private isB2CContainer:Z

.field private isRecovery:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mCacChosen:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mCheckSimplePassword:Z

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field mDialog:Landroid/app/ProgressDialog;

.field private mDone:Z

.field private mEmergencyCall:Landroid/widget/Button;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAlphaMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mOldPassword:Ljava/lang/String;

.field private mOrientation:I

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPwdChangeEnforceStatus:I

.field private mPwdChangeTimeout:I

.field private mRequestedQuality:I

.field private mStatusBarDisableCount:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTelMgr:Landroid/telephony/TelephonyManager;

.field private mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field private personaInfo:Landroid/content/pm/PersonaInfo;

.field private setKnoxBackupPinComplete:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 355
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 239
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 240
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 241
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 242
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 243
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 244
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 245
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 246
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 247
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->isRecovery:Z

    .line 248
    iput-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Ljava/lang/String;

    .line 250
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 252
    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 253
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    .line 271
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    .line 272
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationComplete:Z

    .line 273
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacCardLocked:Z

    .line 275
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    .line 277
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mOrientation:I

    .line 283
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    .line 284
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    .line 286
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->clickedEmergencyCall:Z

    .line 287
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    .line 289
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    .line 294
    iput-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->personaInfo:Landroid/content/pm/PersonaInfo;

    .line 295
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setKnoxBackupPinComplete:Z

    .line 296
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->isB2CContainer:Z

    .line 299
    new-instance v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;-><init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 315
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    .line 357
    return-void
.end method

.method static synthetic access$1002(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacCardLocked:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 231
    iget v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mOrientation:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
    .param p1, "x1"    # I

    .prologue
    .line 231
    iput p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mOrientation:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getDeviceOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/inputmethodservice/KeyboardView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationComplete:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationResult:Ljava/lang/String;

    return-object p1
.end method

.method private checkRepeatingChars(Ljava/lang/String;)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 972
    const/4 v2, 0x0

    .line 974
    .local v2, "nLoop":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_2

    .line 975
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 976
    .local v0, "beforeChar":C
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 977
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 979
    :goto_1
    const/4 v5, 0x3

    if-lt v2, v5, :cond_1

    .line 980
    const-string v4, "ChooseLockPassword"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "has internal loop password : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    .end local v0    # "beforeChar":C
    .end local v1    # "i":I
    :goto_2
    return v3

    .line 978
    .restart local v0    # "beforeChar":C
    .restart local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 983
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 976
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "beforeChar":C
    .end local v1    # "i":I
    :cond_2
    move v3, v4

    .line 986
    goto :goto_2
.end method

.method private checkSequentialChars(Ljava/lang/String;)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 948
    const-string v5, "0123456789"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x4

    .line 949
    .local v1, "maxLoop":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 950
    const-string v5, "0123456789"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 951
    .local v2, "pattern":Ljava/lang/String;
    const-string v5, "9876543210"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 952
    .local v3, "reversePattern":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 953
    :cond_0
    const-string v5, "ChooseLockPassword"

    const-string v6, "has Sequential password"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "reversePattern":Ljava/lang/String;
    :goto_1
    return v4

    .line 949
    .restart local v2    # "pattern":Ljava/lang/String;
    .restart local v3    # "reversePattern":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 958
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "reversePattern":Ljava/lang/String;
    :cond_2
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x4

    .line 959
    const/4 v0, 0x0

    :goto_2
    if-gt v0, v1, :cond_5

    .line 960
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 961
    .restart local v2    # "pattern":Ljava/lang/String;
    const-string v5, "zyxwvutsrqponmlkjihgfedcba"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 962
    .restart local v3    # "reversePattern":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 963
    :cond_3
    const-string v5, "ChooseLockPassword"

    const-string v6, "has Sequential password"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 959
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 968
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "reversePattern":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private disableStatusBar()V
    .locals 2

    .prologue
    .line 1547
    monitor-enter p0

    .line 1548
    :try_start_0
    iget v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    .line 1549
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1551
    :cond_0
    monitor-exit p0

    .line 1552
    return-void

    .line 1551
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private executeCacRegistration(Ljava/lang/String;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 1175
    new-instance v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;-><init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1275
    return-void
.end method

.method private getDeviceOrientation()I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1145
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 1146
    .local v1, "orientation":I
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 1147
    .local v2, "rotation":I
    const/4 v0, -0x1

    .line 1151
    .local v0, "actual_orientation":I
    if-ne v1, v5, :cond_2

    if-eqz v2, :cond_0

    if-ne v2, v4, :cond_2

    .line 1154
    :cond_0
    const/4 v0, 0x0

    .line 1171
    :cond_1
    :goto_0
    return v0

    .line 1155
    :cond_2
    if-ne v1, v4, :cond_4

    if-eqz v2, :cond_3

    if-ne v2, v4, :cond_4

    .line 1158
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1159
    :cond_4
    if-ne v1, v5, :cond_6

    if-eq v2, v5, :cond_5

    if-ne v2, v6, :cond_6

    .line 1162
    :cond_5
    const/16 v0, 0x8

    goto :goto_0

    .line 1164
    :cond_6
    if-ne v1, v4, :cond_1

    if-eq v2, v5, :cond_7

    if-ne v2, v6, :cond_1

    .line 1167
    :cond_7
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private handleNext()V
    .locals 17

    .prologue
    .line 991
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    if-eqz v1, :cond_1

    .line 1140
    :cond_0
    :goto_0
    return-void

    .line 993
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 994
    .local v12, "pin":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 997
    const/4 v7, 0x0

    .line 998
    .local v7, "errorMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_3

    .line 999
    const-string v1, "ChooseLockPassword"

    const-string v2, "Stage Introduction: "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationComplete:Z

    .line 1001
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1002
    if-nez v7, :cond_2

    .line 1003
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 1004
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 1133
    :cond_2
    :goto_1
    if-eqz v7, :cond_0

    .line 1134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->showError(Ljava/lang/String;Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 1136
    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Changing/creating screen lock password failed"

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1008
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_f

    .line 1010
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->isB2CContainer:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setKnoxBackupPinComplete:Z

    if-nez v1, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v2, 0x40000

    if-lt v1, v2, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v2, 0x60000

    if-gt v1, v2, :cond_4

    .line 1012
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1013
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1014
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/KnoxChooseLockBackupPin;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1015
    const/16 v1, 0x400

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1021
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1023
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_6

    .line 1025
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 1026
    const-string v1, "ChooseLockPassword"

    const-string v2, "Stage confirm cac pin failed: "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1028
    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 1029
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto/16 :goto_0

    .line 1033
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationComplete:Z

    if-nez v1, :cond_6

    .line 1034
    const-string v1, "ChooseLockPassword"

    const-string v2, "Stage confirm cac pin to be executed: "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->executeCacRegistration(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1040
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "lockscreen.biometric_weak_fallback"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 1042
    .local v10, "isFallback":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_require_password"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 1044
    .local v13, "required":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v13}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 1045
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Block"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 1047
    .local v9, "isBlock":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "lockscreen.signature_fallback"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 1052
    .local v11, "isSignature":Z
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_9

    .line 1054
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v10}, Lcom/android/internal/widget/LockPatternUtils;->clearLockExceptPwd(Z)V

    .line 1060
    :goto_2
    if-eqz v9, :cond_a

    .line 1061
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v1, v12, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPin(Ljava/lang/String;I)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockSmartUnlock()V

    .line 1063
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSmartUnlockEnabled(Z)V

    .line 1064
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "db_lockscreen_is_smart_lock"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1072
    :goto_3
    if-nez v10, :cond_7

    if-nez v11, :cond_7

    .line 1073
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 1074
    .local v16, "warningClearIntent":Landroid/content/Intent;
    const-string v1, "android.settings.SECURITY_WARNING_CLEAR"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1075
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1081
    .end local v16    # "warningClearIntent":Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1082
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_smpw_key"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1089
    :goto_4
    new-instance v8, Landroid/content/Intent;

    const-string v1, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1090
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v1, v2, v8, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v14

    .line 1092
    .local v14, "sender":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v14}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1093
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v3, "setPwdChangeRequested"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->setEnterprisePolicyInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1098
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "lockscreen.biometric_weak_with_voice_fallback"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1099
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_face_with_voice"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1105
    :goto_5
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->sendIntentToKnoxKeyguard(I)V

    .line 1108
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 1109
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1110
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    .line 1113
    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Changing/creating screen lock password succeeded"

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1117
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_2

    .line 1118
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1056
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v14    # "sender":Landroid/app/PendingIntent;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v10}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    goto/16 :goto_2

    .line 1067
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v1, v12, v2, v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZZ)V

    .line 1068
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "db_lockscreen_is_smart_lock"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1084
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_smpw_key"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 1101
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v14    # "sender":Landroid/app/PendingIntent;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_face_with_voice"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_5

    .line 1121
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "isBlock":Z
    .end local v10    # "isFallback":Z
    .end local v11    # "isSignature":Z
    .end local v13    # "required":Z
    .end local v14    # "sender":Landroid/app/PendingIntent;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    .line 1122
    .local v15, "tmp":Ljava/lang/CharSequence;
    if-eqz v15, :cond_e

    move-object v1, v15

    .line 1123
    check-cast v1, Landroid/text/Spannable;

    const/4 v2, 0x0

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1125
    :cond_e
    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto/16 :goto_1

    .line 1129
    .end local v15    # "tmp":Ljava/lang/CharSequence;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_2

    .line 1130
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->executeCacRegistration(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private reenableStatusBar()V
    .locals 2

    .prologue
    .line 1560
    monitor-enter p0

    .line 1561
    :try_start_0
    iget v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    if-lez v0, :cond_0

    .line 1562
    iget v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    .line 1563
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1566
    :cond_0
    monitor-exit p0

    .line 1567
    return-void

    .line 1566
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private scheduleNextPwdChange(II)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 1388
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const v6, 0xea60

    mul-int/2addr v6, p2

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 1389
    .local v2, "when":J
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1390
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v4, v5, v0, v6, v7}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1392
    .local v1, "sender":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1394
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v6, "setPwdChangeRequested"

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings/Utils;->setEnterprisePolicyInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1396
    return-void
.end method

.method private sendIntentToKnoxKeyguard(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    .line 1401
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1402
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.containeragent2.PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1403
    .local v0, "knoxIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.knox.containeragent2"

    const-string v3, "com.sec.knox.containeragent2.ui.keyguard.KnoxKeyguardReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1404
    const-string v1, "resetResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1405
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1406
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1408
    .end local v0    # "knoxIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "next"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    const/4 v3, 0x1

    .line 1412
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1414
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1415
    .local v0, "mesg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1416
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1417
    return-void
.end method

.method private updateUi()V
    .locals 11

    .prologue
    const/16 v10, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1434
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1435
    .local v5, "password":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 1438
    .local v3, "length":I
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-lt v8, v7, :cond_2

    .line 1440
    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    if-gtz v8, :cond_0

    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-eq v8, v7, :cond_1

    :cond_0
    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    const/4 v9, 0x2

    if-lt v8, v9, :cond_3

    :cond_1
    move v1, v7

    .line 1445
    .local v1, "enforceWithoutCancel":Z
    :goto_0
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v9, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v8, v9, :cond_4

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-ge v8, v10, :cond_4

    .line 1446
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v8, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1447
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v8, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 1455
    .end local v1    # "enforceWithoutCancel":Z
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v9, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v8, v9, :cond_a

    if-lez v3, :cond_a

    .line 1457
    iget-boolean v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacCardLocked:Z

    if-nez v8, :cond_5

    .line 1458
    const-string v8, "ChooseLockPassword"

    const-string v9, "CAC registration not locked: "

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    iget-boolean v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    if-eqz v8, :cond_5

    .line 1461
    const-string v6, "ChooseLockPassword"

    const-string v8, "CAC registration not locked enable next: "

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1463
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setClickable(Z)V

    .line 1464
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v7, v7, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 1517
    :goto_2
    return-void

    :cond_3
    move v1, v6

    .line 1440
    goto :goto_0

    .line 1449
    .restart local v1    # "enforceWithoutCancel":Z
    :cond_4
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1450
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_1

    .line 1470
    .end local v1    # "enforceWithoutCancel":Z
    :cond_5
    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v3, v8, :cond_8

    iget-boolean v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    if-nez v8, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-ge v8, v10, :cond_8

    .line 1472
    const/4 v4, 0x0

    .line 1474
    .local v4, "msg":Ljava/lang/String;
    :try_start_0
    iget-boolean v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v7, :cond_7

    const v7, 0x7f0a02ab

    :goto_3
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1479
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1480
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1516
    .end local v4    # "msg":Ljava/lang/String;
    :cond_6
    :goto_4
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v7, v7, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 1474
    .restart local v4    # "msg":Ljava/lang/String;
    :cond_7
    const v7, 0x7f0a02ac

    goto :goto_3

    .line 1476
    :catch_0
    move-exception v0

    .line 1477
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1479
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1480
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    .line 1479
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1480
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v8, v6}, Landroid/widget/Button;->setEnabled(Z)V

    throw v7

    .line 1483
    .end local v4    # "msg":Ljava/lang/String;
    :cond_8
    invoke-direct {p0, v5}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1484
    .local v2, "error":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 1485
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1486
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    .line 1489
    :cond_9
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacCardLocked:Z

    if-nez v6, :cond_6

    .line 1490
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v8, 0x7f0a02ad

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1491
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    .line 1499
    .end local v2    # "error":Ljava/lang/String;
    :cond_a
    iget-boolean v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    if-eqz v8, :cond_c

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-ge v8, v10, :cond_c

    .line 1501
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v9, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v8, v9, :cond_b

    iget-boolean v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    if-ne v8, v7, :cond_b

    .line 1502
    const-string v8, "ChooseLockPassword"

    const-string v9, "CAC registration error back to Select: "

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationResult:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1508
    :goto_5
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    .line 1514
    :goto_6
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    if-lez v3, :cond_e

    :goto_7
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    .line 1506
    :cond_b
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v9, v9, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->cacNumeric:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 1511
    :cond_c
    iget-object v9, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v8, v8, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    :goto_8
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    :cond_d
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v8, v8, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    goto :goto_8

    :cond_e
    move v7, v6

    .line 1514
    goto :goto_7
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 34
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 736
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    move/from16 v30, v0

    if-nez v30, :cond_b

    .line 737
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    move/from16 v30, v0

    if-eqz v30, :cond_7

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 739
    const v30, 0x7f0a138b

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 942
    :goto_0
    return-object v30

    .line 741
    :cond_0
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v30, 0x0

    aput-object p1, v24, v30

    .line 742
    .local v24, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v32, "hasForbiddenNumericSequence"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 743
    .local v15, "hasForbiddenNumericSequence":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v32, "getMaximumNumericSequenceLength"

    const/16 v33, 0x0

    invoke-static/range {v30 .. v33}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 744
    .local v11, "getMaximumNumericSequenceLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v32, "hasForbiddenCharacterSequence"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 745
    .local v13, "hasForbiddenCharacterSequence":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v32, "getMaximumCharacterSequenceLength"

    const/16 v33, 0x0

    invoke-static/range {v30 .. v33}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 746
    .local v10, "getMaximumCharacterSequenceLength":I
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v30, 0x0

    aput-object p1, v26, v30

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Ljava/lang/String;

    move-object/from16 v31, v0

    aput-object v31, v26, v30

    .line 747
    .local v26, "selectionArgsStrDist":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v32, "hasForbiddenStringDistance"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 748
    .local v16, "hasForbiddenStringDistance":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v32, "getMinimumCharacterChangeLength"

    const/16 v33, 0x0

    invoke-static/range {v30 .. v33}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 749
    .local v12, "getMinimumCharacterChangeLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v32, "hasForbiddenData"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 750
    .local v14, "hasForbiddenData":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v32, "hasMaxRepeatedCharacters"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 751
    .local v17, "hasMaxRepeatedCharacters":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v32, "getMaximumCharacterOccurences"

    const/16 v33, 0x0

    invoke-static/range {v30 .. v33}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 752
    .local v9, "getMaximumCharacterOccurences":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v32, "isPasswordPatternMatched"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    .line 754
    .local v19, "isPasswordPatternMatched":I
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v15, v0, :cond_1

    .line 755
    const v30, 0x7f0a1d53

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    add-int/lit8 v33, v11, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 757
    :cond_1
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v13, v0, :cond_2

    .line 758
    const v30, 0x7f0a1d52

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    add-int/lit8 v33, v10, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 760
    :cond_2
    const/16 v30, 0x1

    move/from16 v0, v16

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    .line 761
    const v30, 0x7f0a1d54

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 763
    :cond_3
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v14, v0, :cond_4

    .line 764
    const v30, 0x7f0a1d50

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 766
    :cond_4
    const/16 v30, 0x1

    move/from16 v0, v17

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    .line 767
    const v30, 0x7f0a1d51

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 769
    :cond_5
    if-nez v19, :cond_6

    .line 770
    const v30, 0x7f0a02b7

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 772
    :cond_6
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 777
    .end local v9    # "getMaximumCharacterOccurences":I
    .end local v10    # "getMaximumCharacterSequenceLength":I
    .end local v11    # "getMaximumNumericSequenceLength":I
    .end local v12    # "getMinimumCharacterChangeLength":I
    .end local v13    # "hasForbiddenCharacterSequence":I
    .end local v14    # "hasForbiddenData":I
    .end local v15    # "hasForbiddenNumericSequence":I
    .end local v16    # "hasForbiddenStringDistance":I
    .end local v17    # "hasMaxRepeatedCharacters":I
    .end local v19    # "isPasswordPatternMatched":I
    .end local v24    # "selectionArgs":[Ljava/lang/String;
    .end local v26    # "selectionArgsStrDist":[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    move/from16 v30, v0

    if-eqz v30, :cond_b

    .line 778
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_9

    .line 779
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_8

    const v30, 0x7f0a138d

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    :cond_8
    const v30, 0x7f0a138f

    goto :goto_1

    .line 783
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_b

    .line 784
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_a

    const v30, 0x7f0a138c

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    :cond_a
    const v30, 0x7f0a138e

    goto :goto_2

    .line 791
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_d

    .line 792
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_c

    const v30, 0x7f0a02ab

    :goto_3
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    :cond_c
    const v30, 0x7f0a02ac

    goto :goto_3

    .line 796
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_f

    .line 797
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_e

    const v30, 0x7f0a02af

    :goto_4
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    :cond_e
    const v30, 0x7f0a02b0

    goto :goto_4

    .line 801
    :cond_f
    const/16 v20, 0x0

    .line 802
    .local v20, "letters":I
    const/16 v23, 0x0

    .line 803
    .local v23, "numbers":I
    const/16 v21, 0x0

    .line 804
    .local v21, "lowercase":I
    const/16 v28, 0x0

    .line 805
    .local v28, "symbols":I
    const/16 v29, 0x0

    .line 806
    .local v29, "uppercase":I
    const/16 v22, 0x0

    .line 807
    .local v22, "nonletter":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_15

    .line 808
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 810
    .local v6, "c":C
    const/16 v30, 0x20

    move/from16 v0, v30

    if-lt v6, v0, :cond_10

    const/16 v30, 0x7f

    move/from16 v0, v30

    if-le v6, v0, :cond_11

    .line 811
    :cond_10
    const v30, 0x7f0a02b3

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 813
    :cond_11
    const/16 v30, 0x30

    move/from16 v0, v30

    if-lt v6, v0, :cond_12

    const/16 v30, 0x39

    move/from16 v0, v30

    if-gt v6, v0, :cond_12

    .line 814
    add-int/lit8 v23, v23, 0x1

    .line 815
    add-int/lit8 v22, v22, 0x1

    .line 807
    :goto_6
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 816
    :cond_12
    const/16 v30, 0x41

    move/from16 v0, v30

    if-lt v6, v0, :cond_13

    const/16 v30, 0x5a

    move/from16 v0, v30

    if-gt v6, v0, :cond_13

    .line 817
    add-int/lit8 v20, v20, 0x1

    .line 818
    add-int/lit8 v29, v29, 0x1

    goto :goto_6

    .line 819
    :cond_13
    const/16 v30, 0x61

    move/from16 v0, v30

    if-lt v6, v0, :cond_14

    const/16 v30, 0x7a

    move/from16 v0, v30

    if-gt v6, v0, :cond_14

    .line 820
    add-int/lit8 v20, v20, 0x1

    .line 821
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 823
    :cond_14
    add-int/lit8 v28, v28, 0x1

    .line 824
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 827
    .end local v6    # "c":C
    :cond_15
    const/high16 v30, 0x20000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_16

    const/high16 v30, 0x30000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_19

    .line 829
    :cond_16
    if-gtz v20, :cond_17

    if-lez v28, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    move/from16 v30, v0

    if-gtz v30, :cond_18

    .line 832
    const v30, 0x7f0a02b1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 835
    :cond_18
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    move-result v27

    .line 837
    .local v27, "sequence":I
    const/high16 v30, 0x30000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_27

    const/16 v30, 0x3

    move/from16 v0, v27

    move/from16 v1, v30

    if-le v0, v1, :cond_27

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v30

    const/16 v31, 0x64

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_27

    .line 840
    const v30, 0x7f0a02b9

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 842
    .end local v27    # "sequence":I
    :cond_19
    const/high16 v30, 0x60000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1f

    .line 843
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    move/from16 v30, v0

    move/from16 v0, v20

    move/from16 v1, v30

    if-ge v0, v1, :cond_1a

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f110001

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    move/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 847
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    move/from16 v30, v0

    move/from16 v0, v23

    move/from16 v1, v30

    if-ge v0, v1, :cond_1b

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f110004

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    move/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 851
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    move/from16 v30, v0

    move/from16 v0, v21

    move/from16 v1, v30

    if-ge v0, v1, :cond_1c

    .line 852
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f110002

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    move/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 855
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_1d

    .line 856
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f110003

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    move/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 859
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    move/from16 v30, v0

    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_1e

    .line 860
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f110005

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    move/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 863
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    move/from16 v30, v0

    move/from16 v0, v22

    move/from16 v1, v30

    if-ge v0, v1, :cond_27

    .line 864
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f110006

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    move/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 869
    :cond_1f
    const/high16 v30, 0x70000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_22

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v30

    const/16 v31, 0x64

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_22

    .line 875
    if-gtz v20, :cond_20

    if-lez v28, :cond_21

    .line 876
    :cond_20
    const v30, 0x7f0a027e

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 878
    :cond_21
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 881
    :cond_22
    const/high16 v30, 0x40000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_24

    const/4 v4, 0x1

    .line 883
    .local v4, "alphabetic":Z
    :goto_7
    const/high16 v30, 0x50000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_25

    const/4 v5, 0x1

    .line 885
    .local v5, "alphanumeric":Z
    :goto_8
    if-nez v4, :cond_23

    if-eqz v5, :cond_26

    :cond_23
    if-nez v20, :cond_26

    .line 887
    const v30, 0x7f0a02b4

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v30

    goto/16 :goto_0

    .line 881
    .end local v4    # "alphabetic":Z
    .end local v5    # "alphanumeric":Z
    :cond_24
    const/4 v4, 0x0

    goto :goto_7

    .line 883
    .restart local v4    # "alphabetic":Z
    :cond_25
    const/4 v5, 0x0

    goto :goto_8

    .line 888
    .restart local v5    # "alphanumeric":Z
    :catch_0
    move-exception v7

    .line 889
    .local v7, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 892
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :cond_26
    if-eqz v5, :cond_27

    if-nez v23, :cond_27

    .line 893
    const v30, 0x7f0a02b5

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 896
    .end local v4    # "alphabetic":Z
    .end local v5    # "alphanumeric":Z
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_29

    .line 897
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_28

    const v30, 0x7f0a02b8

    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    :cond_28
    const v30, 0x7f0a02b2

    goto :goto_9

    .line 901
    :cond_29
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v30, 0x0

    const-string v31, "true"

    aput-object v31, v25, v30

    .line 902
    .local v25, "selectionArgsForbStr":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v32, "getForbiddenStrings"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 904
    .local v8, "getForbiddenStrings":I
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v30, 0x0

    aput-object p1, v24, v30

    .line 905
    .restart local v24    # "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v32, "hasForbiddenNumericSequence"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 906
    .restart local v15    # "hasForbiddenNumericSequence":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v32, "getMaximumNumericSequenceLength"

    const/16 v33, 0x0

    invoke-static/range {v30 .. v33}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 907
    .restart local v11    # "getMaximumNumericSequenceLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v32, "hasForbiddenCharacterSequence"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 908
    .restart local v13    # "hasForbiddenCharacterSequence":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v32, "getMaximumCharacterSequenceLength"

    const/16 v33, 0x0

    invoke-static/range {v30 .. v33}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 909
    .restart local v10    # "getMaximumCharacterSequenceLength":I
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v30, 0x0

    aput-object p1, v26, v30

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Ljava/lang/String;

    move-object/from16 v31, v0

    aput-object v31, v26, v30

    .line 910
    .restart local v26    # "selectionArgsStrDist":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v32, "hasForbiddenStringDistance"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 911
    .restart local v16    # "hasForbiddenStringDistance":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v32, "getMinimumCharacterChangeLength"

    const/16 v33, 0x0

    invoke-static/range {v30 .. v33}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 912
    .restart local v12    # "getMinimumCharacterChangeLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v32, "hasForbiddenData"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 913
    .restart local v14    # "hasForbiddenData":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v32, "hasMaxRepeatedCharacters"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 914
    .restart local v17    # "hasMaxRepeatedCharacters":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v32, "getMaximumCharacterOccurences"

    const/16 v33, 0x0

    invoke-static/range {v30 .. v33}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 915
    .restart local v9    # "getMaximumCharacterOccurences":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v32, "isPasswordPatternMatched"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    .line 917
    .restart local v19    # "isPasswordPatternMatched":I
    if-nez v11, :cond_2a

    const/16 v30, -0x1

    move/from16 v0, v30

    if-ne v8, v0, :cond_2a

    if-nez v9, :cond_2a

    if-nez v10, :cond_2a

    if-eqz v12, :cond_30

    .line 922
    :cond_2a
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v15, v0, :cond_2b

    .line 923
    const v30, 0x7f0a1d53

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    add-int/lit8 v33, v11, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 925
    :cond_2b
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v13, v0, :cond_2c

    .line 926
    const v30, 0x7f0a1d52

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    add-int/lit8 v33, v10, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 928
    :cond_2c
    const/16 v30, 0x1

    move/from16 v0, v16

    move/from16 v1, v30

    if-ne v0, v1, :cond_2d

    .line 929
    const v30, 0x7f0a1d54

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 931
    :cond_2d
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v14, v0, :cond_2e

    .line 932
    const v30, 0x7f0a1d50

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 934
    :cond_2e
    const/16 v30, 0x1

    move/from16 v0, v17

    move/from16 v1, v30

    if-ne v0, v1, :cond_2f

    .line 935
    const v30, 0x7f0a1d51

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 937
    :cond_2f
    if-nez v19, :cond_30

    .line 938
    const v30, 0x7f0a02b7

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 942
    :cond_30
    const/16 v30, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1524
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    if-nez v0, :cond_1

    .line 1525
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 1526
    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 1528
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 1530
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1534
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 687
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 688
    sparse-switch p1, :sswitch_data_0

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 690
    :sswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 693
    invoke-direct {p0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->sendIntentToKnoxKeyguard(I)V

    .line 696
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 697
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 702
    :sswitch_1
    if-eqz p2, :cond_1

    .line 703
    iput-boolean v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setKnoxBackupPinComplete:Z

    .line 704
    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0

    .line 706
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setKnoxBackupPinComplete:Z

    .line 707
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0

    .line 688
    nop

    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_0
        0x400 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 1279
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 1383
    :cond_0
    :goto_0
    return-void

    .line 1281
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 1286
    :sswitch_1
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1289
    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-lt v8, v1, :cond_7

    .line 1291
    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    if-gtz v8, :cond_1

    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-eq v8, v1, :cond_2

    :cond_1
    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-lt v8, v10, :cond_5

    .line 1295
    .local v1, "enforceWithoutCancel":Z
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v9, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v8, v9, :cond_6

    .line 1297
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/16 v9, 0x64

    if-lt v8, v9, :cond_4

    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    if-lez v8, :cond_3

    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-ne v8, v10, :cond_4

    .line 1300
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->sendIntentToKnoxKeyguard(I)V

    .line 1301
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->setResult(I)V

    .line 1302
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 1304
    :cond_4
    if-nez v1, :cond_0

    .line 1306
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    iget v9, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    invoke-direct {p0, v8, v9}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->scheduleNextPwdChange(II)V

    .line 1309
    invoke-direct {p0, v7}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->sendIntentToKnoxKeyguard(I)V

    .line 1312
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->setResult(I)V

    .line 1313
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .end local v1    # "enforceWithoutCancel":Z
    :cond_5
    move v1, v7

    .line 1291
    goto :goto_1

    .line 1317
    .restart local v1    # "enforceWithoutCancel":Z
    :cond_6
    sget-object v7, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 1318
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1325
    .end local v1    # "enforceWithoutCancel":Z
    :cond_7
    sget-boolean v8, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v8, :cond_a

    .line 1327
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v9, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v8, v9, :cond_8

    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-ne v8, v1, :cond_8

    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    if-lez v8, :cond_8

    .line 1331
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    iget v9, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    invoke-direct {p0, v8, v9}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->scheduleNextPwdChange(II)V

    .line 1332
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->setResult(I)V

    .line 1333
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1336
    :cond_8
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v7, v8, :cond_9

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v7, v8, :cond_0

    .line 1337
    :cond_9
    sget-object v7, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 1338
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1345
    :cond_a
    invoke-direct {p0, v7}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->sendIntentToKnoxKeyguard(I)V

    .line 1348
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1355
    :sswitch_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 1358
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->clickedEmergencyCall:Z

    .line 1359
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1360
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 1361
    .local v3, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_b

    .line 1362
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1363
    .local v2, "i":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1364
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1365
    .local v6, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1366
    .local v5, "pkgName":Ljava/lang/String;
    const-string v7, "com.android.phone"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1368
    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1376
    .end local v2    # "i":Ljava/util/Iterator;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_b
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1377
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v7, 0x10800000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1379
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1279
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10009c -> :sswitch_1
        0x7f10009d -> :sswitch_0
        0x7f1000a8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 645
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 646
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "pin":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 648
    .local v0, "cursorPos":I
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->onDestroyView()V

    .line 649
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 651
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 657
    :cond_0
    const-string v2, ""

    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 658
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 662
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 361
    invoke-super/range {p0 .. p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 362
    new-instance v11, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 364
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    instance-of v11, v11, Lcom/android/settings/ChooseLockPassword;

    if-nez v11, :cond_0

    .line 365
    new-instance v11, Ljava/lang/SecurityException;

    const-string v12, "Fragment contained in wrong activity"

    invoke-direct {v11, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 367
    :cond_0
    const-string v11, "window"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v6

    .line 369
    .local v6, "mWindowManager":Landroid/view/IWindowManager;
    const/4 v11, 0x3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v6, v11, v12, v13}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 375
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    sput-boolean v11, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    .line 377
    :cond_1
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    .line 378
    const-string v11, "ChooseLockPassword"

    const-string v12, "mCheckSimplePassword = false"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/admin/DevicePolicyManager;->getSimplePasswordEnabled(Landroid/content/ComponentName;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 380
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    .line 381
    const-string v11, "ChooseLockPassword"

    const-string v12, "mCheckSimplePassword = true"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    const/16 v12, 0x64

    if-lt v11, v12, :cond_3

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "persona"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaManager;

    .line 388
    .local v5, "mPersona":Landroid/os/PersonaManager;
    if-eqz v5, :cond_3

    .line 389
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->personaInfo:Landroid/content/pm/PersonaInfo;

    .line 390
    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->personaInfo:Landroid/content/pm/PersonaInfo;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->personaInfo:Landroid/content/pm/PersonaInfo;

    iget-boolean v11, v11, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-eqz v11, :cond_3

    .line 391
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->isB2CContainer:Z

    .line 392
    const-string v11, "ChooseLockPassword"

    const-string v12, "this is B2C Container."

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .end local v5    # "mPersona":Landroid/os/PersonaManager;
    :cond_3
    const-string v11, "key_knox_b2c_reset_case"

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    invoke-static {v11}, Lcom/android/settings/ChooseLockPassword;->access$002(Z)Z

    .line 399
    const-string v11, "lockscreen.password_type"

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iget-object v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 401
    const-string v11, "lockscreen.password_min"

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iget-object v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 404
    const-string v11, "lockscreen.password_max"

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 405
    const-string v11, "lockscreen.password_min_letters"

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iget-object v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 407
    const-string v11, "lockscreen.password_min_uppercase"

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iget-object v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 409
    const-string v11, "lockscreen.password_min_lowercase"

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iget-object v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 411
    const-string v11, "lockscreen.password_min_numeric"

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iget-object v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 413
    const-string v11, "lockscreen.password_min_symbols"

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iget-object v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 415
    const-string v11, "lockscreen.password_min_nonletter"

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iget-object v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 417
    const-string v11, "isRecovery"

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->isRecovery:Z

    .line 420
    const-string v11, "ode_password_quality"

    invoke-virtual {v3, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 421
    .local v7, "odePasswordQuality":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v11

    if-nez v11, :cond_5

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 425
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "password"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 426
    :cond_4
    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v12, 0x20000

    if-ne v11, v12, :cond_f

    .line 427
    const/4 v11, 0x4

    iput v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 436
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_5
    :goto_1
    const-string v11, "lockscreen.password_old"

    invoke-virtual {v3, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Ljava/lang/String;

    .line 437
    const/4 v0, 0x4

    .line 438
    .local v0, "MIN_PWD_LENGTH":I
    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    const/4 v12, 0x4

    if-lt v11, v12, :cond_10

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-ge v11, v12, :cond_10

    .line 446
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "alarm"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AlarmManager;

    iput-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "power"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    iput-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPowerManager:Landroid/os/PowerManager;

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "phone"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    iput-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 449
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "statusbar"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/StatusBarManager;

    iput-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "input_method"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodManager;

    iput-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 453
    const/4 v11, 0x1

    new-array v10, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "true"

    aput-object v12, v10, v11

    .line 454
    .local v10, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v13, "getRequiredPwdPatternRestrictions"

    invoke-static {v11, v12, v13, v10}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 457
    .local v2, "getRequiredPwdPatternRestrictions":I
    const/4 v11, -0x1

    if-eq v2, v11, :cond_7

    .line 458
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    .line 460
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v13, "isChangeRequested"

    const/4 v14, 0x0

    invoke-static {v11, v12, v13, v14}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 462
    .local v4, "isChangeRequested":I
    iput v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    .line 463
    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-gtz v11, :cond_8

    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordRecoverable()Z

    move-result v11

    if-eqz v11, :cond_9

    iget-boolean v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->isRecovery:Z

    if-eqz v11, :cond_9

    .line 464
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    check-cast v11, Lcom/android/settings/ChooseLockPassword;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/settings/ChooseLockPassword;->access$100(Lcom/android/settings/ChooseLockPassword;Z)V

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 466
    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v11

    const/high16 v12, 0x20000

    if-lt v11, v12, :cond_9

    .line 467
    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v11

    iput v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 470
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v13, "getPasswordChangeTimeout"

    const/4 v14, 0x0

    invoke-static {v11, v12, v13, v14}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    .line 474
    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    const/4 v12, 0x4

    if-ge v11, v12, :cond_a

    .line 475
    const/4 v11, 0x4

    iput v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 477
    :cond_a
    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    const/16 v12, 0x10

    if-le v11, v12, :cond_b

    .line 478
    const/16 v11, 0x10

    iput v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 482
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    const/16 v12, 0x64

    if-lt v11, v12, :cond_c

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "persona"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PersonaManager;

    .line 484
    .local v9, "pm":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v8

    .line 485
    .local v8, "pi":Landroid/content/pm/PersonaInfo;
    iget v11, v8, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v9, v11}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v11

    sget-object v12, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v11, v12}, Landroid/os/PersonaManager$StateManager;->isAttribute(Landroid/content/pm/PersonaAttribute;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 490
    .end local v8    # "pi":Landroid/content/pm/PersonaInfo;
    .end local v9    # "pm":Landroid/os/PersonaManager;
    :cond_c
    new-instance v11, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 496
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    const/16 v12, 0x64

    if-ge v11, v12, :cond_e

    .line 498
    const-string v11, "choose_cac_pin"

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_d

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_12

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v11

    const/high16 v12, 0x70000

    if-ne v11, v12, :cond_12

    :cond_d
    const/4 v11, 0x1

    :goto_3
    iput-boolean v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    .line 504
    :cond_e
    return-void

    .line 429
    .end local v0    # "MIN_PWD_LENGTH":I
    .end local v2    # "getRequiredPwdPatternRestrictions":I
    .end local v4    # "isChangeRequested":I
    .end local v10    # "selectionArgs":[Ljava/lang/String;
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_f
    const/4 v11, 0x6

    iput v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    goto/16 :goto_1

    .line 440
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v0    # "MIN_PWD_LENGTH":I
    :cond_10
    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    const/4 v12, 0x4

    if-ge v11, v12, :cond_11

    .line 441
    const/4 v11, 0x4

    iput v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    goto/16 :goto_2

    .line 442
    :cond_11
    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v11, v12, :cond_6

    .line 443
    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    iput v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    goto/16 :goto_2

    .line 498
    .restart local v2    # "getRequiredPwdPatternRestrictions":I
    .restart local v4    # "isChangeRequested":I
    .restart local v10    # "selectionArgs":[Ljava/lang/String;
    :cond_12
    const/4 v11, 0x0

    goto :goto_3

    .line 371
    .end local v0    # "MIN_PWD_LENGTH":I
    .end local v2    # "getRequiredPwdPatternRestrictions":I
    .end local v4    # "isChangeRequested":I
    .end local v7    # "odePasswordQuality":Ljava/lang/String;
    .end local v10    # "selectionArgs":[Ljava/lang/String;
    :catch_0
    move-exception v11

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 511
    const v10, 0x7f040040

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p1, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 513
    .local v9, "view":Landroid/view/View;
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    const/4 v11, 0x1

    if-lt v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    if-ne v10, v11, :cond_0

    .line 516
    const v10, 0x7f1000a8

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    .line 517
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    if-eqz v10, :cond_0

    .line 518
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 519
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    :cond_0
    const v10, 0x7f10009c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 531
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    sget-boolean v10, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v10, :cond_1

    .line 534
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setClickable(Z)V

    .line 535
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 539
    :cond_1
    const v10, 0x7f10009d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 540
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    new-instance v10, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;

    .line 543
    const/high16 v10, 0x40000

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v10, v11, :cond_2

    const/high16 v10, 0x50000

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v10, v11, :cond_2

    const/high16 v10, 0x60000

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v10, v11, :cond_2

    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-lez v10, :cond_5

    const/high16 v10, 0x70000

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v10, v11, :cond_5

    :cond_2
    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    .line 549
    const v10, 0x7f10009e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 550
    const v10, 0x7f10009a

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 551
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 552
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 553
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v11, 0x2000000

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 555
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 556
    .local v1, "activity":Landroid/app/Activity;
    new-instance v10, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v10, v1, v11, v12}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 558
    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v11, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 562
    const v10, 0x7f100099

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 563
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v10}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 565
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    .line 566
    .local v3, "currentType":I
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v11, :cond_7

    .end local v3    # "currentType":I
    :goto_2
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 569
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 570
    .local v5, "intent":Landroid/content/Intent;
    const-string v10, "confirm_credentials"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 571
    .local v2, "confirmCredentials":Z
    if-nez p3, :cond_8

    .line 572
    sget-object v10, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 573
    if-eqz v2, :cond_3

    .line 574
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/16 v11, 0x3a

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 588
    :cond_3
    :goto_3
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    .line 589
    instance-of v10, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v10, :cond_4

    move-object v6, v1

    .line 590
    check-cast v6, Lcom/android/settings/SettingsActivity;

    .line 594
    .local v6, "sa":Lcom/android/settings/SettingsActivity;
    iget-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    if-eqz v10, :cond_9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    const/16 v11, 0x64

    if-ge v10, v11, :cond_9

    .line 596
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v11, 0x7f0a0290

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 597
    const v4, 0x7f0a0290

    .line 603
    .local v4, "id":I
    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 604
    .local v8, "title":Ljava/lang/CharSequence;
    invoke-virtual {v6, v8}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 606
    .end local v4    # "id":I
    .end local v6    # "sa":Lcom/android/settings/SettingsActivity;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_4
    return-object v9

    .line 543
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "confirmCredentials":Z
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 558
    .restart local v1    # "activity":Landroid/app/Activity;
    :cond_6
    const/4 v10, 0x1

    goto :goto_1

    .line 566
    .restart local v3    # "currentType":I
    :cond_7
    const/16 v3, 0x12

    goto :goto_2

    .line 578
    .end local v3    # "currentType":I
    .restart local v2    # "confirmCredentials":Z
    .restart local v5    # "intent":Landroid/content/Intent;
    :cond_8
    const-string v10, "first_pin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 580
    const-string v10, "set_knox_backup_pin_complete"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setKnoxBackupPinComplete:Z

    .line 582
    const-string v10, "ui_stage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 583
    .local v7, "state":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 584
    invoke-static {v7}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 585
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_3

    .line 599
    .end local v7    # "state":Ljava/lang/String;
    .restart local v6    # "sa":Lcom/android/settings/SettingsActivity;
    :cond_9
    iget-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_a

    const v4, 0x7f0a0880

    .restart local v4    # "id":I
    :goto_5
    goto :goto_4

    .end local v4    # "id":I
    :cond_a
    const v4, 0x7f0a0882

    goto :goto_5
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1421
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 1424
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 1425
    const/4 v0, 0x1

    .line 1427
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 666
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 668
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 670
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->reenableStatusBar()V

    .line 672
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 611
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 614
    iput-boolean v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->clickedEmergencyCall:Z

    .line 615
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 616
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "isRecovery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->isRecovery:Z

    .line 617
    iget v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-gtz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->isRecovery:Z

    if-eqz v1, :cond_1

    .line 618
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->disableStatusBar()V

    .line 623
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 624
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 626
    sget-boolean v1, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v1, :cond_2

    .line 628
    iget v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v2, 0x70000

    if-ne v1, v2, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_4

    .line 630
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x7f0a027d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 638
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setKnoxBackupPinComplete:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_3

    .line 639
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 642
    :cond_3
    return-void

    .line 632
    :cond_4
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x7f0a1389

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 676
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 677
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v0, "set_knox_backup_pin_complete"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setKnoxBackupPinComplete:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 682
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1538
    return-void
.end method

.method protected updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 717
    .local v0, "previousStage":Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 718
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 722
    if-eq v0, p1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 725
    :cond_0
    return-void
.end method
