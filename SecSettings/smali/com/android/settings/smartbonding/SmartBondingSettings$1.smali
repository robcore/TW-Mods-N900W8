.class Lcom/android/settings/smartbonding/SmartBondingSettings$1;
.super Landroid/os/Handler;
.source "SmartBondingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/smartbonding/SmartBondingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartbonding/SmartBondingSettings;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$000(Lcom/android/settings/smartbonding/SmartBondingSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$100(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$000(Lcom/android/settings/smartbonding/SmartBondingSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$200(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    goto :goto_0

    .line 114
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$000(Lcom/android/settings/smartbonding/SmartBondingSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$300(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    goto :goto_0

    .line 119
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$000(Lcom/android/settings/smartbonding/SmartBondingSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$400(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
