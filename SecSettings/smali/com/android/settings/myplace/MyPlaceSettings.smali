.class public Lcom/android/settings/myplace/MyPlaceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MyPlaceSettings.java"


# instance fields
.field private mCount:I

.field private mMenu:Landroid/view/Menu;

.field private mUnclickPref:Lcom/android/settings/UnclickablePreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mCount:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mMenu:Landroid/view/Menu;

    return-void
.end method

.method private updateMyPlaceList()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 131
    .local v7, "parentPreference":Landroid/preference/PreferenceScreen;
    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 133
    new-instance v0, Lcom/android/settings/UnclickablePreference;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/UnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mUnclickPref:Lcom/android/settings/UnclickablePreference;

    .line 134
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mUnclickPref:Lcom/android/settings/UnclickablePreference;

    const v1, 0x7f0a1974

    invoke-virtual {v0, v1}, Lcom/android/settings/UnclickablePreference;->setTitle(I)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mUnclickPref:Lcom/android/settings/UnclickablePreference;

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 138
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mCount:I

    .line 140
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    :cond_0
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timestamp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profile_name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profile_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gps_location : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gps_location"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gps_latitude : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gps_latitude"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gps_longitude : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gps_longitude"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifi_ap_name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wifi_ap_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifi_bssid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wifi_bssid"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifi_frequency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wifi_frequency"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifi_auto_connect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wifi_auto_connect"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bt_device_name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bt_device_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bt_mac_address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bt_mac_address"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v9, Lcom/android/settings/myplace/MyPlacePreference;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {v9, v0, v1}, Lcom/android/settings/myplace/MyPlacePreference;-><init>(Landroid/content/Context;I)V

    .line 160
    .local v9, "tmpPref":Landroid/preference/Preference;
    const-string v8, ""

    .line 161
    .local v8, "summary":Ljava/lang/String;
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_5

    .line 162
    const v0, 0x7f0a197e

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 177
    :cond_1
    :goto_0
    const-string v0, "profile_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 179
    .local v10, "tmpTitle":Ljava/lang/String;
    const-string v0, "Home"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 180
    const v0, 0x7f0a1976

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 190
    :cond_2
    :goto_1
    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 194
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    .end local v8    # "summary":Ljava/lang/String;
    .end local v9    # "tmpPref":Landroid/preference/Preference;
    .end local v10    # "tmpTitle":Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 199
    :cond_4
    return-void

    .line 164
    .restart local v8    # "summary":Ljava/lang/String;
    .restart local v9    # "tmpPref":Landroid/preference/Preference;
    :cond_5
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 165
    const v0, 0x7f0a1984

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 166
    const v0, 0x7f040123

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_0

    .line 168
    :cond_6
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 169
    const v0, 0x7f0a1822

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 170
    const v0, 0x7f040127

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_0

    .line 172
    :cond_7
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 173
    const v0, 0x7f0a1826

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 174
    const v0, 0x7f040122

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_0

    .line 181
    .restart local v10    # "tmpTitle":Ljava/lang/String;
    :cond_8
    const-string v0, "Car"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 182
    const v0, 0x7f0a1978

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 183
    :cond_9
    const-string v0, "Office"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 184
    const v0, 0x7f0a1977

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 185
    :cond_a
    const-string v0, "Gym"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 186
    const v0, 0x7f0a1979

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 187
    :cond_b
    const-string v0, "School"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    const v0, 0x7f0a197a

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceSettings;->addPreferencesFromResource(I)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceSettings;->setHasOptionsMenu(Z)V

    .line 56
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 76
    const v0, 0x7f0a096f

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020209

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 80
    const/4 v0, 0x2

    const v1, 0x7f0a1990

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 81
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 82
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mMenu:Landroid/view/Menu;

    .line 84
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 107
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 91
    :pswitch_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "id"

    const/4 v4, -0x1

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const-string v1, "edit_mode"

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    const-string v1, "add_mode"

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    const-string v1, "lbs_mode"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 98
    .local v0, "pa":Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a0954

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 100
    const/4 v1, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "pa":Landroid/preference/PreferenceActivity;
    .end local v2    # "args":Landroid/os/Bundle;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 104
    .local v3, "pa2":Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f0a0954

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, p0

    invoke-virtual/range {v3 .. v9}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 105
    const/4 v1, 0x1

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 14
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v13, 0x0

    const/4 v3, 0x0

    .line 204
    const/4 v12, -0x1

    .line 205
    .local v12, "placeId":I
    const/4 v11, 0x0

    .line 207
    .local v11, "itemTitle":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/settings/myplace/MyPlacePreference;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/settings/myplace/MyPlacePreference;->getMyPlaceId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 213
    const-string v2, "MyPlaceSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceTreeClick(), Preference is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "id : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-ltz v12, :cond_4

    .line 217
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 218
    .local v8, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v8, v2, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    const-string v2, "edit_mode"

    const/4 v4, 0x1

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 224
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 225
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mCount:I

    .line 226
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v5, v11

    .line 228
    .end local v11    # "itemTitle":Ljava/lang/String;
    .local v5, "itemTitle":Ljava/lang/String;
    :cond_0
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v12, :cond_1

    .line 229
    const-string v2, "profile_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 231
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 235
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 236
    .local v1, "pa":Landroid/preference/PreferenceActivity;
    const-class v2, Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v8

    move v4, v13

    move-object v6, p0

    move v7, v13

    invoke-virtual/range {v1 .. v7}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 241
    .end local v1    # "pa":Landroid/preference/PreferenceActivity;
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v9    # "c":Landroid/database/Cursor;
    :goto_2
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    :goto_3
    return v2

    .line 208
    .end local v5    # "itemTitle":Ljava/lang/String;
    .restart local v11    # "itemTitle":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 209
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "MyPlaceSettings"

    const-string v3, "onPreferenceTreeClick(), Preference is not a MyPlacePreference. return false"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v11

    .end local v11    # "itemTitle":Ljava/lang/String;
    .restart local v5    # "itemTitle":Ljava/lang/String;
    move v2, v13

    .line 211
    goto :goto_3

    .end local v5    # "itemTitle":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "args":Landroid/os/Bundle;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v11    # "itemTitle":Ljava/lang/String;
    :cond_2
    move-object v5, v11

    .end local v11    # "itemTitle":Ljava/lang/String;
    .restart local v5    # "itemTitle":Ljava/lang/String;
    goto :goto_0

    .end local v5    # "itemTitle":Ljava/lang/String;
    .restart local v11    # "itemTitle":Ljava/lang/String;
    :cond_3
    move-object v5, v11

    .end local v11    # "itemTitle":Ljava/lang/String;
    .restart local v5    # "itemTitle":Ljava/lang/String;
    goto :goto_1

    .end local v5    # "itemTitle":Ljava/lang/String;
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v9    # "c":Landroid/database/Cursor;
    .restart local v11    # "itemTitle":Ljava/lang/String;
    :cond_4
    move-object v5, v11

    .end local v11    # "itemTitle":Ljava/lang/String;
    .restart local v5    # "itemTitle":Ljava/lang/String;
    goto :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 112
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 114
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareOptionsMenu, mCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 116
    .local v0, "menuDel":Landroid/view/MenuItem;
    iget v1, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mCount:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 117
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 118
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020124

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 122
    :goto_0
    iget v1, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mCount:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    .line 123
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020209

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 127
    :goto_1
    return-void

    .line 120
    :cond_0
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020125

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 125
    :cond_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02020a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 61
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceSettings;->updateMyPlaceList()V

    .line 62
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 63
    iget v0, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mCount:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020209

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceSettings;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02020a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
