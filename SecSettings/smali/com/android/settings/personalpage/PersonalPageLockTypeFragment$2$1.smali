.class Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;
.super Ljava/lang/Object;
.source "PersonalPageLockTypeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iput-object p2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, -0x1

    .line 94
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v0, :pswitch_data_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->access$300(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->access$300(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v0, :cond_2

    .line 101
    const-string v0, "PersonalPageLockTypeFragment"

    const-string v1, "CONFIRM_REQUEST_FINGERPRINT_CHANGE_CHECK success"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->access$400(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "personal_mode_lock_type"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-ne v0, v2, :cond_0

    .line 105
    const-string v0, "PersonalPageLockTypeFragment"

    const-string v1, "CONFIRM_REQUEST_FINGERPRINT_CHANGE_CHECK failed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2$1;->this$1:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->access$500(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;)V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method
