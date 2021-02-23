.class public Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;
.super Landroid/preference/Preference;
.source "WifiApConnectedDevice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final BUTTON_INVISIBLE:I

.field private final BUTTON_VISIBLE_MINUS:I

.field private final BUTTON_VISIBLE_PLUS:I

.field private dialog:Landroid/app/AlertDialog;

.field private mConnectedTime:Ljava/lang/Long;

.field private mContext:Landroid/content/Context;

.field private mDeviceName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIp:Ljava/lang/String;

.field private mIsButtonState:I

.field private mIsPushShift:I

.field private mMac:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "mac"    # Ljava/lang/String;
    .param p4, "ip"    # Ljava/lang/String;
    .param p5, "connectedTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 65
    iput v3, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->BUTTON_INVISIBLE:I

    .line 66
    iput v4, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->BUTTON_VISIBLE_PLUS:I

    .line 67
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->BUTTON_VISIBLE_MINUS:I

    .line 76
    iput v3, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 77
    iput v4, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsPushShift:I

    .line 274
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mHandler:Landroid/os/Handler;

    .line 82
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    .line 87
    const-string v2, "SPRINT"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 89
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDhcpServerConfiguration()Landroid/net/DhcpServerConfiguration;

    move-result-object v1

    .line 90
    .local v1, "config":Landroid/net/DhcpServerConfiguration;
    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget v4, v1, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    mul-int/lit8 v4, v4, 0x3c

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mConnectedTime:Ljava/lang/Long;

    .line 94
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "config":Landroid/net/DhcpServerConfiguration;
    :goto_0
    const v2, 0x7f0401b0

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->setLayoutResource(I)V

    .line 95
    return-void

    .line 92
    :cond_0
    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0xe10

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mConnectedTime:Ljava/lang/Long;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method private reloadWhiteList()V
    .locals 4

    .prologue
    .line 328
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 329
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 330
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 331
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 333
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 335
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private showDialog(I)V
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/16 v4, 0xa

    const/4 v5, 0x1

    .line 213
    packed-switch p1, :pswitch_data_0

    .line 232
    :goto_0
    :pswitch_0
    return-void

    .line 215
    :pswitch_1
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiApWhiteList;->getSize()I

    move-result v0

    if-lt v0, v4, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a052c

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 217
    .local v6, "msg":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 218
    .local v7, "toast":Landroid/widget/Toast;
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 223
    .end local v6    # "msg":Ljava/lang/String;
    .end local v7    # "toast":Landroid/widget/Toast;
    :cond_0
    :pswitch_2
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    move v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->dialog:Landroid/app/AlertDialog;

    .line 231
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 226
    :pswitch_3
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->dialog:Landroid/app/AlertDialog;

    goto :goto_1

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 189
    instance-of v1, p1, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    if-nez v1, :cond_0

    .line 190
    const/4 v1, 0x1

    .line 193
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 192
    check-cast v0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    .line 193
    .local v0, "other":Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getConnectedTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mConnectedTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 99
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->dialog:Landroid/app/AlertDialog;

    .line 100
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v4

    .line 101
    .local v4, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiApWhiteList;->isContains(Ljava/lang/String;)Z

    move-result v2

    .line 102
    .local v2, "isContains":Z
    if-eqz v2, :cond_0

    .line 103
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 104
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u200f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 112
    const v5, 0x7f1003ba

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 114
    .local v0, "btn":Landroid/widget/LinearLayout;
    const v5, 0x7f1003bc

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 115
    .local v1, "btnImg":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 118
    .local v3, "wc":Landroid/net/wifi/WifiConfiguration;
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 119
    if-nez v2, :cond_1

    .line 120
    iput v8, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 121
    const v5, 0x7f0203c1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    new-instance v5, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$1;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    new-instance v5, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$2;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a04e3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 173
    :cond_1
    :goto_1
    const v5, 0x7f1003b9

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$5;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$5;-><init>(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    return-void

    .line 108
    .end local v0    # "btn":Landroid/widget/LinearLayout;
    .end local v1    # "btnImg":Landroid/widget/ImageView;
    .end local v3    # "wc":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 137
    .restart local v0    # "btn":Landroid/widget/LinearLayout;
    .restart local v1    # "btnImg":Landroid/widget/ImageView;
    .restart local v3    # "wc":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v5, v8, :cond_4

    .line 138
    if-eqz v2, :cond_1

    .line 139
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 140
    const v5, 0x7f0203c2

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    new-instance v5, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$3;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    new-instance v5, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$4;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0509

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 169
    :cond_4
    iput v7, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 170
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 278
    instance-of v4, p1, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v4, :cond_0

    .line 279
    const-string v4, "WifiApConnectedDevice"

    const-string v5, "onClick"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p1

    .line 280
    check-cast v3, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .line 281
    .local v3, "whitelsitDialog":Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 283
    invoke-virtual {v3}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 325
    .end local v3    # "whitelsitDialog":Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;
    .end local p1    # "dialog":Landroid/content/DialogInterface;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 285
    .restart local v3    # "whitelsitDialog":Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;
    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :pswitch_1
    const-string v4, "WifiApConnectedDevice"

    const-string v5, "ADD_DEVICE_FROM_CONNECTED"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    check-cast p1, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 288
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const v2, 0x7f0a04f1

    .line 308
    .local v2, "msgId":I
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$6;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$6;-><init>(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;I)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->notifyHierarchyChanged()V

    goto :goto_0

    .line 292
    .end local v2    # "msgId":I
    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :pswitch_2
    const-string v4, "WifiApConnectedDevice"

    const-string v5, "REMOVE_DEVICE_FROM_CONNECTED"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    .line 294
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->reloadWhiteList()V

    .line 295
    const v2, 0x7f0a04f2

    .line 297
    .restart local v2    # "msgId":I
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 298
    .local v1, "msg":Landroid/os/Message;
    const/4 v4, 0x4

    iput v4, v1, Landroid/os/Message;->what:I

    .line 299
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 300
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "mac"

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 302
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_1

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x1

    .line 236
    const-string v1, "WifiApConnectedDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---> onKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 238
    sparse-switch p2, :sswitch_data_0

    .line 267
    :cond_0
    const/16 v1, 0x3b

    if-ne p2, v1, :cond_3

    .line 268
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsPushShift:I

    .line 271
    :cond_1
    :goto_0
    return v0

    .line 240
    :sswitch_0
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 243
    :sswitch_1
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    if-ne v1, v0, :cond_1

    .line 244
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 247
    :sswitch_2
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 248
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 251
    :sswitch_3
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsPushShift:I

    if-nez v1, :cond_1

    .line 252
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    if-ne v1, v0, :cond_1

    .line 253
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 257
    :sswitch_4
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 258
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->dialog:Landroid/app/AlertDialog;

    instance-of v1, v1, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;

    if-nez v1, :cond_1

    .line 259
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 262
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 271
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 238
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_4
        0x42 -> :sswitch_0
        0x45 -> :sswitch_2
        0x46 -> :sswitch_3
        0x51 -> :sswitch_1
    .end sparse-switch
.end method
