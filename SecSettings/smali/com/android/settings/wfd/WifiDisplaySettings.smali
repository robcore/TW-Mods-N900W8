.class public Lcom/android/settings/wfd/WifiDisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    }
.end annotation


# instance fields
.field private final EXCEPTION_CASE_GROUP_PLAY:I

.field private changeString:Ljava/lang/String;

.field private edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field endConnect:Landroid/view/MenuItem;

.field private extraCauseOfStart:I

.field helpMenu:Landroid/view/MenuItem;

.field private isChanged:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAutoConnectSysProp:Ljava/lang/String;

.field private mAutoGO:Z

.field private mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

.field mBtn_ScanStop:Landroid/widget/Button;

.field mButtonLayout:Landroid/widget/LinearLayout;

.field private mCanShake:Z

.field private mCertCategory:Landroid/preference/PreferenceGroup;

.field private mConnectingDevice:Ljava/lang/String;

.field private mConnectingDialogCalled:Z

.field private mConnectionRequested:Z

.field private mContext:Landroid/content/Context;

.field private mControlByWfdService:Z

.field private mDebugEnable:Z

.field private mDeviceAddress:Ljava/lang/String;

.field protected mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEmptyView:Landroid/widget/TextView;

.field mEndConnect:Landroid/widget/Button;

.field private mGlobalEditDeviceName:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mHasOxygenPaused:Z

.field private mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mInPickerDialog:Z

.field private mListen:Z

.field private mListenChannel:I

.field private mMenu:Landroid/view/ContextMenu;

.field private mMotionHandler:Landroid/os/Handler;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mNoDeviceFoundButton:Landroid/widget/LinearLayout;

.field private mNoDeviceFoundTitle:Landroid/widget/LinearLayout;

.field private mNoDeviceText:Landroid/widget/TextView;

.field private mOperatingChannel:I

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRenameDialog:Landroid/app/AlertDialog;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mScanInProgress:Z

.field private final mScanTimeout:Ljava/lang/Runnable;

.field private mSetPrevSettingsDetach:Z

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mTitleId:I

.field protected mTurningWifiDisplayOn:Z

.field private mWifiDisplayCertificationOn:Z

.field protected mWifiDisplayOnSetting:Z

.field protected mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWpsConfig:I

.field private preChecked:Z

.field private privScanState:I

.field scanStop:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 248
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 172
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    .line 182
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->preChecked:Z

    .line 192
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 199
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 200
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    .line 202
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceText:Landroid/widget/TextView;

    .line 203
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceFoundTitle:Landroid/widget/LinearLayout;

    .line 204
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceFoundButton:Landroid/widget/LinearLayout;

    .line 206
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    .line 207
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    .line 209
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 210
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    .line 213
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 214
    iput v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->privScanState:I

    .line 216
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 217
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mControlByWfdService:Z

    .line 218
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceAddress:Ljava/lang/String;

    .line 220
    iput v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->extraCauseOfStart:I

    .line 223
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDebugEnable:Z

    .line 224
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSetPrevSettingsDetach:Z

    .line 226
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanInProgress:Z

    .line 228
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->EXCEPTION_CASE_GROUP_PLAY:I

    .line 231
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    .line 233
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCanShake:Z

    .line 239
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->isChanged:Z

    .line 240
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHasOxygenPaused:Z

    .line 244
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 245
    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 1135
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$3;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 1153
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$4;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionHandler:Landroid/os/Handler;

    .line 1180
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$5;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    .line 1592
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$18;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$18;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1638
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$19;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$19;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 249
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 153
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 153
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 153
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->setWifiP2pChannels(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectionRequested:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectionRequested:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->applyState()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSetPrevSettingsDetach:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->showOptionsDialog(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCanShake:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/settings/wfd/WifiDisplaySettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->isChanged:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/hardware/motion/MotionRecognitionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/hardware/motion/MRListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->setListenMode(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startAutoGO()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopAutoGO()V

    return-void
.end method

.method private applyState()V
    .locals 23

    .prologue
    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v10

    .line 834
    .local v10, "featureState":I
    const-string v19, "WifiDisplaySettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "applyState = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 837
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 845
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->switchChanged(Z)V

    .line 847
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 848
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectionRequested:Z

    .line 850
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 851
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v19

    if-nez v19, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    const/16 v19, 0x2

    move/from16 v0, v19

    if-eq v10, v0, :cond_2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_3

    .line 853
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    check-cast v19, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/wfd/WfdPickerDialog;->finish()V

    .line 857
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->isWifiIBSSEnabled()Z

    move-result v19

    if-eqz v19, :cond_5

    const/16 v19, 0x2

    move/from16 v0, v19

    if-eq v10, v0, :cond_4

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHasOxygenPaused:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 859
    const-string v19, "WifiDisplaySettings"

    const-string v20, "applyState oxygen is ON "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 861
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    check-cast v19, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/wfd/WfdPickerDialog;->finish()V

    .line 869
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v18

    .line 871
    .local v18, "scanState":I
    invoke-static {}, Landroid/util/GeneralUtil;->isPhone()Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 872
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v10, v0, :cond_d

    .line 873
    packed-switch v18, :pswitch_data_0

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    move-object/from16 v19, v0

    const v20, 0x7f0a05d9

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setText(I)V

    .line 890
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v8

    .line 892
    .local v8, "displayState":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 893
    .local v17, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 895
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    .line 896
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->addToVZWTextPreference(Landroid/preference/PreferenceScreen;)V

    .line 900
    :cond_7
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v10, v0, :cond_27

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    .line 908
    .local v3, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v9

    .line 909
    .local v9, "displays":[Landroid/hardware/display/WifiDisplay;
    new-instance v7, Ljava/util/ArrayList;

    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 910
    .local v7, "displayList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/WifiDisplay;>;"
    move-object v4, v9

    .local v4, "arr$":[Landroid/hardware/display/WifiDisplay;
    array-length v15, v4

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_3
    if-ge v12, v15, :cond_e

    aget-object v6, v4, v12

    .line 911
    .local v6, "d":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 912
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDebugEnable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 913
    const-string v19, "WifiDisplaySettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "applyState AvailableDisplayAddress = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_8
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 838
    .end local v3    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v4    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v6    # "d":Landroid/hardware/display/WifiDisplay;
    .end local v7    # "displayList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/WifiDisplay;>;"
    .end local v8    # "displayState":I
    .end local v9    # "displays":[Landroid/hardware/display/WifiDisplay;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    .end local v17    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .end local v18    # "scanState":I
    :cond_a
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v10, v0, :cond_b

    .line 839
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    goto/16 :goto_0

    .line 840
    :cond_b
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v10, v0, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 841
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 842
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    goto/16 :goto_0

    .line 863
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "wifi_display_on"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 865
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mHasOxygenPaused:Z

    goto/16 :goto_1

    .line 875
    .restart local v18    # "scanState":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    move-object/from16 v19, v0

    const v20, 0x7f0a0943

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_2

    .line 878
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 885
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    move-object/from16 v19, v0

    const v20, 0x7f0a05d9

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setText(I)V

    .line 886
    const-string v19, "WifiDisplaySettings"

    const-string v20, "applyState scanbtn hide"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEndConnect:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 917
    .restart local v3    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .restart local v4    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .restart local v7    # "displayList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/WifiDisplay;>;"
    .restart local v8    # "displayState":I
    .restart local v9    # "displays":[Landroid/hardware/display/WifiDisplay;
    .restart local v12    # "i$":I
    .restart local v15    # "len$":I
    .restart local v17    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_e
    sget-object v19, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/display/WifiDisplay;

    .line 919
    .local v5, "availableDisplays":[Landroid/hardware/display/WifiDisplay;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "launch_from_help"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 921
    .local v11, "fromHelp":Z
    if-eqz v11, :cond_10

    invoke-static {}, Landroid/util/GeneralUtil;->isPhone()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 922
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->privScanState:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_15

    const/4 v13, 0x1

    .line 924
    .local v13, "isHelpStateChanged":Z
    :goto_4
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->setGuidedActionBarClickable(Z)V

    .line 926
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    if-eqz v13, :cond_16

    .line 927
    const v19, 0x7f0a1756

    const v20, 0x7f0400c8

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->showHelpDialog(II)V

    .line 937
    :cond_f
    :goto_5
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->privScanState:I

    .line 940
    .end local v13    # "isHelpStateChanged":Z
    :cond_10
    const/4 v14, 0x0

    .line 950
    .local v14, "lastConnectedDisplay":Landroid/hardware/display/WifiDisplay;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/display/DisplayManager;->getLastConnectedDisplay(Z)Landroid/hardware/display/WifiDisplay;

    move-result-object v14

    .line 952
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_11

    .line 953
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V

    .line 956
    :cond_11
    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a

    .line 958
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 960
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->extraCauseOfStart:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 961
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finish()V

    .line 964
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_13

    .line 965
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 968
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    move-object/from16 v19, v0

    if-nez v19, :cond_19

    .line 969
    new-instance v19, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    move-object/from16 v19, v0

    const v20, 0x7f0a05ca

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 975
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v3, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1073
    .end local v3    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v4    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v5    # "availableDisplays":[Landroid/hardware/display/WifiDisplay;
    .end local v7    # "displayList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/WifiDisplay;>;"
    .end local v9    # "displays":[Landroid/hardware/display/WifiDisplay;
    .end local v11    # "fromHelp":Z
    .end local v12    # "i$":I
    .end local v14    # "lastConnectedDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v15    # "len$":I
    :cond_14
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1074
    return-void

    .line 922
    .restart local v3    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .restart local v4    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .restart local v5    # "availableDisplays":[Landroid/hardware/display/WifiDisplay;
    .restart local v7    # "displayList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/WifiDisplay;>;"
    .restart local v9    # "displays":[Landroid/hardware/display/WifiDisplay;
    .restart local v11    # "fromHelp":Z
    .restart local v12    # "i$":I
    .restart local v15    # "len$":I
    :cond_15
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 929
    .restart local v13    # "isHelpStateChanged":Z
    :cond_16
    if-nez v18, :cond_17

    if-nez v8, :cond_17

    array-length v0, v5

    move/from16 v19, v0

    if-lez v19, :cond_17

    .line 931
    const v19, 0x7f0a1755

    const v20, 0x7f0400c8

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->showHelpDialog(II)V

    goto/16 :goto_5

    .line 933
    :cond_17
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_18

    const/16 v19, 0x2

    move/from16 v0, v19

    if-eq v8, v0, :cond_18

    if-nez v18, :cond_f

    array-length v0, v5

    move/from16 v19, v0

    if-nez v19, :cond_f

    .line 935
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->dismissHelpDialog()V

    goto/16 :goto_5

    .line 972
    .end local v13    # "isHelpStateChanged":Z
    .restart local v14    # "lastConnectedDisplay":Landroid/hardware/display/WifiDisplay;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_6

    .line 978
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    move/from16 v19, v0

    if-nez v19, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_14

    .line 979
    :cond_1b
    array-length v0, v5

    move/from16 v19, v0

    if-nez v19, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1e

    .line 981
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1c

    .line 982
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    check-cast v19, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/wfd/WfdPickerDialog;->changeToScan()V

    .line 992
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 984
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1d

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 987
    :cond_1d
    new-instance v19, Lcom/android/settings/ProgressCategory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x101008c

    invoke-direct/range {v19 .. v22}, Lcom/android/settings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    move-object/from16 v19, v0

    const v20, 0x7f0a0349

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/ProgressCategory;->setEmptyTextRes(I)V

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTitleId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_8

    .line 994
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    move-object/from16 v19, v0

    if-nez v19, :cond_21

    .line 997
    new-instance v19, Lcom/android/settings/ProgressCategory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x101008c

    invoke-direct/range {v19 .. v22}, Lcom/android/settings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    move-object/from16 v19, v0

    const v20, 0x7f0a0349

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/ProgressCategory;->setEmptyTextRes(I)V

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTitleId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    .line 1003
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1005
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDebugEnable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1f

    if-eqz v14, :cond_1f

    .line 1006
    const-string v19, "WifiDisplaySettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "applyState lastConnectedDisplay.getDeviceName() = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v14}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", lastConnectedDisplay.getDeviceAddress() = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v14}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_1f
    move-object v4, v5

    array-length v15, v4

    const/4 v12, 0x0

    :goto_a
    if-ge v12, v15, :cond_25

    aget-object v6, v4, v12

    .line 1008
    .restart local v6    # "d":Landroid/hardware/display/WifiDisplay;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    move/from16 v19, v0

    if-nez v19, :cond_22

    if-nez v8, :cond_22

    .line 1011
    const-string v19, "WifiDisplaySettings"

    const-string v20, "connect for smart-school"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectWifiDisplay(Ljava/lang/String;)V

    .line 1015
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceAddress:Ljava/lang/String;

    .line 1007
    :cond_20
    :goto_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 1001
    .end local v6    # "d":Landroid/hardware/display/WifiDisplay;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/ProgressCategory;->removeAll()V

    goto/16 :goto_9

    .line 1017
    .restart local v6    # "d":Landroid/hardware/display/WifiDisplay;
    :cond_22
    if-eqz v14, :cond_23

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_20

    invoke-virtual {v14}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    move/from16 v19, v0

    if-nez v19, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_20

    if-nez v8, :cond_20

    .line 1024
    const-string v19, "WifiDisplaySettings"

    const-string v20, "connectLastConnection"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectLastConnection(Landroid/hardware/display/WifiDisplay;)V

    goto :goto_b

    .line 1028
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v19

    if-nez v19, :cond_20

    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_20

    array-length v0, v5

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    move/from16 v19, v0

    if-nez v19, :cond_20

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "true"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_20

    .line 1033
    :cond_24
    const-string v19, "WifiDisplaySettings"

    const-string v20, "Only one device found"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 1035
    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectWifiDisplay(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1040
    .end local v6    # "d":Landroid/hardware/display/WifiDisplay;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v19

    if-nez v19, :cond_26

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1042
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v19, v0

    if-eqz v19, :cond_14

    .line 1043
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    check-cast v19, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/wfd/WfdPickerDialog;->changeToScan()V

    goto/16 :goto_7

    .line 1045
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1046
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v19, v0

    if-eqz v19, :cond_14

    .line 1047
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    check-cast v19, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/wfd/WfdPickerDialog;->changeToStop()V

    goto/16 :goto_7

    .line 1052
    .end local v3    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v4    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v5    # "availableDisplays":[Landroid/hardware/display/WifiDisplay;
    .end local v7    # "displayList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/WifiDisplay;>;"
    .end local v9    # "displays":[Landroid/hardware/display/WifiDisplay;
    .end local v11    # "fromHelp":Z
    .end local v12    # "i$":I
    .end local v14    # "lastConnectedDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v15    # "len$":I
    :cond_27
    const/16 v19, 0x2

    move/from16 v0, v19

    if-eq v10, v0, :cond_28

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_14

    .line 1054
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "device_policy"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/admin/DevicePolicyManager;

    .line 1056
    .local v16, "mDPM":Landroid/app/admin/DevicePolicyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2b

    :cond_29
    if-eqz v16, :cond_2a

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v19

    if-eqz v19, :cond_2b

    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    move/from16 v19, v0

    if-nez v19, :cond_14

    .line 1058
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2c

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->cancel()V

    .line 1064
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->closeContextMenu()V

    .line 1065
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->dismissHelpDialog()V

    .line 1067
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->setGuidedActionBarClickable(Z)V

    .line 1068
    invoke-static {}, Landroid/util/GeneralUtil;->isPhone()Z

    move-result v19

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v19, v0

    if-nez v19, :cond_14

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEndConnect:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_7

    .line 873
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 1250
    iget-object v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    if-nez v9, :cond_1

    .line 1251
    new-instance v9, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    .line 1252
    iget-object v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    const v10, 0x7f0a0357

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 1256
    :goto_0
    iget-object v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1259
    iget-object v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplaySessionInfo;->getGroupId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1260
    new-instance v6, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1261
    .local v6, "p":Landroid/preference/Preference;
    const v9, 0x7f0a0358

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 1262
    iget-object v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1263
    iget-object v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1266
    iget-object v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplaySessionInfo;->getSessionId()I

    move-result v9

    if-eqz v9, :cond_0

    .line 1267
    iget-object v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    new-instance v10, Lcom/android/settings/wfd/WifiDisplaySettings$6;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/android/settings/wfd/WifiDisplaySettings$6;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1304
    .end local v6    # "p":Landroid/preference/Preference;
    :cond_0
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$7;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, p0, v9}, Lcom/android/settings/wfd/WifiDisplaySettings$7;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 1312
    .local v0, "cbp":Landroid/preference/CheckBoxPreference;
    const v9, 0x7f0a0359

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 1313
    iget-boolean v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1314
    iget-object v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1317
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$8;

    .end local v0    # "cbp":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, p0, v9}, Lcom/android/settings/wfd/WifiDisplaySettings$8;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 1329
    .restart local v0    # "cbp":Landroid/preference/CheckBoxPreference;
    const v9, 0x7f0a035a

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 1330
    iget-boolean v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1331
    iget-object v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1334
    new-instance v3, Lcom/android/settings/wfd/WifiDisplaySettings$9;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v3, p0, v9}, Lcom/android/settings/wfd/WifiDisplaySettings$9;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 1347
    .local v3, "lp":Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_display_wps_config"

    const/4 v11, 0x4

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 1349
    const/4 v9, 0x4

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Default"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-string v10, "PBC"

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-string v10, "KEYPAD"

    aput-object v10, v7, v9

    const/4 v9, 0x3

    const-string v10, "DISPLAY"

    aput-object v10, v7, v9

    .line 1350
    .local v7, "wpsEntries":[Ljava/lang/String;
    const/4 v9, 0x4

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "4"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "0"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "2"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "1"

    aput-object v10, v8, v9

    .line 1355
    .local v8, "wpsValues":[Ljava/lang/String;
    const v9, 0x7f0a035d

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 1356
    invoke-virtual {v3, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1357
    invoke-virtual {v3, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1358
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1359
    const-string v9, "%1$s"

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1360
    iget-object v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1363
    new-instance v3, Lcom/android/settings/wfd/WifiDisplaySettings$10;

    .end local v3    # "lp":Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v3, p0, v9}, Lcom/android/settings/wfd/WifiDisplaySettings$10;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 1375
    .restart local v3    # "lp":Landroid/preference/ListPreference;
    const/4 v9, 0x4

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Auto"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    const-string v10, "6"

    aput-object v10, v1, v9

    const/4 v9, 0x3

    const-string v10, "11"

    aput-object v10, v1, v9

    .line 1376
    .local v1, "lcEntries":[Ljava/lang/String;
    const/4 v9, 0x4

    new-array v2, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "0"

    aput-object v10, v2, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v2, v9

    const/4 v9, 0x2

    const-string v10, "6"

    aput-object v10, v2, v9

    const/4 v9, 0x3

    const-string v10, "11"

    aput-object v10, v2, v9

    .line 1377
    .local v2, "lcValues":[Ljava/lang/String;
    const v9, 0x7f0a035e

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 1378
    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1379
    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1380
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1381
    const-string v9, "%1$s"

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1382
    iget-object v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1385
    new-instance v3, Lcom/android/settings/wfd/WifiDisplaySettings$11;

    .end local v3    # "lp":Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v3, p0, v9}, Lcom/android/settings/wfd/WifiDisplaySettings$11;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 1397
    .restart local v3    # "lp":Landroid/preference/ListPreference;
    const/4 v9, 0x5

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Auto"

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v4, v9

    const/4 v9, 0x2

    const-string v10, "6"

    aput-object v10, v4, v9

    const/4 v9, 0x3

    const-string v10, "11"

    aput-object v10, v4, v9

    const/4 v9, 0x4

    const-string v10, "36"

    aput-object v10, v4, v9

    .line 1398
    .local v4, "ocEntries":[Ljava/lang/String;
    const/4 v9, 0x5

    new-array v5, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "0"

    aput-object v10, v5, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v5, v9

    const/4 v9, 0x2

    const-string v10, "6"

    aput-object v10, v5, v9

    const/4 v9, 0x3

    const-string v10, "11"

    aput-object v10, v5, v9

    const/4 v9, 0x4

    const-string v10, "36"

    aput-object v10, v5, v9

    .line 1399
    .local v5, "ocValues":[Ljava/lang/String;
    const v9, 0x7f0a035f

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 1400
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1401
    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1402
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1403
    const-string v9, "%1$s"

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1404
    iget-object v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1405
    return-void

    .line 1254
    .end local v0    # "cbp":Landroid/preference/CheckBoxPreference;
    .end local v1    # "lcEntries":[Ljava/lang/String;
    .end local v2    # "lcValues":[Ljava/lang/String;
    .end local v3    # "lp":Landroid/preference/ListPreference;
    .end local v4    # "ocEntries":[Ljava/lang/String;
    .end local v5    # "ocValues":[Ljava/lang/String;
    .end local v7    # "wpsEntries":[Ljava/lang/String;
    .end local v8    # "wpsValues":[Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_0
.end method

.method private checkDebugLogEnable()V
    .locals 2

    .prologue
    .line 252
    const-string v0, "secmm.wfds.wfds"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "WifiDisplaySettings"

    const-string v1, "WifiDisplaySettings debug log enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDebugEnable:Z

    .line 259
    :goto_0
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDebugEnable:Z

    goto :goto_0
.end method

.method private connectLastConnection(Landroid/hardware/display/WifiDisplay;)V
    .locals 2
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1561
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 1562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 1563
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectWifiDisplay(Ljava/lang/String;)V

    .line 1565
    :cond_1
    return-void
.end method

.method private connectWifiDisplay(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectingDevice"    # Ljava/lang/String;

    .prologue
    .line 1208
    const-string v0, "WifiDisplaySettings"

    const-string v1, "connectWifiDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1211
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    .line 1212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectionRequested:Z

    .line 1213
    return-void
.end method

.method private connectWifiDisplayWithPin(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectingDevice"    # Ljava/lang/String;

    .prologue
    .line 1216
    const-string v0, "WifiDisplaySettings"

    const-string v1, "connectWifiDisplayWithPin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1219
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplayWithPin(Ljava/lang/String;)V

    .line 1220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectionRequested:Z

    .line 1221
    return-void
.end method

.method private createDongleRenameDialog()Landroid/app/AlertDialog;
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 1737
    const/16 v0, 0x17

    .line 1738
    .local v0, "MAX_NAME_LENGTH":I
    const/16 v1, 0x17

    .line 1740
    .local v1, "MIN_NAME_LENGTH":I
    const/4 v12, 0x1

    new-array v4, v12, [Landroid/text/InputFilter;

    .line 1741
    .local v4, "filters":[Landroid/text/InputFilter;
    new-instance v12, Lcom/android/settings/wfd/WifiDisplaySettings$20;

    invoke-direct {v12, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$20;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    aput-object v12, v4, v14

    .line 1762
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 1763
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v12, 0x7f040279

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1764
    .local v7, "layout":Landroid/view/View;
    const v12, 0x7f100572

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 1765
    .local v9, "mEditDeviceName":Landroid/widget/EditText;
    iput-object v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    .line 1766
    const v12, 0x7f1005df

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1767
    .local v2, "availableSpecialChars":Landroid/widget/TextView;
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1768
    const v12, 0x7f1005e0

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1769
    .local v11, "specialChars":Landroid/widget/TextView;
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1770
    const-string v12, "~`!@$%^&*()-_=+[];\\:\'\",<.>/?"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1772
    const/4 v12, 0x6

    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1773
    const/16 v12, 0x4000

    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 1774
    invoke-virtual {v9, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1776
    iget-object v12, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v12}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 1777
    iget-boolean v12, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->isChanged:Z

    if-nez v12, :cond_1

    .line 1778
    iget-object v12, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v12}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v12

    invoke-virtual {v12}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1784
    :cond_0
    :goto_0
    new-instance v8, Lcom/android/settings/wfd/WifiDisplaySettings$21;

    invoke-direct {v8, p0, v9}, Lcom/android/settings/wfd/WifiDisplaySettings$21;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;)V

    .line 1796
    .local v8, "mDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->length()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setSelection(I)V

    .line 1797
    invoke-virtual {v9}, Landroid/widget/EditText;->selectAll()V

    .line 1798
    const-string v12, "input_method"

    invoke-virtual {p0, v12}, Lcom/android/settings/wfd/WifiDisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 1800
    .local v5, "imm":Landroid/view/inputmethod/InputMethodManager;
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v13, 0x7f0a0625

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0a08f6

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/android/settings/wfd/WifiDisplaySettings$23;

    invoke-direct {v14, p0, v9, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$23;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0a08f7

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/android/settings/wfd/WifiDisplaySettings$22;

    invoke-direct {v14, p0, v9, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$22;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1827
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1828
    new-instance v12, Lcom/android/settings/wfd/WifiDisplaySettings$24;

    invoke-direct {v12, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$24;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v3, v12}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1835
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1836
    new-instance v12, Lcom/android/settings/wfd/WifiDisplaySettings$25;

    invoke-direct {v12, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$25;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v3, v12}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1842
    const/4 v12, -0x1

    invoke-virtual {v3, v12}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v10

    .line 1843
    .local v10, "mOkButton":Landroid/widget/Button;
    new-instance v12, Lcom/android/settings/wfd/WifiDisplaySettings$26;

    invoke-direct {v12, p0, v10, v9}, Lcom/android/settings/wfd/WifiDisplaySettings$26;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {v9, v12}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1878
    return-object v3

    .line 1780
    .end local v3    # "dialog":Landroid/app/AlertDialog;
    .end local v5    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v8    # "mDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    .end local v10    # "mOkButton":Landroid/widget/Button;
    :cond_1
    iget-object v12, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;

    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;
    .locals 4
    .param p1, "d"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "paired"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1487
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V

    .line 1488
    .local v0, "p":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1489
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1510
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 1511
    const v1, 0x7f040268

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setWidgetLayoutResource(I)V

    .line 1513
    :cond_1
    return-object v0

    .line 1491
    :pswitch_0
    const-string v1, "WifiDisplaySettings"

    const-string v2, "WifiDisplayStatus.DISPLAY_STATE_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    const v1, 0x7f0a034c

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(I)V

    goto :goto_0

    .line 1495
    :pswitch_1
    const-string v1, "WifiDisplaySettings"

    const-string v2, "WifiDisplayStatus.DISPLAY_STATE_CONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    const v1, 0x7f0a034b

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(I)V

    .line 1497
    invoke-virtual {v0, v3}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1502
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1503
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1504
    const v1, 0x7f0a034d

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(I)V

    .line 1505
    invoke-virtual {v0, v3}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1489
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isDongleRenameAvailable()Z
    .locals 1

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->isDongleRenameAvailable()Z

    move-result v0

    return v0
.end method

.method private isHelpSupported()Z
    .locals 2

    .prologue
    .line 2007
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "klte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "k3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kccat6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kqlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kmini"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m2lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m2a3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m2alte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SC-04F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCL23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lentis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mega2lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2013
    :cond_0
    const/4 v0, 0x1

    .line 2015
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWfdBrokerRunning()Z
    .locals 7

    .prologue
    .line 1993
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1996
    .local v1, "am":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 1997
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1998
    .local v4, "pack":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 1999
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 2000
    .local v2, "className":Ljava/lang/String;
    const-string v5, "com.sec.android.app.wfdbroker.WfdBroker"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2001
    const/4 v5, 0x1

    .line 2004
    .end local v2    # "className":Ljava/lang/String;
    :goto_1
    return v5

    .line 1998
    .restart local v2    # "className":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2004
    .end local v2    # "className":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isWfdConnected()Z
    .locals 2

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 1889
    :cond_0
    const/4 v0, 0x1

    .line 1891
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWfdConnecting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1895
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1899
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setGuidedActionBarClickable(Z)V
    .locals 4
    .param p1, "clickable"    # Z

    .prologue
    .line 1944
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1945
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1947
    .local v0, "ab":Landroid/app/ActionBar;
    :goto_0
    if-eqz v0, :cond_1

    .line 1948
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 1950
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1951
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_0

    .line 1952
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 1953
    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 1956
    :cond_0
    if-eqz p1, :cond_1

    .line 1957
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 1961
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void

    .line 1945
    .end local v0    # "ab":Landroid/app/ActionBar;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setListenMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1447
    const-string v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting listen mode to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$14;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$14;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->listen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1464
    return-void
.end method

.method private setMenuIcon()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v3, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v4, 0x0

    .line 530
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    move v1, v3

    .line 531
    .local v1, "isLandscape":Z
    :goto_0
    const-string v5, "WifiDisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMenuIcon():: isLandscape="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    if-nez v5, :cond_3

    .line 534
    :cond_0
    const-string v3, "WifiDisplaySettings"

    const-string v4, "onConfigurationChanged:: menu item is not created yet"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_1
    :goto_1
    return-void

    .end local v1    # "isLandscape":Z
    :cond_2
    move v1, v4

    .line 530
    goto :goto_0

    .line 538
    .restart local v1    # "isLandscape":Z
    :cond_3
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->helpMenu:Landroid/view/MenuItem;

    if-eqz v5, :cond_4

    .line 539
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->helpMenu:Landroid/view/MenuItem;

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 540
    :cond_4
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 541
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 543
    invoke-static {}, Landroid/util/GeneralUtil;->isPhone()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v5, :cond_9

    .line 544
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    .line 545
    .local v0, "featureState":I
    if-eqz v1, :cond_7

    .line 546
    const-string v4, "WifiDisplaySettings"

    const-string v5, "land split"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v4, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 548
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 549
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->helpMenu:Landroid/view/MenuItem;

    if-eqz v4, :cond_5

    .line 550
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->helpMenu:Landroid/view/MenuItem;

    const v5, 0x7f020485

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 552
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 553
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v4, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 554
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 555
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 560
    :goto_2
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 561
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEndConnect:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 562
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 563
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceFoundButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 558
    :cond_6
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 566
    :cond_7
    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    .line 567
    const-string v3, "WifiDisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setup spilt mEnableSwitch : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 574
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 575
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEndConnect:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 582
    :goto_3
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 583
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceFoundButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 584
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 585
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 570
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 571
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEndConnect:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 579
    :cond_8
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 580
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEndConnect:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 590
    .end local v0    # "featureState":I
    :cond_9
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->helpMenu:Landroid/view/MenuItem;

    if-eqz v4, :cond_a

    .line 591
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->helpMenu:Landroid/view/MenuItem;

    const v5, 0x7f020485

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 593
    :cond_a
    if-eqz v1, :cond_b

    .line 594
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 596
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 598
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 599
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 600
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 603
    :cond_b
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_1

    .line 604
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 605
    .local v2, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_c

    .line 606
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 607
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 612
    :goto_4
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 613
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 609
    :cond_c
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 610
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_4

    .line 568
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private setWifiP2pChannels(II)V
    .locals 3
    .param p1, "lc"    # I
    .param p2, "oc"    # I

    .prologue
    .line 1468
    const-string v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting wifi p2p channel: lc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$15;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$15;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1484
    return-void
.end method

.method private showDisconnectDialog()V
    .locals 3

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 797
    return-void
.end method

.method private showInputMethod()V
    .locals 4

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1965
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1966
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$27;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$27;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1990
    :goto_0
    return-void

    .line 1977
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$28;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$28;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
    .locals 8
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 1517
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040267

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1518
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f100079

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1519
    .local v3, "nameEditText":Landroid/widget/EditText;
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1521
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$16;

    invoke-direct {v1, p0, v3, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$16;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V

    .line 1532
    .local v1, "done":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$17;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$17;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 1539
    .local v2, "forget":Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0350

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0352

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0351

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1546
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1547
    return-void
.end method

.method private startAutoGO()V
    .locals 3

    .prologue
    .line 1409
    const-string v0, "WifiDisplaySettings"

    const-string v1, "Starting Autonomous GO..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$12;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$12;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1424
    return-void
.end method

.method private stopAutoGO()V
    .locals 3

    .prologue
    .line 1428
    const-string v0, "WifiDisplaySettings"

    const-string v1, "Stopping Autonomous GO..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$13;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$13;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1443
    return-void
.end method

.method private switchChanged(Z)V
    .locals 5
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1568
    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->preChecked:Z

    if-ne p1, v2, :cond_0

    .line 1590
    :goto_0
    return-void

    .line 1571
    :cond_0
    if-eqz p1, :cond_1

    .line 1573
    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 1574
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1575
    const-string v0, "WifiDisplaySettings"

    const-string v1, "onCheckedChanged() : already WfdConnected!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1579
    :cond_1
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 1580
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isChecked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_on"

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1585
    if-eqz p1, :cond_3

    .line 1586
    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    .line 1589
    :cond_3
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->preChecked:Z

    goto :goto_0
.end method


# virtual methods
.method public addToVZWTextPreference(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 1078
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1079
    .local v0, "textpreference":Landroid/preference/Preference;
    const v1, 0x7f040243

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 1080
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 1081
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 1082
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1084
    return-void
.end method

.method public dismissHelpDialog()V
    .locals 4

    .prologue
    .line 1126
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_0

    .line 1127
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 1128
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1133
    :cond_0
    :goto_0
    return-void

    .line 1130
    :catch_0
    move-exception v0

    .line 1131
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getHelpPackageVersionCode(Ljava/lang/String;)I
    .locals 5
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 764
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 766
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 767
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 768
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v4, 0xa
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 304
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 306
    const-string v0, "WifiDisplaySettings"

    const-string v1, "onActivityCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    .line 312
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->switchChanged(Z)V

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    .line 315
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->registerForContextMenu(Landroid/view/View;)V

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_certification_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_wps_config"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->update()V

    .line 327
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-nez v0, :cond_1

    .line 329
    const-string v0, "WifiDisplaySettings"

    const-string v1, "Connected but mWifiDisplayOnSetting false, so change status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 334
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 385
    :pswitch_0
    const-string v0, "WifiDisplaySettings"

    const-string v1, "Btn_ScanStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 388
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v0

    if-nez v0, :cond_3

    .line 392
    const-string v0, "WifiDisplaySettings"

    const-string v1, "scanWifiDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 395
    const-string v0, "WifiDisplaySettings"

    const-string v1, "onOptionsItemSelected scanWifiDisplays"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startScanWifiDisplays()V

    goto :goto_0

    .line 400
    :cond_3
    const-string v0, "WifiDisplaySettings"

    const-string v1, "stopWifiDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopScanWifiDisplays()V

    goto :goto_0

    .line 406
    :pswitch_1
    const-string v0, "WifiDisplaySettings"

    const-string v1, "Btn_EndConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->showDisconnectDialog()V

    goto :goto_0

    .line 383
    :pswitch_data_0
    .packed-switch 0x7f100521
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v2, 0x7f0400c8

    .line 621
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->setMenuIcon()V

    .line 624
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 626
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 627
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    const v0, 0x7f0a1756

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->showHelpDialog(II)V

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    if-nez v0, :cond_0

    .line 631
    const v0, 0x7f0a1755

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->showHelpDialog(II)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 676
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 677
    const-string v0, "WifiDisplaySettings"

    const-string v1, "MENU_ID_PIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectWifiDisplayWithPin(Ljava/lang/String;)V

    .line 682
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 690
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 685
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 687
    const-string v0, "WifiDisplaySettings"

    const-string v1, "user press to rename!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDongleRenameDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 263
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 264
    const v1, 0x7f0a034a

    iput v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTitleId:I

    .line 267
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->checkDebugLogEnable()V

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    .line 272
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdBrokerRunning()Z

    move-result v1

    if-ne v1, v5, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DETACH_WFD_BROKER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 278
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string v2, "wifip2p"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 280
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 282
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 283
    const v1, 0x7f0700fb

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->addPreferencesFromResource(I)V

    .line 284
    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings;->setHasOptionsMenu(Z)V

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/wfd/WfdPickerDialog;

    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "motion_recognition"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 288
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 291
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.allshare.intent.action.CAST_START"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    const-string v1, "deviceAddress"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceAddress:Ljava/lang/String;

    .line 297
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v1, :cond_1

    .line 298
    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate() : mInPickerDialog="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_1
    return-void

    .line 294
    :cond_2
    const-string v1, "cause"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->extraCauseOfStart:I

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 639
    instance-of v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v1, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 642
    .local v0, "preference":Landroid/preference/Preference;
    const v1, 0x7f0a0606

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 643
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    .line 644
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnecting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 645
    instance-of v1, v0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v1, :cond_0

    .line 646
    check-cast v0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    .end local v0    # "preference":Landroid/preference/Preference;
    invoke-virtual {v0}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 647
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->isConnWithPinSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 648
    const-string v1, "WifiDisplaySettings"

    const-string v2, "user press to connect with pin!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v1, 0x4

    const v2, 0x7f0a0624

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 652
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->dismissHelpDialog()V

    .line 654
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v1, :cond_0

    .line 655
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$1;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 666
    .restart local v0    # "preference":Landroid/preference/Preference;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isDongleRenameAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    instance-of v1, v0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v1, :cond_0

    .line 668
    const/4 v1, 0x5

    const v2, 0x7f0a0625

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 695
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v0

    if-ne v0, v1, :cond_2

    const v0, 0x7f0a0943

    :goto_0
    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    .line 702
    const/4 v0, 0x2

    const v3, 0x7f0a05da

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    .line 706
    const-string v0, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check K model = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isHelpSupported()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const-string v0, "com.samsung.helphub"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getHelpPackageVersionCode(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    const-string v0, "com.samsung.helphub"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getHelpPackageVersionCode(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isHelpSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    const/4 v0, 0x3

    const v3, 0x7f0a05df

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->helpMenu:Landroid/view/MenuItem;

    .line 713
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launch_from_help"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->helpMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 718
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->setMenuIcon()V

    .line 721
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 722
    return-void

    .line 696
    :cond_2
    const v0, 0x7f0a05d9

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f090054

    const v5, 0x7f020750

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 338
    const-string v1, "WifiDisplaySettings"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v0, 0x0

    .line 341
    .local v0, "sMainView":Landroid/view/View;
    invoke-static {}, Landroid/util/GeneralUtil;->isPhone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    const v1, 0x7f040240

    invoke-virtual {p1, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 343
    const v1, 0x7f100523

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceFoundTitle:Landroid/widget/LinearLayout;

    .line 344
    const v1, 0x7f100524

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceFoundButton:Landroid/widget/LinearLayout;

    .line 346
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v1, :cond_0

    .line 347
    const v1, 0x7f100521

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    .line 348
    const v1, 0x7f100522

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEndConnect:Landroid/widget/Button;

    .line 349
    const v1, 0x7f100520

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mButtonLayout:Landroid/widget/LinearLayout;

    .line 351
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mButtonLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f020641

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 352
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEndConnect:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 353
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 354
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 355
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEndConnect:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 358
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEndConnect:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 362
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEndConnect:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 364
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceFoundTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 365
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceFoundButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 375
    :goto_0
    const v1, 0x7f10051f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceText:Landroid/widget/TextView;

    .line 376
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceText:Landroid/widget/TextView;

    const v2, 0x7f0a0622

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 378
    return-object v0

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceFoundTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceFoundButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 372
    :cond_1
    const v1, 0x7f04023f

    invoke-virtual {p1, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDetach()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 464
    const-string v0, "WifiDisplaySettings"

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 467
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v0, :cond_1

    .line 468
    const-string v0, "wlan.wfd.settingontop"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 474
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSetPrevSettingsDetach:Z

    if-eqz v0, :cond_2

    .line 476
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSetPrevSettingsDetach:Z

    .line 495
    :cond_0
    :goto_1
    return-void

    .line 470
    :cond_1
    const-string v0, "wlan.wfd.pickerdialogontop"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanInProgress:Z

    if-eqz v0, :cond_3

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopScanWifiDisplays()V

    .line 483
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-ne v0, v3, :cond_4

    .line 484
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v1, Landroid/hardware/display/DisplayManager$WfdAppState;->TEARDOWN:Landroid/hardware/display/DisplayManager$WfdAppState;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V

    .line 487
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_5

    .line 488
    invoke-direct {p0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->switchChanged(Z)V

    .line 491
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdBrokerRunning()Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DETACH_WFD_BROKER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 726
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 760
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_1
    return v1

    .line 728
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 730
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 732
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 733
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v2

    if-nez v2, :cond_3

    .line 734
    const-string v2, "WifiDisplaySettings"

    const-string v3, "scanWifiDisplay"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 737
    const-string v2, "WifiDisplaySettings"

    const-string v3, "onOptionsItemSelected scanWifiDisplays"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startScanWifiDisplays()V

    goto :goto_1

    .line 741
    :cond_3
    const-string v2, "WifiDisplaySettings"

    const-string v3, "stopWifiDisplay"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopScanWifiDisplays()V

    goto :goto_1

    .line 747
    :pswitch_1
    const/4 v0, 0x0

    .line 748
    .local v0, "intentToHelpActivity":Landroid/content/Intent;
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    invoke-virtual {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->getHelpPackageVersionCode(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intentToHelpActivity":Landroid/content/Intent;
    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 751
    .restart local v0    # "intentToHelpActivity":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 752
    const-string v2, "helphub:section"

    const-string v3, "allshare_cast"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 757
    .end local v0    # "intentToHelpActivity":Landroid/content/Intent;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->showDisconnectDialog()V

    goto/16 :goto_0

    .line 726
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 499
    const-string v1, "WifiDisplaySettings"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :try_start_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 502
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v1, :cond_4

    .line 503
    const-string v1, "wlan.wfd.settingontop"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 509
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    invoke-interface {v1}, Landroid/view/ContextMenu;->close()V

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiIBSSEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 514
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHasOxygenPaused:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v1, :cond_2

    .line 523
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 525
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    if-eq v1, v4, :cond_3

    .line 526
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v2, Landroid/hardware/display/DisplayManager$WfdAppState;->PAUSE:Landroid/hardware/display/DisplayManager$WfdAppState;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V

    .line 527
    :cond_3
    return-void

    .line 505
    :cond_4
    :try_start_1
    const-string v1, "wlan.wfd.pickerdialogontop"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause IllegalArgumentException e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 779
    instance-of v2, p2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 780
    check-cast v1, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    .line 781
    .local v1, "p":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    invoke-virtual {v1}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 783
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 784
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->showDisconnectDialog()V

    .line 791
    .end local v0    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v1    # "p":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 786
    .restart local v0    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v1    # "p":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    .line 787
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    .line 788
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectWifiDisplay(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 414
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 415
    const-string v2, "WifiDisplaySettings"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v2, :cond_4

    .line 417
    const-string v2, "wlan.wfd.settingontop"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v3, Landroid/hardware/display/DisplayManager$WfdAppState;->RESUME:Landroid/hardware/display/DisplayManager$WfdAppState;

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V

    .line 423
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 424
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    const-string v2, "android.intent.action.DETACH_WIFIDISPLAY_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 428
    const-string v2, "wlan.wfd.autoconnect"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    .line 429
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProp wlan.wfd.autoconnect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->update()V

    .line 436
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mGlobalEditDeviceName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->showInputMethod()V

    .line 441
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCanShake:Z

    if-eqz v2, :cond_1

    .line 442
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 446
    :cond_1
    const/4 v0, 0x1

    .line 447
    .local v0, "enabledMDM":Z
    if-eqz v0, :cond_2

    .line 448
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 449
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v2, :cond_2

    .line 450
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 453
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v5}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 455
    invoke-direct {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings;->switchChanged(Z)V

    .line 456
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finish()V

    .line 460
    :cond_3
    return-void

    .line 419
    .end local v0    # "enabledMDM":Z
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_4
    const-string v2, "wlan.wfd.pickerdialogontop"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public showHelpDialog(II)V
    .locals 7
    .param p1, "resID"    # I
    .param p2, "layout"    # I

    .prologue
    .line 1088
    const/4 v3, 0x0

    .line 1089
    .local v3, "created":Z
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1091
    .local v0, "activity":Landroid/app/Activity;
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v5, :cond_0

    .line 1092
    new-instance v5, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-direct {v5, v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 1093
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 1094
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v5, v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1095
    const/4 v3, 0x1

    .line 1098
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v6, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v5, v6}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 1099
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1101
    .local v2, "bubbleView":Landroid/view/View;
    const v5, 0x7f100008

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1102
    .local v4, "summary":Landroid/widget/TextView;
    if-nez v4, :cond_1

    .line 1103
    const v5, 0x7f1001db

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "summary":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 1105
    .restart local v4    # "summary":Landroid/widget/TextView;
    :cond_1
    if-eqz v4, :cond_2

    .line 1106
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1108
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v5, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 1109
    const v5, 0x7f100003

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 1110
    .local v1, "btnClose":Landroid/widget/ImageButton;
    if-eqz v1, :cond_3

    .line 1111
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 1112
    new-instance v5, Lcom/android/settings/wfd/WifiDisplaySettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$2;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1119
    :cond_3
    if-eqz v3, :cond_4

    .line 1120
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v5}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 1122
    :cond_4
    return-void
.end method

.method public startScanWifiDisplays()V
    .locals 4

    .prologue
    .line 1192
    const-string v0, "WifiDisplaySettings"

    const-string v1, "startScanWifiDisplays"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanInProgress:Z

    .line 1195
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1196
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    .line 1197
    return-void
.end method

.method public stopScanWifiDisplays()V
    .locals 2

    .prologue
    .line 1200
    const-string v0, "WifiDisplaySettings"

    const-string v1, "stopScanWifiDisplays"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanInProgress:Z

    .line 1203
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1204
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->stopScanWifiDisplays()V

    .line 1205
    return-void
.end method

.method protected update()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 800
    const-string v0, "WifiDisplaySettings"

    const-string v3, "update"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->checkExceptionalCase()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_0

    .line 803
    const-string v0, "WifiDisplaySettings"

    const-string v1, "group play is running!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a1d4d

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 805
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finish()V

    .line 830
    :goto_0
    return-void

    .line 809
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_display_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 811
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_display_certification_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    .line 813
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_wps_config"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 815
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-nez v0, :cond_1

    .line 816
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finish()V

    .line 821
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_2

    .line 825
    const-string v0, "WifiDisplaySettings"

    const-string v1, "update scanWifiDisplays"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startScanWifiDisplays()V

    .line 829
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->applyState()V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 809
    goto :goto_1

    :cond_4
    move v1, v2

    .line 811
    goto :goto_2
.end method
