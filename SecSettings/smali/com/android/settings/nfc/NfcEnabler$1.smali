.class Lcom/android/settings/nfc/NfcEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcEnabler;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 101
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 102
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/android/settings/nfc/NfcEnabler;->access$000(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 103
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->access$100(Lcom/android/settings/nfc/NfcEnabler;ZZ)V

    .line 104
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->access$200(Lcom/android/settings/nfc/NfcEnabler;ZZ)V

    .line 105
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/android/settings/nfc/NfcEnabler;->access$000(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v3, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->access$300(Lcom/android/settings/nfc/NfcEnabler;ZZZ)V

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v3, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->access$400(Lcom/android/settings/nfc/NfcEnabler;ZZZ)V

    .line 111
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v2}, Lcom/android/settings/nfc/NfcEnabler;->access$500(Lcom/android/settings/nfc/NfcEnabler;I)V

    .line 112
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v3}, Lcom/android/settings/nfc/NfcEnabler;->access$600(Lcom/android/settings/nfc/NfcEnabler;Z)V

    .line 160
    :cond_0
    :goto_1
    return-void

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v3, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->access$300(Lcom/android/settings/nfc/NfcEnabler;ZZZ)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/android/settings/nfc/NfcEnabler;->access$000(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 114
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v3, v4}, Lcom/android/settings/nfc/NfcEnabler;->access$100(Lcom/android/settings/nfc/NfcEnabler;ZZ)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v3, v4}, Lcom/android/settings/nfc/NfcEnabler;->access$200(Lcom/android/settings/nfc/NfcEnabler;ZZ)V

    .line 116
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/android/settings/nfc/NfcEnabler;->access$700(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 117
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v2}, Lcom/android/settings/nfc/NfcEnabler;->access$700(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v2

    invoke-static {v1, v4, v2, v4}, Lcom/android/settings/nfc/NfcEnabler;->access$300(Lcom/android/settings/nfc/NfcEnabler;ZZZ)V

    .line 119
    :cond_3
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v4, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->access$400(Lcom/android/settings/nfc/NfcEnabler;ZZZ)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v3}, Lcom/android/settings/nfc/NfcEnabler;->access$500(Lcom/android/settings/nfc/NfcEnabler;I)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v4}, Lcom/android/settings/nfc/NfcEnabler;->access$600(Lcom/android/settings/nfc/NfcEnabler;Z)V

    goto :goto_1

    .line 122
    :cond_4
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/android/settings/nfc/NfcEnabler;->access$000(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 124
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->access$200(Lcom/android/settings/nfc/NfcEnabler;ZZ)V

    .line 125
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v4, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->access$300(Lcom/android/settings/nfc/NfcEnabler;ZZZ)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v3, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->access$400(Lcom/android/settings/nfc/NfcEnabler;ZZZ)V

    .line 127
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v5}, Lcom/android/settings/nfc/NfcEnabler;->access$500(Lcom/android/settings/nfc/NfcEnabler;I)V

    .line 128
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v3}, Lcom/android/settings/nfc/NfcEnabler;->access$600(Lcom/android/settings/nfc/NfcEnabler;Z)V

    goto :goto_1

    .line 129
    :cond_5
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/android/settings/nfc/NfcEnabler;->access$000(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 131
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v4, v3}, Lcom/android/settings/nfc/NfcEnabler;->access$200(Lcom/android/settings/nfc/NfcEnabler;ZZ)V

    .line 132
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/android/settings/nfc/NfcEnabler;->access$700(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 133
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v2}, Lcom/android/settings/nfc/NfcEnabler;->access$700(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v3}, Lcom/android/settings/nfc/NfcEnabler;->access$700(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v3

    invoke-static {v1, v4, v2, v3}, Lcom/android/settings/nfc/NfcEnabler;->access$300(Lcom/android/settings/nfc/NfcEnabler;ZZZ)V

    .line 135
    :cond_6
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v4, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->access$400(Lcom/android/settings/nfc/NfcEnabler;ZZZ)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/android/settings/nfc/NfcEnabler;->access$800(Lcom/android/settings/nfc/NfcEnabler;)Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 137
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/android/settings/nfc/NfcEnabler;->access$800(Lcom/android/settings/nfc/NfcEnabler;)Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;->dismiss()V

    .line 138
    :cond_7
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v4}, Lcom/android/settings/nfc/NfcEnabler;->access$600(Lcom/android/settings/nfc/NfcEnabler;Z)V

    goto/16 :goto_1

    .line 139
    :cond_8
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/android/settings/nfc/NfcEnabler;->access$000(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->access$100(Lcom/android/settings/nfc/NfcEnabler;ZZ)V

    .line 141
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->access$200(Lcom/android/settings/nfc/NfcEnabler;ZZ)V

    .line 142
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/android/settings/nfc/NfcEnabler;->access$700(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 143
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v2}, Lcom/android/settings/nfc/NfcEnabler;->access$700(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v3}, Lcom/android/settings/nfc/NfcEnabler;->access$700(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v3

    invoke-static {v1, v4, v2, v3}, Lcom/android/settings/nfc/NfcEnabler;->access$300(Lcom/android/settings/nfc/NfcEnabler;ZZZ)V

    .line 145
    :cond_9
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v4, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->access$400(Lcom/android/settings/nfc/NfcEnabler;ZZZ)V

    .line 146
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/android/settings/nfc/NfcEnabler;->access$800(Lcom/android/settings/nfc/NfcEnabler;)Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 147
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/android/settings/nfc/NfcEnabler;->access$800(Lcom/android/settings/nfc/NfcEnabler;)Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;->dismiss()V

    .line 148
    :cond_a
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v4}, Lcom/android/settings/nfc/NfcEnabler;->access$600(Lcom/android/settings/nfc/NfcEnabler;Z)V

    goto/16 :goto_1

    .line 151
    :cond_b
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/nfc/NfcEnabler;->access$900(Lcom/android/settings/nfc/NfcEnabler;I)V

    goto/16 :goto_1

    .line 154
    :cond_c
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 155
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/nfc/NfcEnabler;->access$1000(Lcom/android/settings/nfc/NfcEnabler;I)V

    goto/16 :goto_1

    .line 157
    :cond_d
    const-string v1, "android.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {v2}, Lcom/android/settings/nfc/NfcEnabler;->access$000(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/nfc/NfcEnabler;->access$900(Lcom/android/settings/nfc/NfcEnabler;I)V

    goto/16 :goto_1
.end method
