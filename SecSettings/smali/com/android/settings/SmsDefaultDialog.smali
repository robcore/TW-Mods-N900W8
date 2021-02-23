.class public final Lcom/android/settings/SmsDefaultDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "SmsDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

.field private oldSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SmsDefaultDialog;->oldSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    return-void
.end method

.method private buildDialog(Ljava/lang/String;)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v2, 0x0

    .line 87
    .local v2, "isDefaultSms":Z
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Lcom/android/settings/SmsDefaultDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 88
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v9

    if-nez v9, :cond_0

    .line 90
    const-string v9, "SmsDefaultDialog"

    const-string v10, "No phone, no SMS"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v9, 0x0

    .line 185
    :goto_0
    return v9

    .line 94
    :cond_0
    const/4 v4, 0x0

    .line 95
    .local v4, "messageAppName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 96
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 98
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_1

    .line 99
    :try_start_0
    const-string v9, "com.android.mms"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "messageAppName":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 108
    .restart local v4    # "messageAppName":Ljava/lang/String;
    const-string v9, "SmsDefaultDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ai is not null get messageAppName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_2
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 114
    iget-object v9, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-nez v9, :cond_3

    .line 115
    const/4 v9, 0x0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 103
    const-string v9, "SmsDefaultDialog"

    const-string v10, "Exception occur ai is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 110
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const v9, 0x7f0a1cd2

    invoke-virtual {p0, v9}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 118
    :cond_3
    const/4 v9, 0x1

    invoke-static {p0, v9}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v5

    .line 119
    .local v5, "oldSmsComponent":Landroid/content/ComponentName;
    if-eqz v5, :cond_4

    .line 120
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/SmsDefaultDialog;->oldSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 122
    iget-object v9, p0, Lcom/android/settings/SmsDefaultDialog;->oldSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v10, v10, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 123
    const/4 v9, 0x0

    goto :goto_0

    .line 127
    :cond_4
    const/4 v3, 0x0

    .line 128
    .local v3, "isUSAPopup":Z
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 129
    const/4 v3, 0x1

    .line 132
    :cond_5
    const-string v9, "com.android.mms"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 133
    const/4 v2, 0x1

    .line 139
    :goto_3
    iget-object v6, p0, Lcom/android/settings/SmsDefaultDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 140
    .local v6, "p":Lcom/android/internal/app/AlertController$AlertParams;
    if-eqz v3, :cond_7

    .line 141
    const v9, 0x7f0a0833

    invoke-virtual {p0, v9}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 145
    :goto_4
    iget-object v9, p0, Lcom/android/settings/SmsDefaultDialog;->oldSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v9, :cond_b

    .line 146
    if-eqz v2, :cond_9

    .line 147
    if-eqz v3, :cond_8

    .line 148
    const v9, 0x7f0a0835

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/settings/SmsDefaultDialog;->oldSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v12, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v12, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 174
    :goto_5
    if-eqz v3, :cond_e

    .line 175
    const v9, 0x7f0a00bc

    invoke-virtual {p0, v9}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 176
    const v9, 0x7f0a00bd

    invoke-virtual {p0, v9}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 181
    :goto_6
    iput-object p0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 182
    iput-object p0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->setupAlert()V

    .line 185
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 135
    .end local v6    # "p":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 143
    .restart local v6    # "p":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_7
    const v9, 0x7f0a0832

    invoke-virtual {p0, v9}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_4

    .line 151
    :cond_8
    const v9, 0x7f0a0834

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v12, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/settings/SmsDefaultDialog;->oldSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v12, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_5

    .line 155
    :cond_9
    if-eqz v3, :cond_a

    .line 156
    const v9, 0x7f0a0835

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/settings/SmsDefaultDialog;->oldSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v12, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v12, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_5

    .line 159
    :cond_a
    const v9, 0x7f0a1ccf

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v12, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_5

    .line 163
    :cond_b
    if-eqz v2, :cond_c

    .line 164
    const v9, 0x7f0a0836

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v12, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 166
    :cond_c
    if-eqz v3, :cond_d

    .line 167
    const v9, 0x7f0a0836

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v12, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 169
    :cond_d
    const v9, 0x7f0a1ccf

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v12, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 178
    :cond_e
    const v9, 0x7f0a08f6

    invoke-virtual {p0, v9}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 179
    const v9, 0x7f0a08f7

    invoke-virtual {p0, v9}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    goto/16 :goto_6
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 60
    packed-switch p2, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 63
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    .line 53
    invoke-direct {p0, v1}, Lcom/android/settings/SmsDefaultDialog;->buildDialog(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->finish()V

    .line 56
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog;->oldSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SmsDefaultDialog;->oldSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 76
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog;->oldSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SmsDefaultDialog;->onClick(Landroid/content/DialogInterface;I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->finish()V

    .line 82
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 83
    return-void
.end method
