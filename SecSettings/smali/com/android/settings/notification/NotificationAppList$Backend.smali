.class public Lcom/android/settings/notification/NotificationAppList$Backend;
.super Ljava/lang/Object;
.source "NotificationAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Backend"
.end annotation


# static fields
.field static sINM:Landroid/app/INotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 537
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHighPriority(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 562
    :try_start_0
    sget-object v2, Lcom/android/settings/notification/NotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v2, p1, p2}, Landroid/app/INotificationManager;->getPackagePriority(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 565
    :cond_0
    :goto_0
    return v1

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NotificationAppList"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getNotificationsBanned(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 552
    :try_start_0
    sget-object v3, Lcom/android/settings/notification/NotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v3, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 553
    .local v1, "enabled":Z
    if-nez v1, :cond_0

    const/4 v2, 0x1

    .line 556
    .end local v1    # "enabled":Z
    :cond_0
    :goto_0
    return v2

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "NotificationAppList"

    const-string v4, "Error calling NoMan"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSensitive(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 582
    :try_start_0
    sget-object v2, Lcom/android/settings/notification/NotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v2, p1, p2}, Landroid/app/INotificationManager;->getPackageVisibilityOverride(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 585
    :cond_0
    :goto_0
    return v1

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NotificationAppList"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setHighPriority(Ljava/lang/String;IZ)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "highPriority"    # Z

    .prologue
    const/4 v1, 0x0

    .line 571
    :try_start_0
    sget-object v3, Lcom/android/settings/notification/NotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    if-eqz p3, :cond_0

    const/4 v2, 0x2

    :goto_0
    invoke-interface {v3, p1, p2, v2}, Landroid/app/INotificationManager;->setPackagePriority(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    const/4 v1, 0x1

    .line 576
    :goto_1
    return v1

    :cond_0
    move v2, v1

    .line 571
    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NotificationAppList"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setNotificationsBanned(Ljava/lang/String;IZ)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "banned"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 542
    :try_start_0
    sget-object v4, Lcom/android/settings/notification/NotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    if-nez p3, :cond_0

    move v3, v1

    :goto_0
    invoke-interface {v4, p1, p2, v3}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_1
    return v1

    :cond_0
    move v3, v2

    .line 542
    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationAppList"

    const-string v3, "Error calling NoMan"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 546
    goto :goto_1
.end method

.method public setSensitive(Ljava/lang/String;IZ)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "sensitive"    # Z

    .prologue
    const/4 v1, 0x0

    .line 591
    :try_start_0
    sget-object v3, Lcom/android/settings/notification/NotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    if-eqz p3, :cond_0

    move v2, v1

    :goto_0
    invoke-interface {v3, p1, p2, v2}, Landroid/app/INotificationManager;->setPackageVisibilityOverride(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    const/4 v1, 0x1

    .line 597
    :goto_1
    return v1

    .line 591
    :cond_0
    const/16 v2, -0x3e8

    goto :goto_0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NotificationAppList"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
