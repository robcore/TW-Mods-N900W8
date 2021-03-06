.class Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MySettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/favorite/MySettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final MAX:I


# instance fields
.field private CTC_EXTRA:[I

.field private DEFAULT_QUICK_SETTINGS:[I

.field private DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

.field private DEFAULT_QUICK_SETTINGS_GRIDLIST_KNOX_WITHOUT_PEN:[I

.field private DEFAULT_QUICK_SETTINGS_GRIDLIST_KNOX_WITH_PEN:[I

.field private DEFAULT_QUICK_SETTINGS_GRIDLIST_WITHOUT_PEN:[I

.field private DEFAULT_QUICK_SETTINGS_GRIDLIST_WITHOUT_PEN_FINGER:[I

.field private DEFAULT_QUICK_SETTINGS_GRIDLIST_WITH_PEN:[I

.field private OPEN_EXTRA:[I

.field mContext:Landroid/content/Context;

.field private saved_cnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/android/settings/Utils;->getMaxFavoriteItemNumber()I

    move-result v0

    sput v0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->MAX:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x5

    .line 165
    const-string v0, "mysettings.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 93
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS:[I

    .line 110
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST_WITHOUT_PEN:[I

    .line 118
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST_WITHOUT_PEN_FINGER:[I

    .line 126
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST_WITH_PEN:[I

    .line 136
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST_KNOX_WITHOUT_PEN:[I

    .line 141
    new-array v0, v4, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST_KNOX_WITH_PEN:[I

    .line 148
    new-array v0, v4, [I

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->OPEN_EXTRA:[I

    .line 154
    new-array v0, v3, [I

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->CTC_EXTRA:[I

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->saved_cnt:I

    .line 166
    iput-object p1, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 167
    const-string v0, "MySettingsProvider"

    const-string v1, "DatabaseHelper(Context context):DATABASE_VERSION=1"

    invoke-static {v0, v1}, Lcom/android/settings/favorite/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void

    .line 93
    nop

    :array_0
    .array-data 4
        0x7f100649
        0x7f100650
        0x7f10064b
        0x7f100651
        0x7f10067b
        0x7f100667
        0x7f100693
        0x7f100678
        0x7f100695
        0x7f10068a
        0x7f1006a3
        0x7f1006c2
    .end array-data

    .line 110
    :array_1
    .array-data 4
        0x7f100651
        0x7f10067b
        0x7f100667
        0x7f100678
        0x7f10068a
    .end array-data

    .line 118
    :array_2
    .array-data 4
        0x7f100651
        0x7f10067b
        0x7f100667
        0x7f100678
        0x7f100695
    .end array-data

    .line 126
    :array_3
    .array-data 4
        0x7f100651
        0x7f10067b
        0x7f100667
        0x7f100691
        0x7f1006c3
    .end array-data

    .line 136
    :array_4
    .array-data 4
        0x7f10067b
        0x7f100667
    .end array-data

    .line 141
    :array_5
    .array-data 4
        0x7f10067b
        0x7f100667
        0x7f100691
    .end array-data

    .line 148
    :array_6
    .array-data 4
        0x7f10064d
        0x7f100696
        0x7f100670
    .end array-data

    .line 154
    :array_7
    .array-data 4
        0x7f100653
        0x7f100658
        0x7f10064d
        0x7f100696
        0x7f100670
    .end array-data
.end method

.method private checkSaveItem(I)Z
    .locals 7
    .param p1, "headerID"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 193
    const/4 v3, 0x1

    .line 194
    .local v3, "shouldBeSaved":Z
    iget-object v5, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "shopdemo"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 195
    .local v2, "shop":I
    sparse-switch p1, :sswitch_data_0

    .line 249
    :cond_0
    :goto_0
    return v3

    .line 197
    :sswitch_0
    iget-object v4, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.wifi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 198
    const/4 v3, 0x0

    goto :goto_0

    .line 202
    :sswitch_1
    const-string v4, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "BRI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 206
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 210
    :sswitch_2
    iget-object v4, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 216
    :sswitch_3
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    .line 217
    .local v1, "netManager":Landroid/os/INetworkManagementService;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eqz v5, :cond_4

    .line 219
    .local v0, "isSubUser":Z
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_0

    .line 220
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .end local v0    # "isSubUser":Z
    :cond_4
    move v0, v4

    .line 217
    goto :goto_1

    .line 226
    .end local v1    # "netManager":Landroid/os/INetworkManagementService;
    :sswitch_4
    if-ne v2, v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 229
    :sswitch_5
    const-string v4, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v4

    if-nez v4, :cond_0

    .line 230
    const/4 v3, 0x0

    goto :goto_0

    .line 234
    :sswitch_6
    iget-object v4, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-ne v2, v0, :cond_0

    .line 235
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 240
    :sswitch_7
    const/4 v3, 0x0

    .line 242
    goto/16 :goto_0

    .line 244
    :sswitch_8
    iget-object v4, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 222
    .restart local v0    # "isSubUser":Z
    .restart local v1    # "netManager":Landroid/os/INetworkManagementService;
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100649 -> :sswitch_0
        0x7f10064b -> :sswitch_2
        0x7f10064d -> :sswitch_8
        0x7f100650 -> :sswitch_1
        0x7f100651 -> :sswitch_3
        0x7f100678 -> :sswitch_4
        0x7f10068a -> :sswitch_6
        0x7f100695 -> :sswitch_5
        0x7f1006a3 -> :sswitch_7
    .end sparse-switch
.end method

.method private initDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v10, 0x0

    .line 253
    const-string v8, "MySettingsProvider"

    const-string v9, "initDB"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v8, "MySettingsProvider"

    const-string v9, "initDB(SQLiteDatabase db)"

    invoke-static {v8, v9}, Lcom/android/settings/favorite/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.spen_usp"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 256
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 257
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST_WITHOUT_PEN:[I

    iput-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

    .line 266
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "PHN"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 267
    const/4 v1, 0x0

    .local v1, "cnt":I
    :goto_1
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

    array-length v8, v8

    if-ge v1, v8, :cond_4

    .line 268
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

    aget v5, v8, v1

    .line 269
    .local v5, "item":I
    const v8, 0x7f100651

    if-ne v5, v8, :cond_3

    .line 270
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

    const v9, 0x7f100649

    aput v9, v8, v1

    .line 267
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 259
    .end local v1    # "cnt":I
    .end local v5    # "item":I
    :cond_1
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST_WITHOUT_PEN_FINGER:[I

    iput-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

    goto :goto_0

    .line 262
    :cond_2
    const-string v8, "MySettingsProvider"

    const-string v9, "initDB:DEFAULT_QUICK_SETTINGS_GRIDLIST_WITH_PEN"

    invoke-static {v8, v9}, Lcom/android/settings/favorite/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST_WITH_PEN:[I

    iput-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

    goto :goto_0

    .line 271
    .restart local v1    # "cnt":I
    .restart local v5    # "item":I
    :cond_3
    const v8, 0x7f100678

    if-ne v5, v8, :cond_0

    .line 272
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

    const v9, 0x7f1006c3

    aput v9, v8, v1

    goto :goto_2

    .line 278
    .end local v1    # "cnt":I
    .end local v5    # "item":I
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/16 v9, 0x64

    if-lt v8, v9, :cond_5

    .line 279
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.spen_usp"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 280
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST_KNOX_WITHOUT_PEN:[I

    iput-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

    .line 287
    :cond_5
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 288
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

    array-length v8, v8

    if-ge v3, v8, :cond_c

    .line 289
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

    aget v4, v8, v3

    .line 290
    .local v4, "id":I
    invoke-direct {p0, v4}, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->checkSaveItem(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 291
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "headerID":Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 293
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "key"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v8, "favorite"

    invoke-virtual {p1, v8, v10, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 288
    .end local v2    # "headerID":Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 282
    .end local v3    # "i":I
    .end local v4    # "id":I
    :cond_7
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST_KNOX_WITH_PEN:[I

    iput-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

    goto :goto_3

    .line 298
    :cond_8
    const/4 v1, 0x0

    .line 300
    .restart local v1    # "cnt":I
    const-string v8, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 301
    iget-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->CTC_EXTRA:[I

    .line 306
    .local v0, "EXTRA":[I
    :goto_5
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS:[I

    array-length v8, v8

    array-length v9, v0

    add-int v6, v8, v9

    .line 307
    .local v6, "total":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    if-ge v3, v6, :cond_c

    sget v8, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->MAX:I

    if-ge v1, v8, :cond_c

    .line 309
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS:[I

    array-length v8, v8

    if-ge v3, v8, :cond_b

    .line 310
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS:[I

    aget v4, v8, v3

    .line 314
    .restart local v4    # "id":I
    :goto_7
    invoke-direct {p0, v4}, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->checkSaveItem(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 315
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 316
    .restart local v2    # "headerID":Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 317
    .restart local v7    # "values":Landroid/content/ContentValues;
    const-string v8, "key"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v8, "favorite"

    invoke-virtual {p1, v8, v10, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 319
    add-int/lit8 v1, v1, 0x1

    .line 307
    .end local v2    # "headerID":Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 303
    .end local v0    # "EXTRA":[I
    .end local v3    # "i":I
    .end local v4    # "id":I
    .end local v6    # "total":I
    :cond_a
    iget-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->OPEN_EXTRA:[I

    .restart local v0    # "EXTRA":[I
    goto :goto_5

    .line 312
    .restart local v3    # "i":I
    .restart local v6    # "total":I
    :cond_b
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS:[I

    array-length v8, v8

    sub-int v8, v3, v8

    aget v4, v0, v8

    .restart local v4    # "id":I
    goto :goto_7

    .line 323
    .end local v0    # "EXTRA":[I
    .end local v1    # "cnt":I
    .end local v4    # "id":I
    .end local v6    # "total":I
    :cond_c
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 172
    const-string v1, "CREATE TABLE favorite (_id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , key STRING NOT NULL)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 173
    const-string v1, "CREATE TABLE frequent (_id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , key STRING NOT NULL , count INTEGER)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "MySettingsProvider"

    const-string v2, "onCreate:onCreate(SQLiteDatabase db)"

    invoke-static {v1, v2}, Lcom/android/settings/favorite/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isGridSimpleMenuEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TMO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 178
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->initDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 179
    const-string v1, "MySettingsProvider"

    const-string v2, "onCreate:initDB(db)"

    invoke-static {v1, v2}, Lcom/android/settings/favorite/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 185
    const-string v0, "MySettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destory all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v0, "MySettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade:Upgrading from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destory all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/favorite/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v0, "DROP TABLE IF EXISTS favorite"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 188
    const-string v0, "DROP TABLE IF EXISTS frequent"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 190
    return-void
.end method
