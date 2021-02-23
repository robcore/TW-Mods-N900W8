.class Lcom/android/settings/deviceinfo/Status$3;
.super Landroid/telephony/PhoneStateListener;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/Status;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Status;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Status;II)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$3;->this$0:Lcom/android/settings/deviceinfo/Status;

    iput p3, p0, Lcom/android/settings/deviceinfo/Status$3;->val$slotId:I

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$3;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->access$400(Lcom/android/settings/deviceinfo/Status;)V

    .line 351
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 355
    iget v0, p0, Lcom/android/settings/deviceinfo/Status$3;->val$slotId:I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$3;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/Status;->access$500(Lcom/android/settings/deviceinfo/Status;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$3;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->access$600(Lcom/android/settings/deviceinfo/Status;)V

    .line 358
    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 362
    iget v0, p0, Lcom/android/settings/deviceinfo/Status$3;->val$slotId:I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$3;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/Status;->access$500(Lcom/android/settings/deviceinfo/Status;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$3;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/Status;->access$700(Lcom/android/settings/deviceinfo/Status;Landroid/telephony/ServiceState;)V

    .line 365
    :cond_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 369
    iget v0, p0, Lcom/android/settings/deviceinfo/Status$3;->val$slotId:I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$3;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/Status;->access$500(Lcom/android/settings/deviceinfo/Status;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$3;->this$0:Lcom/android/settings/deviceinfo/Status;

    iget v1, p0, Lcom/android/settings/deviceinfo/Status$3;->val$slotId:I

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status$3;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/Status;->access$500(Lcom/android/settings/deviceinfo/Status;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settings/deviceinfo/Status;->updateSignalStrength(IILandroid/telephony/SignalStrength;)V

    .line 371
    :cond_0
    return-void
.end method
