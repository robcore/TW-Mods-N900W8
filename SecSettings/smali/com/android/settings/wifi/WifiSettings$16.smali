.class Lcom/android/settings/wifi/WifiSettings$16;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->showDurationDialog(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 2793
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$16;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2795
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$16;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$2200(Lcom/android/settings/wifi/WifiSettings;)I

    move-result v0

    .line 2796
    .local v0, "networkId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2797
    const-string v1, "WifiSettings"

    const-string v2, "Invalid network id"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    :goto_0
    return-void

    .line 2799
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$16;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$16;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettings;->access$1500(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/settings/wifi/WifiSettings;->access$2400(Lcom/android/settings/wifi/WifiSettings;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method
