.class final Lcom/android/settings/notification/NotificationAppList$1;
.super Ljava/lang/Object;
.source "NotificationAppList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/notification/NotificationAppList$AppRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList$1;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/notification/NotificationAppList$AppRow;Lcom/android/settings/notification/NotificationAppList$AppRow;)I
    .locals 3
    .param p1, "lhs"    # Lcom/android/settings/notification/NotificationAppList$AppRow;
    .param p2, "rhs"    # Lcom/android/settings/notification/NotificationAppList$AppRow;

    .prologue
    .line 368
    const-string v0, "*"

    iget-object v1, p1, Lcom/android/settings/notification/NotificationAppList$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "**"

    iget-object v1, p2, Lcom/android/settings/notification/NotificationAppList$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    :cond_0
    const/4 v0, -0x1

    .line 373
    :goto_0
    return v0

    .line 370
    :cond_1
    const-string v0, "**"

    iget-object v1, p1, Lcom/android/settings/notification/NotificationAppList$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "*"

    iget-object v1, p2, Lcom/android/settings/notification/NotificationAppList$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 371
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 373
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList$1;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings/notification/NotificationAppList$AppRow;->section:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/settings/notification/NotificationAppList$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 364
    check-cast p1, Lcom/android/settings/notification/NotificationAppList$AppRow;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/settings/notification/NotificationAppList$AppRow;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/NotificationAppList$1;->compare(Lcom/android/settings/notification/NotificationAppList$AppRow;Lcom/android/settings/notification/NotificationAppList$AppRow;)I

    move-result v0

    return v0
.end method
