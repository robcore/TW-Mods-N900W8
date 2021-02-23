.class Lcom/android/settings/smartscreen/SmartScreenSettings$11;
.super Ljava/lang/Object;
.source "SmartScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/smartscreen/SmartScreenSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V
    .locals 0

    .prologue
    .line 717
    iput-object p1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 719
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 721
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v0, v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_stay_noti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$1300(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligent_sleep_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 723
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v1, v1, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->createGuideDialog(Ljava/lang/String;)V

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v0, v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_rotation_noti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 725
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$1400(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligent_rotation_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 726
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v1, v1, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->createGuideDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 727
    :cond_2
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v0, v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_pause_noti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 728
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$1500(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_pause"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 729
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    const-string v1, "com.sec.SMART_PAUSE_CHANGED"

    invoke-static {v0, v1, v2}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$800(Lcom/android/settings/smartscreen/SmartScreenSettings;Ljava/lang/String;Z)V

    .line 730
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v1, v1, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->createGuideDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 731
    :cond_3
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v0, v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_scroll_noti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$1600(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 733
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    const-string v1, "com.sec.SMART_SCROLL_CHANGED"

    invoke-static {v0, v1, v2}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$800(Lcom/android/settings/smartscreen/SmartScreenSettings;Ljava/lang/String;Z)V

    .line 734
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v1, v1, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->createGuideDialog(Ljava/lang/String;)V

    goto :goto_0
.end method
