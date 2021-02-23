.class public Lcom/android/settings/ApnEditor;
.super Landroid/preference/PreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApnEditor$ApnSettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VZW_DEFAULTAPN_URI31:Landroid/net/Uri;

.field private static final VZW_DEFAULTAPN_URI6:Landroid/net/Uri;

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;

.field private static final sProjection_CTC:[Ljava/lang/String;


# instance fields
.field private APN_TYPE_LIST:Ljava/lang/String;

.field private dunRequired:Z

.field private imsRequired:Z

.field private isInserting:Z

.field public isVzwHomeApnChanged:Z

.field private mAction:Ljava/lang/String;

.field private mActivePhone:I

.field private mApn:Landroid/preference/EditTextPreference;

.field private mApnSettingsObserver:Lcom/android/settings/ApnEditor$ApnSettingsObserver;

.field private mApnType:Landroid/preference/EditTextPreference;

.field private mApnTypeStyle:Z

.field private mApnType_list:Landroid/preference/ListPreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mBearer:Landroid/preference/ListPreference;

.field private mCarrierEnabled:Landroid/preference/CheckBoxPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDatabearer:Landroid/preference/EditTextPreference;

.field private mEditable:Z

.field private mFirstTime:Z

.field private mHasMdmEditedApn:Z

.field private mHasUserEditedApn:Z

.field private mIsSprEditable:Z

.field private mIsVzwEditable:Z

.field private mMcc:Landroid/preference/EditTextPreference;

.field private mMmsPort:Landroid/preference/EditTextPreference;

.field private mMmsProxy:Landroid/preference/EditTextPreference;

.field private mMmsc:Landroid/preference/EditTextPreference;

.field private mMnc:Landroid/preference/EditTextPreference;

.field private mMvnoMatchData:Landroid/preference/EditTextPreference;

.field private mMvnoType:Landroid/preference/ListPreference;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNewApn:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPhoneType:I

.field private mPort:Landroid/preference/EditTextPreference;

.field private mPppDigit:Landroid/preference/EditTextPreference;

.field private mProtocol:Landroid/preference/ListPreference;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/preference/ListPreference;

.field private mServer:Landroid/preference/EditTextPreference;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    const-class v0, Lcom/android/settings/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    .line 152
    const-string v0, "content://telephony/carriers/6"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnEditor;->VZW_DEFAULTAPN_URI6:Landroid/net/Uri;

    .line 153
    const-string v0, "content://telephony/carriers/31"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnEditor;->VZW_DEFAULTAPN_URI31:Landroid/net/Uri;

    .line 162
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "apn"

    aput-object v1, v0, v5

    const-string v1, "proxy"

    aput-object v1, v0, v6

    const-string v1, "port"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "mvno_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "mvno_match_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    .line 187
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "apn"

    aput-object v1, v0, v5

    const-string v1, "proxy"

    aput-object v1, v0, v6

    const-string v1, "port"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/ApnEditor;->sProjection_CTC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 145
    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->dunRequired:Z

    .line 146
    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->imsRequired:Z

    .line 148
    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->isInserting:Z

    .line 245
    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->mHasMdmEditedApn:Z

    .line 246
    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->mHasUserEditedApn:Z

    .line 249
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ApnEditor;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnEditor;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/ApnEditor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ApnEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/settings/ApnEditor;->mHasMdmEditedApn:Z

    return p1
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1031
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 1032
    .local v1, "mBearerIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 1039
    :goto_0
    return-object v3

    .line 1035
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0c006c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1037
    .local v2, "values":[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1038
    :catch_0
    move-exception v0

    .line 1039
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private changeNwkNameQuotesString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "nwkname"    # Ljava/lang/String;

    .prologue
    .line 429
    move-object v0, p1

    .line 430
    .local v0, "output":Ljava/lang/String;
    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    return-object v0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1688
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1689
    :cond_0
    const-string p1, ""

    .line 1691
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private checkNotSetApn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1698
    if-eqz p1, :cond_0

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1699
    :cond_0
    const-string p1, "*"

    .line 1707
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1

    .line 1700
    .restart local p1    # "value":Ljava/lang/String;
    :cond_2
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1701
    const-string p1, "default"

    goto :goto_0

    .line 1702
    :cond_3
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1703
    const-string p1, "mms"

    goto :goto_0

    .line 1704
    :cond_4
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1705
    const-string p1, "supl"

    goto :goto_0
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1577
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1578
    :cond_0
    sget-object p1, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 1580
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private checkNullApn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1586
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->imsRequired:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->dunRequired:Z

    if-eqz v0, :cond_d

    .line 1587
    if-nez p1, :cond_1

    .line 1588
    sget-object p1, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 1681
    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1589
    .restart local p1    # "value":Ljava/lang/String;
    :cond_1
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1590
    :cond_2
    const-string p1, "internet + mms + dun"

    goto :goto_0

    .line 1591
    :cond_3
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1592
    const-string p1, "internet + mms"

    goto :goto_0

    .line 1593
    :cond_4
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1594
    const-string p1, "internet + dun"

    goto :goto_0

    .line 1595
    :cond_5
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1596
    const-string p1, "internet"

    goto :goto_0

    .line 1597
    :cond_6
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1598
    const-string p1, "mms"

    goto :goto_0

    .line 1599
    :cond_7
    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1600
    const-string p1, "dun"

    goto :goto_0

    .line 1601
    :cond_8
    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1602
    const-string p1, "ims"

    goto :goto_0

    .line 1603
    :cond_9
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1604
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1605
    const-string p1, "internet + mms + dun"

    goto :goto_0

    .line 1606
    :cond_a
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1607
    const-string p1, "internet + mms"

    goto/16 :goto_0

    .line 1608
    :cond_b
    const-string v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1609
    const-string p1, "internet + dun"

    goto/16 :goto_0

    .line 1611
    :cond_c
    const-string p1, "internet"

    goto/16 :goto_0

    .line 1615
    :cond_d
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->imsRequired:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->dunRequired:Z

    if-nez v0, :cond_15

    .line 1616
    if-nez p1, :cond_e

    .line 1617
    sget-object p1, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    goto/16 :goto_0

    .line 1618
    :cond_e
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1619
    :cond_f
    const-string p1, "internet + mms"

    goto/16 :goto_0

    .line 1620
    :cond_10
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1621
    const-string p1, "internet"

    goto/16 :goto_0

    .line 1622
    :cond_11
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1623
    const-string p1, "mms"

    goto/16 :goto_0

    .line 1624
    :cond_12
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1625
    const-string p1, "ims"

    goto/16 :goto_0

    .line 1626
    :cond_13
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1627
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1628
    const-string p1, "internet + mms"

    goto/16 :goto_0

    .line 1630
    :cond_14
    const-string p1, "internet"

    goto/16 :goto_0

    .line 1634
    :cond_15
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->dunRequired:Z

    if-eqz v0, :cond_21

    .line 1635
    if-nez p1, :cond_16

    .line 1636
    sget-object p1, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    goto/16 :goto_0

    .line 1637
    :cond_16
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1638
    :cond_17
    const-string p1, "internet + mms + dun"

    goto/16 :goto_0

    .line 1639
    :cond_18
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1640
    const-string p1, "internet + mms"

    goto/16 :goto_0

    .line 1641
    :cond_19
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1642
    const-string p1, "internet + dun"

    goto/16 :goto_0

    .line 1643
    :cond_1a
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1644
    const-string p1, "internet"

    goto/16 :goto_0

    .line 1645
    :cond_1b
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1646
    const-string p1, "mms"

    goto/16 :goto_0

    .line 1647
    :cond_1c
    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1648
    const-string p1, "dun"

    goto/16 :goto_0

    .line 1649
    :cond_1d
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1650
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1651
    const-string p1, "internet + mms + dun"

    goto/16 :goto_0

    .line 1652
    :cond_1e
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1653
    const-string p1, "internet + mms"

    goto/16 :goto_0

    .line 1654
    :cond_1f
    const-string v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1655
    const-string p1, "internet + dun"

    goto/16 :goto_0

    .line 1657
    :cond_20
    const-string p1, "internet"

    goto/16 :goto_0

    .line 1664
    :cond_21
    if-nez p1, :cond_22

    .line 1665
    sget-object p1, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    goto/16 :goto_0

    .line 1666
    :cond_22
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1667
    :cond_23
    const-string p1, "internet + mms + supl"

    goto/16 :goto_0

    .line 1668
    :cond_24
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1669
    const-string p1, "internet"

    goto/16 :goto_0

    .line 1670
    :cond_25
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1671
    const-string p1, "mms"

    goto/16 :goto_0

    .line 1672
    :cond_26
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1673
    const-string p1, "supl"

    goto/16 :goto_0

    .line 1674
    :cond_27
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1675
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1676
    const-string p1, "internet + mms"

    goto/16 :goto_0

    .line 1678
    :cond_28
    const-string p1, "internet"

    goto/16 :goto_0
.end method

.method private deleteApn()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x5

    .line 1551
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 1552
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Deleting APN  succeeded"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1561
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    .line 1562
    return-void

    .line 1556
    :cond_0
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Deleting APN  failed"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fillUi()V
    .locals 22

    .prologue
    .line 516
    sget-object v18, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "fillUi(), isFirstTime? "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", newAPN? "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v3, 0x0

    .line 519
    .local v3, "apnType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 520
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0x7

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0xc

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0xd

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0x9

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0xa

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 580
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mApnTypeStyle:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0xf

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 586
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 587
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ApnEditor;->mActivePhone:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v14

    .line 590
    .local v14, "numeric":Ljava/lang/String;
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 592
    const/16 v18, 0x0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 594
    .local v11, "mcc":Ljava/lang/String;
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 596
    .local v12, "mnc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 598
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 599
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 603
    .end local v11    # "mcc":Ljava/lang/String;
    .end local v12    # "mnc":Ljava/lang/String;
    .end local v14    # "numeric":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mApnTypeStyle:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 605
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->isDunExist()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->dunRequired:Z

    .line 606
    sget-object v18, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "dunRequired "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->dunRequired:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->isImsExist()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->imsRequired:Z

    .line 608
    sget-object v18, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "imsRequired "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->imsRequired:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->imsRequired:Z

    move/from16 v18, v0

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->dunRequired:Z

    move/from16 v18, v0

    if-eqz v18, :cond_14

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0c00c3

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0c00c4

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 622
    :cond_2
    :goto_0
    sget-object v18, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "fillUi(), APN type DB data : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0xf

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0xf

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0xf

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 626
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->dunRequired:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1c

    .line 627
    if-eqz v3, :cond_1b

    .line 628
    const-string v18, "*"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const-string v19, "default,supl,mms,dun"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 665
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 666
    .local v6, "authVal":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v6, v0, :cond_21

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 672
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0x10

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 686
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    move/from16 v18, v0

    if-eqz v18, :cond_24

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0x13

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v20, 0x11

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_22

    const/16 v18, 0x1

    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0x12

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 690
    const-string v16, ""

    .line 691
    .local v16, "simSpcode":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getSpcode()Ljava/lang/String;

    move-result-object v8

    .line 692
    .local v8, "decSpcode":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_23

    .line 693
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 694
    .local v13, "num":I
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const-string v19, "gid"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 731
    .end local v6    # "authVal":I
    .end local v8    # "decSpcode":Ljava/lang/String;
    .end local v13    # "num":I
    .end local v16    # "simSpcode":Ljava/lang/String;
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 745
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mApnTypeStyle:Z

    move/from16 v18, v0

    if-nez v18, :cond_26

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 752
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 753
    .local v6, "authVal":Ljava/lang/String;
    if-eqz v6, :cond_27

    .line 754
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 755
    .local v7, "authValIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0c0068

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 758
    .local v17, "values":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    aget-object v19, v17, v7

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 763
    .end local v7    # "authValIndex":I
    .end local v17    # "values":[Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 803
    const/4 v10, 0x0

    .line 804
    .local v10, "ipeditable":Z
    const-string v18, "ril.ipversion.editable"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 805
    .local v4, "apneditable":Ljava/lang/String;
    if-eqz v4, :cond_5

    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 806
    const/4 v10, 0x1

    .line 817
    :cond_5
    const-string v18, "true"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_Setting_ConfigEditingIpVersionType"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    if-eqz v10, :cond_28

    .line 818
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 830
    :goto_7
    const-string v18, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 831
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsVzwEditable:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 858
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->isEditable()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mEditable:Z

    .line 860
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mEditable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 863
    .local v9, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 864
    .restart local v14    # "numeric":Ljava/lang/String;
    const-string v18, "45005"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2a

    const/16 v18, 0x3e8

    move/from16 v0, v18

    if-ne v0, v9, :cond_2a

    .line 866
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mEditable:Z

    .line 876
    .end local v9    # "index":I
    .end local v14    # "numeric":Ljava/lang/String;
    :cond_8
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mEditable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 878
    .restart local v14    # "numeric":Ljava/lang/String;
    const-string v18, "45407"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 879
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mEditable:Z

    .line 882
    .end local v14    # "numeric":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mEditable:Z

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 884
    const-string v18, "apn_edit"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 887
    :cond_a
    const-string v18, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 892
    :cond_b
    const-string v18, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 893
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsVzwEditable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2e

    .line 894
    sget-object v18, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v19, "isVzwEditable = true"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const-string v18, "apn_edit"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 900
    :cond_c
    :goto_9
    const-string v18, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 901
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsSprEditable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2f

    .line 902
    sget-object v18, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v19, "isSprEditable = true"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-string v18, "apn_edit"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 910
    :cond_d
    :goto_a
    const-string v18, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 911
    const-string v18, "sys.ipversion.editable"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 913
    .local v5, "apneditable_jpn":Ljava/lang/String;
    if-eqz v5, :cond_e

    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 918
    :cond_e
    if-eqz v5, :cond_f

    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_10

    .line 919
    :cond_f
    const-string v18, "apn_protocol"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 920
    .local v15, "pref":Landroid/preference/Preference;
    if-eqz v15, :cond_10

    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 925
    .end local v15    # "pref":Landroid/preference/Preference;
    :cond_10
    sget-object v18, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const-string v19, "default,supl"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const-string v19, "default,supl"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 931
    .end local v5    # "apneditable_jpn":Ljava/lang/String;
    :cond_11
    const-string v18, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 933
    sget-object v18, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const-string v19, "default,supl,hipri"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const-string v19, "default,supl,hipri"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 939
    :cond_12
    const-string v18, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 940
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->isInserting:Z

    move/from16 v18, v0

    if-eqz v18, :cond_13

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const-string v19, "default,hipri"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const-string v19, "default,hipri"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 982
    :cond_13
    return-void

    .line 613
    .end local v4    # "apneditable":Ljava/lang/String;
    .end local v6    # "authVal":Ljava/lang/String;
    .end local v10    # "ipeditable":Z
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->imsRequired:Z

    move/from16 v18, v0

    if-eqz v18, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->dunRequired:Z

    move/from16 v18, v0

    if-nez v18, :cond_15

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0c00c1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0c00c2

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 616
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->dunRequired:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0c00bf

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0c00c0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 630
    :cond_16
    const-string v18, "default"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 631
    const-string v18, "mms"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_17

    const-string v18, "dun"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const-string v19, "default,supl,mms,dun"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 633
    :cond_17
    const-string v18, "mms"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const-string v19, "default,supl,mms"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 635
    :cond_18
    const-string v18, "dun"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const-string v19, "default,supl,dun"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 638
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const-string v19, "default,supl"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 641
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0xf

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 644
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0xf

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 647
    :cond_1c
    if-eqz v3, :cond_20

    .line 648
    const-string v18, "*"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1d

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const-string v19, "default,supl,mms"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 650
    :cond_1d
    const-string v18, "default"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1f

    .line 651
    const-string v18, "mms"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const-string v19, "default,supl,mms"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 654
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const-string v19, "default,supl"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 657
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0xf

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 660
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0xf

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 669
    .local v6, "authVal":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 688
    :cond_22
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 699
    .restart local v8    # "decSpcode":Ljava/lang/String;
    .restart local v16    # "simSpcode":Ljava/lang/String;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0x14

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0x15

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 704
    .end local v8    # "decSpcode":Ljava/lang/String;
    .end local v16    # "simSpcode":Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0x13

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v20, 0x11

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_25

    const/16 v18, 0x1

    :goto_b
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0x12

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0x14

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, 0x15

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 705
    :cond_25
    const/16 v18, 0x0

    goto :goto_b

    .line 748
    .end local v6    # "authVal":I
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNullApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 760
    .local v6, "authVal":Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 821
    .restart local v4    # "apneditable":Ljava/lang/String;
    .restart local v10    # "ipeditable":Z
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 823
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Setting_EnableEditingIpVersionTypeRoaming"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_29

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_7

    .line 826
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_7

    .line 867
    .restart local v9    # "index":I
    .restart local v14    # "numeric":Ljava/lang/String;
    :cond_2a
    const-string v18, "45008"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2b

    const-string v18, "45002"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2d

    :cond_2b
    const/16 v18, 0x3e9

    move/from16 v0, v18

    if-eq v0, v9, :cond_2c

    const/16 v18, 0x3ea

    move/from16 v0, v18

    if-ne v0, v9, :cond_2d

    .line 870
    :cond_2c
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mEditable:Z

    goto/16 :goto_8

    .line 871
    :cond_2d
    const-string v18, "45006"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0x3eb

    move/from16 v0, v18

    if-ne v0, v9, :cond_8

    .line 873
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mEditable:Z

    goto/16 :goto_8

    .line 897
    .end local v9    # "index":I
    .end local v14    # "numeric":Ljava/lang/String;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto/16 :goto_9

    .line 905
    :cond_2f
    const-string v18, "apn_edit"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto/16 :goto_a
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 14

    .prologue
    const v13, 0xffff

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1473
    const/4 v2, 0x0

    .line 1475
    .local v2, "errorMsg":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1476
    .local v5, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1477
    .local v0, "apn":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1478
    .local v3, "mcc":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1479
    .local v4, "mnc":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1480
    .local v6, "port":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1481
    .local v7, "port_number":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v10, :cond_0

    .line 1482
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1484
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v10, :cond_2

    .line 1485
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0a07d7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1498
    :cond_1
    :goto_0
    return-object v2

    .line 1486
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v10, :cond_3

    .line 1487
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0a07d8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1488
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    .line 1489
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0a07d9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1490
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const v9, 0xfffe

    and-int/2addr v8, v9

    if-eq v8, v12, :cond_5

    .line 1491
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0a07da

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1492
    :cond_5
    if-le v7, v13, :cond_1

    .line 1494
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0a07dc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1495
    .local v1, "errorMsagString":Ljava/lang/String;
    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private isDunExist()Z
    .locals 12

    .prologue
    .line 1745
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "isDunExist"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1748
    .local v10, "numeric":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1750
    .local v8, "isdunexist":Z
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1751
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "No numeric data"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 1782
    .end local v8    # "isdunexist":Z
    .local v9, "isdunexist":I
    :goto_0
    return v9

    .line 1755
    .end local v9    # "isdunexist":I
    .restart local v8    # "isdunexist":Z
    :cond_0
    const/4 v6, 0x0

    .line 1756
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1759
    .local v3, "selection":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1761
    if-eqz v6, :cond_3

    .line 1762
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "Query databases to find dun type"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1766
    :cond_1
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1767
    .local v11, "types":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dun"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1768
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "Dun type is exist"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    const/4 v8, 0x1

    .line 1771
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1780
    .end local v11    # "types":Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v9, v8

    .line 1782
    .restart local v9    # "isdunexist":I
    goto :goto_0

    .line 1775
    .end local v9    # "isdunexist":I
    :catch_0
    move-exception v7

    .line 1776
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught to query databases : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1780
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v9, v8

    .restart local v9    # "isdunexist":I
    goto/16 :goto_0

    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v9    # "isdunexist":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private isEditable()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 435
    const/4 v8, 0x1

    .line 436
    .local v8, "editable":Z
    const/4 v6, 0x0

    .line 438
    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    .line 439
    .local v9, "name":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 440
    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->changeNwkNameQuotesString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 443
    :cond_0
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND apn = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 447
    .local v3, "selection":Ljava/lang/String;
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 452
    if-eqz v6, :cond_4

    .line 453
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "No carriers in nwkinfo provider"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v10, :cond_2

    .line 456
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 458
    :cond_1
    const-string v0, "1"

    const-string v1, "editable"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 459
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 463
    :cond_2
    const-string v0, "XSA"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 464
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v10, :cond_4

    .line 465
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 467
    :cond_3
    const-string v0, "1"

    const-string v1, "editable"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 468
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 476
    :cond_4
    if-eqz v6, :cond_5

    .line 477
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 479
    :cond_5
    :goto_0
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEditable  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return v8

    .line 473
    :catch_0
    move-exception v7

    .line 474
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    if-eqz v6, :cond_5

    .line 477
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 476
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 477
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private isImsExist()Z
    .locals 12

    .prologue
    .line 1786
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "isImsExist()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1789
    .local v10, "numeric":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1791
    .local v8, "isimsexist":Z
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1792
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "No numeric data"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 1823
    .end local v8    # "isimsexist":Z
    .local v9, "isimsexist":I
    :goto_0
    return v9

    .line 1796
    .end local v9    # "isimsexist":I
    .restart local v8    # "isimsexist":Z
    :cond_0
    const/4 v6, 0x0

    .line 1797
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1800
    .local v3, "selection":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1802
    if-eqz v6, :cond_3

    .line 1803
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "Query databases to find ims type"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1807
    :cond_1
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1808
    .local v11, "types":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ims"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1809
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "IMS type is exist"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    const/4 v8, 0x1

    .line 1812
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1821
    .end local v11    # "types":Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v9, v8

    .line 1823
    .restart local v9    # "isimsexist":I
    goto :goto_0

    .line 1816
    .end local v9    # "isimsexist":I
    :catch_0
    move-exception v7

    .line 1817
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught to query databases : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1821
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v9, v8

    .restart local v9    # "isimsexist":I
    goto/16 :goto_0

    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v9    # "isimsexist":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1045
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v6, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 1046
    .local v1, "mvnoIndex":I
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 1048
    .local v3, "oldValue":Ljava/lang/String;
    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 1077
    :goto_0
    return-object v5

    .line 1051
    :cond_0
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0c006e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1052
    .local v4, "values":[Ljava/lang/String;
    aget-object v6, v4, v1

    const-string v7, "SPN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    aget-object v6, v4, v1

    const-string v7, "IMSI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    aget-object v6, v4, v1

    const-string v7, "GID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1053
    :cond_1
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 1057
    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1058
    aget-object v6, v4, v1

    const-string v7, "SPN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1059
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget v7, p0, Lcom/android/settings/ApnEditor;->mActivePhone:I

    invoke-static {v7}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1075
    :cond_2
    :goto_2
    :try_start_0
    aget-object v5, v4, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1055
    :cond_3
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_1

    .line 1060
    :cond_4
    aget-object v6, v4, v1

    const-string v7, "IMSI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1061
    iget v6, p0, Lcom/android/settings/ApnEditor;->mActivePhone:I

    invoke-static {v6}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    .line 1063
    .local v2, "numeric":Ljava/lang/String;
    const-string v6, "525"

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v8, 0x9

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "05"

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v8, 0xa

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "gtnet"

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1065
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v8, 0x15

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 1067
    :cond_5
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 1069
    .end local v2    # "numeric":Ljava/lang/String;
    :cond_6
    aget-object v6, v4, v1

    const-string v7, "GID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1070
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget v7, p0, Lcom/android/settings/ApnEditor;->mActivePhone:I

    invoke-static {v7}, Lcom/samsung/android/telephony/MultiSimManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto/16 :goto_0
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .param p1, "raw"    # Ljava/lang/String;
    .param p2, "protocol"    # Landroid/preference/ListPreference;

    .prologue
    const/4 v3, 0x0

    .line 1017
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 1018
    .local v1, "protocolIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 1025
    :goto_0
    return-object v3

    .line 1021
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0c006a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1023
    .local v2, "values":[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1024
    :catch_0
    move-exception v0

    .line 1025
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1565
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1566
    :cond_0
    sget-object v2, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 1572
    :goto_0
    return-object v2

    .line 1568
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 1569
    .local v1, "password":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1570
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 1569
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1572
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 20
    .param p1, "force"    # Z

    .prologue
    .line 1300
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnEditor;->mHasMdmEditedApn:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnEditor;->mHasUserEditedApn:Z

    if-nez v2, :cond_0

    .line 1301
    const/4 v2, 0x1

    .line 1469
    :goto_0
    return v2

    .line 1304
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1305
    .local v14, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1306
    .local v8, "apn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1307
    .local v12, "mcc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1308
    .local v13, "mnc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1309
    .local v15, "port":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1310
    .local v16, "port_number":I
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    .line 1311
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1313
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    .line 1314
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->showDialog(I)V

    .line 1316
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Saving APN  failed"

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1321
    const/4 v2, 0x0

    goto :goto_0

    .line 1324
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1326
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Saving APN  failed"

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1331
    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v3, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1337
    :cond_3
    if-eqz p1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v2, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_4

    const v2, 0xffff

    move/from16 v0, v16

    if-le v0, v2, :cond_5

    .line 1340
    :cond_4
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Saving APN  failed - invalid input fields"

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1345
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1348
    :cond_5
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1361
    .local v18, "values":Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0c18

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    const-string v2, "apn"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    const-string v2, "proxy"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    const-string v2, "port"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    const-string v2, "mmsproxy"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    const-string v2, "mmsport"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const-string v2, "user"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    const-string v2, "server"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    const-string v2, "password"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    const-string v2, "mmsc"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    const-string v2, "carrier_enabled"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 1382
    .local v9, "authVal":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 1383
    const-string v2, "authtype"

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1386
    :cond_6
    const-string v2, "protocol"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    const-string v2, "roaming_protocol"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnEditor;->mApnTypeStyle:Z

    if-nez v2, :cond_10

    .line 1392
    const-string v2, "d2tmo"

    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1394
    const-string v2, "type"

    const-string v3, "default,mms,supl"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    :goto_2
    const-string v2, "mcc"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    const-string v2, "mnc"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    const-string v2, "numeric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1420
    const-string v2, "311"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "480"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1421
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnEditor;->isVzwHomeApnChanged:Z

    .line 1424
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 1425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1426
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ApnEditor;->mActivePhone:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 1428
    const-string v2, "current1"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1435
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 1436
    .local v10, "bearerVal":Ljava/lang/String;
    if-eqz v10, :cond_9

    .line 1437
    const-string v2, "bearer"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1440
    :cond_9
    const-string v2, "mvno_type"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    const-string v2, "mvno_match_data"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mAction:Ljava/lang/String;

    const-string v3, "android.intent.action.INSERT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1444
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ApnEditor;->mActivePhone:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v17

    .line 1445
    .local v17, "subid":[J
    const-string v2, "sub_id"

    const/4 v3, 0x0

    aget-wide v4, v17, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1448
    .end local v17    # "subid":[J
    :cond_a
    const-string v3, "carrier_enabled"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1449
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1451
    const/4 v11, 0x0

    .line 1452
    .local v11, "isVzwSimEnable":Z
    const-string v2, "311480"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ApnEditor;->mActivePhone:I

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "20404"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ApnEditor;->mActivePhone:I

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1454
    :cond_b
    const/4 v11, 0x1

    .line 1457
    :cond_c
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v11, :cond_d

    .line 1458
    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v3, "inside if changeVzwHomeAndRoamingApn"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1460
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings/ApnEditor;->changeVzwHomeAndRoamingApn(Ljava/lang/String;)V

    .line 1464
    :cond_d
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Saving APN "

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v19, " succeeded"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1469
    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v9    # "authVal":Ljava/lang/String;
    .end local v10    # "bearerVal":Ljava/lang/String;
    .end local v11    # "isVzwSimEnable":Z
    :cond_e
    move-object v2, v14

    .line 1361
    goto/16 :goto_1

    .line 1396
    .restart local v9    # "authVal":Ljava/lang/String;
    :cond_f
    const-string v2, "type"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1399
    :cond_10
    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validateAndSave() checkNotSetApn("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    const-string v2, "type"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ApnEditor;->checkNotSetApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1430
    :cond_11
    const-string v2, "current"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 1448
    .restart local v10    # "bearerVal":Ljava/lang/String;
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_4
.end method


# virtual methods
.method public changeVzwHomeAndRoamingApn(Ljava/lang/String;)V
    .locals 10
    .param p1, "mapn"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1263
    const/4 v2, 0x0

    .line 1264
    .local v2, "selection":Ljava/lang/String;
    const-string v3, "numeric=\'311480\' and type like \'%default%\'"

    .line 1265
    .local v3, "selectionHome":Ljava/lang/String;
    const-string v4, "numeric=\'20404\' and type like \'%default%\'"

    .line 1266
    .local v4, "selectionRoam":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->isVzwHomeApnChanged:Z

    .line 1267
    .local v0, "homeChanged":Z
    const/4 v1, 0x0

    .line 1269
    .local v1, "inHome":Z
    if-eqz v0, :cond_0

    .line 1270
    sget-object v6, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v7, "homeChanged = true"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    move-object v2, v3

    .line 1272
    const/4 v1, 0x1

    .line 1277
    :goto_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1278
    .local v5, "values":Landroid/content/ContentValues;
    sget-object v6, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "value of apn - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    const-string v6, "apn"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    if-eqz v1, :cond_1

    .line 1282
    sget-object v6, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v7, "inside inHome true "

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5, v4, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1288
    :goto_1
    return-void

    .line 1274
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_0
    sget-object v6, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v7, "homeChanged = false"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    move-object v2, v4

    goto :goto_0

    .line 1285
    .restart local v5    # "values":Landroid/content/ContentValues;
    :cond_1
    sget-object v6, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v7, "inside inHome false "

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5, v3, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSpcode()Ljava/lang/String;
    .locals 9

    .prologue
    .line 985
    const/4 v2, 0x0

    .line 986
    .local v2, "phoneContext":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 987
    .local v1, "mContext":Landroid/content/Context;
    const-string v4, ""

    .line 989
    .local v4, "spcode":Ljava/lang/String;
    :try_start_0
    const-string v6, "com.android.phone"

    const/4 v7, 0x3

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 995
    :goto_0
    if-nez v2, :cond_0

    .line 996
    sget-object v6, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v7, "Unable to get phone context"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .line 1008
    .end local v4    # "spcode":Ljava/lang/String;
    .local v5, "spcode":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 991
    .end local v5    # "spcode":Ljava/lang/String;
    .restart local v4    # "spcode":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 992
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0

    .line 1000
    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1002
    .local v3, "preferences":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_1

    .line 1003
    sget-object v6, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v7, "get phone shared preference"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const-string v6, "key_gid1"

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1007
    :cond_1
    sget-object v6, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get spcode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .line 1008
    .end local v4    # "spcode":Ljava/lang/String;
    .restart local v5    # "spcode":Ljava/lang/String;
    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 267
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 269
    const v4, 0x7f07001a

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->addPreferencesFromResource(I)V

    .line 271
    iput-boolean v6, p0, Lcom/android/settings/ApnEditor;->isVzwHomeApnChanged:Z

    .line 272
    const-string v4, "gsm.current.phone-type"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ApnEditor;->mPhoneType:I

    .line 273
    sget-object v4, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPhoneType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/ApnEditor;->mPhoneType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 275
    .local v0, "ps":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0a07b4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 276
    const-string v4, "apn_name"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    .line 277
    const-string v4, "apn_apn"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    .line 279
    const-string v4, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 280
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 283
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "ril.simtype"

    const-string v7, ""

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "2"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 285
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 288
    :cond_1
    const-string v4, "apn_http_proxy"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    .line 289
    const-string v4, "apn_http_port"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    .line 290
    const-string v4, "apn_user"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    .line 291
    const-string v4, "apn_server"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    .line 292
    const-string v4, "apn_password"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    .line 293
    const-string v4, "apn_mms_proxy"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    .line 294
    const-string v4, "apn_mms_port"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    .line 295
    const-string v4, "apn_mmsc"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    .line 296
    const-string v4, "apn_mcc"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    .line 297
    const-string v4, "apn_mnc"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    .line 300
    const-string v4, "apn_ppp_digit"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mPppDigit:Landroid/preference/EditTextPreference;

    .line 301
    const-string v4, "apn_databearer"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mDatabearer:Landroid/preference/EditTextPreference;

    .line 303
    const-string v4, "apn_type_list"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    .line 304
    const-string v4, "apn_type"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    .line 306
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_Setting_EditOption4ApnType"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "List"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 307
    iput-boolean v5, p0, Lcom/android/settings/ApnEditor;->mApnTypeStyle:Z

    .line 311
    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/ApnEditor;->mApnTypeStyle:Z

    if-nez v4, :cond_3

    .line 312
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mApnType_list:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 316
    :goto_1
    const-string v4, "auth_type"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    .line 317
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 319
    const-string v4, "apn_protocol"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    .line 320
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 322
    const-string v4, "apn_roaming_protocol"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    .line 323
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 325
    const-string v4, "carrier_enabled"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    .line 327
    const-string v4, "bearer"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    .line 328
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_Setting_DisableMenuBearerInApnEdit"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 329
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 334
    :goto_2
    const-string v4, "mvno_type"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    .line 335
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 336
    const-string v4, "mvno_match_data"

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mPppDigit:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mDatabearer:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 354
    .local v3, "tempIntent":Landroid/content/Intent;
    const-string v4, "simSlot"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ApnEditor;->mActivePhone:I

    .line 355
    const-string v4, "ApnEditor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mActivePhone : ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/ApnEditor;->mActivePhone:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v4, "vzw"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "strNameVzw":Ljava/lang/String;
    if-nez v2, :cond_5

    .line 358
    iput-boolean v6, p0, Lcom/android/settings/ApnEditor;->mIsVzwEditable:Z

    .line 362
    :goto_3
    const-string v4, "keyString"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "strNameSpr":Ljava/lang/String;
    if-eqz v1, :cond_6

    const-string v4, "hidden"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 364
    iput-boolean v5, p0, Lcom/android/settings/ApnEditor;->mIsSprEditable:Z

    .line 368
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 370
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mAction:Ljava/lang/String;

    .line 372
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mAction:Ljava/lang/String;

    if-nez v4, :cond_7

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    .line 426
    :goto_5
    return-void

    .line 309
    .end local v1    # "strNameSpr":Ljava/lang/String;
    .end local v2    # "strNameVzw":Ljava/lang/String;
    .end local v3    # "tempIntent":Landroid/content/Intent;
    :cond_2
    iput-boolean v6, p0, Lcom/android/settings/ApnEditor;->mApnTypeStyle:Z

    goto/16 :goto_0

    .line 314
    :cond_3
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 331
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 360
    .restart local v2    # "strNameVzw":Ljava/lang/String;
    .restart local v3    # "tempIntent":Landroid/content/Intent;
    :cond_5
    iput-boolean v5, p0, Lcom/android/settings/ApnEditor;->mIsVzwEditable:Z

    goto :goto_3

    .line 366
    .restart local v1    # "strNameSpr":Ljava/lang/String;
    :cond_6
    iput-boolean v6, p0, Lcom/android/settings/ApnEditor;->mIsSprEditable:Z

    goto :goto_4

    .line 377
    :cond_7
    if-nez p1, :cond_8

    move v4, v5

    :goto_6
    iput-boolean v4, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    .line 379
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mAction:Ljava/lang/String;

    const-string v6, "android.intent.action.EDIT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 380
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 416
    :goto_7
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v9, v9}, Lcom/android/settings/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 419
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 422
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->fillUi()V

    .line 424
    new-instance v4, Lcom/android/settings/ApnEditor$ApnSettingsObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/settings/ApnEditor$ApnSettingsObserver;-><init>(Lcom/android/settings/ApnEditor;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mApnSettingsObserver:Lcom/android/settings/ApnEditor$ApnSettingsObserver;

    goto :goto_5

    :cond_8
    move v4, v6

    .line 377
    goto :goto_6

    .line 381
    :cond_9
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mAction:Ljava/lang/String;

    const-string v6, "android.intent.action.INSERT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 382
    iput-boolean v5, p0, Lcom/android/settings/ApnEditor;->isInserting:Z

    .line 383
    iget-boolean v4, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    if-nez v4, :cond_a

    const-string v4, "pos"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_b

    .line 384
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 389
    :goto_8
    iput-boolean v5, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    .line 393
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v4, :cond_c

    .line 394
    sget-object v4, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to insert new telephony provider into "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto/16 :goto_5

    .line 386
    :cond_b
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "pos"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_8

    .line 402
    :cond_c
    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/ApnEditor;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_7

    .line 405
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto/16 :goto_5
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const v5, 0x7f0a17b9

    const/4 v4, 0x0

    const v3, 0x104000a

    .line 1504
    if-nez p1, :cond_0

    .line 1505
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 1507
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a07d6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a14ed

    new-instance v3, Lcom/android/settings/ApnEditor$1;

    invoke-direct {v3, p0}, Lcom/android/settings/ApnEditor$1;-><init>(Lcom/android/settings/ApnEditor;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1533
    .end local v0    # "msg":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1518
    :cond_0
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 1519
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a03d0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 1526
    :cond_1
    const/16 v1, 0x14

    if-ne p1, v1, :cond_2

    .line 1527
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 1533
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v6, 0x7f0a07cf

    const v5, 0x7f0201ed

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1152
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1153
    const/4 v0, 0x0

    .line 1154
    .local v0, "apnLocked":Z
    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mEditable:Z

    if-ne v1, v4, :cond_1

    .line 1169
    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-nez v1, :cond_0

    .line 1170
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1171
    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mIsVzwEditable:Z

    if-eqz v1, :cond_0

    .line 1172
    invoke-interface {p1, v3, v4, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1209
    :cond_0
    :goto_0
    const/4 v1, 0x2

    const v2, 0x7f0a07d2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108004e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1214
    :cond_1
    const/4 v1, 0x3

    const v2, 0x7f0a07d3

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080038

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1216
    return v4

    .line 1175
    :cond_2
    const-string v1, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1176
    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mIsSprEditable:Z

    if-eqz v1, :cond_0

    .line 1177
    invoke-interface {p1, v3, v4, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1181
    :cond_3
    invoke-interface {p1, v3, v4, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 501
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 502
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mApnSettingsObserver:Lcom/android/settings/ApnEditor$ApnSettingsObserver;

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mApnSettingsObserver:Lcom/android/settings/ApnEditor$ApnSettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 505
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1242
    packed-switch p1, :pswitch_data_0

    .line 1250
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1244
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    .line 1247
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1242
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1221
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1237
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 1223
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->deleteApn()V

    goto :goto_0

    .line 1226
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1227
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto :goto_0

    .line 1231
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_1

    .line 1232
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1234
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto :goto_0

    .line 1221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 512
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 513
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    .line 1083
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 1084
    .local v5, "key":Ljava/lang/String;
    const-string v9, "auth_type"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1086
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1087
    .local v4, "index":I
    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v9, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1089
    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f0c0068

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 1090
    .local v8, "values":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v11, v8, v4

    invoke-virtual {v9, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    .end local v4    # "index":I
    .end local v8    # "values":[Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "ril.simtype"

    const-string v11, ""

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "2"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1139
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1140
    .local v1, "apn":Ljava/lang/String;
    const-string v9, "ims.ktfwing.com"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "tethering.ktfwing.com"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "lte.ktfwing.com"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "lte150.ktfwing.com"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1142
    :cond_1
    const/16 v9, 0x14

    invoke-virtual {p0, v9}, Lcom/android/settings/ApnEditor;->showDialog(I)V

    move v9, v10

    .line 1147
    .end local v1    # "apn":Ljava/lang/String;
    :goto_1
    return v9

    .line 1091
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/NumberFormatException;
    move v9, v10

    .line 1092
    goto :goto_1

    .line 1094
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v9, "apn_protocol"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, p2

    .line 1095
    check-cast v9, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v9, v11}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v7

    .line 1096
    .local v7, "protocol":Ljava/lang/String;
    if-nez v7, :cond_3

    move v9, v10

    .line 1097
    goto :goto_1

    .line 1099
    :cond_3
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1100
    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v9, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1101
    .end local v7    # "protocol":Ljava/lang/String;
    :cond_4
    const-string v9, "apn_roaming_protocol"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, p2

    .line 1102
    check-cast v9, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v9, v11}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v7

    .line 1103
    .restart local v7    # "protocol":Ljava/lang/String;
    if-nez v7, :cond_5

    move v9, v10

    .line 1104
    goto :goto_1

    .line 1106
    :cond_5
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1107
    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v9, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1108
    .end local v7    # "protocol":Ljava/lang/String;
    :cond_6
    const-string v9, "bearer"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v9, p2

    .line 1109
    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1110
    .local v2, "bearer":Ljava/lang/String;
    if-nez v2, :cond_7

    move v9, v10

    .line 1111
    goto :goto_1

    .line 1113
    :cond_7
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1114
    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v9, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1115
    .end local v2    # "bearer":Ljava/lang/String;
    :cond_8
    const-string v9, "mvno_type"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move-object v9, p2

    .line 1116
    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1117
    .local v6, "mvno":Ljava/lang/String;
    if-nez v6, :cond_9

    move v9, v10

    .line 1118
    goto :goto_1

    .line 1120
    :cond_9
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1121
    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v9, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1124
    .end local v6    # "mvno":Ljava/lang/String;
    :cond_a
    const-string v9, "apn_apn"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1125
    const-string v9, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1126
    sget-object v9, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v11, "apn_apn"

    invoke-static {v9, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, p2

    .line 1127
    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1128
    .restart local v1    # "apn":Ljava/lang/String;
    const-string v9, "phone"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "wap.cingular"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1129
    :cond_b
    const/16 v9, 0xa

    invoke-virtual {p0, v9}, Lcom/android/settings/ApnEditor;->showDialog(I)V

    move v9, v10

    .line 1130
    goto/16 :goto_1

    .line 1147
    .end local v1    # "apn":Ljava/lang/String;
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_c
    const/4 v9, 0x1

    goto/16 :goto_1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 1538
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1540
    if-nez p1, :cond_0

    .line 1541
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 1543
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1544
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1547
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 485
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 489
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mHasMdmEditedApn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    .line 491
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->fillUi()V

    .line 492
    iput-boolean v1, p0, Lcom/android/settings/ApnEditor;->mHasMdmEditedApn:Z

    .line 494
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/ApnEditor;->mHasUserEditedApn:Z

    .line 496
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 1255
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1256
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1257
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1259
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1713
    invoke-virtual {p0, p2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1715
    .local v0, "pref":Landroid/preference/Preference;
    const-string v2, "apn_type_list"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1717
    const-string v2, ""

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/ApnEditor;->checkNullApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1718
    .local v1, "test":Ljava/lang/String;
    const-string v2, "APN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    const-string v2, "APN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    const-string v2, "APN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    const-string v2, ""

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/ApnEditor;->checkNullApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    .line 1723
    const-string v2, "APN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item4 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1740
    .end local v1    # "test":Ljava/lang/String;
    :goto_0
    return-void

    .line 1727
    :cond_0
    if-eqz v0, :cond_1

    .line 1728
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1729
    const-string v2, ""

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1738
    :cond_1
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/ApnEditor;->mHasUserEditedApn:Z

    goto :goto_0

    .line 1730
    :cond_2
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1731
    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSharedPreferenceChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1733
    :cond_3
    const-string v2, ""

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
