.class Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;
.super Landroid/database/ContentObserver;
.source "MobileDataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MobileDataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataEnabledObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MobileDataEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MobileDataEnabler;)V
    .locals 2

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;->this$0:Lcom/android/settings/MobileDataEnabler;

    .line 343
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 344
    const-string v0, "MobileDataEnabler"

    const-string v1, "DataEnabledObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 349
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 350
    const-string v3, "MobileDataEnabler"

    const-string v4, "DataEnabledObserver().onChange()"

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;->this$0:Lcom/android/settings/MobileDataEnabler;

    iget-object v4, p0, Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-static {v4}, Lcom/android/settings/MobileDataEnabler;->access$000(Lcom/android/settings/MobileDataEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/MobileDataEnabler;->access$202(Lcom/android/settings/MobileDataEnabler;I)I

    .line 353
    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-static {v3}, Lcom/android/settings/MobileDataEnabler;->access$000(Lcom/android/settings/MobileDataEnabler;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 355
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const-string v3, "gsm.sim.currentcardstatus"

    const-string v4, "9"

    invoke-static {v3, v6, v4}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "cardStatus1":Ljava/lang/String;
    const-string v3, "gsm.sim.currentcardstatus"

    const-string v4, "9"

    invoke-static {v3, v7, v4}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "cardStatus2":Ljava/lang/String;
    const-string v3, "3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "3"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-static {v3}, Lcom/android/settings/MobileDataEnabler;->access$200(Lcom/android/settings/MobileDataEnabler;)I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 360
    :cond_1
    const-string v3, "MobileDataEnabler"

    const-string v4, " onChange setChecked , false"

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-virtual {v3, v6}, Lcom/android/settings/MobileDataEnabler;->setSwitchChecked(Z)V

    .line 369
    :goto_0
    return-void

    .line 363
    :cond_2
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 364
    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-static {v3}, Lcom/android/settings/MobileDataEnabler;->access$100(Lcom/android/settings/MobileDataEnabler;)Lcom/android/settings/MobileDataEnabler$SwitchHandler;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/settings/MobileDataEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 366
    :cond_3
    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler$DataEnabledObserver;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-static {v3}, Lcom/android/settings/MobileDataEnabler;->access$100(Lcom/android/settings/MobileDataEnabler;)Lcom/android/settings/MobileDataEnabler$SwitchHandler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/settings/MobileDataEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
