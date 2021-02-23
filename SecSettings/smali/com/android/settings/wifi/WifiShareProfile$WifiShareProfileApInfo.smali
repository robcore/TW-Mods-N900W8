.class public Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;
.super Ljava/lang/Object;
.source "WifiShareProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiShareProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiShareProfileApInfo"
.end annotation


# instance fields
.field index:Ljava/lang/String;

.field network:Ljava/lang/String;

.field priority:I

.field ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/wifi/WifiShareProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiShareProfile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "i"    # Ljava/lang/String;
    .param p4, "n"    # Ljava/lang/String;
    .param p5, "p"    # I

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p2, p0, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->ssid:Ljava/lang/String;

    .line 171
    iput-object p3, p0, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->index:Ljava/lang/String;

    .line 172
    iput-object p4, p0, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->network:Ljava/lang/String;

    .line 173
    iput p5, p0, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->priority:I

    .line 174
    return-void
.end method
