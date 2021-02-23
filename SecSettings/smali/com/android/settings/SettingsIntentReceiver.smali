.class public Lcom/android/settings/SettingsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsIntentReceiver$AssistiveLightIntentReceiver;,
        Lcom/android/settings/SettingsIntentReceiver$UPlusSettingsIntentReceiver;
    }
.end annotation


# static fields
.field private static cfmsService:Landroid/os/CustomFrequencyManager;

.field private static rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private final activeKeyID:I

.field private mContext:Landroid/content/Context;

.field mSalesCode:Ljava/lang/String;

.field private final warningNotificationID:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/SettingsIntentReceiver;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 135
    const v0, 0x7f0205db

    iput v0, p0, Lcom/android/settings/SettingsIntentReceiver;->warningNotificationID:I

    .line 136
    const v0, 0x7f0205d6

    iput v0, p0, Lcom/android/settings/SettingsIntentReceiver;->activeKeyID:I

    .line 2514
    return-void
.end method

.method private EnablingDrivingMode(I)V
    .locals 24
    .param p1, "state"    # I

    .prologue
    .line 1860
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/UserManager;

    .line 1861
    .local v21, "mUm":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v22

    .line 1862
    .local v22, "mUser":Landroid/content/pm/UserInfo;
    const/16 v20, 0x0

    .line 1863
    .local v20, "mCount":I
    const/4 v7, 0x0

    .line 1864
    .local v7, "CarBT":Z
    const/16 v19, 0x0

    .line 1865
    .local v19, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    const-string v9, "voice_input_control"

    .line 1866
    .local v9, "KEY_VOICE_INPUT_CONTROL":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v9, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 1867
    .local v17, "keyVC":I
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_9

    .line 1868
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v2, "DrivingmodeSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 1869
    .local v23, "pref":Landroid/content/SharedPreferences;
    const-string v1, "Entering"

    const-string v2, ""

    move-object/from16 v0, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1870
    .local v8, "Enterinput":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1871
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.samsung.android.internal.intelligence.useranalysis/place"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1872
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 1873
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v20

    .line 1874
    const-string v1, "SettingsIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1878
    :cond_1
    const-string v1, "SettingsIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location_type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "location_type"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    const-string v1, "SettingsIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    const-string v1, "name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Car"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "location_type"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    .line 1882
    const/4 v7, 0x1

    .line 1887
    :cond_2
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1890
    :cond_3
    const-string v12, "0"

    .line 1891
    .local v12, "flagBT":Ljava/lang/String;
    const-string v13, "0"

    .line 1892
    .local v13, "flagGPS":Ljava/lang/String;
    const-string v14, "0"

    .line 1893
    .local v14, "flagVC":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v19

    .line 1894
    if-eqz v19, :cond_4

    .line 1895
    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    if-ne v7, v1, :cond_4

    .line 1896
    const-string v12, "1"

    .line 1897
    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1900
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v15

    .line 1901
    .local v15, "gpsEnabled":Z
    if-nez v15, :cond_5

    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1902
    const-string v13, "1"

    .line 1903
    new-instance v16, Landroid/content/Intent;

    const-string v1, "android.settings.GPS_CHANGED"

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1904
    .local v16, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1905
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1908
    .end local v16    # "i":Landroid/content/Intent;
    :cond_5
    if-nez v17, :cond_6

    .line 1910
    new-instance v18, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct/range {v18 .. v18}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    .line 1911
    .local v18, "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    if-eqz v18, :cond_6

    .line 1912
    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1913
    const-string v14, "1"

    .line 1914
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v9, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1919
    .end local v18    # "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    :cond_6
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 1920
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Entering"

    const-string v2, "1"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1921
    const-string v1, "BT"

    invoke-interface {v11, v1, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1922
    const-string v1, "GPS"

    invoke-interface {v11, v1, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1923
    const-string v1, "VC"

    invoke-interface {v11, v1, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1924
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1966
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "flagBT":Ljava/lang/String;
    .end local v13    # "flagGPS":Ljava/lang/String;
    .end local v14    # "flagVC":Ljava/lang/String;
    .end local v15    # "gpsEnabled":Z
    :cond_7
    :goto_1
    return-void

    .line 1885
    .restart local v10    # "c":Landroid/database/Cursor;
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 1927
    .end local v8    # "Enterinput":Ljava/lang/String;
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v23    # "pref":Landroid/content/SharedPreferences;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v2, "DrivingmodeSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 1928
    .restart local v23    # "pref":Landroid/content/SharedPreferences;
    const-string v1, "Entering"

    const-string v2, ""

    move-object/from16 v0, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1929
    .restart local v8    # "Enterinput":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1930
    const-string v1, "BT"

    const-string v2, ""

    move-object/from16 v0, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1931
    .restart local v12    # "flagBT":Ljava/lang/String;
    const-string v1, "GPS"

    const-string v2, ""

    move-object/from16 v0, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1932
    .restart local v13    # "flagGPS":Ljava/lang/String;
    const-string v1, "VC"

    const-string v2, ""

    move-object/from16 v0, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1934
    .restart local v14    # "flagVC":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v19

    .line 1935
    if-eqz v19, :cond_a

    .line 1936
    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_a

    const-string v1, "1"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1937
    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 1940
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v15

    .line 1941
    .restart local v15    # "gpsEnabled":Z
    if-eqz v15, :cond_b

    const-string v1, "1"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1942
    new-instance v16, Landroid/content/Intent;

    const-string v1, "android.settings.GPS_CHANGED"

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1943
    .restart local v16    # "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1944
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1947
    .end local v16    # "i":Landroid/content/Intent;
    :cond_b
    const/4 v1, 0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_c

    const-string v1, "1"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1948
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v9, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1951
    :cond_c
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 1952
    .restart local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Entering"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1953
    const-string v1, "BT"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1954
    const-string v1, "GPS"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1955
    const-string v1, "VC"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1956
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 1958
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "flagBT":Ljava/lang/String;
    .end local v13    # "flagGPS":Ljava/lang/String;
    .end local v14    # "flagVC":Ljava/lang/String;
    .end local v15    # "gpsEnabled":Z
    :cond_d
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 1959
    .restart local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Entering"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1960
    const-string v1, "BT"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1961
    const-string v1, "GPS"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1962
    const-string v1, "VC"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1963
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1
.end method

.method private EnablingDrivingModeAirCallAccept(I)V
    .locals 13
    .param p1, "state"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1784
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "driving_mode_air_call_accept"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1785
    .local v0, "AirCallAccept":I
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "EnablingDrivingModeAirCallAccept"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AirCallAccept : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    if-ne v0, v12, :cond_2

    .line 1788
    if-ne p1, v12, :cond_3

    .line 1789
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "state : 1"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v9, "DrivingmodeAirCallAccept"

    invoke-virtual {v8, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1791
    .local v7, "pref":Landroid/content/SharedPreferences;
    const-string v8, "Entering"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1792
    .local v3, "Enterinput":Ljava/lang/String;
    const-string v8, "0"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1793
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_call_accept"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1794
    .local v1, "AirGestureCallAccept":I
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_engine"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1796
    .local v2, "AirGestureMaster":I
    const-string v5, "0"

    .line 1797
    .local v5, "flagCall":Ljava/lang/String;
    const-string v6, "0"

    .line 1799
    .local v6, "flagMaster":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1800
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "putInt ARC_MOTION_CALL_ACCEPT = 1"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_call_accept"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1802
    const-string v5, "1"

    .line 1805
    :cond_0
    if-nez v2, :cond_1

    .line 1806
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "putInt MASTER_ARC_MOTION = 1"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_engine"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1808
    const-string v6, "1"

    .line 1811
    :cond_1
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1812
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "Entering"

    const-string v9, "1"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1813
    const-string v8, "AIRCALL"

    invoke-interface {v4, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1814
    const-string v8, "MASTER"

    invoke-interface {v4, v8, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1815
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1857
    .end local v1    # "AirGestureCallAccept":I
    .end local v2    # "AirGestureMaster":I
    .end local v3    # "Enterinput":Ljava/lang/String;
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "flagCall":Ljava/lang/String;
    .end local v6    # "flagMaster":Ljava/lang/String;
    .end local v7    # "pref":Landroid/content/SharedPreferences;
    :cond_2
    :goto_0
    return-void

    .line 1818
    :cond_3
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "state : 0"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v9, "DrivingmodeAirCallAccept"

    invoke-virtual {v8, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1820
    .restart local v7    # "pref":Landroid/content/SharedPreferences;
    const-string v8, "Entering"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1821
    .restart local v3    # "Enterinput":Ljava/lang/String;
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Enterinput : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    const-string v8, "1"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1824
    const-string v8, "AIRCALL"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1825
    .restart local v5    # "flagCall":Ljava/lang/String;
    const-string v8, "MASTER"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1827
    .restart local v6    # "flagMaster":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_call_accept"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1828
    .restart local v1    # "AirGestureCallAccept":I
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_engine"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1830
    .restart local v2    # "AirGestureMaster":I
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "flagCall : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "flagMaster : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    if-ne v1, v12, :cond_4

    const-string v8, "1"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1834
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "restore ARC_MOTION_CALL_ACCEPT"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_call_accept"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1838
    :cond_4
    if-ne v2, v12, :cond_5

    const-string v8, "1"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1839
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "restore MASTER_ARC_MOTION"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_engine"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1843
    :cond_5
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1844
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "Entering"

    const-string v9, "0"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1845
    const-string v8, "AIRCALL"

    const-string v9, "0"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1846
    const-string v8, "MASTER"

    const-string v9, "0"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1847
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1849
    .end local v1    # "AirGestureCallAccept":I
    .end local v2    # "AirGestureMaster":I
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "flagCall":Ljava/lang/String;
    .end local v6    # "flagMaster":Ljava/lang/String;
    :cond_6
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1850
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "Entering"

    const-string v9, "0"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1851
    const-string v8, "AIRCALL"

    const-string v9, "0"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1852
    const-string v8, "MASTER"

    const-string v9, "0"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1853
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method private GetMTStatus(Ljava/lang/String;)Z
    .locals 7
    .param p1, "mtData"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2205
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v5, ";"

    invoke-direct {v1, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    .local v1, "str":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    .line 2207
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 2208
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2209
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 2210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2213
    :cond_0
    const/4 v5, 0x2

    if-ge v0, v5, :cond_2

    .line 2221
    :cond_1
    :goto_1
    return v3

    .line 2217
    :cond_2
    aget-object v5, v2, v4

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    .line 2218
    goto :goto_1
.end method

.method private GetPhPWD(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "mtData"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2184
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, ";"

    invoke-direct {v1, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    .local v1, "str":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 2186
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 2187
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2188
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 2189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2192
    :cond_0
    const/4 v4, 0x1

    if-ge v0, v4, :cond_2

    .line 2201
    :cond_1
    :goto_1
    return-object v3

    .line 2196
    :cond_2
    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_1

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_1

    .line 2201
    aget-object v3, v2, v5

    goto :goto_1
.end method

.method private SetMyProfileTextSize(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2288
    const-string v11, "layout_inflater"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 2289
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v11, 0x7f040129

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 2290
    .local v10, "view":Landroid/view/View;
    const v11, 0x7f100233

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/settings/myprofile/EllipsisEditText;

    .line 2292
    .local v6, "mTvPreviewText":Lcom/android/settings/myprofile/EllipsisEditText;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "my_profile_information"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2293
    .local v7, "mypofile_string":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2337
    :goto_0
    return-void

    .line 2297
    :cond_0
    const/4 v8, 0x0

    .line 2298
    .local v8, "otherContext":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "my_profile_font_package"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2299
    .local v5, "mFontStylePackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "my_profile_font_filename"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 2301
    .local v4, "mFontFileNames":Ljava/lang/String;
    const/4 v11, 0x2

    :try_start_1
    invoke-virtual {p1, v5, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 2306
    :goto_1
    if-eqz v8, :cond_1

    .line 2307
    :try_start_2
    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 2308
    .local v1, "am":Landroid/content/res/AssetManager;
    invoke-static {v1, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 2309
    .local v2, "fontTypeface":Landroid/graphics/Typeface;
    invoke-virtual {v6, v2}, Lcom/android/settings/myprofile/EllipsisEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2310
    const/4 v2, 0x0

    .line 2311
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2312
    invoke-static {}, Ljava/lang/System;->runFinalization()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2319
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .end local v2    # "fontTypeface":Landroid/graphics/Typeface;
    .end local v4    # "mFontFileNames":Ljava/lang/String;
    .end local v5    # "mFontStylePackageName":Ljava/lang/String;
    :cond_1
    :goto_2
    const-string v11, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "Personal Banner"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2320
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a1385

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2327
    :cond_2
    :goto_3
    const/4 v11, 0x1

    new-array v0, v11, [Landroid/text/InputFilter;

    .line 2328
    .local v0, "FilterArray":[Landroid/text/InputFilter;
    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e0012

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 2329
    .local v9, "profileMaxCharLimit":I
    const/4 v11, 0x0

    new-instance v12, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v12, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v12, v0, v11

    .line 2330
    invoke-virtual {v6, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2331
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v6, v11}, Lcom/android/settings/myprofile/EllipsisEditText;->setScaledDensity(F)V

    .line 2333
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0f0192

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    invoke-virtual {v6, v11}, Lcom/android/settings/myprofile/EllipsisEditText;->setMaxTextSize(F)V

    .line 2334
    invoke-virtual {v6, v7}, Lcom/android/settings/myprofile/EllipsisEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2335
    invoke-virtual {v6}, Lcom/android/settings/myprofile/EllipsisEditText;->fontChange()V

    .line 2336
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "my_profile_text_size"

    invoke-virtual {v6}, Lcom/android/settings/myprofile/EllipsisEditText;->getTextSize()F

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2321
    .end local v0    # "FilterArray":[Landroid/text/InputFilter;
    .end local v9    # "profileMaxCharLimit":I
    :cond_3
    const-string v11, "Life companion"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2322
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a1384

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 2323
    :cond_4
    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SLOGAN_PERSONAL_MESSAGE"

    invoke-static {v11}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "Personal message"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2324
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a137a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 2302
    .restart local v4    # "mFontFileNames":Ljava/lang/String;
    .restart local v5    # "mFontStylePackageName":Ljava/lang/String;
    :catch_0
    move-exception v11

    goto/16 :goto_1

    .line 2314
    .end local v4    # "mFontFileNames":Ljava/lang/String;
    .end local v5    # "mFontStylePackageName":Ljava/lang/String;
    :catch_1
    move-exception v11

    goto/16 :goto_2
.end method

.method static synthetic access$000()Landroid/os/CustomFrequencyManager;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/settings/SettingsIntentReceiver;->cfmsService:Landroid/os/CustomFrequencyManager;

    return-object v0
.end method

.method static synthetic access$002(Landroid/os/CustomFrequencyManager;)Landroid/os/CustomFrequencyManager;
    .locals 0
    .param p0, "x0"    # Landroid/os/CustomFrequencyManager;

    .prologue
    .line 118
    sput-object p0, Lcom/android/settings/SettingsIntentReceiver;->cfmsService:Landroid/os/CustomFrequencyManager;

    return-object p0
.end method

.method private checkReactivationLock(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 2576
    const/4 v1, 0x0

    .line 2577
    .local v1, "ret":Z
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2578
    sget-object v3, Lcom/android/settings/SettingsIntentReceiver;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    .line 2579
    .local v0, "lmmFlag":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 2580
    const/4 v1, 0x1

    .line 2585
    const-string v2, "SettingsIntentReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LMM[getReqiredAuthFlag] in Check= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "lmmFlag":I
    :cond_0
    move v2, v1

    .line 2588
    :cond_1
    return v2
.end method

.method private checkSmartDockType()Z
    .locals 11

    .prologue
    const/16 v8, 0x400

    const/4 v7, 0x0

    .line 2074
    const-string v0, "sys/class/sec/switch/adc"

    .line 2075
    .local v0, "SmartDockName":Ljava/lang/String;
    new-array v1, v8, [C

    .line 2076
    .local v1, "buffer":[C
    const/4 v3, 0x0

    .line 2077
    .local v3, "file":Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 2079
    .local v5, "fileString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2080
    .end local v3    # "file":Ljava/io/FileReader;
    .local v4, "file":Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x400

    :try_start_1
    invoke-virtual {v4, v1, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 2081
    .local v6, "len":I
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2082
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switch/adc :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2091
    if-eqz v4, :cond_0

    .line 2092
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 2098
    .end local v4    # "file":Ljava/io/FileReader;
    .end local v6    # "len":I
    .restart local v3    # "file":Ljava/io/FileReader;
    :cond_1
    :goto_0
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Docktype :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    const-string v8, "10"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2100
    const/4 v7, 0x1

    .line 2102
    :cond_2
    return v7

    .line 2094
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    .restart local v6    # "len":I
    :catch_0
    move-exception v2

    .line 2095
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 2097
    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_0

    .line 2084
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "len":I
    :catch_1
    move-exception v2

    .line 2085
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "does not readSmartDock! This Kernel does not have wired headset support"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2091
    if-eqz v3, :cond_1

    .line 2092
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2094
    :catch_2
    move-exception v2

    .line 2095
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2086
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 2087
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2091
    if-eqz v3, :cond_1

    .line 2092
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 2094
    :catch_4
    move-exception v2

    .line 2095
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2090
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 2091
    :goto_3
    if-eqz v3, :cond_3

    .line 2092
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 2096
    :cond_3
    :goto_4
    throw v7

    .line 2094
    :catch_5
    move-exception v2

    .line 2095
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 2090
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_3

    .line 2086
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_2

    .line 2084
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_1
.end method

.method private checkVOLanguage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 2340
    const/4 v0, 0x0

    .line 2341
    .local v0, "bCheck":Z
    new-instance v2, Lcom/android/settings/handwritingsearch/RMHelper;

    iget-object v4, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/settings/handwritingsearch/RMHelper;-><init>(Landroid/content/Context;)V

    .line 2342
    .local v2, "mHelper":Lcom/android/settings/handwritingsearch/RMHelper;
    invoke-virtual {v2}, Lcom/android/settings/handwritingsearch/RMHelper;->getLangList()[Ljava/lang/String;

    move-result-object v3

    .line 2344
    .local v3, "mLangList":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 2345
    aget-object v4, v3, v1

    if-eqz v4, :cond_1

    aget-object v4, v3, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2346
    const/4 v0, 0x1

    .line 2350
    :cond_0
    return v0

    .line 2344
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getSamsungAccountName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2558
    const-string v2, ""

    .line 2559
    .local v2, "rtn_val":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2561
    .local v0, "FIRST_INDEX":I
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 2562
    .local v1, "manager":Landroid/accounts/AccountManager;
    const-string v4, "com.osp.app.signin"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 2564
    .local v3, "samsungAccnts":[Landroid/accounts/Account;
    array-length v4, v3

    if-lez v4, :cond_0

    .line 2565
    const/4 v4, 0x0

    aget-object v4, v3, v4

    iget-object v2, v4, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2571
    .end local v1    # "manager":Landroid/accounts/AccountManager;
    .end local v3    # "samsungAccnts":[Landroid/accounts/Account;
    :cond_0
    :goto_0
    return-object v2

    .line 2567
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private isEnabledScreenReaderService()Z
    .locals 6

    .prologue
    .line 2051
    iget-object v4, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2054
    .local v3, "enabledServicesSetting":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 2055
    const-string v3, ""

    .line 2058
    :cond_0
    sget-object v0, Lcom/android/settings/SettingsIntentReceiver;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 2059
    .local v0, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 2061
    :cond_1
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2062
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 2063
    .local v1, "componentNameString":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 2064
    .local v2, "enabledService":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 2065
    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2067
    const/4 v4, 0x1

    .line 2070
    .end local v1    # "componentNameString":Ljava/lang/String;
    .end local v2    # "enabledService":Landroid/content/ComponentName;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isPreffered(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2448
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2449
    .local v1, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2450
    .local v0, "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2451
    .local v2, "mPm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v0, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 2453
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private makeActiveKeyNotification(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2261
    iget-object v1, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2285
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    return-void
.end method

.method private makeDMfile()V
    .locals 6

    .prologue
    .line 2135
    const/4 v2, 0x0

    .line 2137
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/system/samsungaccount.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2139
    .local v0, "dmFileName":Ljava/lang/String;
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2146
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v3, "raf":Ljava/io/RandomAccessFile;
    if-eqz v3, :cond_2

    .line 2149
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    .line 2155
    .end local v0    # "dmFileName":Ljava/lang/String;
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-void

    .line 2150
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "dmFileName":Ljava/lang/String;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 2151
    .local v1, "ex1":Ljava/io/IOException;
    const-string v4, "SettingsIntentReceiver"

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 2152
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 2140
    .end local v0    # "dmFileName":Ljava/lang/String;
    .end local v1    # "ex1":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 2146
    if-eqz v2, :cond_0

    .line 2149
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 2150
    :catch_2
    move-exception v1

    .line 2151
    .restart local v1    # "ex1":Ljava/io/IOException;
    const-string v4, "SettingsIntentReceiver"

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2142
    .end local v1    # "ex1":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 2146
    if-eqz v2, :cond_0

    .line 2149
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 2150
    :catch_4
    move-exception v1

    .line 2151
    .restart local v1    # "ex1":Ljava/io/IOException;
    const-string v4, "SettingsIntentReceiver"

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2145
    .end local v1    # "ex1":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 2146
    if-eqz v2, :cond_1

    .line 2149
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 2152
    :cond_1
    :goto_1
    throw v4

    .line 2150
    :catch_5
    move-exception v1

    .line 2151
    .restart local v1    # "ex1":Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "ex1":Ljava/io/IOException;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "dmFileName":Ljava/lang/String;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :cond_2
    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0
.end method

.method private makeSecurityWarningNotificaiton()V
    .locals 12

    .prologue
    const v11, 0x7f0a19e4

    const v10, 0x7f0205db

    const/4 v9, 0x0

    .line 2226
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_UseChameleon"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ATT"

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "VZW"

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "SPR"

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "TMB"

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "USC"

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2228
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_2

    .line 2257
    :cond_1
    :goto_0
    return-void

    .line 2230
    :cond_2
    iget-object v7, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2231
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v7, "pref_security_warning"

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2233
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 2234
    .local v6, "warningIntent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2235
    const-string v7, "com.android.settings"

    const-string v8, "com.android.settings.SecurityWarningDialog"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2236
    iget-object v7, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v7, v9, v6, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2239
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 2240
    .local v5, "warningClearIntent":Landroid/content/Intent;
    const-string v7, "android.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2241
    iget-object v7, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v7, v9, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2243
    .local v1, "deleteIntent":Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 2244
    .local v2, "nm":Landroid/app/NotificationManager;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2245
    .local v3, "noti":Landroid/app/Notification$Builder;
    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a19e3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 2254
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v2, v10, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method private sendDrivingmodeNotification(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v11, 0x7f0a0d9b

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1968
    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-static {v7}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2004
    :cond_0
    :goto_0
    return-void

    .line 1970
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "driving_mode_on"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1971
    .local v6, "state":I
    const v4, 0x7f0205d9

    .line 1972
    .local v4, "notiID":I
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1976
    .local v2, "nm":Landroid/app/NotificationManager;
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    .line 1977
    .local v0, "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    if-eqz v0, :cond_3

    .line 1978
    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1979
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1980
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v7, "com.vlingo.midas"

    const-string v8, "com.vlingo.midas.gui.ConversationActivity"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1981
    const/high16 v7, 0x10000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1982
    invoke-static {p1, v9, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1989
    .end local v1    # "mIntent":Landroid/content/Intent;
    .local v5, "sender":Landroid/app/PendingIntent;
    :goto_1
    if-ne v6, v10, :cond_4

    .line 1990
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1992
    .local v3, "noti":Landroid/app/Notification$Builder;
    const v7, 0x7f0205d9

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0d87

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1995
    invoke-virtual {p1, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1996
    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 2000
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1984
    .end local v3    # "noti":Landroid/app/Notification$Builder;
    .end local v5    # "sender":Landroid/app/PendingIntent;
    :cond_2
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.settings.DRIVINGMODE_ACTIVITY_LAUNCH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .restart local v5    # "sender":Landroid/app/PendingIntent;
    goto :goto_1

    .line 1987
    .end local v5    # "sender":Landroid/app/PendingIntent;
    :cond_3
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.settings.DRIVINGMODE_ACTIVITY_LAUNCH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .restart local v5    # "sender":Landroid/app/PendingIntent;
    goto :goto_1

    .line 2002
    :cond_4
    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method

.method private sendTalkbackNotification(Landroid/content/Context;Z)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    .line 2008
    const-string v9, "notification"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 2009
    .local v5, "nManager":Landroid/app/NotificationManager;
    const v7, 0xd20fe

    .line 2010
    .local v7, "notificationID":I
    const v1, 0xcae7d

    .line 2011
    .local v1, "emergencyNotificationID":I
    const/4 v2, 0x0

    .line 2012
    .local v2, "isEmergencyModeEnabled":Z
    iget-object v9, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v3

    .line 2013
    .local v3, "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    if-eqz v3, :cond_0

    .line 2014
    invoke-virtual {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2015
    const/4 v2, 0x1

    .line 2017
    :cond_0
    if-eqz p2, :cond_3

    .line 2018
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    .line 2019
    .local v6, "notification":Landroid/app/Notification;
    const v9, 0x7f0205dc

    iput v9, v6, Landroid/app/Notification;->icon:I

    .line 2020
    const-wide/16 v10, 0x0

    iput-wide v10, v6, Landroid/app/Notification;->when:J

    .line 2021
    iget v9, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v6, Landroid/app/Notification;->flags:I

    .line 2023
    const v9, 0x7f0a0a36

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2024
    .local v0, "TitleText":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2025
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u200f"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2029
    :cond_1
    const/4 v9, 0x1

    if-ne v2, v9, :cond_2

    .line 2030
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, p1, v0, v9, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2032
    invoke-virtual {v5, v1, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2048
    .end local v0    # "TitleText":Ljava/lang/String;
    .end local v6    # "notification":Landroid/app/Notification;
    :goto_0
    return-void

    .line 2034
    .restart local v0    # "TitleText":Ljava/lang/String;
    .restart local v6    # "notification":Landroid/app/Notification;
    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2035
    .local v4, "mIntent":Landroid/content/Intent;
    const-string v9, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2036
    const v9, 0x8000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2037
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p1, v9, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 2038
    .local v8, "pi":Landroid/app/PendingIntent;
    const v9, 0x7f0a0a37

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, p1, v0, v9, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2040
    invoke-virtual {v5, v7, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 2043
    .end local v0    # "TitleText":Ljava/lang/String;
    .end local v4    # "mIntent":Landroid/content/Intent;
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v8    # "pi":Landroid/app/PendingIntent;
    :cond_3
    const/4 v9, 0x1

    if-ne v2, v9, :cond_4

    .line 2044
    invoke-virtual {v5, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 2046
    :cond_4
    invoke-virtual {v5, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setHandwritingLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "currentLang"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    .line 2354
    iget-object v10, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "handwriting_language_list"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2355
    .local v6, "imLanguageList":Ljava/lang/String;
    const-string v10, "SettingsIntentReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setHandwritingLanguage() handwriting_language_list : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "and current handwriting language : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    iget-object v10, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 2358
    .local v9, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2359
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v10, "pref_current_handwriting_lang_llist"

    invoke-interface {v3, v10, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2360
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2362
    const/4 v1, 0x0

    .line 2363
    .local v1, "bFindVOLanguage":Z
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 2364
    .local v2, "defaultLocale":Ljava/util/Locale;
    const/4 v8, 0x0

    .line 2365
    .local v8, "setLanguage":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2367
    .local v0, "bCheckKeepCurLang":Z
    if-eqz v6, :cond_0

    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2368
    :cond_0
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2369
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v1

    .line 2408
    :cond_1
    :goto_0
    if-ne v0, v13, :cond_a

    .line 2409
    move-object v8, p1

    .line 2441
    :cond_2
    :goto_1
    const-string v10, "SettingsIntentReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setHandwritingLanguage() setLanguage : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    return-object v8

    .line 2371
    :cond_3
    const-string v10, ";"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2373
    .local v7, "inputLanguage":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v10, v7

    if-ge v5, v10, :cond_5

    .line 2374
    aget-object v10, v7, v5

    const-string v11, "en"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    aget-object v10, v7, v5

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2375
    const/4 v0, 0x1

    .line 2373
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2379
    :cond_5
    if-nez v0, :cond_1

    .line 2380
    array-length v10, v7

    if-ne v10, v13, :cond_6

    .line 2381
    const/4 v10, 0x0

    aget-object p1, v7, v10

    .line 2382
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 2384
    :cond_6
    const/4 v4, 0x0

    .line 2385
    .local v4, "firstLanguae":Ljava/lang/String;
    const/4 v5, 0x0

    :goto_3
    array-length v10, v7

    if-ge v5, v10, :cond_9

    .line 2386
    aget-object v10, v7, v5

    const-string v11, "en"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 2387
    aget-object v10, v7, v5

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2388
    aget-object p1, v7, v5

    .line 2389
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v1

    .line 2391
    :cond_7
    if-nez v4, :cond_8

    .line 2392
    aget-object v4, v7, v5

    .line 2385
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2397
    :cond_9
    if-nez v1, :cond_1

    .line 2398
    if-eqz v4, :cond_1

    .line 2399
    move-object p1, v4

    .line 2400
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 2411
    .end local v4    # "firstLanguae":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "inputLanguage":[Ljava/lang/String;
    :cond_a
    const-string v10, "SettingsIntentReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setHandwritingLanguage() bFindVOLanguage : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    if-ne v1, v13, :cond_b

    .line 2413
    move-object v8, p1

    goto/16 :goto_1

    .line 2415
    :cond_b
    const-string v10, "en_GB"

    invoke-direct {p0, v10}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 2416
    const-string v8, "en_GB"

    .line 2421
    :cond_c
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2422
    const-string v10, "ko_KR"

    invoke-direct {p0, v10}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2423
    const-string v8, "ko_KR"

    .line 2427
    :cond_d
    const-string v10, "ATT"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "VZW"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "SPR"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "TMB"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "USC"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 2430
    :cond_e
    const-string v8, "en_US"

    .line 2433
    :cond_f
    const-string v10, "XTC"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "SMA"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "GLB"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "XTE"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2435
    :cond_10
    const-string v8, "en_US"

    goto/16 :goto_1

    .line 2417
    :cond_11
    const-string v10, "en_US"

    invoke-direct {p0, v10}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2418
    const-string v8, "en_US"

    goto :goto_4
.end method

.method private toggleFmm(Landroid/content/Context;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onoff"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2106
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "shopdemo"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 2131
    :goto_0
    return-void

    .line 2109
    :cond_0
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FMM enabled? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2111
    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2112
    if-eqz p2, :cond_2

    .line 2113
    invoke-virtual {p0, v3, p1}, Lcom/android/settings/SettingsIntentReceiver;->SetReactivationServiceFlag(ILandroid/content/Context;)I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 2114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "remote_control"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2115
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.remotecontrol_on"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2116
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "SettingsIntentReceiver"

    const-string v5, " toggleFmm[remotecontrol_on]"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2119
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v3, "SettingsIntentReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleFmm on [ServiceFlag] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsIntentReceiver;->checkReactivationLock(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    :cond_2
    :goto_1
    const-string v3, "FMMPreferences"

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2128
    .local v2, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2129
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_fmm"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 2123
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "sharedPrefs":Landroid/content/SharedPreferences;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "remote_control"

    if-eqz p2, :cond_4

    :goto_2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method private writeMTData(Ljava/lang/String;)V
    .locals 6
    .param p1, "mtData"    # Ljava/lang/String;

    .prologue
    .line 2158
    const/4 v2, 0x0

    .line 2160
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/system/mobiletracker.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2162
    .local v1, "mtFileName":Ljava/lang/String;
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2163
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v3, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2172
    if-eqz v3, :cond_2

    .line 2175
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 2181
    .end local v1    # "mtFileName":Ljava/lang/String;
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-void

    .line 2176
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "mtFileName":Ljava/lang/String;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .line 2177
    .local v0, "ex1":Ljava/io/IOException;
    const-string v4, "SettingsIntentReceiver"

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 2178
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 2164
    .end local v0    # "ex1":Ljava/io/IOException;
    .end local v1    # "mtFileName":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 2172
    :goto_1
    if-eqz v2, :cond_0

    .line 2175
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 2176
    :catch_2
    move-exception v0

    .line 2177
    .restart local v0    # "ex1":Ljava/io/IOException;
    const-string v4, "SettingsIntentReceiver"

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2166
    .end local v0    # "ex1":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 2172
    :goto_2
    if-eqz v2, :cond_0

    .line 2175
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 2176
    :catch_4
    move-exception v0

    .line 2177
    .restart local v0    # "ex1":Ljava/io/IOException;
    const-string v4, "SettingsIntentReceiver"

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2168
    .end local v0    # "ex1":Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 2172
    :goto_3
    if-eqz v2, :cond_0

    .line 2175
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_0

    .line 2176
    :catch_6
    move-exception v0

    .line 2177
    .restart local v0    # "ex1":Ljava/io/IOException;
    const-string v4, "SettingsIntentReceiver"

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2171
    .end local v0    # "ex1":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 2172
    :goto_4
    if-eqz v2, :cond_1

    .line 2175
    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 2178
    :cond_1
    :goto_5
    throw v4

    .line 2176
    :catch_7
    move-exception v0

    .line 2177
    .restart local v0    # "ex1":Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 2171
    .end local v0    # "ex1":Ljava/io/IOException;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "mtFileName":Ljava/lang/String;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 2168
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v4

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 2166
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v4

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 2164
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v4

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :cond_2
    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0
.end method


# virtual methods
.method public ChangeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 2457
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2458
    const-string v3, "."

    const-string v4, "/"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2459
    const-string v1, ""

    .line 2460
    .local v1, "RetDateFormat":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2462
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2463
    .local v0, "NumCheck":C
    const/16 v3, 0x2f

    if-le v0, v3, :cond_0

    const/16 v3, 0x3a

    if-ge v0, v3, :cond_0

    .line 2464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2460
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2467
    .end local v0    # "NumCheck":C
    :cond_1
    return-object v1
.end method

.method public SetReactivationServiceFlag(ILandroid/content/Context;)I
    .locals 3
    .param p1, "setFlag"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 2549
    sget-object v1, Lcom/android/settings/SettingsIntentReceiver;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-static {p2}, Lcom/android/settings/SettingsIntentReceiver;->getSamsungAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->setFlag(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2550
    const-string v0, "SettingsIntentReceiver"

    const-string v1, "SetReactivationServiceFlag() returns error!! "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    const/4 v0, 0x0

    .line 2554
    :cond_0
    return v0
.end method

.method public SetRegionalDate_Update()I
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 2471
    iget-object v1, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 2472
    .local v8, "dateFormats":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2473
    .local v0, "dummydate_for_dateformat":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 2475
    iget-object v1, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    aget-object v2, v8, v5

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 2476
    .local v10, "format":Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/android/settings/SettingsIntentReceiver;->ChangeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2477
    const/4 v9, 0x0

    .line 2478
    .local v9, "flag":Z
    const/4 v7, 0x0

    .line 2479
    .local v7, "curAppliedDate":I
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_0
    array-length v1, v8

    if-ge v11, v1, :cond_0

    .line 2480
    iget-object v1, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    aget-object v2, v8, v11

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 2481
    .local v12, "tempDate":Ljava/lang/String;
    invoke-virtual {p0, v12}, Lcom/android/settings/SettingsIntentReceiver;->ChangeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2482
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2483
    move v7, v11

    .line 2484
    const/4 v9, 0x1

    .line 2488
    .end local v12    # "tempDate":Ljava/lang/String;
    :cond_0
    if-nez v9, :cond_1

    .line 2489
    const/4 v7, -0x1

    .line 2491
    :cond_1
    return v7

    .line 2479
    .restart local v12    # "tempDate":Ljava/lang/String;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 139
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    .line 143
    .local v18, "action":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v125

    .line 144
    .local v125, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v92

    .line 145
    .local v92, "mPm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    .line 146
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 149
    new-instance v5, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/android/settings/SettingsIntentReceiver;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    .line 152
    :cond_0
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 153
    :cond_1
    new-instance v5, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x103012b

    invoke-direct {v5, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    .line 157
    :cond_2
    const-string v5, "com.samsung.wipe.MTDATA"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v59

    .line 159
    .local v59, "extras":Landroid/os/Bundle;
    const-string v5, "MTDATA"

    move-object/from16 v0, v59

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v134

    .line 161
    .local v134, "temp":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->writeMTData(Ljava/lang/String;)V

    .line 162
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->makeDMfile()V

    .line 165
    const-string v5, "mt_pwd"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->GetPhPWD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 166
    const-string v6, "mt_state"

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->GetMTStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, v125

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    .end local v59    # "extras":Landroid/os/Bundle;
    .end local v134    # "temp":Ljava/lang/String;
    :cond_3
    const-string v5, "com.android.settings.action.talkback_off"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 170
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive(), action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/settings/SettingsIntentReceiver;->sendTalkbackNotification(Landroid/content/Context;Z)V

    .line 172
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 173
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v36

    .line 174
    .local v36, "bundle_data":Landroid/os/Bundle;
    const-string v5, "is_enabled"

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v78

    .line 175
    .local v78, "is_enabled":Z
    if-eqz v78, :cond_4

    .line 176
    const-string v5, "option_flag"

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v86

    .line 177
    .local v86, "mDisableExclusiveOptionsFlag":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move/from16 v0, v86

    invoke-static {v5, v0}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 180
    .end local v36    # "bundle_data":Landroid/os/Bundle;
    .end local v78    # "is_enabled":Z
    .end local v86    # "mDisableExclusiveOptionsFlag":I
    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_ACCESSIBILITY_RAPID_KEY_INPUT"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 181
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "rapid_key_input_menu_checked"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    .line 183
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive(), action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Rapid key input on"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "rapid_key_input"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1673
    :cond_5
    :goto_1
    const-string v5, "android.net.ethernet.ETH_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1674
    const-string v5, "eth_state"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v105

    .line 1675
    .local v105, "nEthState":I
    const-string v5, "lan_cable_state"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    .line 1677
    .local v31, "bLanCableState":Z
    const/4 v5, 0x1

    move/from16 v0, v105

    if-ne v0, v5, :cond_c3

    .line 1678
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v6, 0x7f0a19b6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1687
    :cond_6
    :goto_2
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ETH_STATE_CHANGED - eth_state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v105

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lan_cable_state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    .end local v31    # "bLanCableState":Z
    .end local v105    # "nEthState":I
    :cond_7
    const-string v5, "android.intent.action.REGISTRATION_COMPLETED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1695
    const-string v5, "samsung_signin"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1696
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/settings/SettingsIntentReceiver;->toggleFmm(Landroid/content/Context;Z)V

    .line 1699
    :cond_8
    const-string v5, "android.settings.DRIVING_MODE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "android.settings.DRIVINGMODE_SWITCH_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1700
    :cond_9
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "driving_mode_on"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v133

    .line 1702
    .local v133, "state":I
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1703
    move-object/from16 v0, p0

    move/from16 v1, v133

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->EnablingDrivingMode(I)V

    .line 1704
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1705
    move-object/from16 v0, p0

    move/from16 v1, v133

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->EnablingDrivingModeAirCallAccept(I)V

    .line 1707
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/SettingsIntentReceiver;->sendDrivingmodeNotification(Landroid/content/Context;)V

    .line 1710
    .end local v133    # "state":I
    :cond_b
    const-string v5, "android.settings.DRIVINGMODE_ACTIVITY_LAUNCH"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1711
    new-instance v52, Landroid/content/Intent;

    invoke-direct/range {v52 .. v52}, Landroid/content/Intent;-><init>()V

    .line 1712
    .local v52, "drivingModeIntent":Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1713
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.Settings$DrivingModeSettingsActivity"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const v6, 0x10008000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1715
    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1717
    .end local v52    # "drivingModeIntent":Landroid/content/Intent;
    :cond_c
    const-string v5, "android.intent.action.SMARTNETWORK_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1718
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_network"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_c4

    const/16 v73, 0x1

    .line 1720
    .local v73, "isOn":Z
    :goto_3
    const-string v5, "statusbar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v96

    check-cast v96, Landroid/app/StatusBarManager;

    .line 1721
    .local v96, "mStatusBar":Landroid/app/StatusBarManager;
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1722
    const-string v5, "smart_network"

    const v6, 0x7f0205df

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v96

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 1723
    if-eqz v73, :cond_c5

    .line 1724
    const-string v5, "smart_network"

    const/4 v6, 0x1

    move-object/from16 v0, v96

    invoke-virtual {v0, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1730
    :cond_d
    :goto_4
    new-instance v34, Landroid/content/Intent;

    const-string v5, "com.android.phone.smartnetwork.widget_reload_action"

    move-object/from16 v0, v34

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1731
    .local v34, "broadcastIntent":Landroid/content/Intent;
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1734
    .end local v34    # "broadcastIntent":Landroid/content/Intent;
    .end local v73    # "isOn":Z
    .end local v96    # "mStatusBar":Landroid/app/StatusBarManager;
    :cond_e
    const-string v5, "android.settings.CHANGED_ICC_LOCK_ENABLE"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1735
    const-string v5, "icc_lock_state"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v57

    .line 1736
    .local v57, "enable":I
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.settings.CHANGED_ICC_LOCK_ENABLE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "icc_lock_enable"

    move/from16 v0, v57

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1740
    .end local v57    # "enable":I
    :cond_f
    const-string v5, "android.hardware.usb.action.USB_STATE"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1741
    const-string v5, "connected"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v98

    .line 1742
    .local v98, "mUsbConnected":Z
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v120

    .line 1743
    .local v120, "pref":Landroid/content/SharedPreferences;
    invoke-interface/range {v120 .. v120}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v54

    .line 1744
    .local v54, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "usb_connection_state"

    move-object/from16 v0, v54

    move/from16 v1, v98

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1745
    invoke-interface/range {v54 .. v54}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1747
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "usb_tethering_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c6

    const/16 v135, 0x1

    .line 1748
    .local v135, "usb_tethering_enabled":Z
    :goto_5
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "usb_tethering_enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v135

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUsbConnected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v98

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    if-nez v98, :cond_10

    if-eqz v135, :cond_10

    .line 1751
    const-string v5, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1752
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->checkWifiPreCondition(Landroid/content/Context;Z)V

    .line 1753
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "usb_tethering_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1757
    .end local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v98    # "mUsbConnected":Z
    .end local v120    # "pref":Landroid/content/SharedPreferences;
    .end local v135    # "usb_tethering_enabled":Z
    :cond_10
    const-string v5, "GSM"

    invoke-static {v5}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "com.samsung.intent.action.Slot1OffCompleted"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "com.samsung.intent.action.Slot1OnCompleted"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "com.samsung.intent.action.Slot2OffCompleted"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "com.samsung.intent.action.Slot2OnCompleted"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1762
    :cond_11
    new-instance v34, Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Force"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1763
    .restart local v34    # "broadcastIntent":Landroid/content/Intent;
    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1767
    .end local v34    # "broadcastIntent":Landroid/content/Intent;
    :cond_12
    const-string v5, "android.net.conn.SwitchDataNetworkDuringWLANandSmartbonding"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1768
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "SwitchDataNetworkDuringWLANandSmartbonding receive make toast popup"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0768

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1772
    :cond_13
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1773
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v120

    .line 1774
    .restart local v120    # "pref":Landroid/content/SharedPreferences;
    invoke-interface/range {v120 .. v120}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v54

    .line 1776
    .restart local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static/range {p2 .. p2}, Lcom/android/settings/Utils;->isCharger(Landroid/content/Intent;)Z

    move-result v133

    .line 1778
    .local v133, "state":Z
    const-string v5, "battery_charging_state"

    move-object/from16 v0, v54

    move/from16 v1, v133

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1779
    invoke-interface/range {v54 .. v54}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1781
    .end local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v120    # "pref":Landroid/content/SharedPreferences;
    .end local v133    # "state":Z
    :cond_14
    :goto_6
    return-void

    .line 166
    .restart local v59    # "extras":Landroid/os/Bundle;
    .restart local v134    # "temp":Ljava/lang/String;
    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 187
    .end local v59    # "extras":Landroid/os/Bundle;
    .end local v134    # "temp":Ljava/lang/String;
    :cond_16
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive(), action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Rapid key input off"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "rapid_key_input"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 191
    :cond_17
    const-string v5, "android.intent.action.TALKBACK_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 192
    const-string v5, "mFrom"

    const-string v6, "mNoFrom"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Ljava/lang/String;

    .line 194
    .local v88, "mFrom":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 195
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive(), action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Talkback turn off"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BroadCast Intent from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v88

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 199
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_ACCESSIBILITY_RAPID_KEY_INPUT"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 200
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive(), action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Rapid key input off"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "rapid_key_input"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 227
    :cond_18
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/settings/SettingsIntentReceiver;->sendTalkbackNotification(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 204
    :cond_19
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive(), action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Talkback turn on"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BroadCast Intent from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v88

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    const-string v7, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 208
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_enabled"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v36

    .line 212
    .restart local v36    # "bundle_data":Landroid/os/Bundle;
    const-string v5, "is_enabled"

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v78

    .line 214
    .restart local v78    # "is_enabled":Z
    if-eqz v78, :cond_1a

    .line 215
    const-string v5, "option_flag"

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v86

    .line 216
    .restart local v86    # "mDisableExclusiveOptionsFlag":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move/from16 v0, v86

    invoke-static {v5, v0}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 219
    .end local v86    # "mDisableExclusiveOptionsFlag":I
    :cond_1a
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_ACCESSIBILITY_RAPID_KEY_INPUT"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 220
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "rapid_key_input_menu_checked"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_18

    .line 221
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive(), action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Rapid key input on"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "rapid_key_input"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    .line 228
    .end local v36    # "bundle_data":Landroid/os/Bundle;
    .end local v78    # "is_enabled":Z
    .end local v88    # "mFrom":Ljava/lang/String;
    :cond_1b
    const-string v5, "android.intent.action.EMERGENCY_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 229
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 230
    const-string v5, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v106

    check-cast v106, Landroid/app/NotificationManager;

    .line 231
    .local v106, "nManager":Landroid/app/NotificationManager;
    const-string v5, "reason"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v55

    .line 232
    .local v55, "emergencyBroadcastCheck":I
    const v109, 0xd20fe

    .line 233
    .local v109, "notificationID":I
    const v56, 0xcae7d

    .line 234
    .local v56, "emergencyNotificationID":I
    new-instance v108, Landroid/app/Notification;

    invoke-direct/range {v108 .. v108}, Landroid/app/Notification;-><init>()V

    .line 235
    .local v108, "notification":Landroid/app/Notification;
    const v5, 0x7f0205dc

    move-object/from16 v0, v108

    iput v5, v0, Landroid/app/Notification;->icon:I

    .line 236
    const-wide/16 v6, 0x0

    move-object/from16 v0, v108

    iput-wide v6, v0, Landroid/app/Notification;->when:J

    .line 237
    move-object/from16 v0, v108

    iget v5, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x2

    move-object/from16 v0, v108

    iput v5, v0, Landroid/app/Notification;->flags:I

    .line 239
    const v5, 0x7f0a0a36

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 240
    .local v16, "TitleText":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u200f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 244
    :cond_1c
    const/4 v5, 0x2

    move/from16 v0, v55

    if-ne v0, v5, :cond_1e

    .line 245
    move-object/from16 v0, v106

    move/from16 v1, v109

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 246
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v108

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 247
    move-object/from16 v0, v106

    move/from16 v1, v56

    move-object/from16 v2, v108

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 259
    .end local v16    # "TitleText":Ljava/lang/String;
    .end local v55    # "emergencyBroadcastCheck":I
    .end local v56    # "emergencyNotificationID":I
    .end local v106    # "nManager":Landroid/app/NotificationManager;
    .end local v108    # "notification":Landroid/app/Notification;
    .end local v109    # "notificationID":I
    :cond_1d
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Landroid/app/NotificationManager;

    .line 260
    .local v91, "mNM":Landroid/app/NotificationManager;
    const v5, 0x7f0205dd

    move-object/from16 v0, v91

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 248
    .end local v91    # "mNM":Landroid/app/NotificationManager;
    .restart local v16    # "TitleText":Ljava/lang/String;
    .restart local v55    # "emergencyBroadcastCheck":I
    .restart local v56    # "emergencyNotificationID":I
    .restart local v106    # "nManager":Landroid/app/NotificationManager;
    .restart local v108    # "notification":Landroid/app/Notification;
    .restart local v109    # "notificationID":I
    :cond_1e
    const/4 v5, 0x4

    move/from16 v0, v55

    if-ne v0, v5, :cond_1d

    .line 249
    move-object/from16 v0, v106

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 250
    new-instance v89, Landroid/content/Intent;

    invoke-direct/range {v89 .. v89}, Landroid/content/Intent;-><init>()V

    .line 251
    .local v89, "mIntent":Landroid/content/Intent;
    const-string v5, "android.settings.ACCESSIBILITY_SETTINGS"

    move-object/from16 v0, v89

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const v5, 0x8000

    move-object/from16 v0, v89

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 253
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v89

    invoke-static {v0, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v116

    .line 254
    .local v116, "pi":Landroid/app/PendingIntent;
    const v5, 0x7f0a0a37

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v108

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v116

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 256
    move-object/from16 v0, v106

    move/from16 v1, v109

    move-object/from16 v2, v108

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_8

    .line 261
    .end local v16    # "TitleText":Ljava/lang/String;
    .end local v55    # "emergencyBroadcastCheck":I
    .end local v56    # "emergencyNotificationID":I
    .end local v89    # "mIntent":Landroid/content/Intent;
    .end local v106    # "nManager":Landroid/app/NotificationManager;
    .end local v108    # "notification":Landroid/app/Notification;
    .end local v109    # "notificationID":I
    .end local v116    # "pi":Landroid/app/PendingIntent;
    :cond_1f
    const-string v5, "com.android.settings.action.sound_detector"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 262
    const v13, 0xd2158

    .line 263
    .local v13, "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sound_detector"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v133

    .line 264
    .local v133, "state":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/app/NotificationManager;

    .line 266
    .local v110, "notificationManager":Landroid/app/NotificationManager;
    const/4 v5, 0x1

    move/from16 v0, v133

    if-ne v0, v5, :cond_20

    .line 269
    new-instance v93, Landroid/content/Intent;

    invoke-direct/range {v93 .. v93}, Landroid/content/Intent;-><init>()V

    .line 270
    .local v93, "mSdIntent":Landroid/content/Intent;
    const-string v5, "android.settings.accessibility.BABYCRYING_DETECTING"

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v5, "mNotify"

    const/4 v6, 0x1

    move-object/from16 v0, v93

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 272
    const/high16 v5, 0x24800000

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 274
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    move-object/from16 v0, v93

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v117

    .line 276
    .local v117, "pie":Landroid/app/PendingIntent;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0aed

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0205d4

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v108

    .line 283
    .restart local v108    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0aed

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0af1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v108

    move-object/from16 v1, v117

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 285
    move-object/from16 v0, v110

    move-object/from16 v1, v108

    invoke-virtual {v0, v13, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 287
    .end local v93    # "mSdIntent":Landroid/content/Intent;
    .end local v108    # "notification":Landroid/app/Notification;
    .end local v117    # "pie":Landroid/app/PendingIntent;
    :cond_20
    move-object/from16 v0, v110

    invoke-virtual {v0, v13}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 289
    .end local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v110    # "notificationManager":Landroid/app/NotificationManager;
    .end local v133    # "state":I
    :cond_21
    const-string v5, "com.android.settings.action.sound_detector.start"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 290
    const v13, 0xd2158

    .line 291
    .restart local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/app/NotificationManager;

    .line 294
    .restart local v110    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v93, Landroid/content/Intent;

    invoke-direct/range {v93 .. v93}, Landroid/content/Intent;-><init>()V

    .line 295
    .restart local v93    # "mSdIntent":Landroid/content/Intent;
    const-string v5, "android.settings.accessibility.BABYCRYING_DETECTING"

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v5, "mNotify"

    const/4 v6, 0x1

    move-object/from16 v0, v93

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    const/high16 v5, 0x24800000

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 299
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    move-object/from16 v0, v93

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v117

    .line 301
    .restart local v117    # "pie":Landroid/app/PendingIntent;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0aed

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0205d3

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v108

    .line 308
    .restart local v108    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0aed

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0af2

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v108

    move-object/from16 v1, v117

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 310
    move-object/from16 v0, v110

    move-object/from16 v1, v108

    invoke-virtual {v0, v13, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 311
    .end local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v93    # "mSdIntent":Landroid/content/Intent;
    .end local v108    # "notification":Landroid/app/Notification;
    .end local v110    # "notificationManager":Landroid/app/NotificationManager;
    .end local v117    # "pie":Landroid/app/PendingIntent;
    :cond_22
    const-string v5, "com.android.settings.action.sound_detector.stop"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 312
    const v13, 0xd2158

    .line 313
    .restart local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/app/NotificationManager;

    .line 316
    .restart local v110    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v93, Landroid/content/Intent;

    invoke-direct/range {v93 .. v93}, Landroid/content/Intent;-><init>()V

    .line 317
    .restart local v93    # "mSdIntent":Landroid/content/Intent;
    const-string v5, "android.settings.accessibility.BABYCRYING_DETECTING"

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v5, "mNotify"

    const/4 v6, 0x1

    move-object/from16 v0, v93

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 319
    const/high16 v5, 0x24800000

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 321
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    move-object/from16 v0, v93

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v117

    .line 323
    .restart local v117    # "pie":Landroid/app/PendingIntent;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0aed

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0205d4

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v108

    .line 330
    .restart local v108    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0aed

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0af1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v108

    move-object/from16 v1, v117

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 332
    move-object/from16 v0, v110

    move-object/from16 v1, v108

    invoke-virtual {v0, v13, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 333
    .end local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v93    # "mSdIntent":Landroid/content/Intent;
    .end local v108    # "notification":Landroid/app/Notification;
    .end local v110    # "notificationManager":Landroid/app/NotificationManager;
    .end local v117    # "pie":Landroid/app/PendingIntent;
    :cond_23
    const-string v5, "com.android.settings.action.doorbell_detector"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 334
    const v13, 0xd21bc

    .line 335
    .restart local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "doorbell_detector"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v133

    .line 336
    .restart local v133    # "state":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/app/NotificationManager;

    .line 338
    .restart local v110    # "notificationManager":Landroid/app/NotificationManager;
    const/4 v5, 0x1

    move/from16 v0, v133

    if-ne v0, v5, :cond_24

    .line 341
    new-instance v93, Landroid/content/Intent;

    invoke-direct/range {v93 .. v93}, Landroid/content/Intent;-><init>()V

    .line 342
    .restart local v93    # "mSdIntent":Landroid/content/Intent;
    const-string v5, "android.settings.accessibility.DOORBELL_DETECTING"

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v5, "mNotify"

    const/4 v6, 0x1

    move-object/from16 v0, v93

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 344
    const/high16 v5, 0x24800000

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 346
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    move-object/from16 v0, v93

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v117

    .line 348
    .restart local v117    # "pie":Landroid/app/PendingIntent;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0205d4

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v108

    .line 355
    .restart local v108    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0af3

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v108

    move-object/from16 v1, v117

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 357
    move-object/from16 v0, v110

    move-object/from16 v1, v108

    invoke-virtual {v0, v13, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 359
    .end local v93    # "mSdIntent":Landroid/content/Intent;
    .end local v108    # "notification":Landroid/app/Notification;
    .end local v117    # "pie":Landroid/app/PendingIntent;
    :cond_24
    move-object/from16 v0, v110

    invoke-virtual {v0, v13}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 361
    .end local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v110    # "notificationManager":Landroid/app/NotificationManager;
    .end local v133    # "state":I
    :cond_25
    const-string v5, "com.android.settings.action.doorbell_detector.start"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 362
    const v13, 0xd21bc

    .line 363
    .restart local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/app/NotificationManager;

    .line 366
    .restart local v110    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v93, Landroid/content/Intent;

    invoke-direct/range {v93 .. v93}, Landroid/content/Intent;-><init>()V

    .line 367
    .restart local v93    # "mSdIntent":Landroid/content/Intent;
    const-string v5, "android.settings.accessibility.DOORBELL_DETECTING"

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string v5, "mNotify"

    const/4 v6, 0x1

    move-object/from16 v0, v93

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 369
    const/high16 v5, 0x24800000

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 371
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    move-object/from16 v0, v93

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v117

    .line 373
    .restart local v117    # "pie":Landroid/app/PendingIntent;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0205d3

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v108

    .line 380
    .restart local v108    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0af4

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v108

    move-object/from16 v1, v117

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 382
    move-object/from16 v0, v110

    move-object/from16 v1, v108

    invoke-virtual {v0, v13, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 383
    .end local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v93    # "mSdIntent":Landroid/content/Intent;
    .end local v108    # "notification":Landroid/app/Notification;
    .end local v110    # "notificationManager":Landroid/app/NotificationManager;
    .end local v117    # "pie":Landroid/app/PendingIntent;
    :cond_26
    const-string v5, "com.android.settings.action.doorbell_detector.stop"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 384
    const v13, 0xd21bc

    .line 385
    .restart local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/app/NotificationManager;

    .line 388
    .restart local v110    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v93, Landroid/content/Intent;

    invoke-direct/range {v93 .. v93}, Landroid/content/Intent;-><init>()V

    .line 389
    .restart local v93    # "mSdIntent":Landroid/content/Intent;
    const-string v5, "android.settings.accessibility.DOORBELL_DETECTING"

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string v5, "mNotify"

    const/4 v6, 0x1

    move-object/from16 v0, v93

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 391
    const/high16 v5, 0x24800000

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 393
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    move-object/from16 v0, v93

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v117

    .line 395
    .restart local v117    # "pie":Landroid/app/PendingIntent;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0205d4

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v108

    .line 402
    .restart local v108    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0af3

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v108

    move-object/from16 v1, v117

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 404
    move-object/from16 v0, v110

    move-object/from16 v1, v108

    invoke-virtual {v0, v13, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 405
    .end local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v93    # "mSdIntent":Landroid/content/Intent;
    .end local v108    # "notification":Landroid/app/Notification;
    .end local v110    # "notificationManager":Landroid/app/NotificationManager;
    .end local v117    # "pie":Landroid/app/PendingIntent;
    :cond_27
    const-string v5, "android.intent.action.ACTION_ADAPTIVE_DISPLAY_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 406
    new-instance v81, Landroid/content/Intent;

    invoke-direct/range {v81 .. v81}, Landroid/content/Intent;-><init>()V

    .line 407
    .local v81, "mAdaptIntent":Landroid/content/Intent;
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.ModePreviewDialog"

    move-object/from16 v0, v81

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 410
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v95

    .line 411
    .local v95, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "adapt_noti"

    const/4 v6, 0x0

    move-object/from16 v0, v95

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v50

    .line 413
    .local v50, "do_not_show_again":Z
    const/16 v77, 0x1

    .line 415
    .local v77, "isSupportScreenMode":Z
    if-eqz v77, :cond_2a

    const-string v5, "screen_mode_automatic_setting"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2a

    .line 417
    if-nez v50, :cond_29

    .line 418
    const-string v5, "statusbar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v96

    check-cast v96, Landroid/app/StatusBarManager;

    .line 419
    .restart local v96    # "mStatusBar":Landroid/app/StatusBarManager;
    if-eqz v96, :cond_28

    .line 420
    invoke-virtual/range {v96 .. v96}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 421
    :cond_28
    move-object/from16 v0, p1

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 423
    .end local v96    # "mStatusBar":Landroid/app/StatusBarManager;
    :cond_29
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto/16 :goto_1

    .line 431
    :cond_2a
    const-string v5, "screen_mode_setting"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto/16 :goto_1

    .line 436
    .end local v50    # "do_not_show_again":Z
    .end local v77    # "isSupportScreenMode":Z
    .end local v81    # "mAdaptIntent":Landroid/content/Intent;
    .end local v95    # "mSharedPreferences":Landroid/content/SharedPreferences;
    :cond_2b
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 438
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "torch_light"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 446
    :cond_2c
    const-string v5, "android.intent.action.NEGATIVECOLOR_ON"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 447
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "powersaving_switch"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v119

    .line 448
    .local v119, "powersavingState":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "blackgrey_powersaving_mode"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    .line 449
    .local v32, "black_grey_powersaving":I
    const/4 v5, 0x1

    move/from16 v0, v119

    if-ne v0, v5, :cond_2d

    const/4 v5, 0x1

    move/from16 v0, v32

    if-ne v0, v5, :cond_2d

    .line 450
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "high_contrast"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 453
    :cond_2d
    const-string v5, "accessibility"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v67

    .line 455
    .local v67, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    const/4 v5, 0x1

    :try_start_0
    move-object/from16 v0, v67

    invoke-interface {v0, v5}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 456
    :catch_0
    move-exception v53

    .line 458
    .local v53, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v53 .. v53}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 461
    .end local v32    # "black_grey_powersaving":I
    .end local v53    # "e":Landroid/os/RemoteException;
    .end local v67    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    .end local v119    # "powersavingState":I
    :cond_2e
    const-string v5, "android.intent.action.NEGATIVECOLOR_OFF"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 463
    const-string v5, "accessibility"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v67

    .line 465
    .restart local v67    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    const/4 v5, 0x0

    :try_start_1
    move-object/from16 v0, v67

    invoke-interface {v0, v5}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 466
    :catch_1
    move-exception v53

    .line 468
    .restart local v53    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v53 .. v53}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 471
    .end local v53    # "e":Landroid/os/RemoteException;
    .end local v67    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :cond_2f
    const-string v5, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 472
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sview_color_wallpaper"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v138

    .line 474
    .local v138, "wallpaperindex":I
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive(), action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sview_color_wallpaper DB:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v138

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v5, 0x1

    move/from16 v0, v138

    if-ne v0, v5, :cond_5

    .line 478
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->saveSViewWallpaperDrawable(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 480
    .end local v138    # "wallpaperindex":I
    :cond_30
    const-string v5, "android.intent.action.BCS_REQUEST"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 481
    const-string v5, "command"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 482
    .local v38, "command":Ljava/lang/String;
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive(), action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    if-eqz v38, :cond_31

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v38

    .line 485
    :goto_9
    const-string v5, "AT+AIRPLANEVALUE"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 486
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "ATT CMD is not AT+AIRPLANEVALUE"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 484
    :cond_31
    const-string v38, ""

    goto :goto_9

    .line 489
    :cond_32
    new-instance v126, Landroid/content/Intent;

    const-string v5, "android.intent.action.BCS_RESPONSE"

    move-object/from16 v0, v126

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 490
    .local v126, "responseIntent":Landroid/content/Intent;
    const-string v70, ""

    .line 491
    .local v70, "isAirplane":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_33

    .line 492
    const-string v70, "ON"

    .line 496
    :goto_a
    const-string v5, "response"

    move-object/from16 v0, v126

    move-object/from16 v1, v70

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v70

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    move-object/from16 v0, p1

    move-object/from16 v1, v126

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 494
    :cond_33
    const-string v70, "OFF"

    goto :goto_a

    .line 500
    .end local v38    # "command":Ljava/lang/String;
    .end local v70    # "isAirplane":Ljava/lang/String;
    .end local v126    # "responseIntent":Landroid/content/Intent;
    :cond_34
    const-string v5, "android.media.RINGER_MODE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v59

    .line 502
    .restart local v59    # "extras":Landroid/os/Bundle;
    const/16 v127, 0x2

    .line 503
    .local v127, "ringerMode":I
    if-eqz v59, :cond_35

    .line 504
    const-string v5, "android.media.EXTRA_RINGER_MODE"

    move-object/from16 v0, v59

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v127

    .line 512
    :goto_b
    packed-switch v127, :pswitch_data_0

    goto/16 :goto_1

    .line 516
    :pswitch_0
    const-string v5, "vibrate_in_silent"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 507
    :cond_35
    const-string v5, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/media/AudioManager;

    .line 508
    .local v25, "audioManager":Landroid/media/AudioManager;
    invoke-virtual/range {v25 .. v25}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v127

    goto :goto_b

    .line 521
    .end local v25    # "audioManager":Landroid/media/AudioManager;
    :pswitch_1
    const-string v5, "vibrate_in_silent"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 525
    :pswitch_2
    const-string v5, "vibrate_in_silent"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 530
    .end local v59    # "extras":Landroid/os/Bundle;
    .end local v127    # "ringerMode":I
    :cond_36
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 533
    const-string v5, "first_sim_brightness_flag"

    const/4 v6, -0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v62

    .line 534
    .local v62, "first_sim_brightness_flag":I
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "first_sim_brightness_flag : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v62

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v5, 0x1

    move/from16 v0, v62

    if-eq v0, v5, :cond_38

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_38

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 536
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSimMissing(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 537
    const/4 v5, -0x1

    move/from16 v0, v62

    if-ne v0, v5, :cond_38

    .line 538
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v131

    .line 539
    .local v131, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "pref_siop_brightness"

    const/4 v6, -0x1

    move-object/from16 v0, v131

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v99

    .line 540
    .local v99, "max_brightness":I
    if-gez v99, :cond_37

    .line 541
    const/16 v99, 0xff

    .line 543
    :cond_37
    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 544
    const-string v5, "screen_brightness"

    move-object/from16 v0, v125

    move/from16 v1, v99

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 545
    const-string v5, "first_sim_brightness_flag"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 602
    .end local v99    # "max_brightness":I
    .end local v131    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_38
    :goto_c
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 604
    const-string v5, "set_shortcuts_phone"

    const/4 v6, -0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_39

    .line 606
    const-string v5, "set_shortcuts_phone"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 610
    :cond_39
    const-string v5, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    const-string v5, "ro.boot_recovery"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_6a

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 611
    const-string v5, "adb_enabled_changed_by_usb_mode"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 612
    const-string v5, "adb_enabled"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 637
    :cond_3a
    :goto_d
    :try_start_2
    const-string v5, "db_first_booting"

    const/4 v6, -0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_6b

    const/16 v60, 0x1

    .line 638
    .local v60, "first":Z
    :goto_e
    if-nez v60, :cond_3b

    .line 639
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/SettingsIntentReceiver;->SetMyProfileTextSize(Landroid/content/Context;)V

    .line 640
    const-string v5, "db_first_booting"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 647
    .end local v60    # "first":Z
    :cond_3b
    :goto_f
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v5

    if-nez v5, :cond_3c

    .line 648
    const-string v5, "auto_adjust_touch"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6c

    const/4 v5, 0x1

    :goto_10
    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->enableGloveMode(Z)Z

    .line 653
    :cond_3c
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 655
    const-string v5, "power_saving_mode"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6d

    const/4 v5, 0x1

    :goto_11
    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)Z

    .line 660
    :cond_3d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_network"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_6e

    const/16 v73, 0x1

    .line 662
    .restart local v73    # "isOn":Z
    :goto_12
    const-string v5, "statusbar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v96

    check-cast v96, Landroid/app/StatusBarManager;

    .line 663
    .restart local v96    # "mStatusBar":Landroid/app/StatusBarManager;
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 664
    const-string v5, "smart_network"

    const v6, 0x7f0205df

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v96

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 665
    if-eqz v73, :cond_6f

    .line 666
    const-string v5, "smart_network"

    const/4 v6, 0x1

    move-object/from16 v0, v96

    invoke-virtual {v0, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 672
    :cond_3e
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "audio_balance"

    const/16 v7, 0x32

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    .line 673
    .local v26, "audio_balance":I
    const/16 v5, 0x32

    move/from16 v0, v26

    if-eq v0, v5, :cond_3f

    .line 674
    const-string v5, "sound_balance"

    move-object/from16 v0, v125

    move/from16 v1, v26

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 675
    const-string v5, "audio_balance"

    const/16 v6, 0x32

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 678
    :cond_3f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "color_blind"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_40

    .line 680
    const-string v5, "accessibility"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v67

    .line 682
    .restart local v67    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_3
    const-string v5, "high_contrast"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_70

    const/4 v5, 0x1

    :goto_14
    move-object/from16 v0, v67

    invoke-interface {v0, v5}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 690
    .end local v67    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :cond_40
    :goto_15
    const-string v5, "TGY"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 693
    const-string v5, "notification_panel_active_app_list"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 694
    .local v19, "active_app_list":Ljava/lang/String;
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 696
    .local v21, "active_app_reset_list":Ljava/lang/String;
    if-eqz v19, :cond_41

    if-eqz v21, :cond_41

    .line 697
    const-string v5, "Volte"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_41

    const-string v5, "Volte"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 698
    const-string v5, "Volte"

    const-string v6, "VoLte"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 699
    const-string v5, "Volte"

    const-string v6, "VoLte"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    .line 701
    const-string v5, "notification_panel_active_app_list"

    move-object/from16 v0, v125

    move-object/from16 v1, v19

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 702
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    move-object/from16 v1, v21

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 703
    const-string v5, "notification_panel_default_active_app_list"

    move-object/from16 v0, v125

    move-object/from16 v1, v21

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 709
    .end local v19    # "active_app_list":Ljava/lang/String;
    .end local v21    # "active_app_reset_list":Ljava/lang/String;
    :cond_41
    const-string v5, "h3gduoszn"

    const-string v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 710
    const-string v5, "notification_panel_active_app_list"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 711
    .restart local v19    # "active_app_list":Ljava/lang/String;
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 713
    .restart local v21    # "active_app_reset_list":Ljava/lang/String;
    if-eqz v19, :cond_42

    if-eqz v21, :cond_42

    .line 714
    const-string v5, "Apn"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_42

    const-string v5, "Apn"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 715
    const-string v5, "Apn;"

    const-string v6, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 716
    const-string v5, "Apn;"

    const-string v6, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    .line 718
    const-string v5, "notification_panel_active_app_list"

    move-object/from16 v0, v125

    move-object/from16 v1, v19

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 719
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    move-object/from16 v1, v21

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 720
    const-string v5, "notification_panel_default_active_app_list"

    move-object/from16 v0, v125

    move-object/from16 v1, v21

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 745
    .end local v19    # "active_app_list":Ljava/lang/String;
    .end local v21    # "active_app_reset_list":Ljava/lang/String;
    :cond_42
    const-string v5, "torch_light"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_43

    .line 747
    const-string v5, "torch_light"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 748
    new-instance v89, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_ASSISTIVE_OFF_WIDGETUPDATE"

    move-object/from16 v0, v89

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 749
    .restart local v89    # "mIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 752
    .end local v89    # "mIntent":Landroid/content/Intent;
    :cond_43
    const/16 v77, 0x1

    .line 754
    .restart local v77    # "isSupportScreenMode":Z
    if-eqz v77, :cond_71

    const-string v5, "screen_mode_automatic_setting"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_71

    .line 756
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 765
    :goto_16
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 767
    const-string v5, "pen_settings"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v44

    .line 768
    .local v44, "currentPenSettings":I
    invoke-static/range {v44 .. v44}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenType(I)Z

    .line 769
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set pen settings to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const-string v5, "pen_detect_mode_disabled"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v42

    .line 772
    .local v42, "currentPenBatterySavingMode":I
    invoke-static/range {v42 .. v42}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenSavingmode(I)Z

    .line 773
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentPenBatterySavingMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    .end local v42    # "currentPenBatterySavingMode":I
    .end local v44    # "currentPenSettings":I
    :cond_44
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 777
    const-string v5, "pen_hand_side"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v43

    .line 778
    .local v43, "currentPenHandType":I
    invoke-static/range {v43 .. v43}, Lcom/sec/android/hardware/SecHardwareInterface;->setEpenHandType(I)V

    .line 779
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentPenHandType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    .end local v43    # "currentPenHandType":I
    :cond_45
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v131

    .line 785
    .restart local v131    # "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "pref_device_provision"

    const/4 v6, 0x0

    move-object/from16 v0, v131

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_47

    .line 786
    const-string v5, "screen_off_timeout"

    const/16 v6, 0x7530

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const v6, 0x1d8a8

    if-ne v5, v6, :cond_46

    .line 787
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Overriding setup wizard set screen timeout"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const-string v6, "screen_off_timeout"

    const-string v5, "USC"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    const v5, 0xea60

    :goto_17
    move-object/from16 v0, v125

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 791
    :cond_46
    const-string v5, "device_provisioned"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_47

    .line 792
    invoke-interface/range {v131 .. v131}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v54

    .line 793
    .restart local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_device_provision"

    const/4 v6, 0x1

    move-object/from16 v0, v54

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 794
    invoke-interface/range {v54 .. v54}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 799
    .end local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_47
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 800
    .local v20, "active_app_list_for_reset":Ljava/lang/String;
    if-nez v20, :cond_48

    .line 801
    const-string v5, "notification_panel_active_app_list"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v114

    .line 802
    .local v114, "original":Ljava/lang/String;
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "original: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v114

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    move-object/from16 v1, v114

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 804
    const-string v5, "notification_panel_active_number_of_apps_for_reset"

    const/16 v6, 0xa

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 808
    .end local v114    # "original":Ljava/lang/String;
    :cond_48
    const-string v5, "notification_panel_active_app_list"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v113

    .line 809
    .local v113, "orgList":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    const-string v5, "WifiCalling"

    move-object/from16 v0, v113

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 811
    const-string v5, "Bluetooth"

    move-object/from16 v0, v113

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 812
    const-string v5, "Bluetooth;"

    const-string v6, "Bluetooth;WifiCalling;"

    move-object/from16 v0, v113

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v103

    .line 813
    .local v103, "modifiedList":Ljava/lang/String;
    const-string v5, "notification_panel_active_app_list"

    move-object/from16 v0, v125

    move-object/from16 v1, v103

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 815
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    .line 816
    .local v80, "listForReset":Ljava/lang/String;
    const-string v5, "WifiCalling"

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 817
    const-string v5, "Bluetooth;"

    const-string v6, "Bluetooth;WifiCalling;"

    move-object/from16 v0, v80

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v104

    .line 818
    .local v104, "modifiedListForReset":Ljava/lang/String;
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    move-object/from16 v1, v104

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 824
    .end local v80    # "listForReset":Ljava/lang/String;
    .end local v103    # "modifiedList":Ljava/lang/String;
    .end local v104    # "modifiedListForReset":Ljava/lang/String;
    :cond_49
    const-string v5, "notification_panel_active_app_list"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v113

    .line 825
    const-string v5, "SmartScroll"

    move-object/from16 v0, v113

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 826
    const-string v5, "SmartScroll;"

    const-string v6, ""

    move-object/from16 v0, v113

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v103

    .line 827
    .restart local v103    # "modifiedList":Ljava/lang/String;
    const-string v5, "notification_panel_active_app_list"

    move-object/from16 v0, v125

    move-object/from16 v1, v103

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 829
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    .line 830
    .restart local v80    # "listForReset":Ljava/lang/String;
    const-string v5, "SmartScroll"

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 831
    const-string v5, "SmartScroll;"

    const-string v6, ""

    move-object/from16 v0, v80

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v104

    .line 832
    .restart local v104    # "modifiedListForReset":Ljava/lang/String;
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    move-object/from16 v1, v104

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 836
    .end local v80    # "listForReset":Ljava/lang/String;
    .end local v103    # "modifiedList":Ljava/lang/String;
    .end local v104    # "modifiedListForReset":Ljava/lang/String;
    :cond_4a
    const-string v5, "hlteuc"

    const-string v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 837
    const-string v5, "notification_panel_active_app_list"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v113

    .line 838
    const-string v5, "SFinder"

    move-object/from16 v0, v113

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4b

    const-string v5, "QuickConnect"

    move-object/from16 v0, v113

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4b

    .line 839
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v113

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SFinder;QuickConnect;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v103

    .line 840
    .restart local v103    # "modifiedList":Ljava/lang/String;
    const-string v5, "notification_panel_active_app_list"

    move-object/from16 v0, v125

    move-object/from16 v1, v103

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 842
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    .line 843
    .restart local v80    # "listForReset":Ljava/lang/String;
    const-string v5, "SFinder"

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4b

    const-string v5, "QuickConnect"

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4b

    .line 844
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SFinder;QuickConnect;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v104

    .line 845
    .restart local v104    # "modifiedListForReset":Ljava/lang/String;
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    move-object/from16 v1, v104

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 853
    .end local v80    # "listForReset":Ljava/lang/String;
    .end local v103    # "modifiedList":Ljava/lang/String;
    .end local v104    # "modifiedListForReset":Ljava/lang/String;
    :cond_4b
    const-string v5, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 854
    const-string v5, "notification_panel_active_app_list"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v113

    .line 855
    const-string v5, "SFinder"

    move-object/from16 v0, v113

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 856
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v113

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SFinder;WiFiHotspot;TouchSensitivity;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v103

    .line 857
    .restart local v103    # "modifiedList":Ljava/lang/String;
    const-string v5, "notification_panel_active_app_list"

    move-object/from16 v0, v125

    move-object/from16 v1, v103

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 859
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    .line 860
    .restart local v80    # "listForReset":Ljava/lang/String;
    const-string v5, "SFinder"

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 861
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SFinder;WiFiHotspot;TouchSensitivity;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v104

    .line 862
    .restart local v104    # "modifiedListForReset":Ljava/lang/String;
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    move-object/from16 v1, v104

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 868
    .end local v80    # "listForReset":Ljava/lang/String;
    .end local v103    # "modifiedList":Ljava/lang/String;
    .end local v104    # "modifiedListForReset":Ljava/lang/String;
    :cond_4c
    const-string v5, "notification_panel_active_app_list"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v113

    .line 869
    const-string v5, "TouchSensitivity"

    move-object/from16 v0, v113

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 870
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v113

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "TouchSensitivity;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v103

    .line 871
    .restart local v103    # "modifiedList":Ljava/lang/String;
    const-string v5, "notification_panel_active_app_list"

    move-object/from16 v0, v125

    move-object/from16 v1, v103

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 873
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    .line 874
    .restart local v80    # "listForReset":Ljava/lang/String;
    const-string v5, "TouchSensitivity"

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 875
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "TouchSensitivity;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v104

    .line 876
    .restart local v104    # "modifiedListForReset":Ljava/lang/String;
    const-string v5, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v125

    move-object/from16 v1, v104

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 909
    .end local v80    # "listForReset":Ljava/lang/String;
    .end local v103    # "modifiedList":Ljava/lang/String;
    .end local v104    # "modifiedListForReset":Ljava/lang/String;
    :cond_4d
    const-string v5, "screen_off_timeout"

    const/16 v6, 0x7530

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v111

    .line 911
    .local v111, "oldScreenTimOut":I
    const v5, 0x927c0

    move/from16 v0, v111

    if-gt v0, v5, :cond_4e

    if-gez v111, :cond_4f

    .line 913
    :cond_4e
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Reset screen timeout to 10mins"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const-string v5, "screen_off_timeout"

    const v6, 0x927c0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 917
    :cond_4f
    const-string v5, "stay_on_while_plugged_in"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v112

    .line 919
    .local v112, "oldStayAwake":I
    if-eqz v112, :cond_50

    .line 920
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Set stay awake off"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const-string v5, "stay_on_while_plugged_in"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 927
    :cond_50
    const-string v5, "screen_off_timeout"

    const/16 v6, 0x7530

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_51

    .line 928
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Reset screen timeout to 30 seconds"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const-string v5, "screen_off_timeout"

    const/16 v6, 0x7530

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 933
    :cond_51
    const-string v5, "usb_setting_mode"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_52

    .line 934
    const-string v5, "usb_setting_mode"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 943
    :cond_52
    const-string v5, "TMB"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 944
    const-string v5, "auto_time"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 945
    const-string v5, "auto_time_zone"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 952
    :cond_53
    const-string v5, "storage.mmc.size"

    const-string v6, "none"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 953
    .local v85, "mDefaultMemory":Ljava/lang/String;
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storage property: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v85

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const-wide/16 v48, 0x0

    .line 955
    .local v48, "defaultMem":J
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storage db: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "storage_mmc_size"

    const-wide/16 v8, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v7, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const-string v5, "storage_mmc_size"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_54

    .line 957
    const-string v5, "none"

    move-object/from16 v0, v85

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    .line 958
    invoke-static/range {v85 .. v85}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v48

    .line 959
    const-string v5, "storage_mmc_size"

    move-object/from16 v0, v125

    move-wide/from16 v1, v48

    invoke-static {v0, v5, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 963
    :cond_54
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 964
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/settings/SettingsIntentReceiver;->sendTalkbackNotification(Landroid/content/Context;Z)V

    .line 967
    :cond_55
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sound_detector"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_73

    const/16 v76, 0x1

    .line 968
    .local v76, "isSoundDetectorOn":Z
    :goto_18
    if-eqz v76, :cond_56

    .line 969
    const v13, 0xd2158

    .line 970
    .restart local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/app/NotificationManager;

    .line 974
    .restart local v110    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v93, Landroid/content/Intent;

    invoke-direct/range {v93 .. v93}, Landroid/content/Intent;-><init>()V

    .line 975
    .restart local v93    # "mSdIntent":Landroid/content/Intent;
    const-string v5, "android.settings.accessibility.BABYCRYING_DETECTING"

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 976
    const-string v5, "mNotify"

    const/4 v6, 0x1

    move-object/from16 v0, v93

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 977
    const/high16 v5, 0x24800000

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 979
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    move-object/from16 v0, v93

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v117

    .line 980
    .restart local v117    # "pie":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "isBabyCryingEnable"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 982
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0aed

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0205d4

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v108

    .line 989
    .restart local v108    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0aed

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0af1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v108

    move-object/from16 v1, v117

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 991
    move-object/from16 v0, v110

    move-object/from16 v1, v108

    invoke-virtual {v0, v13, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 994
    .end local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v93    # "mSdIntent":Landroid/content/Intent;
    .end local v108    # "notification":Landroid/app/Notification;
    .end local v110    # "notificationManager":Landroid/app/NotificationManager;
    .end local v117    # "pie":Landroid/app/PendingIntent;
    :cond_56
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "doorbell_detector"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_74

    const/16 v72, 0x1

    .line 995
    .local v72, "isDoorbellDetectorOn":Z
    :goto_19
    if-eqz v72, :cond_57

    .line 996
    const v13, 0xd21bc

    .line 997
    .restart local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/app/NotificationManager;

    .line 1001
    .restart local v110    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v93, Landroid/content/Intent;

    invoke-direct/range {v93 .. v93}, Landroid/content/Intent;-><init>()V

    .line 1002
    .restart local v93    # "mSdIntent":Landroid/content/Intent;
    const-string v5, "android.settings.accessibility.DOORBELL_DETECTING"

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    const-string v5, "mNotify"

    const/4 v6, 0x1

    move-object/from16 v0, v93

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1004
    const/high16 v5, 0x24800000

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1006
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    move-object/from16 v0, v93

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v117

    .line 1007
    .restart local v117    # "pie":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "isDoorbellEnable"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1009
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0205d4

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v108

    .line 1016
    .restart local v108    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0af3

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v108

    move-object/from16 v1, v117

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1018
    move-object/from16 v0, v110

    move-object/from16 v1, v108

    invoke-virtual {v0, v13, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1021
    .end local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v93    # "mSdIntent":Landroid/content/Intent;
    .end local v108    # "notification":Landroid/app/Notification;
    .end local v110    # "notificationManager":Landroid/app/NotificationManager;
    .end local v117    # "pie":Landroid/app/PendingIntent;
    :cond_57
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->makeSecurityWarningNotificaiton()V

    .line 1023
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/SettingsIntentReceiver;->makeActiveKeyNotification(Landroid/content/Context;)V

    .line 1025
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/SettingsIntentReceiver;->sendDrivingmodeNotification(Landroid/content/Context;)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "boottime"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v61

    .line 1028
    .local v61, "firstBoot":I
    if-nez v61, :cond_7b

    .line 1030
    const/4 v14, 0x0

    .line 1031
    .local v14, "SavedApplist":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "reading_mode_app_list"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1032
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading mode List: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const/16 v5, 0x80

    move-object/from16 v0, v92

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v87

    .line 1034
    .local v87, "mExtraList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/16 v66, 0x0

    .local v66, "i":I
    :goto_1a
    invoke-interface/range {v87 .. v87}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v66

    if-ge v0, v5, :cond_77

    .line 1036
    :try_start_4
    move-object/from16 v0, v87

    move/from16 v1, v66

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v118, v0

    .line 1037
    .local v118, "pkgName":Ljava/lang/String;
    const/16 v5, 0x80

    move-object/from16 v0, v92

    move-object/from16 v1, v118

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    .line 1038
    .local v22, "app":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-nez v5, :cond_75

    .line 1034
    .end local v22    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v118    # "pkgName":Ljava/lang/String;
    :cond_58
    :goto_1b
    add-int/lit8 v66, v66, 0x1

    goto :goto_1a

    .line 548
    .end local v14    # "SavedApplist":Ljava/lang/String;
    .end local v20    # "active_app_list_for_reset":Ljava/lang/String;
    .end local v26    # "audio_balance":I
    .end local v48    # "defaultMem":J
    .end local v61    # "firstBoot":I
    .end local v66    # "i":I
    .end local v72    # "isDoorbellDetectorOn":Z
    .end local v73    # "isOn":Z
    .end local v76    # "isSoundDetectorOn":Z
    .end local v77    # "isSupportScreenMode":Z
    .end local v85    # "mDefaultMemory":Ljava/lang/String;
    .end local v87    # "mExtraList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v96    # "mStatusBar":Landroid/app/StatusBarManager;
    .end local v111    # "oldScreenTimOut":I
    .end local v112    # "oldStayAwake":I
    .end local v113    # "orgList":Ljava/lang/String;
    .end local v131    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_59
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e004e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v47

    .line 552
    .local v47, "default_brightness":I
    const-string v5, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 553
    const-string v5, "hltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string v5, "SC-01F"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string v5, "hltejs01dcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string v5, "SC-02F"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string v5, "kltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string v5, "SC-04F"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string v5, "kltedcmactive"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string v5, "SC-02G"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string v5, "sltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string v5, "trltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string v5, "tbltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string v5, "SC-01G"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string v5, "klimtltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string v5, "SC-03G"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 563
    :cond_5a
    const-string v5, "com.nttdocomo.android.dhome"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings/SettingsIntentReceiver;->isPreffered(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 564
    const-string v5, "hltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    const-string v5, "SC-01F"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 566
    :cond_5b
    const/16 v47, 0x46

    .line 593
    :cond_5c
    :goto_1c
    const-string v5, "screen_brightness"

    move-object/from16 v0, v125

    move/from16 v1, v47

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 594
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 595
    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 597
    :cond_5d
    const-string v5, "first_sim_brightness_flag"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_c

    .line 567
    :cond_5e
    const-string v5, "hltejs01dcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5f

    const-string v5, "SC-02F"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 569
    :cond_5f
    const/16 v47, 0x50

    goto :goto_1c

    .line 570
    :cond_60
    const-string v5, "kltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_61

    const-string v5, "SC-04F"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 572
    :cond_61
    const/16 v47, 0x3c

    goto :goto_1c

    .line 573
    :cond_62
    const-string v5, "sltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 575
    const/16 v47, 0x2d

    goto :goto_1c

    .line 576
    :cond_63
    const-string v5, "trltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 578
    const/16 v47, 0x2d

    goto :goto_1c

    .line 579
    :cond_64
    const-string v5, "tbltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_65

    const-string v5, "SC-01G"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 581
    :cond_65
    const/16 v47, 0x2d

    goto/16 :goto_1c

    .line 582
    :cond_66
    const-string v5, "kltedcmactive"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_67

    const-string v5, "SC-02G"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 584
    :cond_67
    const/16 v47, 0x2d

    goto/16 :goto_1c

    .line 585
    :cond_68
    const-string v5, "klimtltedcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_69

    const-string v5, "SC-03G"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 587
    :cond_69
    const/16 v47, 0x34

    goto/16 :goto_1c

    .line 613
    .end local v47    # "default_brightness":I
    :cond_6a
    const-string v5, "adb_enabled_changed_by_usb_mode"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3a

    const-string v5, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    const-string v5, "ro.boot_recovery"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3a

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 614
    const-string v5, "adb_enabled_changed_by_usb_mode"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 615
    const-string v5, "adb_enabled"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_d

    .line 637
    :cond_6b
    const/16 v60, 0x0

    goto/16 :goto_e

    .line 642
    :catch_2
    move-exception v53

    .line 643
    .local v53, "e":Ljava/lang/Exception;
    const-string v5, "SettingsIntentReceiver"

    const-string v6, " Error changing font size for myprofile"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 648
    .end local v53    # "e":Ljava/lang/Exception;
    :cond_6c
    const/4 v5, 0x0

    goto/16 :goto_10

    .line 655
    :cond_6d
    const/4 v5, 0x0

    goto/16 :goto_11

    .line 660
    :cond_6e
    const/16 v73, 0x0

    goto/16 :goto_12

    .line 668
    .restart local v73    # "isOn":Z
    .restart local v96    # "mStatusBar":Landroid/app/StatusBarManager;
    :cond_6f
    const-string v5, "smart_network"

    const/4 v6, 0x0

    move-object/from16 v0, v96

    invoke-virtual {v0, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto/16 :goto_13

    .line 682
    .restart local v26    # "audio_balance":I
    .restart local v67    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :cond_70
    const/4 v5, 0x0

    goto/16 :goto_14

    .line 683
    :catch_3
    move-exception v53

    .line 685
    .local v53, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v53 .. v53}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_15

    .line 761
    .end local v53    # "e":Landroid/os/RemoteException;
    .end local v67    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    .restart local v77    # "isSupportScreenMode":Z
    :cond_71
    const-string v5, "screen_mode_setting"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto/16 :goto_16

    .line 788
    .restart local v131    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_72
    const/16 v5, 0x7530

    goto/16 :goto_17

    .line 967
    .restart local v20    # "active_app_list_for_reset":Ljava/lang/String;
    .restart local v48    # "defaultMem":J
    .restart local v85    # "mDefaultMemory":Ljava/lang/String;
    .restart local v111    # "oldScreenTimOut":I
    .restart local v112    # "oldStayAwake":I
    .restart local v113    # "orgList":Ljava/lang/String;
    :cond_73
    const/16 v76, 0x0

    goto/16 :goto_18

    .line 994
    .restart local v76    # "isSoundDetectorOn":Z
    :cond_74
    const/16 v72, 0x0

    goto/16 :goto_19

    .line 1040
    .restart local v14    # "SavedApplist":Ljava/lang/String;
    .restart local v22    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v61    # "firstBoot":I
    .restart local v66    # "i":I
    .restart local v72    # "isDoorbellDetectorOn":Z
    .restart local v87    # "mExtraList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v118    # "pkgName":Ljava/lang/String;
    :cond_75
    :try_start_5
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "samsung.settings.reading_default_on"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 1041
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading mode Added: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v118

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "samsung.settings.reading_default_on"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    move-object/from16 v0, v118

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_58

    .line 1043
    const/4 v5, 0x1

    move-object/from16 v0, v92

    move-object/from16 v1, v118

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 1044
    .local v12, "Papp":Landroid/content/pm/PackageInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v83

    .line 1045
    .local v83, "mAppinfo":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v83

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1046
    goto/16 :goto_1b

    .line 1047
    .end local v12    # "Papp":Landroid/content/pm/PackageInfo;
    .end local v83    # "mAppinfo":Ljava/lang/String;
    :cond_76
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "samsung.settings.reading_default_on_addtolist"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 1048
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading mode Added: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v118

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "samsung.settings.reading_default_applist_on"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    move-object/from16 v0, v118

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_58

    .line 1050
    const/4 v5, 0x1

    move-object/from16 v0, v92

    move-object/from16 v1, v118

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 1051
    .restart local v12    # "Papp":Landroid/content/pm/PackageInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v83

    .line 1052
    .restart local v83    # "mAppinfo":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v83

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v14

    goto/16 :goto_1b

    .line 1055
    .end local v12    # "Papp":Landroid/content/pm/PackageInfo;
    .end local v22    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v83    # "mAppinfo":Ljava/lang/String;
    .end local v118    # "pkgName":Ljava/lang/String;
    :catch_4
    move-exception v53

    .line 1056
    .local v53, "e":Ljava/lang/Exception;
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Can not find activity name"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 1059
    .end local v53    # "e":Ljava/lang/Exception;
    :cond_77
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "reading_mode_app_list"

    invoke-static {v5, v6, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1062
    new-instance v11, Landroid/content/Intent;

    const-string v5, "android.intent.action.DOWNLOADABLE"

    invoke-direct {v11, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1063
    .local v11, "LauncherIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.DOWNLOADABLE"

    invoke-virtual {v11, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1064
    const/16 v97, 0x0

    .line 1065
    .local v97, "mTempList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v83, ""

    .line 1066
    .restart local v83    # "mAppinfo":Ljava/lang/String;
    const/16 v5, 0xa0

    move-object/from16 v0, v92

    invoke-virtual {v0, v11, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v97

    .line 1067
    const/16 v66, 0x0

    :goto_1d
    invoke-interface/range {v97 .. v97}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v66

    if-ge v0, v5, :cond_79

    .line 1069
    :try_start_6
    move-object/from16 v0, v97

    move/from16 v1, v66

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v102, v0

    .line 1070
    .local v102, "metadata":Landroid/os/Bundle;
    const-string v5, "com.sec.ENABLE_DOWNLOADABLE_LIST"

    move-object/from16 v0, v102

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 1071
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v83

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v97

    move/from16 v1, v66

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v97

    move/from16 v1, v66

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v83

    .line 1067
    .end local v102    # "metadata":Landroid/os/Bundle;
    :cond_78
    :goto_1e
    add-int/lit8 v66, v66, 0x1

    goto :goto_1d

    .line 1073
    :catch_5
    move-exception v53

    .line 1074
    .restart local v53    # "e":Ljava/lang/Exception;
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Can not read metadata"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 1077
    .end local v53    # "e":Ljava/lang/Exception;
    :cond_79
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preload_list"

    move-object/from16 v0, v83

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1078
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7a

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 1080
    :try_start_7
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writeFontSize"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    new-instance v40, Landroid/content/res/Configuration;

    invoke-direct/range {v40 .. v40}, Landroid/content/res/Configuration;-><init>()V

    .line 1082
    .local v40, "curConfig":Landroid/content/res/Configuration;
    const v5, 0x3fae147b    # 1.36f

    move-object/from16 v0, v40

    iput v5, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 1083
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v5, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1088
    .end local v40    # "curConfig":Landroid/content/res/Configuration;
    :cond_7a
    :goto_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "boottime"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1092
    .end local v11    # "LauncherIntent":Landroid/content/Intent;
    .end local v14    # "SavedApplist":Ljava/lang/String;
    .end local v66    # "i":I
    .end local v83    # "mAppinfo":Ljava/lang/String;
    .end local v87    # "mExtraList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v97    # "mTempList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_7b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v136

    .line 1093
    .local v136, "uspLevel":I
    const/4 v5, 0x1

    move/from16 v0, v136

    if-le v0, v5, :cond_7f

    .line 1094
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1095
    .local v41, "currentLang":Ljava/lang/String;
    if-nez v41, :cond_7c

    .line 1096
    const-string v41, ""

    .line 1097
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->setHandwritingLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v129

    .line 1099
    .local v129, "setLanguage":Ljava/lang/String;
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handwriting_language setLanguage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v129

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    move-object/from16 v0, v129

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1101
    new-instance v64, Landroid/content/Intent;

    const-string v5, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1102
    .local v64, "handwritingIntent":Landroid/content/Intent;
    const-string v5, "language"

    move-object/from16 v0, v64

    move-object/from16 v1, v129

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1103
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1133
    .end local v41    # "currentLang":Ljava/lang/String;
    .end local v64    # "handwritingIntent":Landroid/content/Intent;
    .end local v129    # "setLanguage":Ljava/lang/String;
    :cond_7c
    :goto_20
    const-string v5, "SEC_FLOATING_FEATURE_COMMON_BLACKSCREEN_UI_QUICK_ACCESS"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 1134
    const-string v5, "quick_application_access"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_81

    const/16 v58, 0x1

    .line 1136
    .local v58, "enabled":Z
    :goto_21
    invoke-static/range {v58 .. v58}, Lcom/android/settings/Utils;->enableQuickApplicationAccess(Z)Z

    .line 1140
    .end local v58    # "enabled":Z
    :cond_7d
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7e

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 1142
    const-string v5, "dormant_disable_notifications"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_82

    const/16 v137, 0x1

    .line 1143
    .local v137, "value":Z
    :goto_22
    const-string v6, "dormant_disable_led_indicator"

    if-eqz v137, :cond_83

    const/4 v5, 0x1

    :goto_23
    move-object/from16 v0, v125

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1146
    .end local v137    # "value":Z
    :cond_7e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_ConfigOpeartorHomeMode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "notuseteasymode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    const-string v6, "op_mode_switch"

    const/4 v7, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 1148
    const-string v5, "easy_mode_switch"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1149
    const-string v5, "op_mode_switch"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1084
    .end local v136    # "uspLevel":I
    .restart local v11    # "LauncherIntent":Landroid/content/Intent;
    .restart local v14    # "SavedApplist":Ljava/lang/String;
    .restart local v66    # "i":I
    .restart local v83    # "mAppinfo":Ljava/lang/String;
    .restart local v87    # "mExtraList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v97    # "mTempList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_6
    move-exception v53

    .line 1085
    .local v53, "e":Landroid/os/RemoteException;
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Unable to save font size"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1105
    .end local v11    # "LauncherIntent":Landroid/content/Intent;
    .end local v14    # "SavedApplist":Ljava/lang/String;
    .end local v53    # "e":Landroid/os/RemoteException;
    .end local v66    # "i":I
    .end local v83    # "mAppinfo":Ljava/lang/String;
    .end local v87    # "mExtraList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v97    # "mTempList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v136    # "uspLevel":I
    :cond_7f
    const-string v5, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 1107
    const-string v5, "hltejs01dcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_80

    const-string v5, "SC-02F"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 1108
    :cond_80
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1109
    .restart local v41    # "currentLang":Ljava/lang/String;
    if-nez v41, :cond_7c

    .line 1110
    const-string v129, "ja_JP"

    .line 1111
    .restart local v129    # "setLanguage":Ljava/lang/String;
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handwriting_language setLanguage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v129

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    move-object/from16 v0, v129

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1113
    new-instance v64, Landroid/content/Intent;

    const-string v5, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1114
    .restart local v64    # "handwritingIntent":Landroid/content/Intent;
    const-string v5, "language"

    move-object/from16 v0, v64

    move-object/from16 v1, v129

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1115
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_20

    .line 1134
    .end local v41    # "currentLang":Ljava/lang/String;
    .end local v64    # "handwritingIntent":Landroid/content/Intent;
    .end local v129    # "setLanguage":Ljava/lang/String;
    :cond_81
    const/16 v58, 0x0

    goto/16 :goto_21

    .line 1142
    :cond_82
    const/16 v137, 0x0

    goto/16 :goto_22

    .line 1143
    .restart local v137    # "value":Z
    :cond_83
    const/4 v5, 0x0

    goto/16 :goto_23

    .line 1151
    .end local v20    # "active_app_list_for_reset":Ljava/lang/String;
    .end local v26    # "audio_balance":I
    .end local v48    # "defaultMem":J
    .end local v61    # "firstBoot":I
    .end local v62    # "first_sim_brightness_flag":I
    .end local v72    # "isDoorbellDetectorOn":Z
    .end local v73    # "isOn":Z
    .end local v76    # "isSoundDetectorOn":Z
    .end local v77    # "isSupportScreenMode":Z
    .end local v85    # "mDefaultMemory":Ljava/lang/String;
    .end local v96    # "mStatusBar":Landroid/app/StatusBarManager;
    .end local v111    # "oldScreenTimOut":I
    .end local v112    # "oldStayAwake":I
    .end local v113    # "orgList":Ljava/lang/String;
    .end local v131    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v136    # "uspLevel":I
    .end local v137    # "value":Z
    :cond_84
    const-string v5, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 1152
    const-string v5, "android.intent.extra.DOCK_STATE"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v133

    .line 1153
    .restart local v133    # "state":I
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received dock event with state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v133

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    const-string v5, "cradle_enable"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v39

    .line 1156
    .local v39, "cradleEnabled":I
    if-nez v133, :cond_87

    .line 1158
    const-string v5, "cradle_connect"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1159
    if-eqz v39, :cond_86

    .line 1160
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Cradle is enabled without dock"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    new-instance v94, Landroid/content/Intent;

    invoke-direct/range {v94 .. v94}, Landroid/content/Intent;-><init>()V

    .line 1162
    .local v94, "mSendIntent":Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->checkSmartDockType()Z

    move-result v5

    if-eqz v5, :cond_85

    .line 1163
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "SmartDock connected, Do nothing"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :goto_24
    const-string v5, "state"

    const/4 v6, 0x0

    move-object/from16 v0, v94

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1169
    move-object/from16 v0, p1

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1170
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Sound state changed to device (state: 0)"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1165
    :cond_85
    const-string v5, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v94

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_24

    .line 1172
    .end local v94    # "mSendIntent":Landroid/content/Intent;
    :cond_86
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cradle is disabled1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Sound state is device"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1175
    :cond_87
    const/4 v5, 0x7

    move/from16 v0, v133

    if-eq v0, v5, :cond_5

    .line 1177
    const-string v5, "cradle_connect"

    const/4 v6, 0x1

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1178
    if-eqz v39, :cond_89

    .line 1179
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Cradle is enabled with dock"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    new-instance v94, Landroid/content/Intent;

    invoke-direct/range {v94 .. v94}, Landroid/content/Intent;-><init>()V

    .line 1181
    .restart local v94    # "mSendIntent":Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->checkSmartDockType()Z

    move-result v5

    if-eqz v5, :cond_88

    .line 1182
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "SmartDock connected, Do nothing"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :goto_25
    const-string v5, "state"

    const/4 v6, 0x1

    move-object/from16 v0, v94

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1188
    move-object/from16 v0, p1

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1189
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Sound state changed to line out (state: 1)"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1184
    :cond_88
    const-string v5, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v94

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_25

    .line 1191
    .end local v94    # "mSendIntent":Landroid/content/Intent;
    :cond_89
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cradle is disabled2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Sound state is device"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1197
    .end local v39    # "cradleEnabled":I
    .end local v133    # "state":I
    :cond_8a
    const-string v5, "android.intent.action.CSC_CHAMELEON_UPDATE_SETTINGS"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 1198
    const-string v5, "persist.sys.roaming_menu"

    const-string v6, "roaming_menu"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    const-string v5, "persist.sys.tether_data"

    const-string v6, "tether_data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    const-string v5, "operators_carrierhomepage"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    .line 1202
    .local v65, "homepage":Ljava/lang/String;
    const-string v5, "operators_brandalpha"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1203
    .local v33, "brandalpha":Ljava/lang/String;
    if-eqz v65, :cond_8b

    const-string v5, "null"

    move-object/from16 v0, v65

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 1204
    :cond_8b
    const-string v5, "db_chameleon_carrierhomepage"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a1784

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1209
    :goto_26
    if-eqz v33, :cond_8c

    const-string v5, "null"

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 1210
    :cond_8c
    const-string v5, "db_chameleon_brandalpha"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a1785

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1206
    :cond_8d
    const-string v5, "db_chameleon_carrierhomepage"

    move-object/from16 v0, v125

    move-object/from16 v1, v65

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_26

    .line 1212
    :cond_8e
    const-string v5, "db_chameleon_brandalpha"

    move-object/from16 v0, v125

    move-object/from16 v1, v33

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1214
    .end local v33    # "brandalpha":Ljava/lang/String;
    .end local v65    # "homepage":Ljava/lang/String;
    :cond_8f
    const-string v5, "android.intent.action.MAX_BRIGHTNESS_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 1217
    const-string v5, "max_brightness"

    const/4 v6, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v90

    .line 1218
    .local v90, "mMaxBrightness":I
    const-string v5, "change_type"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v84

    .line 1219
    .local v84, "mChangeType":I
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v131

    .line 1220
    .restart local v131    # "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v131 .. v131}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v54

    .line 1221
    .restart local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_siop_brightness"

    move-object/from16 v0, v54

    move/from16 v1, v90

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1222
    const-string v5, "pref_siop_brightness_change_type"

    move-object/from16 v0, v54

    move/from16 v1, v84

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1223
    invoke-interface/range {v54 .. v54}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 1224
    .end local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v84    # "mChangeType":I
    .end local v90    # "mMaxBrightness":I
    .end local v131    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_90
    const-string v5, "osp.signin.SAMSUNG_ACCOUNT_SIGNOUT"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 1225
    const-string v5, "change_alert"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1226
    const-string v5, "samsung_signin"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1227
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_91

    .line 1228
    const-string v5, "remote_control"

    const/4 v6, 0x0

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1230
    :cond_91
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/settings/SettingsIntentReceiver;->toggleFmm(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 1231
    :cond_92
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 1233
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sec.android.app.montblanc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 1234
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v5

    const/16 v6, 0x64

    if-ne v5, v6, :cond_93

    .line 1235
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lockscreen_ripple_effect"

    const/16 v7, 0xa

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1240
    :cond_93
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v128

    .line 1241
    .local v128, "selected_package":Ljava/lang/String;
    const/16 v22, 0x0

    .line 1242
    .local v22, "app":Landroid/content/pm/PackageInfo;
    const/16 v82, 0x0

    .line 1244
    .local v82, "mApp":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x1

    :try_start_8
    move-object/from16 v0, v92

    move-object/from16 v1, v128

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v22

    .line 1245
    const/16 v5, 0x80

    move-object/from16 v0, v92

    move-object/from16 v1, v128

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v82

    .line 1246
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v6, 0x0

    aget-object v17, v5, v6

    .line 1247
    .local v17, "act":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v82

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v35, v0

    .line 1248
    .local v35, "bundle":Landroid/os/Bundle;
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bundle : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    new-instance v37, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v128

    invoke-direct {v0, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    .local v37, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "reading_mode_app_list"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v123

    .line 1251
    .local v123, "readingApp":Ljava/lang/String;
    if-eqz v35, :cond_95

    .line 1252
    invoke-virtual/range {v37 .. v37}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v123

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_95

    .line 1253
    const-string v5, "samsung.settings.reading_default_on"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_94

    const-string v5, "samsung.settings.reading_default_on_addtolist"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 1254
    :cond_94
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v123

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v37 .. v37}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v123

    .line 1255
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readingApp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v123

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "reading_mode_app_list"

    move-object/from16 v0, v123

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 1266
    .end local v17    # "act":Landroid/content/pm/ActivityInfo;
    .end local v35    # "bundle":Landroid/os/Bundle;
    .end local v37    # "cn":Landroid/content/ComponentName;
    .end local v123    # "readingApp":Ljava/lang/String;
    :cond_95
    :goto_27
    invoke-static {}, Lcom/android/settings/Utils;->isChinaNAL()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1267
    const-string v5, "persist.sys.setupwizard"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v130

    .line 1268
    .local v130, "setupwizard":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v115

    .line 1270
    .local v115, "packageName":Ljava/lang/String;
    const/16 v30, 0x0

    .line 1271
    .local v30, "bKnoxInstall":Z
    const/16 v29, 0x0

    .line 1272
    .local v29, "bGearManagerInstall":Z
    const/16 v27, 0x0

    .line 1273
    .local v27, "bCarModeUpdate":Z
    const/16 v74, 0x0

    .line 1274
    .local v74, "isOwner":Z
    const-string v5, "com.sec.android.extra.PRELOADINSTALL"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v75

    .line 1275
    .local v75, "isPreinstall":Z
    if-eqz v115, :cond_97

    const-string v5, "com.sec.knox.knoxappsinstaller"

    move-object/from16 v0, v115

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_96

    const-string v5, "com.sec.android.app.knoxlauncher"

    move-object/from16 v0, v115

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_96

    const-string v5, "com.sec.knox.app.container"

    move-object/from16 v0, v115

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_96

    const-string v5, "sec_container_1"

    move-object/from16 v0, v115

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 1280
    :cond_96
    const/16 v30, 0x1

    .line 1283
    :cond_97
    if-eqz v115, :cond_98

    const-string v5, "com.sec.android.automotive.drivelink"

    move-object/from16 v0, v115

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 1284
    const/16 v27, 0x1

    .line 1286
    :cond_98
    if-eqz v115, :cond_9a

    const-string v5, "com.samsung.accessory"

    move-object/from16 v0, v115

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_99

    const-string v5, "com.sec.android.fotaprovider"

    move-object/from16 v0, v115

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_99

    const-string v5, "com.samsung.android.gear2plugin"

    move-object/from16 v0, v115

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 1290
    :cond_99
    const/16 v29, 0x1

    .line 1293
    :cond_9a
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_9b

    .line 1294
    const/16 v74, 0x1

    .line 1297
    :cond_9b
    if-nez v30, :cond_5

    if-nez v75, :cond_5

    const-string v5, "FINISH"

    move-object/from16 v0, v130

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v29, :cond_5

    if-nez v27, :cond_5

    if-eqz v74, :cond_5

    .line 1298
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 1299
    .local v24, "args":Landroid/os/Bundle;
    const-string v5, "package"

    move-object/from16 v0, v24

    move-object/from16 v1, v115

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 1301
    .local v23, "appOpsintent":Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1302
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.Settings$AppOpsDetailsActivity"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const v6, 0x10008000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1304
    const-string v5, ":settings:show_fragment"

    const-class v6, Lcom/android/settings/applications/AppOpsDetails;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1305
    const-string v5, ":settings:show_fragment_args"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1306
    const-string v5, ":settings:show_fragment_title_resid"

    const v6, 0x7f0a0920

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1307
    const-string v5, ":settings:show_fragment_title"

    const v6, 0x7f0a0920

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1308
    const-string v5, ":settings:show_fragment_as_shortcut"

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1309
    const-string v5, "PACKAGE_ADDED"

    const/4 v6, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1310
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1260
    .end local v23    # "appOpsintent":Landroid/content/Intent;
    .end local v24    # "args":Landroid/os/Bundle;
    .end local v27    # "bCarModeUpdate":Z
    .end local v29    # "bGearManagerInstall":Z
    .end local v30    # "bKnoxInstall":Z
    .end local v74    # "isOwner":Z
    .end local v75    # "isPreinstall":Z
    .end local v115    # "packageName":Ljava/lang/String;
    .end local v130    # "setupwizard":Ljava/lang/String;
    :catch_7
    move-exception v53

    .line 1262
    .local v53, "e":Ljava/lang/Exception;
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_27

    .line 1313
    .end local v22    # "app":Landroid/content/pm/PackageInfo;
    .end local v53    # "e":Ljava/lang/Exception;
    .end local v82    # "mApp":Landroid/content/pm/ApplicationInfo;
    .end local v128    # "selected_package":Ljava/lang/String;
    :cond_9c
    const-string v5, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 1315
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v128

    .line 1316
    .restart local v128    # "selected_package":Ljava/lang/String;
    const/16 v22, 0x0

    .line 1317
    .restart local v22    # "app":Landroid/content/pm/PackageInfo;
    const/16 v82, 0x0

    .line 1319
    .restart local v82    # "mApp":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x1

    :try_start_9
    move-object/from16 v0, v92

    move-object/from16 v1, v128

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v22

    .line 1320
    const/16 v5, 0x80

    move-object/from16 v0, v92

    move-object/from16 v1, v128

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v82

    .line 1321
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v6, 0x0

    aget-object v17, v5, v6

    .line 1322
    .restart local v17    # "act":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v82

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v35, v0

    .line 1323
    .restart local v35    # "bundle":Landroid/os/Bundle;
    new-instance v37, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    .restart local v37    # "cn":Landroid/content/ComponentName;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v37 .. v37}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v134

    .line 1325
    .restart local v134    # "temp":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "reading_mode_app_list"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v123

    .line 1326
    .restart local v123    # "readingApp":Ljava/lang/String;
    if-eqz v35, :cond_5

    .line 1327
    move-object/from16 v0, v123

    move-object/from16 v1, v134

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 1328
    const-string v5, "samsung.settings.reading_default_on"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9d

    const-string v5, "samsung.settings.reading_default_on_addtolist"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9d

    const-string v5, "samsung.settings.reading_default_addtolist"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1330
    :cond_9d
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_9e

    .line 1331
    const-string v5, ""

    move-object/from16 v0, v123

    move-object/from16 v1, v134

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v123

    .line 1332
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "reading_mode_app_list"

    move-object/from16 v0, v123

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_1

    .line 1347
    .end local v17    # "act":Landroid/content/pm/ActivityInfo;
    .end local v35    # "bundle":Landroid/os/Bundle;
    .end local v37    # "cn":Landroid/content/ComponentName;
    .end local v123    # "readingApp":Ljava/lang/String;
    .end local v134    # "temp":Ljava/lang/String;
    :catch_8
    move-exception v53

    .line 1349
    .restart local v53    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1334
    .end local v53    # "e":Ljava/lang/Exception;
    .restart local v17    # "act":Landroid/content/pm/ActivityInfo;
    .restart local v35    # "bundle":Landroid/os/Bundle;
    .restart local v37    # "cn":Landroid/content/ComponentName;
    .restart local v123    # "readingApp":Ljava/lang/String;
    .restart local v134    # "temp":Ljava/lang/String;
    :cond_9e
    :try_start_a
    const-string v5, "com.google.android.apps.books.app.BooksActivity"

    move-object/from16 v0, v134

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1335
    const-string v5, ""

    move-object/from16 v0, v123

    move-object/from16 v1, v134

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v123

    .line 1336
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "reading_mode_app_list"

    move-object/from16 v0, v123

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1341
    :cond_9f
    const-string v5, "samsung.settings.reading_default_on"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a0

    const-string v5, "samsung.settings.reading_default_on_addtolist"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1342
    :cond_a0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v123

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v134

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v123

    .line 1343
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "reading_mode_app_list"

    move-object/from16 v0, v123

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_1

    .line 1352
    .end local v17    # "act":Landroid/content/pm/ActivityInfo;
    .end local v22    # "app":Landroid/content/pm/PackageInfo;
    .end local v35    # "bundle":Landroid/os/Bundle;
    .end local v37    # "cn":Landroid/content/ComponentName;
    .end local v82    # "mApp":Landroid/content/pm/ApplicationInfo;
    .end local v123    # "readingApp":Ljava/lang/String;
    .end local v128    # "selected_package":Ljava/lang/String;
    .end local v134    # "temp":Ljava/lang/String;
    :cond_a1
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 1353
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v45

    .line 1354
    .local v45, "data":Landroid/net/Uri;
    invoke-virtual/range {v45 .. v45}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v118

    .line 1356
    .restart local v118    # "pkgName":Ljava/lang/String;
    const-string v5, "com.sec.android.app.montblanc"

    move-object/from16 v0, v118

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 1357
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lockscreen_ripple_effect"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_a2

    .line 1358
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lockscreen_ripple_effect"

    const/4 v7, 0x3

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1363
    :cond_a2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "reading_mode_app_list"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v123

    .line 1364
    .restart local v123    # "readingApp":Ljava/lang/String;
    if-eqz v123, :cond_5

    .line 1365
    const-string v5, ";"

    move-object/from16 v0, v123

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v124

    .line 1366
    .local v124, "reading_val":[Ljava/lang/String;
    const-string v123, ""

    .line 1367
    const/16 v66, 0x0

    .restart local v66    # "i":I
    :goto_28
    move-object/from16 v0, v124

    array-length v5, v0

    move/from16 v0, v66

    if-ge v0, v5, :cond_a7

    .line 1368
    aget-object v5, v124, v66

    const-string v6, "com.google.android.apps.books.app.BooksActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 1369
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_a4

    .line 1370
    aget-object v5, v124, v66

    move-object/from16 v0, v118

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 1371
    const-string v5, ""

    aput-object v5, v124, v66

    .line 1367
    :goto_29
    add-int/lit8 v66, v66, 0x1

    goto :goto_28

    .line 1373
    :cond_a3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v123

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v124, v66

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v123

    goto :goto_29

    .line 1376
    :cond_a4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v123

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v124, v66

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v123

    goto :goto_29

    .line 1379
    :cond_a5
    aget-object v5, v124, v66

    move-object/from16 v0, v118

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 1380
    const-string v5, ""

    aput-object v5, v124, v66

    goto :goto_29

    .line 1382
    :cond_a6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v123

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v124, v66

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v123

    goto :goto_29

    .line 1386
    :cond_a7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "reading_mode_app_list"

    move-object/from16 v0, v123

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1436
    .end local v45    # "data":Landroid/net/Uri;
    .end local v66    # "i":I
    .end local v118    # "pkgName":Ljava/lang/String;
    .end local v123    # "readingApp":Ljava/lang/String;
    .end local v124    # "reading_val":[Ljava/lang/String;
    :cond_a8
    const-string v5, "android.settings.EAS_POLICY_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 1437
    const-string v5, "device_policy"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/app/admin/DevicePolicyManager;

    .line 1438
    .local v51, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v51, :cond_a9

    const/4 v5, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v100

    .line 1440
    .local v100, "maxTimeout":J
    :goto_2a
    const-string v5, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v71

    .line 1443
    .local v71, "isDeviceLockTime":Z
    const-wide/16 v6, 0x1

    cmp-long v5, v100, v6

    if-gez v5, :cond_5

    .line 1444
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "Max timeout is removed. Rollback timeout value"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    const-string v5, "screen_off_timeout"

    const-string v6, "screen_off_timeout_rollback"

    const/16 v7, 0x7530

    move-object/from16 v0, v125

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, v125

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1447
    const-string v6, "lock_screen_lock_after_timeout"

    const-string v7, "lock_after_timeout_rollback"

    if-eqz v71, :cond_aa

    const v5, 0x927c0

    :goto_2b
    move-object/from16 v0, v125

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, v125

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1438
    .end local v71    # "isDeviceLockTime":Z
    .end local v100    # "maxTimeout":J
    :cond_a9
    const-wide/16 v100, 0x0

    goto :goto_2a

    .line 1447
    .restart local v71    # "isDeviceLockTime":Z
    .restart local v100    # "maxTimeout":J
    :cond_aa
    const/16 v5, 0x1388

    goto :goto_2b

    .line 1452
    .end local v51    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v71    # "isDeviceLockTime":Z
    .end local v100    # "maxTimeout":J
    :cond_ab
    const-string v5, "android.settings.ACTIVE_KEY_CLEAR"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 1453
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v131

    .line 1454
    .restart local v131    # "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v131 .. v131}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v54

    .line 1455
    .restart local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_active_key_noti"

    const/4 v6, 0x1

    move-object/from16 v0, v54

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1456
    invoke-interface/range {v54 .. v54}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1459
    const-string v5, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v107

    check-cast v107, Landroid/app/NotificationManager;

    .line 1460
    .local v107, "nm":Landroid/app/NotificationManager;
    const v5, 0x7f0205d6

    move-object/from16 v0, v107

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 1462
    .end local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v107    # "nm":Landroid/app/NotificationManager;
    .end local v131    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_ac
    const-string v5, "android.settings.SECURITY_WARNING_CLEAR"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 1463
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v131

    .line 1464
    .restart local v131    # "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v131 .. v131}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v54

    .line 1465
    .restart local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_security_warning"

    const/4 v6, 0x1

    move-object/from16 v0, v54

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1466
    invoke-interface/range {v54 .. v54}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1469
    const-string v5, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v107

    check-cast v107, Landroid/app/NotificationManager;

    .line 1470
    .restart local v107    # "nm":Landroid/app/NotificationManager;
    const v5, 0x7f0205db

    move-object/from16 v0, v107

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 1471
    .end local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v107    # "nm":Landroid/app/NotificationManager;
    .end local v131    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_ad
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 1473
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->makeSecurityWarningNotificaiton()V

    .line 1475
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/SettingsIntentReceiver;->makeActiveKeyNotification(Landroid/content/Context;)V

    .line 1477
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/SettingsIntentReceiver;->sendDrivingmodeNotification(Landroid/content/Context;)V

    .line 1478
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "LOCALE_CHANGED"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :try_start_b
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/SettingsIntentReceiver;->SetMyProfileTextSize(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 1486
    :goto_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v46

    .line 1487
    .local v46, "dateFormats":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "regional"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_ae

    .line 1488
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1489
    .local v4, "dummydate_for_dateformat":Ljava/util/Calendar;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xb

    const/16 v7, 0x1f

    const/16 v8, 0xd

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    aget-object v6, v46, v6

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v63

    .line 1492
    .local v63, "formatted":Ljava/lang/String;
    const/4 v15, -0x1

    .line 1493
    .local v15, "SetDate":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->SetRegionalDate_Update()I

    move-result v15

    .line 1494
    aget-object v63, v46, v15

    .line 1495
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "date_format"

    move-object/from16 v0, v63

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1498
    .end local v4    # "dummydate_for_dateformat":Ljava/util/Calendar;
    .end local v15    # "SetDate":I
    .end local v63    # "formatted":Ljava/lang/String;
    :cond_ae
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v136

    .line 1499
    .restart local v136    # "uspLevel":I
    const/4 v5, 0x1

    move/from16 v0, v136

    if-le v0, v5, :cond_b0

    .line 1500
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_provisioned"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v122

    .line 1501
    .local v122, "provision":I
    if-nez v122, :cond_b0

    .line 1502
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1503
    .restart local v41    # "currentLang":Ljava/lang/String;
    if-nez v41, :cond_af

    .line 1504
    const-string v41, ""

    .line 1506
    :cond_af
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->setHandwritingLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v129

    .line 1507
    .restart local v129    # "setLanguage":Ljava/lang/String;
    move-object/from16 v0, v41

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b0

    .line 1508
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    move-object/from16 v0, v129

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1509
    new-instance v64, Landroid/content/Intent;

    const-string v5, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1510
    .restart local v64    # "handwritingIntent":Landroid/content/Intent;
    const/high16 v5, 0x4000000

    move-object/from16 v0, v64

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1511
    const-string v5, "language"

    move-object/from16 v0, v64

    move-object/from16 v1, v129

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1512
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1517
    .end local v41    # "currentLang":Ljava/lang/String;
    .end local v64    # "handwritingIntent":Landroid/content/Intent;
    .end local v122    # "provision":I
    .end local v129    # "setLanguage":Ljava/lang/String;
    :cond_b0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sound_detector"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b2

    const/16 v76, 0x1

    .line 1518
    .restart local v76    # "isSoundDetectorOn":Z
    :goto_2d
    if-eqz v76, :cond_b1

    .line 1519
    const v13, 0xd2158

    .line 1520
    .restart local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/app/NotificationManager;

    .line 1524
    .restart local v110    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v93, Landroid/content/Intent;

    invoke-direct/range {v93 .. v93}, Landroid/content/Intent;-><init>()V

    .line 1525
    .restart local v93    # "mSdIntent":Landroid/content/Intent;
    const-string v5, "android.settings.accessibility.BABYCRYING_DETECTING"

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1526
    const-string v5, "mNotify"

    const/4 v6, 0x1

    move-object/from16 v0, v93

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1527
    const/high16 v5, 0x24800000

    move-object/from16 v0, v93

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1529
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    move-object/from16 v0, v93

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v117

    .line 1530
    .restart local v117    # "pie":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "isBabyCryingEnable"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1532
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0aed

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0205d4

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0af1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v108

    .line 1539
    .restart local v108    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0aed

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0af1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v108

    move-object/from16 v1, v117

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1541
    move-object/from16 v0, v110

    move-object/from16 v1, v108

    invoke-virtual {v0, v13, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1543
    .end local v13    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v93    # "mSdIntent":Landroid/content/Intent;
    .end local v108    # "notification":Landroid/app/Notification;
    .end local v110    # "notificationManager":Landroid/app/NotificationManager;
    .end local v117    # "pie":Landroid/app/PendingIntent;
    :cond_b1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/settings/SettingsIntentReceiver;->sendTalkbackNotification(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 1482
    .end local v46    # "dateFormats":[Ljava/lang/String;
    .end local v76    # "isSoundDetectorOn":Z
    .end local v136    # "uspLevel":I
    :catch_9
    move-exception v53

    .line 1483
    .restart local v53    # "e":Ljava/lang/Exception;
    const-string v5, "SettingsIntentReceiver"

    const-string v6, " Error changing font size for myprofile"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 1517
    .end local v53    # "e":Ljava/lang/Exception;
    .restart local v46    # "dateFormats":[Ljava/lang/String;
    .restart local v136    # "uspLevel":I
    :cond_b2
    const/16 v76, 0x0

    goto/16 :goto_2d

    .line 1545
    .end local v46    # "dateFormats":[Ljava/lang/String;
    .end local v136    # "uspLevel":I
    :cond_b3
    const-string v5, "SamsungIME.UpdateSelectedLanguageAction"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 1546
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "get action : SamsungIME.UpdateSelectedLanguageAction"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v136

    .line 1548
    .restart local v136    # "uspLevel":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_input_method"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    .line 1550
    .local v69, "inputMethodId":Ljava/lang/String;
    const/4 v5, 0x1

    move/from16 v0, v136

    if-le v0, v5, :cond_5

    const-string v5, "com.sec.android.inputmethod/.SamsungKeypad"

    move-object/from16 v0, v69

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1551
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v132

    .line 1552
    .local v132, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v5, "pref_current_handwriting_lang_llist"

    const-string v6, ""

    move-object/from16 v0, v132

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v121

    .line 1553
    .local v121, "prefLangList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language_list"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 1554
    .local v68, "imLanguageList":Ljava/lang/String;
    if-eqz v121, :cond_b4

    move-object/from16 v0, v121

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 1558
    :cond_b4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1559
    .restart local v41    # "currentLang":Ljava/lang/String;
    if-nez v41, :cond_b5

    .line 1560
    const-string v41, ""

    .line 1562
    :cond_b5
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->setHandwritingLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v129

    .line 1563
    .restart local v129    # "setLanguage":Ljava/lang/String;
    move-object/from16 v0, v41

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1564
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    move-object/from16 v0, v129

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1565
    new-instance v64, Landroid/content/Intent;

    const-string v5, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1566
    .restart local v64    # "handwritingIntent":Landroid/content/Intent;
    const-string v5, "language"

    move-object/from16 v0, v64

    move-object/from16 v1, v129

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1567
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getLocaleInfoAdapter(Landroid/content/Context;)[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v79

    .line 1570
    .local v79, "langInfo":[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    const/16 v66, 0x0

    .restart local v66    # "i":I
    :goto_2e
    move-object/from16 v0, v79

    array-length v5, v0

    move/from16 v0, v66

    if-ge v0, v5, :cond_b6

    .line 1571
    if-eqz v129, :cond_b7

    .line 1572
    aget-object v5, v79, v66

    if-eqz v5, :cond_b7

    aget-object v5, v79, v66

    invoke-virtual {v5}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getLanguage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v129

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 1573
    aget-object v5, v79, v66

    invoke-virtual {v5}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getTitle()Ljava/lang/String;

    move-result-object v129

    .line 1578
    :cond_b6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a1bb7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v129, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1570
    :cond_b7
    add-int/lit8 v66, v66, 0x1

    goto :goto_2e

    .line 1581
    .end local v41    # "currentLang":Ljava/lang/String;
    .end local v64    # "handwritingIntent":Landroid/content/Intent;
    .end local v66    # "i":I
    .end local v68    # "imLanguageList":Ljava/lang/String;
    .end local v69    # "inputMethodId":Ljava/lang/String;
    .end local v79    # "langInfo":[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    .end local v121    # "prefLangList":Ljava/lang/String;
    .end local v129    # "setLanguage":Ljava/lang/String;
    .end local v132    # "sharedPrefs":Landroid/content/SharedPreferences;
    .end local v136    # "uspLevel":I
    :cond_b8
    const-string v5, "android.intent.action.INPUT_METHOD_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 1582
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "get action : android.intent.action.INPUT_METHOD_CHANGED"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v136

    .line 1584
    .restart local v136    # "uspLevel":I
    const/4 v5, 0x1

    move/from16 v0, v136

    if-le v0, v5, :cond_be

    .line 1585
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_input_method"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    .line 1586
    .restart local v69    # "inputMethodId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1587
    .restart local v41    # "currentLang":Ljava/lang/String;
    const/16 v28, 0x0

    .line 1588
    .local v28, "bCheckKeepCurLang":Z
    if-eqz v41, :cond_14

    .line 1590
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language_list"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 1592
    .restart local v68    # "imLanguageList":Ljava/lang/String;
    const-string v5, "com.sec.android.inputmethod/.SamsungKeypad"

    move-object/from16 v0, v69

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 1594
    if-eqz v68, :cond_ba

    move-object/from16 v0, v68

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 1595
    const/16 v28, 0x1

    .line 1607
    :goto_2f
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handwriting_language current Language keep state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    if-nez v28, :cond_5

    .line 1610
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->setHandwritingLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v129

    .line 1611
    .restart local v129    # "setLanguage":Ljava/lang/String;
    move-object/from16 v0, v41

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1612
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    move-object/from16 v0, v129

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1613
    new-instance v64, Landroid/content/Intent;

    const-string v5, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1614
    .restart local v64    # "handwritingIntent":Landroid/content/Intent;
    const-string v5, "language"

    move-object/from16 v0, v64

    move-object/from16 v1, v129

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1615
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1616
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getLocaleInfoAdapter(Landroid/content/Context;)[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v79

    .line 1617
    .restart local v79    # "langInfo":[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    const/16 v66, 0x0

    .restart local v66    # "i":I
    :goto_30
    move-object/from16 v0, v79

    array-length v5, v0

    move/from16 v0, v66

    if-ge v0, v5, :cond_b9

    .line 1618
    if-eqz v129, :cond_bd

    .line 1619
    aget-object v5, v79, v66

    if-eqz v5, :cond_bd

    aget-object v5, v79, v66

    invoke-virtual {v5}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getLanguage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v129

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 1620
    aget-object v5, v79, v66

    invoke-virtual {v5}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getTitle()Ljava/lang/String;

    move-result-object v129

    .line 1625
    :cond_b9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0a1bb7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v129, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1597
    .end local v64    # "handwritingIntent":Landroid/content/Intent;
    .end local v66    # "i":I
    .end local v79    # "langInfo":[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    .end local v129    # "setLanguage":Ljava/lang/String;
    :cond_ba
    const/16 v28, 0x0

    goto/16 :goto_2f

    .line 1600
    :cond_bb
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 1601
    const/16 v28, 0x1

    goto/16 :goto_2f

    .line 1603
    :cond_bc
    const/16 v28, 0x0

    goto/16 :goto_2f

    .line 1617
    .restart local v64    # "handwritingIntent":Landroid/content/Intent;
    .restart local v66    # "i":I
    .restart local v79    # "langInfo":[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    .restart local v129    # "setLanguage":Ljava/lang/String;
    :cond_bd
    add-int/lit8 v66, v66, 0x1

    goto :goto_30

    .line 1628
    .end local v28    # "bCheckKeepCurLang":Z
    .end local v41    # "currentLang":Ljava/lang/String;
    .end local v64    # "handwritingIntent":Landroid/content/Intent;
    .end local v66    # "i":I
    .end local v68    # "imLanguageList":Ljava/lang/String;
    .end local v69    # "inputMethodId":Ljava/lang/String;
    .end local v79    # "langInfo":[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    .end local v129    # "setLanguage":Ljava/lang/String;
    :cond_be
    const-string v5, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1630
    const-string v5, "hltejs01dcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bf

    const-string v5, "SC-02F"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1631
    :cond_bf
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1632
    .restart local v41    # "currentLang":Ljava/lang/String;
    if-nez v41, :cond_5

    .line 1633
    const-string v41, "ja_JP"

    .line 1634
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handwriting_language setLanguage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    move-object/from16 v0, v41

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1636
    new-instance v64, Landroid/content/Intent;

    const-string v5, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1637
    .restart local v64    # "handwritingIntent":Landroid/content/Intent;
    const-string v5, "language"

    move-object/from16 v0, v64

    move-object/from16 v1, v41

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1638
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1642
    .end local v41    # "currentLang":Ljava/lang/String;
    .end local v64    # "handwritingIntent":Landroid/content/Intent;
    .end local v136    # "uspLevel":I
    :cond_c0
    const-string v5, "SamsungIME.UpdateAvailableLanguageAction"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1643
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "get action : SamsungIME.UpdateAvailableLanguageAction"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v136

    .line 1645
    .restart local v136    # "uspLevel":I
    const/4 v5, 0x1

    move/from16 v0, v136

    if-le v0, v5, :cond_c1

    .line 1646
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_provisioned"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v122

    .line 1647
    .restart local v122    # "provision":I
    if-nez v122, :cond_5

    .line 1648
    const-string v41, ""

    .line 1649
    .restart local v41    # "currentLang":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->setHandwritingLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v129

    .line 1650
    .restart local v129    # "setLanguage":Ljava/lang/String;
    move-object/from16 v0, v41

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1651
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    move-object/from16 v0, v129

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1652
    new-instance v64, Landroid/content/Intent;

    const-string v5, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1653
    .restart local v64    # "handwritingIntent":Landroid/content/Intent;
    const-string v5, "language"

    move-object/from16 v0, v64

    move-object/from16 v1, v129

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1654
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1657
    .end local v41    # "currentLang":Ljava/lang/String;
    .end local v64    # "handwritingIntent":Landroid/content/Intent;
    .end local v122    # "provision":I
    .end local v129    # "setLanguage":Ljava/lang/String;
    :cond_c1
    const-string v5, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1659
    const-string v5, "hltejs01dcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c2

    const-string v5, "JS01"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1660
    :cond_c2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1661
    .restart local v41    # "currentLang":Ljava/lang/String;
    if-nez v41, :cond_5

    .line 1662
    const-string v41, "ja_JP"

    .line 1663
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handwriting_language setLanguage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    move-object/from16 v0, v41

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1665
    new-instance v64, Landroid/content/Intent;

    const-string v5, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1666
    .restart local v64    # "handwritingIntent":Landroid/content/Intent;
    const-string v5, "language"

    move-object/from16 v0, v64

    move-object/from16 v1, v41

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1667
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1681
    .end local v41    # "currentLang":Ljava/lang/String;
    .end local v64    # "handwritingIntent":Landroid/content/Intent;
    .end local v136    # "uspLevel":I
    .restart local v31    # "bLanCableState":Z
    .restart local v105    # "nEthState":I
    :cond_c3
    const/4 v5, 0x2

    move/from16 v0, v105

    if-ne v0, v5, :cond_6

    if-eqz v31, :cond_6

    .line 1682
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const v6, 0x7f0a19b7

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1718
    .end local v31    # "bLanCableState":Z
    .end local v105    # "nEthState":I
    :cond_c4
    const/16 v73, 0x0

    goto/16 :goto_3

    .line 1726
    .restart local v73    # "isOn":Z
    .restart local v96    # "mStatusBar":Landroid/app/StatusBarManager;
    :cond_c5
    const-string v5, "smart_network"

    const/4 v6, 0x0

    move-object/from16 v0, v96

    invoke-virtual {v0, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 1747
    .end local v73    # "isOn":Z
    .end local v96    # "mStatusBar":Landroid/app/StatusBarManager;
    .restart local v54    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v98    # "mUsbConnected":Z
    .restart local v120    # "pref":Landroid/content/SharedPreferences;
    :cond_c6
    const/16 v135, 0x0

    goto/16 :goto_5

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
