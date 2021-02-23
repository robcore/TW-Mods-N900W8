.class public Lcom/android/settings/AirplaneModeSwitchEnabler;
.super Ljava/lang/Object;
.source "AirplaneModeSwitchEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field isAirplaneModeAllowed:I

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mCheck:Landroid/widget/CheckBox;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOnToggleListener:Lcom/android/settings/ToggleImageView$OnToggleListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mToggleImageView:Lcom/android/settings/ToggleImageView;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field selectionArgs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "false"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->selectionArgs:[Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$1;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirplaneModeSwitchEnabler$2;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 103
    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$3;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mOnToggleListener:Lcom/android/settings/ToggleImageView$OnToggleListener;

    .line 111
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 114
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 115
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirplaneModeSwitchEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AirplaneModeSwitchEnabler;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirplaneModeSwitchEnabler;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/AirplaneModeSwitchEnabler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AirplaneModeSwitchEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->setAirplaneModeOn(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirplaneModeSwitchEnabler;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirplaneModeSwitchEnabler;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirplaneModeSwitchEnabler;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 255
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 256
    .local v2, "serviceState":Landroid/telephony/ServiceState;
    const/4 v0, 0x0

    .line 258
    .local v0, "airplaneModeEnabled":Z
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v7, "isAirplaneModeAllowed"

    iget-object v8, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->selectionArgs:[Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    .line 260
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 261
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 262
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v5, :cond_0

    .line 264
    iget v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v5, v9, :cond_3

    iget v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v5, v3, :cond_3

    .line 265
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 266
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 273
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v4, :cond_1

    .line 274
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 275
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 278
    :cond_1
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    if-eqz v4, :cond_2

    .line 279
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v4, v0}, Lcom/android/settings/ToggleImageView;->updateToggleState(Z)V

    .line 280
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v4, v3}, Lcom/android/settings/ToggleImageView;->setEnabled(Z)V

    .line 310
    :cond_2
    :goto_1
    return-void

    .line 268
    :cond_3
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 269
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 283
    :cond_4
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    move v0, v3

    .line 284
    :goto_2
    const-string v5, "AirplaneModeSwitchEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAirplaneModeChanged : serviceState.getState() return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v5, "AirplaneModeSwitchEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAirplaneModeChanged : airplaneModeEnabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_8

    move v1, v3

    .line 287
    .local v1, "expectAirplaneModeOn":Z
    :goto_3
    if-ne v0, v1, :cond_2

    .line 288
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v5, :cond_5

    .line 290
    iget v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v5, v9, :cond_9

    iget v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v5, v3, :cond_9

    .line 291
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 292
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 299
    :cond_5
    :goto_4
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v4, :cond_6

    .line 300
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 301
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 304
    :cond_6
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    if-eqz v4, :cond_2

    .line 305
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v4, v0}, Lcom/android/settings/ToggleImageView;->updateToggleState(Z)V

    .line 306
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v4, v3}, Lcom/android/settings/ToggleImageView;->setEnabled(Z)V

    goto/16 :goto_1

    .end local v1    # "expectAirplaneModeOn":Z
    :cond_7
    move v0, v4

    .line 283
    goto :goto_2

    :cond_8
    move v1, v4

    .line 286
    goto :goto_3

    .line 294
    .restart local v1    # "expectAirplaneModeOn":Z
    :cond_9
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 295
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_4
.end method

.method private setAirplaneModeOn(Z)V
    .locals 6
    .param p1, "enabling"    # Z

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 216
    :cond_1
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    if-eqz v2, :cond_2

    .line 217
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v2, v1}, Lcom/android/settings/ToggleImageView;->setEnabled(Z)V

    .line 220
    :cond_2
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_4

    .line 224
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 225
    :cond_4
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v1, :cond_5

    .line 226
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 227
    :cond_5
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    if-eqz v1, :cond_6

    .line 228
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v1, p1}, Lcom/android/settings/ToggleImageView;->updateToggleState(Z)V

    .line 231
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    .line 233
    const-string v1, "AirplaneModeSwitchEnabler"

    const-string v2, "Intent to IMSService for sending DE-REG packet"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 236
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 244
    :goto_0
    return-void

    .line 239
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 241
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 242
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method


# virtual methods
.method public changeAirplaneMode(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 607
    invoke-direct {p0, p1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->setAirplaneModeOn(Z)V

    .line 609
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/high16 v9, 0x1040000

    const/4 v8, 0x0

    .line 403
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v6

    if-ne v6, p2, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "DSNETWORK"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 407
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const v7, 0x7f0a1e87

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 411
    :cond_2
    const-string v6, "ril.cdma.inecmmode"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 415
    move v5, p2

    .line 416
    .local v5, "value":Z
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 417
    const-string v6, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 418
    invoke-virtual {p0, v5}, Lcom/android/settings/AirplaneModeSwitchEnabler;->changeAirplaneMode(Z)V

    goto :goto_0

    .line 421
    :cond_3
    if-nez v5, :cond_4

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 423
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 424
    .local v0, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0a07ac

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 425
    const v6, 0x7f0a07ad

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 426
    const v6, 0x7f0a07ae

    new-instance v7, Lcom/android/settings/AirplaneModeSwitchEnabler$7;

    invoke-direct {v7, p0, v5}, Lcom/android/settings/AirplaneModeSwitchEnabler$7;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;Z)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 440
    new-instance v6, Lcom/android/settings/AirplaneModeSwitchEnabler$8;

    invoke-direct {v6, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$8;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    invoke-virtual {v0, v9, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 451
    new-instance v6, Lcom/android/settings/AirplaneModeSwitchEnabler$9;

    invoke-direct {v6, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$9;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 465
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 468
    .end local v0    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/settings/AirplaneModeSwitchEnabler;->changeAirplaneMode(Z)V

    goto :goto_0

    .line 473
    :cond_5
    const v1, 0x7f0a0fb9

    .line 474
    .local v1, "resEnableMsg":I
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 475
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v7, "com.android.mms"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 476
    const v1, 0x7f0a0fbc

    .line 481
    :cond_6
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 482
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 483
    const v1, 0x7f0a0fbd

    .line 492
    :cond_7
    :goto_2
    if-eqz v5, :cond_c

    move v2, v1

    .line 493
    .local v2, "resMsg":I
    :goto_3
    if-eqz v5, :cond_d

    const v4, 0x7f0a0fb7

    .line 494
    .local v4, "resTitle":I
    :goto_4
    if-eqz v5, :cond_e

    const v3, 0x1040737

    .line 496
    .local v3, "resOK":I
    :goto_5
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v6, :cond_8

    .line 497
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 498
    const v2, 0x7f0a07ad

    .line 499
    const v4, 0x7f0a07ac

    .line 500
    const v3, 0x7f0a07ae

    .line 504
    :cond_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 505
    .restart local v0    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 506
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 507
    new-instance v6, Lcom/android/settings/AirplaneModeSwitchEnabler$10;

    invoke-direct {v6, p0, v5}, Lcom/android/settings/AirplaneModeSwitchEnabler$10;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;Z)V

    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 524
    new-instance v6, Lcom/android/settings/AirplaneModeSwitchEnabler$11;

    invoke-direct {v6, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$11;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    invoke-virtual {v0, v9, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 535
    new-instance v6, Lcom/android/settings/AirplaneModeSwitchEnabler$12;

    invoke-direct {v6, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$12;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 546
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 478
    .end local v0    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    .end local v2    # "resMsg":I
    .end local v3    # "resOK":I
    .end local v4    # "resTitle":I
    :cond_9
    const v1, 0x7f0a0fbd

    goto :goto_1

    .line 485
    :cond_a
    const v1, 0x7f0a0fbb

    goto :goto_2

    .line 488
    :cond_b
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 489
    const v1, 0x7f0a0fbe

    goto :goto_2

    .line 492
    :cond_c
    const v2, 0x7f0a0fb8

    goto :goto_3

    .line 493
    .restart local v2    # "resMsg":I
    :cond_d
    const v4, 0x7f0a01db

    goto :goto_4

    .line 494
    .restart local v4    # "resTitle":I
    :cond_e
    const v3, 0x1040736

    goto :goto_5
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 183
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-eqz v1, :cond_0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    .line 195
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    if-eqz v1, :cond_3

    .line 198
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v1, v3}, Lcom/android/settings/ToggleImageView;->setOnToggleListener(Lcom/android/settings/ToggleImageView$OnToggleListener;)V

    .line 201
    :cond_3
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 202
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 204
    :cond_4
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "AirplaneModeSwitchEnabler"

    const-string v2, "Receiver not registered"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 145
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v2, "isAirplaneModeAllowed"

    iget-object v3, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->selectionArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    .line 149
    iget v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v0, v4, :cond_5

    .line 150
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    invoke-virtual {v0, v4}, Lcom/android/settings/ToggleImageView;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/ToggleImageView;->updateToggleState(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/android/settings/ToggleImageView;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mOnToggleListener:Lcom/android/settings/ToggleImageView$OnToggleListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/ToggleImageView;->setOnToggleListener(Lcom/android/settings/ToggleImageView$OnToggleListener;)V

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 180
    :cond_4
    return-void

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public setCheckBox(Landroid/widget/CheckBox;)V
    .locals 2
    .param p1, "check_"    # Landroid/widget/CheckBox;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-ne v0, p1, :cond_0

    .line 583
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 578
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    .line 579
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 581
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 582
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 6
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 586
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 603
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 590
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 591
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 594
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v2, "isAirplaneModeAllowed"

    iget-object v3, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->selectionArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    .line 595
    iget v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v0, v5, :cond_1

    .line 596
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 597
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 600
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
