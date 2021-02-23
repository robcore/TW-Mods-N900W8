.class public Lcom/android/settings/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CryptKeeper$ValidationTask;,
        Lcom/android/settings/CryptKeeper$DecryptTask;,
        Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    }
.end annotation


# static fields
.field private static emergencyCallStatus:Z

.field private static failedAttemptsCount:I

.field private static mMaxFailedAttempts:I

.field private static mPasswordMaxLength:I

.field private static mSalesCode:Ljava/lang/String;

.field private static mSavedPassword:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBootCompleted:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCooldown:I

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEncrypt:Z

.field private mEncryptionGoneBad:I

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreBack:Z

.field private mKeypressSoundCountup:I

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNotificationCountdown:I

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReleaseWakeLockCountdown:I

.field private mResetButton:Landroid/widget/Button;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusString:I

.field mTelephony:Landroid/telephony/TelephonyManager;

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    sput v1, Lcom/android/settings/CryptKeeper;->mMaxFailedAttempts:I

    .line 160
    sput v1, Lcom/android/settings/CryptKeeper;->failedAttemptsCount:I

    .line 162
    const-string v0, ""

    sput-object v0, Lcom/android/settings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    .line 163
    sput-boolean v1, Lcom/android/settings/CryptKeeper;->emergencyCallStatus:Z

    .line 170
    const-string v0, ""

    sput-object v0, Lcom/android/settings/CryptKeeper;->mSalesCode:Ljava/lang/String;

    .line 180
    sput v1, Lcom/android/settings/CryptKeeper;->mPasswordMaxLength:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 139
    iput-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mIgnoreBack:Z

    .line 145
    iput v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 147
    iput v1, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 148
    const v0, 0x7f0a0c72

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    .line 164
    iput v1, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    .line 174
    iput-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mBootCompleted:Z

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mEncrypt:Z

    .line 192
    new-instance v0, Lcom/android/settings/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$1;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 361
    new-instance v0, Lcom/android/settings/CryptKeeper$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$2;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    .line 559
    new-instance v0, Lcom/android/settings/CryptKeeper$3;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$3;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 573
    new-instance v0, Lcom/android/settings/CryptKeeper$4;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$4;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 900
    new-instance v0, Lcom/android/settings/CryptKeeper$7;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$7;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/CryptKeeper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/settings/CryptKeeper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->notifyUser()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/CryptKeeper;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateEmergencyCallButtonState()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/CryptKeeper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 101
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/settings/CryptKeeper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/settings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->passwordEntryInit()V

    return-void
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 101
    sput-object p0, Lcom/android/settings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 101
    sput p0, Lcom/android/settings/CryptKeeper;->failedAttemptsCount:I

    return p0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 101
    sget v0, Lcom/android/settings/CryptKeeper;->mMaxFailedAttempts:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->wipeStorage()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/CryptKeeper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 101
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/CryptKeeper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->cooldown()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/CryptKeeper;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method private cooldown()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 854
    const v3, 0x7f10006c

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 856
    .local v1, "status":Landroid/widget/TextView;
    iget v3, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    if-gtz v3, :cond_2

    .line 858
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 859
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 860
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 862
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 863
    invoke-direct {p0, v4}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 865
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v3, :cond_1

    .line 866
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 868
    :cond_1
    iget v3, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 885
    :goto_0
    return-void

    .line 871
    :cond_2
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    .line 872
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 874
    :cond_3
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v3, :cond_4

    .line 875
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 878
    :cond_4
    const v3, 0x7f0a0240

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 879
    .local v2, "template":Ljava/lang/CharSequence;
    new-array v3, v4, [Ljava/lang/CharSequence;

    iget v4, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 881
    iget v3, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    .line 882
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 883
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private delayAudioNotification()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 1219
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 1223
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    .line 1224
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1225
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1227
    return-void
.end method

.method private encryptionProgressInit()V
    .locals 3

    .prologue
    .line 712
    const-string v1, "CryptKeeper"

    const-string v2, "Encryption progress screen initializing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 714
    const-string v1, "CryptKeeper"

    const-string v2, "Acquiring wakelock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 716
    .local v0, "pm":Landroid/os/PowerManager;
    const/16 v1, 0x1a

    const-string v2, "CryptKeeper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 717
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 720
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    const v1, 0x7f1000f2

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 722
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 725
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    .line 726
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 1085
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1086
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 1087
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1089
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 1

    .prologue
    .line 1212
    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 1208
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1045
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 1048
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 1050
    .local v2, "filteredImisCount":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 1052
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 1078
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 1053
    .restart local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 1056
    .local v8, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1057
    add-int/lit8 v2, v2, 0x1

    .line 1058
    goto :goto_0

    .line 1061
    :cond_2
    const/4 v0, 0x0

    .line 1062
    .local v0, "auxCount":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 1063
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1064
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1067
    .end local v7    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 1072
    .local v6, "nonAuxCount":I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 1073
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 1074
    goto :goto_0

    .line 1078
    .end local v0    # "auxCount":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "nonAuxCount":I
    .end local v8    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private isDebugView()Z
    .locals 2

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .locals 2
    .param p1, "viewType"    # Ljava/lang/String;

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 1186
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .prologue
    .line 1200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1201
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1203
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 1204
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 1205
    return-void
.end method

.method private notifyUser()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 407
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    if-lez v1, :cond_2

    .line 408
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 434
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 435
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 437
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    if-lez v1, :cond_3

    .line 439
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 444
    :cond_1
    :goto_1
    return-void

    .line 409
    :cond_2
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->playSoundEffect(II)V

    .line 418
    const-string v1, "VZW"

    sget-object v2, Lcom/android/settings/CryptKeeper;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    .line 420
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    const/16 v2, 0x24

    if-lt v1, v2, :cond_0

    .line 421
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    .line 422
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 424
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 441
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method private passwordEntryInit()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 925
    const v5, 0x7f1000ef

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    .line 926
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v5, :cond_1

    .line 927
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 928
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 931
    sget v5, Lcom/android/settings/CryptKeeper;->mPasswordMaxLength:I

    if-nez v5, :cond_0

    .line 932
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/high16 v6, 0x60000

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v5

    sput v5, Lcom/android/settings/CryptKeeper;->mPasswordMaxLength:I

    .line 933
    :cond_0
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    new-array v6, v11, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    sget v8, Lcom/android/settings/CryptKeeper;->mPasswordMaxLength:I

    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v6, v10

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 935
    new-instance v4, Lcom/android/settings/CryptKeeper$8;

    invoke-direct {v4, p0}, Lcom/android/settings/CryptKeeper$8;-><init>(Lcom/android/settings/CryptKeeper;)V

    .line 953
    .local v4, "watcher":Landroid/text/TextWatcher;
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 956
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 957
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 958
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 962
    .end local v4    # "watcher":Landroid/text/TextWatcher;
    :cond_1
    const v5, 0x7f1000ab

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockPatternView;

    iput-object v5, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 963
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v5, :cond_2

    .line 964
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 968
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v5

    if-nez v5, :cond_3

    .line 969
    const v5, 0x7f1000ee

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 970
    .local v0, "emergencyCall":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 971
    const-string v5, "CryptKeeper"

    const-string v6, "Removing the emergency Call button"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 976
    .end local v0    # "emergencyCall":Landroid/view/View;
    :cond_3
    const v5, 0x7f1000f0

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 977
    .local v1, "imeSwitcher":Landroid/view/View;
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 979
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_4

    invoke-direct {p0, v2, v10}, Lcom/android/settings/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 980
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 981
    new-instance v5, Lcom/android/settings/CryptKeeper$9;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/CryptKeeper$9;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 992
    :cond_4
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v5, :cond_5

    .line 993
    const-string v5, "CryptKeeper"

    const-string v6, "Acquiring wakelock."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 995
    .local v3, "pm":Landroid/os/PowerManager;
    if-eqz v3, :cond_5

    .line 996
    const/16 v5, 0x1a

    const-string v6, "CryptKeeper"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 997
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1000
    const/16 v5, 0x60

    iput v5, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 1006
    .end local v3    # "pm":Landroid/os/PowerManager;
    :cond_5
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-nez v5, :cond_6

    iget v5, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    if-gtz v5, :cond_6

    .line 1007
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/settings/CryptKeeper$10;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/CryptKeeper$10;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1015
    :cond_6
    invoke-direct {p0, v10}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 1016
    sget-object v5, Lcom/android/settings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1017
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v5, :cond_7

    .line 1018
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    sget-object v6, Lcom/android/settings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1019
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 1020
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1024
    :cond_7
    iput v10, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 1027
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 1029
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1030
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v5, v12, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1033
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x400000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1034
    return-void
.end method

.method private final setAirplaneModeIfNecessary()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1138
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 1140
    .local v1, "isLteDevice":Z
    :goto_0
    if-nez v1, :cond_0

    .line 1141
    const-string v3, "CryptKeeper"

    const-string v4, "Going into airplane mode."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1143
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1144
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1145
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/CryptKeeper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1147
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 1138
    .end local v1    # "isLteDevice":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final setBackFunctionality(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 892
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mIgnoreBack:Z

    .line 893
    if-eqz p1, :cond_1

    .line 894
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 898
    :goto_1
    return-void

    .line 892
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 896
    :cond_1
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3770000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_1
.end method

.method private setMaxPasswordAttempts()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 1259
    const/4 v0, 0x0

    .line 1260
    .local v0, "adminMaxFailedAttempts":I
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    const-string v5, "security.ode.maxattempts"

    invoke-virtual {v3, v4, v5}, Landroid/app/admin/DevicePolicyManager;->getPropertyFromFooter(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1261
    .local v1, "maxFailedAttempts":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1262
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1265
    :cond_0
    const-string v3, "security.mdpp"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1266
    .local v2, "mdppState":Ljava/lang/String;
    const-string v3, "Enforcing"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Enabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    if-lez v0, :cond_3

    .line 1267
    sput v0, Lcom/android/settings/CryptKeeper;->mMaxFailedAttempts:I

    .line 1282
    :cond_2
    :goto_0
    return-void

    .line 1272
    :cond_3
    const-string v3, "VZW"

    sget-object v4, Lcom/android/settings/CryptKeeper;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1273
    sput v6, Lcom/android/settings/CryptKeeper;->mMaxFailedAttempts:I

    .line 1274
    if-lez v0, :cond_2

    .line 1275
    sput v0, Lcom/android/settings/CryptKeeper;->mMaxFailedAttempts:I

    goto :goto_0

    .line 1277
    :cond_4
    const-string v3, "TNG"

    sget-object v4, Lcom/android/settings/CryptKeeper;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1278
    sput v6, Lcom/android/settings/CryptKeeper;->mMaxFailedAttempts:I

    goto :goto_0

    .line 1280
    :cond_5
    const/16 v3, 0x1e

    sput v3, Lcom/android/settings/CryptKeeper;->mMaxFailedAttempts:I

    goto :goto_0
.end method

.method private setupUi()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const v7, 0x7f04005c

    const/16 v6, 0x400

    const/4 v5, 0x0

    .line 591
    iget v4, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I

    if-nez v4, :cond_0

    const-string v4, "error"

    invoke-direct {p0, v4}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 592
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 593
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->showFactoryReset()V

    .line 663
    :cond_1
    :goto_0
    return-void

    .line 597
    :cond_2
    const-string v4, "vold.encrypt_progress"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "progress":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "progress"

    invoke-direct {p0, v4}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 599
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 601
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 602
    const-string v3, "vold.encrypt_type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 603
    .local v2, "type":Ljava/lang/String;
    const-string v3, "decrypt"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 604
    iput-boolean v5, p0, Lcom/android/settings/CryptKeeper;->mEncrypt:Z

    .line 605
    const v3, 0x7f100086

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 606
    .local v1, "tv":Landroid/widget/TextView;
    const v3, 0x7f0a100e

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 609
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->encryptionProgressInit()V

    goto :goto_0

    .line 610
    .end local v2    # "type":Ljava/lang/String;
    :cond_5
    iget-boolean v4, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    if-nez v4, :cond_6

    const-string v4, "password"

    invoke-direct {p0, v4}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 611
    :cond_6
    new-instance v3, Lcom/android/settings/CryptKeeper$5;

    invoke-direct {v3, p0}, Lcom/android/settings/CryptKeeper$5;-><init>(Lcom/android/settings/CryptKeeper;)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/settings/CryptKeeper$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 658
    :cond_7
    iget-boolean v4, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    if-nez v4, :cond_1

    .line 660
    new-instance v4, Lcom/android/settings/CryptKeeper$ValidationTask;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/CryptKeeper$ValidationTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V

    check-cast v3, [Ljava/lang/Void;

    invoke-virtual {v4, v3}, Lcom/android/settings/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 661
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    goto :goto_0
.end method

.method private showFactoryReset()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const v5, 0x7f100086

    const v4, 0x7f10006c

    const/4 v3, 0x0

    .line 730
    const v1, 0x7f1000f3

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 747
    const v1, 0x7f1000f4

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    .line 748
    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mBootCompleted:Z

    if-eq v1, v6, :cond_0

    const-string v1, "1"

    const-string v2, "sys.boot_completed"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 749
    :cond_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 753
    :goto_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 754
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/CryptKeeper$6;

    invoke-direct {v2, p0}, Lcom/android/settings/CryptKeeper$6;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 764
    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0249

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 765
    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a024a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 777
    :goto_1
    const v1, 0x7f1000f5

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 779
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 780
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 782
    :cond_1
    return-void

    .line 751
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 766
    :cond_3
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 768
    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0243

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 769
    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0244

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 772
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0247

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 773
    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0248

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private takeEmergencyCallAction()V
    .locals 2

    .prologue
    .line 1190
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 1191
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1192
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 1196
    :goto_0
    return-void

    .line 1194
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->launchEmergencyDialer()V

    goto :goto_0
.end method

.method private updateEmergencyCallButtonState()V
    .locals 3

    .prologue
    .line 1156
    const v2, 0x7f1000ee

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1158
    .local v0, "emergencyCall":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 1183
    :goto_0
    return-void

    .line 1161
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1162
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1163
    new-instance v2, Lcom/android/settings/CryptKeeper$11;

    invoke-direct {v2, p0}, Lcom/android/settings/CryptKeeper$11;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1176
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1178
    const v1, 0x7f0a0d21

    .line 1182
    .local v1, "textId":I
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 1171
    .end local v1    # "textId":I
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1180
    :cond_2
    const v1, 0x7f0a0d20

    .restart local v1    # "textId":I
    goto :goto_1
.end method

.method private updateProgress()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 785
    const-string v10, "vold.encrypt_progress"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 787
    .local v5, "state":Ljava/lang/String;
    const-string v10, "error_partially_encrypted"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 788
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->showFactoryReset()V

    .line 850
    :goto_0
    return-void

    .line 793
    :cond_0
    const v10, 0x7f0a023e

    invoke-virtual {p0, v10}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 794
    .local v6, "status":Ljava/lang/CharSequence;
    const v10, 0x7f10006c

    invoke-virtual {p0, v10}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 795
    .local v9, "tv":Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 798
    .local v2, "percent":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_3

    const/16 v2, 0x32

    .line 802
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 805
    .local v3, "progress":Ljava/lang/String;
    iget-boolean v10, p0, Lcom/android/settings/CryptKeeper;->mEncrypt:Z

    if-nez v10, :cond_1

    .line 806
    const v10, 0x7f0a100f

    invoke-virtual {p0, v10}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 811
    :cond_1
    const-string v10, "CryptKeeper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Encryption progress: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :try_start_1
    const-string v10, "vold.encrypt_time_remaining"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 815
    .local v8, "timeProperty":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 816
    .local v7, "time":I
    const-string v0, ""

    .line 818
    .local v0, "TextString":Ljava/lang/String;
    if-ltz v7, :cond_4

    .line 820
    add-int/lit8 v10, v7, 0x9

    div-int/lit8 v10, v10, 0xa

    mul-int/lit8 v7, v10, 0xa

    .line 821
    int-to-long v10, v7

    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    .line 822
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 823
    .local v4, "res":Landroid/content/res/Resources;
    const v10, 0x7f0a023f

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 825
    if-eqz v9, :cond_2

    .line 826
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 848
    .end local v0    # "TextString":Ljava/lang/String;
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v7    # "time":I
    .end local v8    # "timeProperty":Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v10, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 849
    iget-object v10, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v14, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 798
    .end local v3    # "progress":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    goto :goto_1

    .line 799
    :catch_0
    move-exception v1

    .line 800
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "CryptKeeper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error parsing progress: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 829
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "TextString":Ljava/lang/String;
    .restart local v3    # "progress":Ljava/lang/String;
    .restart local v7    # "time":I
    .restart local v8    # "timeProperty":Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_2

    .line 830
    const/4 v10, 0x1

    :try_start_3
    new-array v10, v10, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v6, v10}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 834
    .end local v0    # "TextString":Ljava/lang/String;
    .end local v7    # "time":I
    .end local v8    # "timeProperty":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 836
    .restart local v1    # "e":Ljava/lang/Exception;
    if-eqz v9, :cond_2

    .line 837
    new-array v10, v14, [Ljava/lang/CharSequence;

    aput-object v3, v10, v13

    invoke-static {v6, v10}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private wipeStorage()V
    .locals 5

    .prologue
    .line 296
    const-string v3, "VZW"

    sget-object v4, Lcom/android/settings/CryptKeeper;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 298
    .local v2, "service":Landroid/os/storage/IMountService;
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 300
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    if-eqz v2, :cond_0

    .line 301
    :try_start_0
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v0    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v2    # "service":Landroid/os/storage/IMountService;
    :cond_0
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    .line 310
    return-void

    .line 303
    .restart local v0    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .restart local v2    # "service":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "CryptKeeper"

    const-string v4, "Error while formatting external SD card..."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1253
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1243
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mIgnoreBack:Z

    if-eqz v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 455
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 474
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 477
    iput-object p0, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    .line 478
    const-string v5, "device_policy"

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    iput-object v5, p0, Lcom/android/settings/CryptKeeper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 479
    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/CryptKeeper;->mSalesCode:Ljava/lang/String;

    .line 481
    const-string v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 482
    .local v4, "state":Ljava/lang/String;
    const-string v5, "trigger_restart_min_framework"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 483
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setMaxPasswordAttempts()V

    .line 488
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "trigger_post_fs_secdata"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "trigger_restart_framework"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 490
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 491
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v5, Lcom/android/settings/CryptKeeper;

    invoke-direct {v1, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 492
    .local v1, "name":Landroid/content/ComponentName;
    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v2, v1, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 501
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->finish()V

    .line 530
    .end local v1    # "name":Landroid/content/ComponentName;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 506
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0035

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 507
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->setRequestedOrientation(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :cond_3
    :goto_1
    const-string v5, "statusbar"

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    iput-object v5, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    .line 515
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v6, 0x3370000

    invoke-virtual {v5, v6}, Landroid/app/StatusBarManager;->disable(I)V

    .line 517
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setAirplaneModeIfNecessary()V

    .line 518
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 521
    .local v0, "lastInstance":Ljava/lang/Object;
    instance-of v5, v0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v5, :cond_4

    move-object v3, v0

    .line 522
    check-cast v3, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    .line 523
    .local v3, "retained":Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    iget-object v5, v3, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v5, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 524
    const-string v5, "CryptKeeper"

    const-string v6, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    .end local v3    # "retained":Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    :cond_4
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/settings/CryptKeeper;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 528
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 509
    .end local v0    # "lastInstance":Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 689
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 691
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_2

    .line 699
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 702
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 703
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1094
    if-eqz p2, :cond_0

    const/4 v3, 0x6

    if-ne p2, v3, :cond_1

    .line 1096
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1098
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 1119
    .end local v0    # "password":Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 1103
    .restart local v0    # "password":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1106
    const-string v3, ""

    sput-object v3, Lcom/android/settings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    .line 1111
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1112
    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 1114
    const-string v3, "CryptKeeper"

    const-string v4, "Attempting to send command to decrypt"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    new-instance v3, Lcom/android/settings/CryptKeeper$DecryptTask;

    invoke-direct {v3, p0, v5}, Lcom/android/settings/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/settings/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v1, v2

    .line 1117
    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1231
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 1232
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 555
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 556
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 557
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 467
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 468
    const-string v0, "mBootCompleted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mBootCompleted:Z

    .line 469
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 546
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 547
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 550
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 551
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 680
    new-instance v0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 681
    .local v0, "state":Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 683
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 461
    const-string v0, "mBootCompleted"

    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mBootCompleted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 462
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 463
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 539
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 540
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    .line 541
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 667
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 668
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 669
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 670
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 671
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1248
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 1249
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1237
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 1238
    const/4 v0, 0x0

    return v0
.end method
