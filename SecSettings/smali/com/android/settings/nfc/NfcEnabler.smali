.class public Lcom/android/settings/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;
    }
.end annotation


# instance fields
.field private final mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

.field private final mContext:Landroid/content/Context;

.field private mDevSettingCr:Landroid/database/Cursor;

.field private mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcSwitch:Landroid/widget/Switch;

.field private final mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

.field private mPolicyEnabled:Z

.field private final mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionCr:Landroid/database/Cursor;

.field private final mTapPay:Landroid/preference/PreferenceScreen;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nfcSwitch"    # Landroid/preference/SwitchPreferenceScreen;
    .param p3, "sBeam"    # Landroid/preference/SwitchPreferenceScreen;

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPolicyEnabled:Z

    .line 94
    new-instance v0, Lcom/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 191
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 192
    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 193
    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    .line 194
    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 195
    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 196
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 197
    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    .line 199
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 200
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPolicyEnabled:Z

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;Landroid/preference/PreferenceScreen;Landroid/preference/SwitchPreferenceScreen;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nfcSwitch"    # Landroid/widget/Switch;
    .param p3, "androidBeam"    # Landroid/preference/SwitchPreferenceScreen;
    .param p4, "readerSwitch"    # Landroid/preference/SwitchPreferenceScreen;
    .param p5, "helpCtrl"    # Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;
    .param p6, "TapPay"    # Landroid/preference/PreferenceScreen;
    .param p7, "sBeam"    # Landroid/preference/SwitchPreferenceScreen;

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPolicyEnabled:Z

    .line 94
    new-instance v0, Lcom/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 166
    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 167
    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    .line 168
    iput-object p5, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    .line 169
    iput-object p4, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 170
    iput-object p3, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 171
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 172
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 173
    iput-object p6, p0, Lcom/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 176
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPolicyEnabled:Z

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcEnabler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/NfcEnabler;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcEnabler;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/nfc/NfcEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcReaderStateChanged(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/nfc/NfcEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcEnabler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/nfc/NfcEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcEnabler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/NfcEnabler;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcEnabler;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/NfcEnabler;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcEnabler;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/nfc/NfcEnabler;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcEnabler;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/nfc/NfcEnabler;->setReaderSwitch(ZZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/nfc/NfcEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->procHelpCtrl(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/nfc/NfcEnabler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->setTapPayPreference(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcEnabler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/nfc/NfcEnabler;)Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcEnabler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/nfc/NfcEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method private getBeamShareActivityState()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 585
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.nfc"

    const-string v3, "com.android.nfc.BeamShareActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 587
    const/4 v1, 0x0

    .line 589
    :cond_0
    return v1
.end method

.method private handleNfcReaderStateChanged(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 678
    packed-switch p1, :pswitch_data_0

    .line 688
    :goto_0
    :pswitch_0
    return-void

    .line 680
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 681
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 684
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 685
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 678
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleNfcStateChanged(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 598
    packed-switch p1, :pswitch_data_0

    .line 675
    :goto_0
    return-void

    .line 600
    :pswitch_0
    invoke-direct {p0, v3, v2}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 601
    invoke-direct {p0, v3, v2}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 602
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 604
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->getBeamShareActivityState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 605
    const-string v0, "NfcEnabler"

    const-string v1, "NFC OFF state and getBeamShareActivityState is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-direct {p0, v2, v3, v2}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 613
    :cond_0
    :goto_1
    invoke-direct {p0, v2, v2, v2}, Lcom/android/settings/nfc/NfcEnabler;->setReaderSwitch(ZZZ)V

    .line 616
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    const-string v0, "GATE"

    const-string v1, "<GATE-M>NFC_OFF</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/nfc/NfcEnabler;->procHelpCtrl(I)V

    .line 621
    invoke-direct {p0, v2}, Lcom/android/settings/nfc/NfcEnabler;->setTapPayPreference(Z)V

    goto :goto_0

    .line 608
    :cond_2
    const-string v0, "NfcEnabler"

    const-string v1, "NFC OFF state and getBeamShareActivityState is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-direct {p0, v2, v2, v2}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    goto :goto_1

    .line 624
    :pswitch_1
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 625
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 626
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 627
    invoke-direct {p0, v3, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 631
    :goto_2
    invoke-direct {p0, v3, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setReaderSwitch(ZZZ)V

    .line 634
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 635
    const-string v0, "GATE"

    const-string v1, "<GATE-M>NFC_ON</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcEnabler;->procHelpCtrl(I)V

    .line 639
    invoke-direct {p0, v3}, Lcom/android/settings/nfc/NfcEnabler;->setTapPayPreference(Z)V

    goto :goto_0

    .line 629
    :cond_4
    invoke-direct {p0, v3, v2, v2}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    goto :goto_2

    .line 642
    :pswitch_2
    invoke-direct {p0, v2, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 643
    invoke-direct {p0, v2, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 644
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_5

    .line 645
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 647
    :cond_5
    invoke-direct {p0, v2, v2, v2}, Lcom/android/settings/nfc/NfcEnabler;->setReaderSwitch(ZZZ)V

    .line 648
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    if-eqz v0, :cond_6

    .line 649
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    invoke-interface {v0}, Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;->dismiss()V

    .line 650
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/settings/nfc/NfcEnabler;->setTapPayPreference(Z)V

    goto/16 :goto_0

    .line 653
    :pswitch_3
    invoke-direct {p0, v2, v2}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 654
    invoke-direct {p0, v2, v2}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 655
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_7

    .line 656
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 658
    :cond_7
    invoke-direct {p0, v2, v2, v2}, Lcom/android/settings/nfc/NfcEnabler;->setReaderSwitch(ZZZ)V

    .line 659
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    if-eqz v0, :cond_8

    .line 660
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    invoke-interface {v0}, Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;->dismiss()V

    .line 661
    :cond_8
    invoke-direct {p0, v2}, Lcom/android/settings/nfc/NfcEnabler;->setTapPayPreference(Z)V

    goto/16 :goto_0

    .line 664
    :pswitch_4
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 665
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 666
    invoke-direct {p0, v2, v2, v2}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 667
    invoke-direct {p0, v3, v2, v2}, Lcom/android/settings/nfc/NfcEnabler;->setReaderSwitch(ZZZ)V

    .line 668
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcEnabler;->procHelpCtrl(I)V

    .line 669
    invoke-direct {p0, v3}, Lcom/android/settings/nfc/NfcEnabler;->setTapPayPreference(Z)V

    goto/16 :goto_0

    .line 598
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private procHelpCtrl(I)V
    .locals 1
    .param p1, "nfcStatus"    # I

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    if-nez v0, :cond_0

    .line 857
    :goto_0
    return-void

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    invoke-interface {v0, p1}, Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;->show(I)V

    goto :goto_0
.end method

.method private setAndroidBeamSwitch(ZZZ)V
    .locals 8
    .param p1, "bEnable"    # Z
    .param p2, "bCheck"    # Z
    .param p3, "bSummary"    # Z

    .prologue
    const v7, 0x7f0a036d

    const/4 v2, 0x0

    .line 767
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mUri:Landroid/net/Uri;

    .line 768
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mUri:Landroid/net/Uri;

    const-string v3, "isAndroidBeamAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    .line 770
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 773
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    const-string v2, "isAndroidBeamAllowed"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    const/4 p1, 0x0

    .line 775
    const/4 p2, 0x0

    .line 776
    const/4 p3, 0x0

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 786
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-nez v0, :cond_2

    .line 811
    :goto_1
    return-void

    .line 778
    :catch_0
    move-exception v6

    .line 779
    .local v6, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_1
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 781
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 792
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 793
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    if-eqz v0, :cond_3

    .line 794
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 796
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 797
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz p2, :cond_4

    const v0, 0x7f0a0397

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_1

    :cond_4
    const v0, 0x7f0a0398

    goto :goto_2

    .line 804
    :cond_5
    if-eqz p3, :cond_6

    .line 805
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v7}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_1

    .line 807
    :cond_6
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v7

    :goto_3
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_1

    :cond_7
    const v0, 0x7f0a036f

    goto :goto_3
.end method

.method private setNfcSwitch(ZZ)V
    .locals 7
    .param p1, "bEnable"    # Z
    .param p2, "bCheck"    # Z

    .prologue
    const/4 v2, 0x0

    .line 694
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_1

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mUri:Landroid/net/Uri;

    .line 700
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mUri:Landroid/net/Uri;

    const-string v3, "isNFCEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    .line 702
    const-string v0, "content://com.sec.knox.provider2/MiscPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mUri:Landroid/net/Uri;

    .line 703
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mUri:Landroid/net/Uri;

    const-string v3, "isNFCStateChangeAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    .line 705
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 706
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 708
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    const-string v2, "isNFCEnabled"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    const/4 p1, 0x0

    .line 710
    const/4 p2, 0x0

    .line 715
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 716
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 720
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 721
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 723
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    const-string v2, "isNFCStateChangeAllowed"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_4

    .line 724
    const/4 p1, 0x0

    .line 729
    :cond_4
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 730
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 741
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    .line 712
    :catch_0
    move-exception v6

    .line 713
    .local v6, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_2
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 715
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 716
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 715
    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    if-eqz v1, :cond_6

    .line 716
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 726
    :catch_1
    move-exception v6

    .line 727
    .restart local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_3
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 729
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 730
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 729
    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    if-eqz v1, :cond_7

    .line 730
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method private setNfcSwitchPref(ZZ)V
    .locals 1
    .param p1, "bEnable"    # Z
    .param p2, "bCheck"    # Z

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-nez v0, :cond_1

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 756
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0
.end method

.method private setReaderSwitch(ZZZ)V
    .locals 2
    .param p1, "state"    # Z
    .param p2, "check"    # Z
    .param p3, "summary"    # Z

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-nez v0, :cond_1

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 841
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    if-eqz v0, :cond_2

    .line 842
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 844
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz p3, :cond_3

    const v0, 0x7f0a0397

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_3
    const v0, 0x7f0a0398

    goto :goto_1
.end method

.method private setTapPayPreference(Z)V
    .locals 2
    .param p1, "bEnable"    # Z

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 826
    :goto_0
    return-void

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 824
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0a0e45

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 519
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isAllEnabled()Z

    move-result v1

    if-eq p2, v1, :cond_0

    .line 534
    if-eqz p2, :cond_2

    .line 535
    invoke-direct {p0, v2, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 536
    invoke-direct {p0, v2, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 537
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 539
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 540
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 541
    .local v0, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a19fc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 542
    const v1, 0x7f0a19fe

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 543
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/nfc/NfcEnabler$8;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/NfcEnabler$8;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 549
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/nfc/NfcEnabler$9;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/NfcEnabler$9;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 555
    new-instance v1, Lcom/android/settings/nfc/NfcEnabler$10;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/NfcEnabler$10;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 560
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 562
    .end local v0    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_3
    invoke-direct {p0, v2, v2}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 563
    invoke-direct {p0, v2, v2}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 564
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const v6, 0x104000a

    const/high16 v5, 0x1040000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 419
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 422
    .local v0, "desiredState":Z
    iget-object v4, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 423
    iget-object v4, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v4

    if-ne v4, v0, :cond_0

    .line 424
    const-string v3, "NfcEnabler"

    const-string v4, "Nfc switch is already in desired state"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :goto_0
    return v2

    .line 428
    :cond_0
    if-eqz v0, :cond_2

    .line 429
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enable()Z

    :cond_1
    :goto_1
    move v2, v3

    .line 515
    goto :goto_0

    .line 431
    :cond_2
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_1

    .line 433
    :cond_3
    iget-object v4, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 434
    iget-object v4, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v4

    if-ne v4, v0, :cond_4

    .line 435
    const-string v3, "NfcEnabler"

    const-string v4, "RW/P2P switch is already in desired state"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 439
    :cond_4
    if-eqz v0, :cond_5

    .line 440
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 441
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    goto :goto_1

    .line 445
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 446
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 447
    .local v1, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a1751

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 448
    const v2, 0x7f0a0369

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 450
    new-instance v2, Lcom/android/settings/nfc/NfcEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/NfcEnabler$2;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 456
    new-instance v2, Lcom/android/settings/nfc/NfcEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/NfcEnabler$3;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 462
    new-instance v2, Lcom/android/settings/nfc/NfcEnabler$4;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/NfcEnabler$4;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 467
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 469
    .end local v1    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_6
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    goto :goto_1

    .line 472
    :cond_7
    iget-object v4, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 473
    iget-object v4, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v4

    if-ne v4, v0, :cond_8

    .line 474
    const-string v3, "NfcEnabler"

    const-string v4, "Android Beam switch is already in desired state"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 478
    :cond_8
    if-eqz v0, :cond_9

    .line 479
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 480
    invoke-direct {p0, v2, v2, v2}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 481
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_beam_state"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 483
    :cond_9
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 484
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 485
    .restart local v1    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a19fd

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 486
    const v3, 0x7f0a19ff

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 487
    new-instance v3, Lcom/android/settings/nfc/NfcEnabler$5;

    invoke-direct {v3, p0}, Lcom/android/settings/nfc/NfcEnabler$5;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v1, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 495
    new-instance v3, Lcom/android/settings/nfc/NfcEnabler$6;

    invoke-direct {v3, p0}, Lcom/android/settings/nfc/NfcEnabler$6;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v1, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 501
    new-instance v3, Lcom/android/settings/nfc/NfcEnabler$7;

    invoke-direct {v3, p0}, Lcom/android/settings/nfc/NfcEnabler$7;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 506
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 508
    .end local v1    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_a
    iget-object v4, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 509
    invoke-direct {p0, v2, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 336
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mUri:Landroid/net/Uri;

    .line 343
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mUri:Landroid/net/Uri;

    const-string v3, "isNFCEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    .line 345
    const-string v0, "content://com.sec.knox.provider2/MiscPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mUri:Landroid/net/Uri;

    .line 346
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mUri:Landroid/net/Uri;

    const-string v3, "isNFCStateChangeAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    .line 348
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 349
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 350
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    const-string v3, "isNFCEnabled"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    const-string v3, "isNFCStateChangeAllowed"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 354
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPolicyEnabled:Z
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 356
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 357
    :catch_0
    move-exception v6

    .line 358
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v0, "NfcEnabler"

    const-string v1, "no BroadcastReceiver to be unregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 363
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v6

    .line 364
    .local v6, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_3
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 366
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 370
    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    if-eqz v0, :cond_6

    .line 371
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 373
    :try_start_4
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    const-string v3, "isNFCStateChangeAllowed"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-eqz v0, :cond_b

    .line 375
    :try_start_5
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 384
    :goto_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 366
    :cond_5
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 376
    :catch_2
    move-exception v6

    .line 377
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6
    const-string v0, "NfcEnabler"

    const-string v1, "no BroadcastReceiver to be unregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 381
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v6

    .line 382
    .local v6, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_7
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 384
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 388
    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :cond_6
    :goto_4
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPolicyEnabled:Z

    if-eqz v0, :cond_7

    .line 390
    :try_start_8
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_4

    .line 398
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_8

    .line 399
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 402
    :cond_8
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_9

    .line 403
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 406
    :cond_9
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_a

    .line 407
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 410
    :cond_a
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 384
    :cond_b
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 391
    :catch_4
    move-exception v6

    .line 392
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "NfcEnabler"

    const-string v1, "no BroadcastReceiver to be unregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public resume()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 214
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const-string v0, "NfcEnabler"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mUri:Landroid/net/Uri;

    .line 222
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mUri:Landroid/net/Uri;

    const-string v3, "isNFCEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    .line 224
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    const-string v3, "isNFCEnabled"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 229
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 230
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 231
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/nfc/NfcEnabler;->setReaderSwitch(ZZZ)V

    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcEnabler;->setTapPayPreference(Z)V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPolicyEnabled:Z
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_3
    :goto_1
    const-string v0, "content://com.sec.knox.provider2/MiscPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mUri:Landroid/net/Uri;

    .line 244
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mUri:Landroid/net/Uri;

    const-string v3, "isNFCStateChangeAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    .line 246
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 247
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 249
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    const-string v3, "isNFCStateChangeAllowed"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 251
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 279
    :cond_4
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPolicyEnabled:Z
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 285
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 236
    :catch_0
    move-exception v6

    .line 237
    .local v6, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_2
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 255
    :pswitch_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 256
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 257
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/nfc/NfcEnabler;->setReaderSwitch(ZZZ)V

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcEnabler;->setTapPayPreference(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_4

    .line 260
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V
    :try_end_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 282
    :catch_1
    move-exception v6

    .line 283
    .restart local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_4
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 285
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 289
    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :cond_5
    :goto_3
    iput-boolean v7, p0, Lcom/android/settings/nfc/NfcEnabler;->mPolicyEnabled:Z

    .line 293
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    .line 295
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_6

    .line 296
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 299
    :cond_6
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_7

    .line 300
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 303
    :cond_7
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_8

    .line 304
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 307
    :cond_8
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_9

    .line 308
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 311
    :cond_9
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    .line 312
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mUri:Landroid/net/Uri;

    .line 316
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mUri:Landroid/net/Uri;

    const-string v3, "isAndroidBeamAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    .line 318
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 321
    :try_start_5
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    const-string v2, "isAndroidBeamAllowed"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 322
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V
    :try_end_5
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 327
    :cond_a
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 266
    :pswitch_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_6
    invoke-direct {p0, v0, v1}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 267
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 268
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/nfc/NfcEnabler;->setReaderSwitch(ZZZ)V

    .line 269
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcEnabler;->setTapPayPreference(Z)V

    .line 270
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 271
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V
    :try_end_6
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_2

    .line 285
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 273
    :cond_b
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_7
    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V
    :try_end_7
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_2

    .line 285
    :cond_c
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 324
    :catch_2
    move-exception v6

    .line 325
    .restart local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_8
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 327
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 251
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 581
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 575
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    .line 577
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method
