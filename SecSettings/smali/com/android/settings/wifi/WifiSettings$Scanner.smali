.class Lcom/android/settings/wifi/WifiSettings$Scanner;
.super Landroid/os/Handler;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings;)V
    .locals 1
    .param p2, "wifiSettings"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 442
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 446
    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 447
    return-void
.end method


# virtual methods
.method forceScan()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 456
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings$Scanner;->removeMessages(I)V

    .line 457
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$000(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings$Scanner;->sendEmptyMessage(I)Z

    .line 460
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x2710

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 469
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$100(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    const-string v1, "WifiSettings"

    const-string v2, "Skip scanActive"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p0, v3, v6, v7}, Lcom/android/settings/wifi/WifiSettings$Scanner;->sendEmptyMessageDelayed(IJ)Z

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 475
    iput v3, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 484
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$400(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 485
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 487
    :cond_3
    invoke-virtual {p0, v3, v6, v7}, Lcom/android/settings/wifi/WifiSettings$Scanner;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 476
    :cond_4
    iget v1, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mRetry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mRetry:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 477
    iput v3, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 478
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 479
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 480
    const v1, 0x7f0a03d2

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method pause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 463
    iput v0, p0, Lcom/android/settings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 464
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->removeMessages(I)V

    .line 465
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 450
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings$Scanner;->sendEmptyMessage(I)Z

    .line 453
    :cond_0
    return-void
.end method
