.class Lcom/android/settings/wifi/WifiCallingEnabler$1;
.super Ljava/lang/Object;
.source "WifiCallingEnabler.java"

# interfaces
.implements Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiCallingEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiCallingEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiCallingEnabler;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings/wifi/WifiCallingEnabler$1;->this$0:Lcom/android/settings/wifi/WifiCallingEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 47
    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler$1;->this$0:Lcom/android/settings/wifi/WifiCallingEnabler;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiCallingEnabler;->access$000(Lcom/android/settings/wifi/WifiCallingEnabler;)Landroid/widget/Switch;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 48
    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler$1;->this$0:Lcom/android/settings/wifi/WifiCallingEnabler;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiCallingEnabler;->access$000(Lcom/android/settings/wifi/WifiCallingEnabler;)Landroid/widget/Switch;

    move-result-object v4

    if-eq v3, p1, :cond_0

    if-ne v5, p1, :cond_3

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 49
    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler$1;->this$0:Lcom/android/settings/wifi/WifiCallingEnabler;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiCallingEnabler;->access$000(Lcom/android/settings/wifi/WifiCallingEnabler;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiCallingEnabler$1;->this$0:Lcom/android/settings/wifi/WifiCallingEnabler;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 51
    if-eq v5, p1, :cond_1

    const/4 v1, 0x2

    if-ne v1, p1, :cond_4

    :cond_1
    move v0, v3

    .line 52
    .local v0, "isTransitioning":Z
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler$1;->this$0:Lcom/android/settings/wifi/WifiCallingEnabler;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiCallingEnabler;->access$000(Lcom/android/settings/wifi/WifiCallingEnabler;)Landroid/widget/Switch;

    move-result-object v4

    if-nez v0, :cond_5

    move v1, v3

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 54
    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler$1;->this$0:Lcom/android/settings/wifi/WifiCallingEnabler;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiCallingEnabler;->access$100(Lcom/android/settings/wifi/WifiCallingEnabler;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne v3, p1, :cond_2

    .line 55
    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler$1;->this$0:Lcom/android/settings/wifi/WifiCallingEnabler;

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiCallingEnabler;->access$102(Lcom/android/settings/wifi/WifiCallingEnabler;Z)Z

    .line 56
    if-ne v3, p1, :cond_6

    :goto_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler$1;->this$0:Lcom/android/settings/wifi/WifiCallingEnabler;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiCallingEnabler;->access$200(Lcom/android/settings/wifi/WifiCallingEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/settings/wifi/WfcHelper;->enableWifi(ZLandroid/content/Context;)V

    .line 58
    :cond_2
    return-void

    .end local v0    # "isTransitioning":Z
    :cond_3
    move v1, v2

    .line 48
    goto :goto_0

    :cond_4
    move v0, v2

    .line 51
    goto :goto_1

    .restart local v0    # "isTransitioning":Z
    :cond_5
    move v1, v2

    .line 52
    goto :goto_2

    :cond_6
    move v3, v2

    .line 56
    goto :goto_3
.end method
