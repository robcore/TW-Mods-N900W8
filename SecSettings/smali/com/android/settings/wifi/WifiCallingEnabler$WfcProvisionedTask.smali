.class Lcom/android/settings/wifi/WifiCallingEnabler$WfcProvisionedTask;
.super Landroid/os/AsyncTask;
.source "WifiCallingEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiCallingEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfcProvisionedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiCallingEnabler;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiCallingEnabler;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/wifi/WifiCallingEnabler$WfcProvisionedTask;->this$0:Lcom/android/settings/wifi/WifiCallingEnabler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiCallingEnabler;Lcom/android/settings/wifi/WifiCallingEnabler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/wifi/WifiCallingEnabler;
    .param p2, "x1"    # Lcom/android/settings/wifi/WifiCallingEnabler$1;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiCallingEnabler$WfcProvisionedTask;-><init>(Lcom/android/settings/wifi/WifiCallingEnabler;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiCallingEnabler$WfcProvisionedTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    .line 64
    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler$WfcProvisionedTask;->this$0:Lcom/android/settings/wifi/WifiCallingEnabler;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiCallingEnabler$WfcProvisionedTask;->this$0:Lcom/android/settings/wifi/WifiCallingEnabler;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiCallingEnabler;->access$200(Lcom/android/settings/wifi/WifiCallingEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/WfcHelper;->isWfcProvisioned(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiCallingEnabler;->access$302(Lcom/android/settings/wifi/WifiCallingEnabler;Z)Z

    .line 65
    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler$WfcProvisionedTask;->this$0:Lcom/android/settings/wifi/WifiCallingEnabler;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiCallingEnabler;->access$300(Lcom/android/settings/wifi/WifiCallingEnabler;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler$WfcProvisionedTask;->this$0:Lcom/android/settings/wifi/WifiCallingEnabler;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiCallingEnabler;->access$200(Lcom/android/settings/wifi/WifiCallingEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/WfcHelper;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oem.smartwifi.WFC_AIR_PLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler$WfcProvisionedTask;->this$0:Lcom/android/settings/wifi/WifiCallingEnabler;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiCallingEnabler;->access$200(Lcom/android/settings/wifi/WifiCallingEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v3

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler$WfcProvisionedTask;->this$0:Lcom/android/settings/wifi/WifiCallingEnabler;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiCallingEnabler;->access$400(Lcom/android/settings/wifi/WifiCallingEnabler;Z)V

    goto :goto_0

    .line 75
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oem.smartwifisupport.WIFI_CALLING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .restart local v0    # "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler$WfcProvisionedTask;->this$0:Lcom/android/settings/wifi/WifiCallingEnabler;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiCallingEnabler;->access$200(Lcom/android/settings/wifi/WifiCallingEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    goto :goto_0

    .line 70
    :catch_1
    move-exception v1

    goto :goto_0
.end method
