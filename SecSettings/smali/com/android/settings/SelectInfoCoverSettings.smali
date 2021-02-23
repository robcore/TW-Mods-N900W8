.class public Lcom/android/settings/SelectInfoCoverSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SelectInfoCoverSettings.java"


# instance fields
.field private dialog:Landroid/app/AlertDialog;

.field private mAirMessage:Landroid/preference/CheckBoxPreference;

.field private mPedometerDBKey:Ljava/lang/String;

.field private mSHealthItentExtra_type:Ljava/lang/String;

.field private mShortcutCamera:Landroid/preference/CheckBoxPreference;

.field private mShortcutCameraDBKey:Ljava/lang/String;

.field private mWalkingMate:Landroid/preference/CheckBoxPreference;

.field private mWeather:Landroid/preference/CheckBoxPreference;

.field private mWeatherAgreed:Z

.field private mWeatherDBKey:Ljava/lang/String;

.field private mWeatherTMR:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 70
    iput-object v1, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCameraDBKey:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherDBKey:Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherAgreed:Z

    .line 73
    iput-object v1, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/android/settings/SelectInfoCoverSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SelectInfoCoverSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectInfoCoverSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SelectInfoCoverSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectInfoCoverSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SelectInfoCoverSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectInfoCoverSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SelectInfoCoverSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectInfoCoverSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SelectInfoCoverSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SelectInfoCoverSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/SelectInfoCoverSettings;->saveSharedPreferences(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/SelectInfoCoverSettings;Landroid/preference/Preference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SelectInfoCoverSettings;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/SelectInfoCoverSettings;->clickItem(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/SelectInfoCoverSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectInfoCoverSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private checkGuidePopupAvailable(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 485
    const/4 v0, 0x0

    .line 488
    .local v0, "doNotShow":Z
    iget-object v5, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_1

    .line 489
    const-string v2, "com.android.settings.SViewCoverPopup.ShortcutCamera"

    .line 495
    .local v2, "spName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 497
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 498
    const-string v5, "DoNotShowDialog"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 499
    :cond_0
    if-nez v0, :cond_3

    :goto_1
    return v3

    .line 490
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "spName":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_2

    .line 491
    const-string v2, "com.android.settings.SViewCoverPopup.Weather"

    .restart local v2    # "spName":Ljava/lang/String;
    goto :goto_0

    .line 493
    .end local v2    # "spName":Ljava/lang/String;
    :cond_2
    const-string v2, "com.android.settings.SViewCoverPopup.Pedometer"

    .restart local v2    # "spName":Ljava/lang/String;
    goto :goto_0

    .restart local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    move v3, v4

    .line 499
    goto :goto_1
.end method

.method private clickItem(Landroid/preference/Preference;)V
    .locals 12
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 236
    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    if-ne p1, v9, :cond_2

    .line 237
    const-string v9, "SelectItemDisplay"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPreferenceTreeClick, Camera shortcut :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCameraDBKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 408
    :cond_0
    :goto_1
    return-void

    .line 239
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 241
    :cond_2
    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    if-ne p1, v9, :cond_9

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "shealth_pedometer_status_running"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 244
    .local v7, "pedometerstatus":I
    const/4 v9, 0x1

    if-ne v7, v9, :cond_4

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    :goto_2
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    const-string v9, "SelectItemDisplay"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPreferenceTreeClick shealth_pedometer_status_running-1 walk_mate-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": sendBroadcast "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "com.sec.android.app.shealth.COVER"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.sec.android.app.shealth.COVER"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v6, "mIntent":Landroid/content/Intent;
    const-string v9, "visibility"

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    const-string v9, "type"

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 245
    .end local v6    # "mIntent":Landroid/content/Intent;
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 255
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "com.sec.android.app.shealth"

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 256
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 257
    .local v4, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v9, 0x7f0a0fc1

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 258
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0fc2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0fc3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "mDialogMsg":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 261
    const v9, 0x104000a

    new-instance v10, Lcom/android/settings/SelectInfoCoverSettings$1;

    invoke-direct {v10, p0}, Lcom/android/settings/SelectInfoCoverSettings$1;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v4, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 271
    const/high16 v9, 0x1040000

    new-instance v10, Lcom/android/settings/SelectInfoCoverSettings$2;

    invoke-direct {v10, p0}, Lcom/android/settings/SelectInfoCoverSettings$2;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v4, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    new-instance v9, Lcom/android/settings/SelectInfoCoverSettings$3;

    invoke-direct {v9, p0}, Lcom/android/settings/SelectInfoCoverSettings$3;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 283
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 284
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 292
    .end local v4    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    .end local v5    # "mDialogMsg":Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "shealth_profile_initialized"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 294
    .local v8, "sHealthProfileState":I
    const-string v9, "SelectInfoCoverSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPreferenceTreeClick - shealth_profile_initialized:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    if-nez v8, :cond_6

    .line 297
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 298
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v9, 0x7f0a0f88

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 299
    const v9, 0x7f0a0f8c

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 300
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 301
    const v9, 0x104000a

    new-instance v10, Lcom/android/settings/SelectInfoCoverSettings$4;

    invoke-direct {v10, p0}, Lcom/android/settings/SelectInfoCoverSettings$4;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 314
    const/high16 v9, 0x1040000

    new-instance v10, Lcom/android/settings/SelectInfoCoverSettings$5;

    invoke-direct {v10, p0}, Lcom/android/settings/SelectInfoCoverSettings$5;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 320
    new-instance v9, Lcom/android/settings/SelectInfoCoverSettings$6;

    invoke-direct {v9, p0}, Lcom/android/settings/SelectInfoCoverSettings$6;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 326
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 328
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    const-string v9, "SelectItemDisplay"

    const-string v10, "onPreferenceTreeClick walk_mate(1): sendBroadcast com.sec.android.app.shealth.COVER"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.sec.android.app.shealth.COVER"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .restart local v6    # "mIntent":Landroid/content/Intent;
    const-string v9, "visibility"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 334
    const-string v9, "type"

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 339
    .end local v6    # "mIntent":Landroid/content/Intent;
    .end local v8    # "sHealthProfileState":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_3
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 340
    const-string v9, "SelectItemDisplay"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPreferenceTreeClick walk_mate-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": sendBroadcast "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "com.sec.android.app.shealth.COVER"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.sec.android.app.shealth.COVER"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .restart local v6    # "mIntent":Landroid/content/Intent;
    const-string v9, "visibility"

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    const-string v9, "type"

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 339
    .end local v6    # "mIntent":Landroid/content/Intent;
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 348
    .end local v7    # "pedometerstatus":I
    :cond_9
    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p1, v9, :cond_f

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->hasSViewCoverWeather2014(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 351
    :cond_a
    const-string v9, "SelectInfoCoverSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPreferenceTreeClick, CurrentLocation : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherAgreed:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / Weather checked : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-boolean v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherAgreed:Z

    if-nez v9, :cond_d

    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 354
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 355
    .restart local v6    # "mIntent":Landroid/content/Intent;
    const-string v9, "com.android.settings"

    const-string v10, "com.android.settings.Settings$WeatherSettingsFragmentActivity"

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 358
    const-string v9, "sview"

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 361
    :goto_4
    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 360
    :cond_b
    const-string v9, "sview"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_4

    .line 365
    .end local v6    # "mIntent":Landroid/content/Intent;
    :cond_c
    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->checkNetwork()Z

    move-result v9

    if-nez v9, :cond_d

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0a0f7d

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 370
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherDBKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_e

    const/4 v9, 0x1

    :goto_5
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->sendSViewCoverWeatherIntent(Landroid/content/Context;Z)V

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_show_info"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 377
    .local v0, "LockScreenShowAdditionalInfo":I
    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->sendLockScreenWeatherIntent(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 370
    .end local v0    # "LockScreenShowAdditionalInfo":I
    :cond_e
    const/4 v9, 0x0

    goto :goto_5

    .line 382
    :cond_f
    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherTMR:Landroid/preference/Preference;

    if-ne p1, v9, :cond_11

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->checkWeatherWidgetEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 384
    const-string v9, "SelectInfoCoverSettings"

    const-string v10, "onPreferenceTreeClick, call the WeatherWidget"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.sec.android.widgetapp.weather.intent.action.START_ACTIVITY_SETTING_VIEW"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "PACKAGE"

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 390
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0a0f83

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 396
    :cond_11
    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mAirMessage:Landroid/preference/CheckBoxPreference;

    if-ne p1, v9, :cond_0

    .line 402
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "air_message"

    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mAirMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_12

    const/4 v9, 0x1

    :goto_6
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 403
    :catch_0
    move-exception v2

    .line 404
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 402
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_12
    const/4 v9, 0x0

    goto :goto_6
.end method

.method public static getUseLocationAgreed(Landroid/content/Context;)I
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 459
    const/4 v8, 0x0

    .line 461
    .local v8, "result":I
    if-nez p0, :cond_0

    move v9, v8

    .line 481
    .end local v8    # "result":I
    .local v9, "result":I
    :goto_0
    return v9

    .line 464
    .end local v9    # "result":I
    .restart local v8    # "result":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 465
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 466
    const-string v1, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "SHOW_USE_LOCATION_POPUP"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 470
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 471
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 478
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    move v9, v8

    .line 481
    .end local v8    # "result":I
    .restart local v9    # "result":I
    goto :goto_0

    .line 474
    .end local v9    # "result":I
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "result":I
    :catch_0
    move-exception v7

    .line 475
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private saveSharedPreferences(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 503
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 505
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 506
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "DoNotShowDialog"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 507
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 508
    return-void
.end method

.method private showGuidePopup(Landroid/preference/Preference;)V
    .locals 12
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const v11, 0x7f0a0f87

    const v8, 0x7f0a0f86

    const v10, 0x104000a

    const/high16 v9, 0x1040000

    .line 513
    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_1

    .line 514
    const v7, 0x7f0a15b0

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 515
    .local v6, "popupTitle":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 516
    invoke-virtual {p0, v8}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 534
    .local v5, "popupMessage":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 535
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectInfoCoverSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 537
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040085

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 538
    .local v3, "layout":Landroid/view/View;
    const v7, 0x7f100168

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 539
    .local v4, "message":Landroid/widget/TextView;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    const v7, 0x7f100169

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 541
    .local v1, "check":Landroid/widget/CheckBox;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 542
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 543
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 545
    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_5

    .line 546
    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$7;

    invoke-direct {v7, p0}, Lcom/android/settings/SelectInfoCoverSettings$7;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v0, v9, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 552
    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$8;

    invoke-direct {v7, p0}, Lcom/android/settings/SelectInfoCoverSettings$8;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 557
    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$9;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/SelectInfoCoverSettings$9;-><init>(Lcom/android/settings/SelectInfoCoverSettings;Landroid/view/View;)V

    invoke-virtual {v0, v10, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 606
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 607
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->dialog:Landroid/app/AlertDialog;

    .line 608
    return-void

    .line 518
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "check":Landroid/widget/CheckBox;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "layout":Landroid/view/View;
    .end local v4    # "message":Landroid/widget/TextView;
    .end local v5    # "popupMessage":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v11}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "popupMessage":Ljava/lang/String;
    goto :goto_0

    .line 519
    .end local v5    # "popupMessage":Ljava/lang/String;
    .end local v6    # "popupTitle":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_3

    .line 520
    const v7, 0x7f0a0f80

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 521
    .restart local v6    # "popupTitle":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 522
    invoke-virtual {p0, v8}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "popupMessage":Ljava/lang/String;
    goto :goto_0

    .line 524
    .end local v5    # "popupMessage":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v11}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "popupMessage":Ljava/lang/String;
    goto :goto_0

    .line 526
    .end local v5    # "popupMessage":Ljava/lang/String;
    .end local v6    # "popupTitle":Ljava/lang/String;
    :cond_3
    const v7, 0x7f0a0f88

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 527
    .restart local v6    # "popupTitle":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 528
    invoke-virtual {p0, v8}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "popupMessage":Ljava/lang/String;
    goto/16 :goto_0

    .line 530
    .end local v5    # "popupMessage":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v11}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "popupMessage":Ljava/lang/String;
    goto/16 :goto_0

    .line 565
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v1    # "check":Landroid/widget/CheckBox;
    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    .restart local v3    # "layout":Landroid/view/View;
    .restart local v4    # "message":Landroid/widget/TextView;
    :cond_5
    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_6

    .line 566
    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$10;

    invoke-direct {v7, p0}, Lcom/android/settings/SelectInfoCoverSettings$10;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v0, v9, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 572
    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$11;

    invoke-direct {v7, p0}, Lcom/android/settings/SelectInfoCoverSettings$11;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 577
    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$12;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/SelectInfoCoverSettings$12;-><init>(Lcom/android/settings/SelectInfoCoverSettings;Landroid/view/View;)V

    invoke-virtual {v0, v10, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 586
    :cond_6
    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$13;

    invoke-direct {v7, p0}, Lcom/android/settings/SelectInfoCoverSettings$13;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v0, v9, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 592
    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$14;

    invoke-direct {v7, p0}, Lcom/android/settings/SelectInfoCoverSettings$14;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 597
    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$15;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/SelectInfoCoverSettings$15;-><init>(Lcom/android/settings/SelectInfoCoverSettings;Landroid/view/View;)V

    invoke-virtual {v0, v10, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method


# virtual methods
.method public checkNetwork()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 442
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 443
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 444
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-nez v3, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v4

    .line 448
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 449
    .local v2, "isWifiAvail":Z
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 450
    if-nez v3, :cond_2

    move v4, v2

    .line 452
    goto :goto_0

    .line 454
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 456
    .local v1, "isMobileAvail":Z
    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v6, 0x7f0700c7

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->addPreferencesFromResource(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 95
    .local v2, "ps":Landroid/preference/PreferenceScreen;
    const-string v6, "shortcut_camera"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    .line 96
    const-string v6, "weather"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    .line 97
    const-string v6, "weather_tmr"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherTMR:Landroid/preference/Preference;

    .line 99
    const-string v6, "scover_airmessage"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mAirMessage:Landroid/preference/CheckBoxPreference;

    .line 101
    const-string v6, "walking_mate"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 106
    const-string v6, "set_shortcuts_mode"

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCameraDBKey:Ljava/lang/String;

    .line 107
    const-string v6, "lock_additional_weather"

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherDBKey:Ljava/lang/String;

    .line 108
    const-string v6, "lock_additional_steps"

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    .line 109
    const-string v6, "WALKMATE_TMR"

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->getSviewCoverAppLevel(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 112
    :cond_0
    const-string v6, "shortcut_camera"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->removePreference(Ljava/lang/String;)V

    .line 120
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isPedometerSupported(Landroid/content/Context;)Z

    move-result v1

    .line 121
    .local v1, "mPedometerSupported":Z
    const/4 v3, 0x0

    .line 122
    .local v3, "styleClockEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isSViewStyleClockEnabled(Landroid/content/Context;Landroid/content/ContentResolver;)Z

    move-result v3

    .line 124
    :cond_2
    if-eqz v3, :cond_3

    .line 125
    const-string v6, "weather"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->removePreference(Ljava/lang/String;)V

    .line 126
    const-string v6, "weather_tmr"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->removePreference(Ljava/lang/String;)V

    .line 128
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v1, :cond_4

    if-eqz v3, :cond_5

    .line 130
    :cond_4
    const-string v6, "walking_mate"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->removePreference(Ljava/lang/String;)V

    .line 133
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_EnableAirMessage"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 134
    const-string v6, "scover_airmessage"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->removePreference(Ljava/lang/String;)V

    .line 138
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isSViewWeatherforT()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 139
    const-string v6, "weather"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 140
    const-string v6, "weather"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->removePreference(Ljava/lang/String;)V

    .line 147
    :cond_7
    :goto_1
    iget-boolean v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mOpenDetailMenu:Z

    if-eqz v6, :cond_8

    .line 148
    sget v6, Lcom/android/settings/SelectInfoCoverSettings;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 150
    .local v0, "extra_bundle":Landroid/os/Bundle;
    const-string v6, "extra_parent_preference_key"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "targetKey":Ljava/lang/String;
    sget v6, Lcom/android/settings/SelectInfoCoverSettings;->mSettingValue:I

    if-ne v6, v5, :cond_b

    .line 152
    .local v5, "value":Z
    :goto_2
    const-string v6, "weather"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 153
    iget-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 154
    iget-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 161
    .end local v0    # "extra_bundle":Landroid/os/Bundle;
    .end local v4    # "targetKey":Ljava/lang/String;
    .end local v5    # "value":Z
    :cond_8
    return-void

    .line 114
    .end local v1    # "mPedometerSupported":Z
    .end local v3    # "styleClockEnabled":Z
    :cond_9
    const-string v6, "shortcut_camera"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->removePreference(Ljava/lang/String;)V

    .line 115
    const-string v6, "weather_cover"

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherDBKey:Ljava/lang/String;

    .line 116
    const-string v6, "walk_mate"

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    .line 117
    const-string v6, "WALKMATE"

    iput-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    goto/16 :goto_0

    .line 142
    .restart local v1    # "mPedometerSupported":Z
    .restart local v3    # "styleClockEnabled":Z
    :cond_a
    const-string v6, "weather_tmr"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 143
    const-string v6, "weather_tmr"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .line 151
    .restart local v0    # "extra_bundle":Landroid/os/Bundle;
    .restart local v4    # "targetKey":Ljava/lang/String;
    :cond_b
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 166
    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 169
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 195
    iget-boolean v2, p0, Lcom/android/settings/SelectInfoCoverSettings;->mOpenDetailMenu:Z

    if-eqz v2, :cond_0

    .line 196
    sget v2, Lcom/android/settings/SelectInfoCoverSettings;->mSettingValue:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 197
    sget v2, Lcom/android/settings/SelectInfoCoverSettings;->mSettingValue:I

    if-ne v2, v1, :cond_1

    .local v1, "value":Z
    :goto_0
    move-object v0, p2

    .line 198
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 199
    .local v0, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 207
    .end local v0    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v1    # "value":Z
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SelectInfoCoverSettings;->mAirMessage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 208
    invoke-direct {p0, p2}, Lcom/android/settings/SelectInfoCoverSettings;->clickItem(Landroid/preference/Preference;)V

    .line 209
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    .line 232
    :goto_1
    return v2

    .line 197
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 213
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherTMR:Landroid/preference/Preference;

    if-ne p2, v2, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSViewWeatherforT()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 214
    invoke-direct {p0, p2}, Lcom/android/settings/SelectInfoCoverSettings;->clickItem(Landroid/preference/Preference;)V

    .line 215
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1

    .line 218
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 219
    iget-object v2, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 220
    iget-boolean v2, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherAgreed:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 221
    invoke-direct {p0, p2}, Lcom/android/settings/SelectInfoCoverSettings;->clickItem(Landroid/preference/Preference;)V

    .line 222
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1

    .line 225
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/settings/SelectInfoCoverSettings;->checkGuidePopupAvailable(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 226
    invoke-direct {p0, p2}, Lcom/android/settings/SelectInfoCoverSettings;->showGuidePopup(Landroid/preference/Preference;)V

    .line 227
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1

    .line 231
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/settings/SelectInfoCoverSettings;->clickItem(Landroid/preference/Preference;)V

    .line 232
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->updateState()V

    .line 175
    return-void
.end method

.method public updateState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCameraDBKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 178
    iget-object v3, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCameraDBKey:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 179
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherDBKey:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 180
    iget-object v3, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 183
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_EnableAirMessage"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v3, p0, Lcom/android/settings/SelectInfoCoverSettings;->mAirMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "air_message"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 188
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isH_Device()Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SelectInfoCoverSettings;->getUseLocationAgreed(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_7

    :goto_4
    iput-boolean v1, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherAgreed:Z

    .line 190
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 178
    goto :goto_0

    :cond_4
    move v0, v2

    .line 179
    goto :goto_1

    :cond_5
    move v0, v2

    .line 180
    goto :goto_2

    :cond_6
    move v0, v2

    .line 184
    goto :goto_3

    :cond_7
    move v1, v2

    .line 189
    goto :goto_4
.end method
