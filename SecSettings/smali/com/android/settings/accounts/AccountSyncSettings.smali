.class public Lcom/android/settings/accounts/AccountSyncSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "AccountSyncSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;
    }
.end annotation


# static fields
.field private static rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mCheckBoxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accounts/SyncStateCheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mInvisibleAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncAdapterType;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedToUpdateState:Z

.field private mProviderIcon:Landroid/widget/ImageView;

.field private mProviderId:Landroid/widget/TextView;

.field private mUserId:Landroid/widget/TextView;

.field private mValidationStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    .line 128
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mNeedToUpdateState:Z

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mValidationStatus:I

    .line 1029
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSyncSettings;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/AccountSyncSettings;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSyncSettings;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->checkReactivationLock(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/accounts/AccountSyncSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSyncSettings;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accounts/AccountSyncSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSyncSettings;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accounts/AccountSyncSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSyncSettings;
    .param p1, "x1"    # I

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/accounts/AccountSyncSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSyncSettings;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mNeedToUpdateState:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/accounts/AccountSyncSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSyncSettings;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mValidationStatus:I

    return v0
.end method

.method private accountExists(Landroid/accounts/Account;)Z
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v3, 0x0

    .line 854
    if-nez p1, :cond_1

    .line 864
    :cond_0
    :goto_0
    return v3

    .line 856
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    .line 858
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v1, v0

    .line 859
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 860
    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 861
    const/4 v3, 0x1

    goto :goto_0

    .line 859
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private addSyncStateCheckBox(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 414
    new-instance v1, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5, p1, p2}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 416
    .local v1, "item":Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v1, v7}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setPersistent(Z)V

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, p2, v7, v6}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 419
    .local v2, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-nez v2, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 423
    .local v3, "providerLabel":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 424
    const-string v5, "AccountSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Provider needs a label for authority \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 429
    :cond_2
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 430
    .local v0, "accountType":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 431
    const-string v5, "com.osp.app.signin"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 432
    if-nez v2, :cond_3

    const-string v5, "com.sec.android.widgetapp.q1_penmemo"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 436
    :cond_3
    if-nez v2, :cond_4

    const-string v5, "com.samsung.sec.android"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 439
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_5

    const-string v5, "com.samsung.android.SmartClip"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 450
    :cond_5
    const v5, 0x7f0a0c6d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 451
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 452
    invoke-virtual {v1, p2}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 453
    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 445
    .end local v4    # "title":Ljava/lang/String;
    :cond_6
    const-string v5, "com.android.ldap"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_0
.end method

.method private cancelSyncForEnabledProviders()V
    .locals 4

    .prologue
    .line 702
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 703
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 704
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mNeedToUpdateState:Z

    .line 708
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accounts/AccountSyncSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/AccountSyncSettings$3;-><init>(Lcom/android/settings/accounts/AccountSyncSettings;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 716
    return-void
.end method

.method private checkReactivationLock(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1308
    const/4 v1, 0x0

    .line 1309
    .local v1, "ret":Z
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1310
    sget-object v3, Lcom/android/settings/accounts/AccountSyncSettings;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    .line 1311
    .local v0, "lmmFlag":I
    const-string v3, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LMM[getReqiredAuthFlag] in Check= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1313
    const/4 v1, 0x1

    .end local v0    # "lmmFlag":I
    :cond_0
    move v2, v1

    .line 1320
    :cond_1
    return v2
.end method

.method private checkValidationState()Z
    .locals 15

    .prologue
    const/4 v13, 0x1

    const/4 v2, 0x0

    const/4 v14, 0x0

    .line 304
    const-string v3, "content://com.msc.openprovider.openContentProvider/tncRequest"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 307
    .local v1, "tncUri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 308
    .local v12, "tncState":I
    const/4 v11, 0x0

    .line 309
    .local v11, "nameCheckState":I
    const/4 v9, 0x0

    .line 311
    .local v9, "emailValidationState":I
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    .line 312
    .local v10, "manager":Landroid/accounts/AccountManager;
    const-string v3, "com.osp.app.signin"

    invoke-virtual {v10, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    .line 314
    .local v6, "accountArr":[Landroid/accounts/Account;
    array-length v3, v6

    if-lez v3, :cond_5

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 319
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 321
    .local v7, "cur":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 322
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 325
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 326
    .local v8, "emailID":Ljava/lang/String;
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 327
    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 328
    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 329
    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emailID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tncState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nameCheckState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emailValidationState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    add-int v2, v12, v11

    add-int/2addr v2, v9

    if-nez v2, :cond_1

    .line 334
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 335
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v2, v13

    .line 354
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "cur":Landroid/database/Cursor;
    .end local v8    # "emailID":Ljava/lang/String;
    :goto_0
    return v2

    .line 338
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v7    # "cur":Landroid/database/Cursor;
    .restart local v8    # "emailID":Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 339
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v2, v14

    .line 340
    goto :goto_0

    .line 344
    .end local v8    # "emailID":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 345
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 346
    :cond_4
    const-string v2, "AccountSettings"

    const-string v3, "Fail to obtain cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v14

    .line 347
    goto :goto_0

    .line 350
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "cur":Landroid/database/Cursor;
    :cond_5
    const-string v2, "AccountSettings"

    const-string v3, "Samsung account is not Signed-in"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v14

    .line 351
    goto :goto_0

    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v7    # "cur":Landroid/database/Cursor;
    :cond_6
    move v2, v14

    .line 354
    goto :goto_0
.end method

.method private isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 752
    .local p1, "currentSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;

    .line 753
    .local v1, "syncInfo":Landroid/content/SyncInfo;
    iget-object v2, v1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 754
    const/4 v2, 0x1

    .line 757
    .end local v1    # "syncInfo":Landroid/content/SyncInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "flag"    # Z

    .prologue
    .line 741
    if-eqz p3, :cond_0

    .line 742
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 743
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 744
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {p1, p2, v1, v0}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 749
    .end local v0    # "extras":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 747
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {p1, p2, v1}, Landroid/content/ContentResolver;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private requestOrCancelSyncForEnabledProviders(Z)V
    .locals 8
    .param p1, "startSync"    # Z

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 721
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 722
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 723
    .local v3, "pref":Landroid/preference/Preference;
    instance-of v6, v3, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    if-nez v6, :cond_1

    .line 721
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v3

    .line 726
    check-cast v5, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    .line 727
    .local v5, "syncPref":Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 730
    invoke-virtual {v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    .line 733
    .end local v3    # "pref":Landroid/preference/Preference;
    .end local v5    # "syncPref":Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v6, :cond_3

    .line 734
    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncAdapterType;

    .line 735
    .local v4, "syncAdapter":Landroid/content/SyncAdapterType;
    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v7, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-direct {p0, v6, v7, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_2

    .line 738
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "syncAdapter":Landroid/content/SyncAdapterType;
    :cond_3
    return-void
.end method

.method private setFeedsState()V
    .locals 30

    .prologue
    .line 770
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 771
    .local v10, "date":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v25

    .line 772
    .local v25, "userId":I
    invoke-static/range {v25 .. v25}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v9

    .line 773
    .local v9, "currentSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    const/16 v21, 0x0

    .line 776
    .local v21, "syncIsFailing":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAccountCheckboxes()V

    .line 778
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    .local v8, "count":I
    :goto_0
    if-ge v11, v8, :cond_11

    .line 779
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v16

    .line 780
    .local v16, "pref":Landroid/preference/Preference;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 778
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v22, v16

    .line 783
    check-cast v22, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    .line 785
    .local v22, "syncPref":Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 786
    .local v4, "authority":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 788
    .local v2, "account":Landroid/accounts/Account;
    move/from16 v0, v25

    invoke-static {v2, v4, v0}, Landroid/content/ContentResolver;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;

    move-result-object v17

    .line 789
    .local v17, "status":Landroid/content/SyncStatusInfo;
    move/from16 v0, v25

    invoke-static {v2, v4, v0}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v20

    .line 791
    .local v20, "syncEnabled":Z
    if-nez v17, :cond_6

    const/4 v5, 0x0

    .line 792
    .local v5, "authorityIsPending":Z
    :goto_2
    if-nez v17, :cond_7

    const/4 v12, 0x0

    .line 794
    .local v12, "initialSync":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 795
    .local v3, "activelySyncing":Z
    if-eqz v17, :cond_8

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_8

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_8

    const/4 v13, 0x1

    .line 799
    .local v13, "lastSyncFailed":Z
    :goto_4
    if-nez v20, :cond_1

    const/4 v13, 0x0

    .line 800
    :cond_1
    if-eqz v13, :cond_2

    if-nez v3, :cond_2

    if-nez v5, :cond_2

    .line 801
    const/16 v21, 0x1

    .line 803
    :cond_2
    const-string v26, "AccountSettings"

    const/16 v27, 0x2

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 804
    const-string v26, "AccountSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Update sync status: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " active = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " pend ="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_3
    if-nez v17, :cond_9

    const-wide/16 v18, 0x0

    .line 809
    .local v18, "successEndTime":J
    :goto_5
    if-nez v20, :cond_a

    .line 810
    const v26, 0x7f0a0c52

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setSummary(I)V

    .line 820
    :goto_6
    move/from16 v0, v25

    invoke-static {v2, v4, v0}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v23

    .line 822
    .local v23, "syncState":I
    if-eqz v3, :cond_d

    if-ltz v23, :cond_d

    if-nez v12, :cond_d

    const/16 v26, 0x1

    :goto_7
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setActive(Z)V

    .line 824
    if-eqz v5, :cond_e

    if-ltz v23, :cond_e

    if-nez v12, :cond_e

    const/16 v26, 0x1

    :goto_8
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setPending(Z)V

    .line 827
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setFailed(Z)V

    .line 828
    const-string v26, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 830
    .local v7, "connManager":Landroid/net/ConnectivityManager;
    invoke-static/range {v25 .. v25}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v14

    .line 832
    .local v14, "masterSyncAutomatically":Z
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v6

    .line 833
    .local v6, "backgroundDataEnabled":Z
    if-eqz v14, :cond_4

    if-nez v6, :cond_f

    :cond_4
    const/4 v15, 0x1

    .line 834
    .local v15, "oneTimeSyncMode":Z
    :goto_9
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setOneTimeSyncMode(Z)V

    .line 835
    if-nez v15, :cond_5

    if-eqz v20, :cond_10

    :cond_5
    const/16 v26, 0x1

    :goto_a
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 791
    .end local v3    # "activelySyncing":Z
    .end local v5    # "authorityIsPending":Z
    .end local v6    # "backgroundDataEnabled":Z
    .end local v7    # "connManager":Landroid/net/ConnectivityManager;
    .end local v12    # "initialSync":Z
    .end local v13    # "lastSyncFailed":Z
    .end local v14    # "masterSyncAutomatically":Z
    .end local v15    # "oneTimeSyncMode":Z
    .end local v18    # "successEndTime":J
    .end local v23    # "syncState":I
    :cond_6
    move-object/from16 v0, v17

    iget-boolean v5, v0, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_2

    .line 792
    .restart local v5    # "authorityIsPending":Z
    :cond_7
    move-object/from16 v0, v17

    iget-boolean v12, v0, Landroid/content/SyncStatusInfo;->initialize:Z

    goto/16 :goto_3

    .line 795
    .restart local v3    # "activelySyncing":Z
    .restart local v12    # "initialSync":Z
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 808
    .restart local v13    # "lastSyncFailed":Z
    :cond_9
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v18, v0

    goto :goto_5

    .line 811
    .restart local v18    # "successEndTime":J
    :cond_a
    if-eqz v3, :cond_b

    .line 812
    const v26, 0x7f0a0c55

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setSummary(I)V

    goto :goto_6

    .line 813
    :cond_b
    const-wide/16 v26, 0x0

    cmp-long v26, v18, v26

    if-eqz v26, :cond_c

    .line 814
    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 815
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/accounts/AccountSyncSettings;->formatSyncDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    .line 816
    .local v24, "timeString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a0c54

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v24, v28, v29

    invoke-virtual/range {v26 .. v28}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 818
    .end local v24    # "timeString":Ljava/lang/String;
    :cond_c
    const-string v26, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 822
    .restart local v23    # "syncState":I
    :cond_d
    const/16 v26, 0x0

    goto/16 :goto_7

    .line 824
    :cond_e
    const/16 v26, 0x0

    goto/16 :goto_8

    .line 833
    .restart local v6    # "backgroundDataEnabled":Z
    .restart local v7    # "connManager":Landroid/net/ConnectivityManager;
    .restart local v14    # "masterSyncAutomatically":Z
    :cond_f
    const/4 v15, 0x0

    goto :goto_9

    .line 835
    .restart local v15    # "oneTimeSyncMode":Z
    :cond_10
    const/16 v26, 0x0

    goto :goto_a

    .line 837
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v3    # "activelySyncing":Z
    .end local v4    # "authority":Ljava/lang/String;
    .end local v5    # "authorityIsPending":Z
    .end local v6    # "backgroundDataEnabled":Z
    .end local v7    # "connManager":Landroid/net/ConnectivityManager;
    .end local v12    # "initialSync":Z
    .end local v13    # "lastSyncFailed":Z
    .end local v14    # "masterSyncAutomatically":Z
    .end local v15    # "oneTimeSyncMode":Z
    .end local v16    # "pref":Landroid/preference/Preference;
    .end local v17    # "status":Landroid/content/SyncStatusInfo;
    .end local v18    # "successEndTime":J
    .end local v20    # "syncEnabled":Z
    .end local v22    # "syncPref":Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    .end local v23    # "syncState":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    if-eqz v21, :cond_12

    const/16 v26, 0x0

    :goto_b
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 838
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 839
    return-void

    .line 837
    :cond_12
    const/16 v26, 0x8

    goto :goto_b
.end method

.method private startSyncForEnabledProviders()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 685
    invoke-direct {p0, v2}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 686
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 687
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 690
    iput-boolean v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mNeedToUpdateState:Z

    .line 691
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accounts/AccountSyncSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/AccountSyncSettings$2;-><init>(Lcom/android/settings/accounts/AccountSyncSettings;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 699
    return-void
.end method

.method private updateAccountCheckboxes()V
    .locals 26

    .prologue
    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 871
    const/4 v13, 0x0

    .line 872
    .local v13, "pairedAccount":Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 873
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settings/accounts/SnsAccountManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/accounts/SnsAccountManager;->getPairedAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v13

    .line 876
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v23

    invoke-static/range {v23 .. v23}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v21

    .line 878
    .local v21, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 879
    .local v3, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    move-object/from16 v0, v21

    array-length v10, v0

    .local v10, "n":I
    :goto_0
    if-ge v6, v10, :cond_6

    .line 880
    aget-object v14, v21, v6

    .line 883
    .local v14, "sa":Landroid/content/SyncAdapterType;
    iget-object v0, v14, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    if-eqz v13, :cond_1

    iget-object v0, v14, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 879
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 885
    :cond_2
    const-string v23, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    const-string v23, "com.samsung.android.SmartClip"

    iget-object v0, v14, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    const-string v23, "com.osp.app.signin"

    iget-object v0, v14, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 891
    :cond_3
    invoke-virtual {v14}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 892
    const-string v23, "AccountSettings"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 893
    const-string v23, "AccountSettings"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateAccountCheckboxes: added authority "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v14, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " to accountType "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v14, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_4
    iget-object v0, v14, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 900
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 904
    .end local v14    # "sa":Landroid/content/SyncAdapterType;
    :cond_6
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v10

    :goto_2
    if-ge v6, v10, :cond_7

    .line 905
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/preference/Preference;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 904
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 907
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 909
    const-string v23, "AccountSettings"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 910
    const-string v23, "AccountSettings"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "looking for sync adapters that match account "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_8
    const/4 v8, 0x0

    .local v8, "j":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, "m":I
    :goto_3
    if-ge v8, v9, :cond_c

    .line 913
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 915
    .local v4, "authority":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v4, v1}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v22

    .line 917
    .local v22, "syncState":I
    const-string v23, "AccountSettings"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 918
    const-string v23, "AccountSettings"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "  found authority "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_9
    if-lez v22, :cond_a

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->addSyncStateCheckBox(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 925
    :cond_a
    if-eqz v13, :cond_b

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v23

    move/from16 v0, v23

    invoke-static {v13, v4, v0}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v22

    .line 928
    if-lez v22, :cond_b

    .line 929
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->addSyncStateCheckBox(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 912
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 936
    .end local v4    # "authority":Ljava/lang/String;
    .end local v22    # "syncState":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const-string v24, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v25, "isGoogleAccountsAutoSyncAllowed"

    invoke-static/range {v23 .. v25}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 937
    .local v7, "isGoogleAccountsAutoSyncAllowed":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v7, v0, :cond_e

    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v7, v0, :cond_e

    .line 938
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v10

    :goto_4
    if-ge v6, v10, :cond_e

    .line 939
    const-string v24, "com.google"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setEnabled(Z)V

    .line 938
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 948
    :cond_e
    const-string v20, "category_sso"

    .line 949
    .local v20, "ssoCategoryPrefKey":Ljava/lang/String;
    const-string v18, "category_sns"

    .line 950
    .local v18, "snsCategoryPrefKey":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 951
    .local v16, "snsAccountPreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/accounts/SyncStateCheckBoxPreference;>;"
    const/4 v15, 0x0

    .line 952
    .local v15, "serviceAppName":Ljava/lang/String;
    const/16 v17, 0x0

    .line 953
    .local v17, "snsAccountType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    move-object/from16 v23, v0

    if-eqz v23, :cond_f

    .line 954
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settings/accounts/SnsAccountManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/accounts/SnsAccountManager;->getServiceAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 955
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settings/accounts/SnsAccountManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/accounts/SnsAccountManager;->getSnsAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 957
    :cond_f
    if-eqz v15, :cond_12

    .line 958
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    const-string v24, "category_sso"

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 959
    .local v11, "oldSSOCategory":Landroid/preference/Preference;
    if-eqz v11, :cond_10

    .line 960
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 962
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    const-string v24, "category_sns"

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 963
    .local v12, "oldSnsCategory":Landroid/preference/Preference;
    if-eqz v12, :cond_11

    .line 964
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 967
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 968
    .local v2, "accountLabel":Ljava/lang/CharSequence;
    if-eqz v2, :cond_12

    .line 969
    new-instance v5, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 970
    .local v5, "categoryPref":Landroid/preference/PreferenceCategory;
    const-string v23, "category_sso"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 971
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 972
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 976
    .end local v2    # "accountLabel":Ljava/lang/CharSequence;
    .end local v5    # "categoryPref":Landroid/preference/PreferenceCategory;
    .end local v11    # "oldSSOCategory":Landroid/preference/Preference;
    .end local v12    # "oldSnsCategory":Landroid/preference/Preference;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 977
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v10

    :goto_5
    if-ge v6, v10, :cond_14

    .line 979
    if-eqz v15, :cond_13

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 984
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/preference/Preference;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 988
    :cond_14
    if-eqz v15, :cond_17

    .line 989
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_16

    .line 990
    new-instance v5, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 991
    .restart local v5    # "categoryPref":Landroid/preference/PreferenceCategory;
    const-string v23, "category_sns"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 992
    invoke-virtual {v5, v15}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 993
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1001
    .end local v5    # "categoryPref":Landroid/preference/PreferenceCategory;
    :cond_15
    :goto_7
    const/4 v6, 0x0

    :goto_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v6, v0, :cond_17

    .line 1002
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/preference/Preference;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1001
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 995
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    const-string v24, "category_sso"

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 996
    .local v19, "ssoCategory":Landroid/preference/Preference;
    if-eqz v19, :cond_15

    .line 997
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_7

    .line 1005
    .end local v19    # "ssoCategory":Landroid/preference/Preference;
    :cond_17
    return-void
.end method


# virtual methods
.method public CheckSamsungAccount_Verify()V
    .locals 7

    .prologue
    .line 1238
    const/16 v4, 0x1e

    .line 1239
    .local v4, "requestCode":I
    const-string v5, "AccountSettings"

    const-string v6, "CheckSamsungAccount_Verify start"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const-string v1, "s5d189ajvs"

    .line 1241
    .local v1, "client_id":Ljava/lang/String;
    const-string v2, "E8781246E4A0F6E9E213178CC003DE6A"

    .line 1242
    .local v2, "client_secret":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1243
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "com.osp.app.signin"

    const-string v6, "com.osp.app.signin.AccountView"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1244
    const-string v5, "client_id"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1245
    const-string v5, "client_ secret"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1247
    const-string v0, "ACCOUNT_VERIFY"

    .line 1248
    .local v0, "Request_str":Ljava/lang/String;
    const-string v5, "account_mode"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1249
    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1250
    return-void
.end method

.method public SetReactivationFlag(ILandroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p1, "setFlag"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1288
    sget-object v1, Lcom/android/settings/accounts/AccountSyncSettings;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v1, v0, p1, p3}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->setFlag(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1290
    const-string v1, "AccountSettings"

    const-string v2, "SetReactivationFlag() returns error!! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public SetReactivationServiceFlag(ILandroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p1, "setFlag"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "account"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1298
    sget-object v1, Lcom/android/settings/accounts/AccountSyncSettings;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v1, v0, p1, p3}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->setFlag(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1299
    const-string v0, "AccountSettings"

    const-string v1, "SetReactivationServiceFlag() returns error!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    const/4 v0, 0x0

    .line 1303
    :cond_0
    return v0
.end method

.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1024
    const/4 v0, 0x0

    return v0
.end method

.method protected initializeUi(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 261
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->addPreferencesFromResource(I)V

    .line 263
    const v0, 0x7f100024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 264
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    const v0, 0x7f1004b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    .line 267
    const v0, 0x7f1004b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    .line 268
    const v0, 0x7f1004b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    const v1, -0x9a8a7b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    :cond_0
    return-void
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 843
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onAccountsUpdate(Landroid/os/UserHandle;)V

    .line 844
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->accountExists(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    .line 851
    :goto_0
    return-void

    .line 849
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAccountCheckboxes()V

    .line 850
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->onSyncStateUpdated()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 359
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 362
    .local v0, "arguments":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 363
    const-string v2, "AccountSettings"

    const-string v3, "No arguments provided when starting intent. ACCOUNT_KEY needed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    const-string v2, "account"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iput-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    .line 368
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v2}, Lcom/android/settings/accounts/AccountSyncSettings;->accountExists(Landroid/accounts/Account;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 369
    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Account provided does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    goto :goto_0

    .line 373
    :cond_2
    const-string v2, "AccountSettings"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 374
    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_3
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_0

    const-string v2, "com.osp.app.signin"

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->checkValidationState()Z

    move-result v1

    .line 391
    .local v1, "b_checkValidationState":Z
    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkValidationState => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    if-nez v1, :cond_0

    .line 393
    new-instance v2, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;-><init>(Lcom/android/settings/accounts/AccountSyncSettings;Lcom/android/settings/accounts/AccountSyncSettings$1;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 1263
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 1264
    const/16 v0, 0x1e

    if-ne p1, v0, :cond_1

    .line 1265
    if-ne p2, v1, :cond_0

    .line 1266
    const-string v0, "AccountSettings"

    const-string v1, "Excute remove samsung_account"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->showDialog(I)V

    .line 1285
    :cond_0
    :goto_0
    return-void

    .line 1270
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 1271
    if-ne p2, v1, :cond_0

    .line 1272
    const-string v0, "AccountSettings"

    const-string v1, "Excute remove knox_account"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->showDialog(I)V

    goto :goto_0

    .line 1276
    :cond_2
    if-ne p1, v2, :cond_0

    .line 1277
    if-ne p2, v1, :cond_3

    .line 1278
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mValidationStatus:I

    goto :goto_0

    .line 1282
    :cond_3
    iput v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mValidationStatus:I

    goto :goto_0
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 2

    .prologue
    .line 1012
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    .line 1013
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1014
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1016
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    :cond_0
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->addPreferencesFromResource(I)V

    .line 1019
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/accounts/AccountSyncSettings;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    .line 244
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->setHasOptionsMenu(Z)V

    .line 245
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const v6, 0x7f0a0c68

    const v5, 0x104000a

    const/4 v4, 0x0

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "dialog":Landroid/app/Dialog;
    const/16 v2, 0x64

    if-ne p1, v2, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/accounts/AccountSyncSettings;->checkReactivationLock(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_1

    const-string v2, "com.osp.app.signin"

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    const v1, 0x7f0a0c6a

    .line 147
    .local v1, "messageId":I
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0c65

    new-instance v4, Lcom/android/settings/accounts/AccountSyncSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/accounts/AccountSyncSettings$1;-><init>(Lcom/android/settings/accounts/AccountSyncSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 233
    .end local v1    # "messageId":I
    :cond_0
    :goto_1
    return-object v0

    .line 145
    :cond_1
    const v1, 0x7f0a0c69

    .restart local v1    # "messageId":I
    goto :goto_0

    .line 220
    .end local v1    # "messageId":I
    :cond_2
    const/16 v2, 0x65

    if-ne p1, v2, :cond_3

    .line 221
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0c6b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 226
    :cond_3
    const/16 v2, 0x66

    if-ne p1, v2, :cond_0

    .line 227
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0c6e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0c6f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v11, 0x7f0a0c65

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-ne v6, v8, :cond_1

    .line 482
    invoke-virtual {p0, v11}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v10, v7, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 483
    .local v3, "removeAccount":Landroid/view/MenuItem;
    const v6, 0x7f0a10f0

    invoke-virtual {p0, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v8, v7, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    .line 484
    .local v5, "syncNow":Landroid/view/MenuItem;
    const v6, 0x7f0a10f1

    invoke-virtual {p0, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v9, v7, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 498
    .local v4, "syncCancel":Landroid/view/MenuItem;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-ne v6, v8, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/accounts/AccountCommon;->isActionbarLightTheme(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 503
    const v2, 0x7f02033a

    .line 504
    .local v2, "refreshResId":I
    const v0, 0x7f02032f

    .line 505
    .local v0, "cancelResId":I
    const v1, 0x7f020331

    .line 512
    .local v1, "deleteResId":I
    :goto_1
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 513
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 514
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 518
    .end local v0    # "cancelResId":I
    .end local v1    # "deleteResId":I
    .end local v2    # "refreshResId":I
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 519
    return-void

    .line 486
    .end local v3    # "removeAccount":Landroid/view/MenuItem;
    .end local v4    # "syncCancel":Landroid/view/MenuItem;
    .end local v5    # "syncNow":Landroid/view/MenuItem;
    :cond_1
    const v6, 0x7f0a10f0

    invoke-virtual {p0, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v8, v7, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    .line 487
    .restart local v5    # "syncNow":Landroid/view/MenuItem;
    const v6, 0x7f0a10f1

    invoke-virtual {p0, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v9, v7, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 488
    .restart local v4    # "syncCancel":Landroid/view/MenuItem;
    invoke-virtual {p0, v11}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v10, v7, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .restart local v3    # "removeAccount":Landroid/view/MenuItem;
    goto :goto_0

    .line 507
    :cond_2
    const v2, 0x7f02033b

    .line 508
    .restart local v2    # "refreshResId":I
    const v0, 0x7f020330

    .line 509
    .restart local v0    # "cancelResId":I
    const v1, 0x7f020332

    .restart local v1    # "deleteResId":I
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 250
    const v2, 0x7f04000b

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 252
    .local v1, "view":Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 253
    .local v0, "list":Landroid/widget/ListView;
    invoke-static {p2, v1, v0, v3}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 255
    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->initializeUi(Landroid/view/View;)V

    .line 257
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v4, 0x64

    const/4 v0, 0x1

    .line 619
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 650
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 621
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    goto :goto_0

    .line 624
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->startSyncForEnabledProviders()V

    goto :goto_0

    .line 627
    :sswitch_2
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->cancelSyncForEnabledProviders()V

    goto :goto_0

    .line 630
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ge v1, v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_used_samsungaccount"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 633
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_2

    const-string v1, "com.osp.app.signin"

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 634
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->CheckSamsungAccount_Verify()V

    goto :goto_0

    .line 635
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "sec_container_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 636
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->verifyKnoxAccount()V

    goto :goto_0

    .line 639
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->showDialog(I)V

    goto :goto_0

    .line 641
    :cond_4
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "sec_container_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 642
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->verifyKnoxAccount()V

    goto :goto_0

    .line 645
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->showDialog(I)V

    goto :goto_0

    .line 619
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 409
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    .line 410
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 411
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferences"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    .line 655
    instance-of v8, p2, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    if-eqz v8, :cond_3

    move-object v5, p2

    .line 656
    check-cast v5, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    .line 657
    .local v5, "syncPref":Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, "authority":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 659
    .local v0, "account":Landroid/accounts/Account;
    iget-object v8, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 660
    .local v6, "userId":I
    invoke-static {v0, v1, v6}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    .line 662
    .local v3, "syncAutomatically":Z
    invoke-virtual {v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->isOneTimeSyncMode()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 663
    invoke-direct {p0, v0, v1, v7}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 680
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "authority":Ljava/lang/String;
    .end local v3    # "syncAutomatically":Z
    .end local v5    # "syncPref":Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    .end local v6    # "userId":I
    :cond_0
    :goto_0
    return v7

    .line 665
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "authority":Ljava/lang/String;
    .restart local v3    # "syncAutomatically":Z
    .restart local v5    # "syncPref":Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    .restart local v6    # "userId":I
    :cond_1
    invoke-virtual {v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v4

    .line 666
    .local v4, "syncOn":Z
    move v2, v3

    .line 667
    .local v2, "oldSyncState":Z
    if-eq v4, v2, :cond_0

    .line 669
    invoke-static {v0, v1, v4, v6}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 673
    invoke-static {v6}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v4, :cond_0

    .line 674
    :cond_2
    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .line 680
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "authority":Ljava/lang/String;
    .end local v2    # "oldSyncState":Z
    .end local v3    # "syncAutomatically":Z
    .end local v4    # "syncOn":Z
    .end local v5    # "syncPref":Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    .end local v6    # "userId":I
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 20
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 523
    invoke-super/range {p0 .. p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 530
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 531
    .local v16, "syncNow":Landroid/view/MenuItem;
    const/16 v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 533
    .local v15, "syncCancel":Landroid/view/MenuItem;
    if-eqz v16, :cond_b

    if-eqz v15, :cond_b

    .line 534
    const/4 v6, 0x0

    .line 535
    .local v6, "isSyncableAccount":Z
    const/4 v5, 0x0

    .line 536
    .local v5, "isSyncEnabled":Z
    const/4 v7, 0x0

    .line 538
    .local v7, "isSyncing":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 539
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    .line 540
    .local v9, "originalAccount":Landroid/accounts/Account;
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v14

    .line 541
    .local v14, "syncAdapters":[Landroid/content/SyncAdapterType;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_9

    .line 542
    aget-object v12, v14, v8

    .line 543
    .local v12, "sa":Landroid/content/SyncAdapterType;
    if-eqz v12, :cond_5

    iget-object v0, v12, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 544
    iget-object v0, v12, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual {v12}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v17

    if-eqz v17, :cond_5

    iget-object v0, v12, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_5

    .line 545
    const/4 v6, 0x1

    .line 546
    iget-object v0, v12, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 547
    const/4 v5, 0x1

    .line 549
    :cond_0
    iget-object v0, v12, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    iget-object v0, v12, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 551
    :cond_1
    const/4 v7, 0x1

    .line 553
    :cond_2
    const-string v17, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string v17, "com.osp.app.signin"

    iget-object v0, v12, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 554
    const/4 v5, 0x0

    .line 555
    :cond_3
    if-eqz v12, :cond_4

    iget-object v0, v12, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    iget-object v0, v12, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.android.ldap"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 556
    const/4 v6, 0x0

    .line 559
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v19, "isGoogleAccountsAutoSyncAllowed"

    invoke-static/range {v17 .. v19}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 560
    .local v4, "isGoogleAccountsAutoSyncAllowed":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_5

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_5

    if-eqz v12, :cond_5

    iget-object v0, v12, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    const-string v17, "com.google"

    iget-object v0, v12, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 562
    const/4 v6, 0x0

    .line 569
    .end local v4    # "isGoogleAccountsAutoSyncAllowed":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settings/accounts/SnsAccountManager;

    move-result-object v17

    iget-object v0, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/accounts/SnsAccountManager;->getPairedAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v10

    .line 570
    .local v10, "pairedAccount":Landroid/accounts/Account;
    if-eqz v10, :cond_8

    if-eqz v12, :cond_8

    iget-object v0, v12, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 571
    iget-object v0, v12, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual {v12}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v17

    if-eqz v17, :cond_8

    iget-object v0, v12, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_8

    .line 572
    const/4 v6, 0x1

    .line 573
    iget-object v0, v12, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 574
    const/4 v5, 0x1

    .line 576
    :cond_6
    iget-object v0, v12, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_7

    iget-object v0, v12, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 578
    :cond_7
    const/4 v7, 0x1

    .line 541
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 585
    .end local v8    # "j":I
    .end local v9    # "originalAccount":Landroid/accounts/Account;
    .end local v10    # "pairedAccount":Landroid/accounts/Account;
    .end local v12    # "sa":Landroid/content/SyncAdapterType;
    .end local v14    # "syncAdapters":[Landroid/content/SyncAdapterType;
    :cond_9
    if-eqz v6, :cond_a

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v17

    if-eqz v17, :cond_d

    if-nez v5, :cond_d

    .line 587
    :cond_a
    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 588
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 589
    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 590
    invoke-interface/range {v16 .. v16}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    if-eqz v17, :cond_b

    .line 591
    invoke-interface/range {v16 .. v16}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    const/16 v18, 0x66

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 606
    .end local v5    # "isSyncEnabled":Z
    .end local v6    # "isSyncableAccount":Z
    .end local v7    # "isSyncing":Z
    :cond_b
    :goto_1
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v13, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v13, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v13, v17

    const/16 v17, 0x2

    const-string v18, "false"

    aput-object v18, v13, v17

    .line 607
    .local v13, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "content://com.sec.knox.provider2/DeviceAccountPolicy"

    const-string v19, "isAccountRemovalAllowed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2, v13}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 608
    .local v3, "isAccountRemovalAllowed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    if-nez v3, :cond_c

    .line 609
    const/16 v17, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 610
    .local v11, "removeAccount":Landroid/view/MenuItem;
    if-eqz v11, :cond_c

    .line 611
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 615
    .end local v11    # "removeAccount":Landroid/view/MenuItem;
    :cond_c
    return-void

    .line 594
    .end local v3    # "isAccountRemovalAllowed":I
    .end local v13    # "selectionArgs":[Ljava/lang/String;
    .restart local v5    # "isSyncEnabled":Z
    .restart local v6    # "isSyncableAccount":Z
    .restart local v7    # "isSyncing":Z
    :cond_d
    if-nez v7, :cond_e

    const/16 v17, 0x1

    :goto_2
    invoke-interface/range {v16 .. v17}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 595
    invoke-interface {v15, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 596
    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 597
    invoke-interface/range {v16 .. v16}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    if-eqz v17, :cond_b

    .line 598
    invoke-interface/range {v16 .. v16}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    const/16 v18, 0xff

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 594
    :cond_e
    const/16 v17, 0x0

    goto :goto_2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAuthDescriptions()V

    .line 402
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->onAccountsUpdate(Landroid/os/UserHandle;)V

    .line 404
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    .line 405
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 1

    .prologue
    .line 762
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mNeedToUpdateState:Z

    .line 764
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    :goto_0
    return-void

    .line 765
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->setFeedsState()V

    goto :goto_0
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method

.method public verifyKnoxAccount()V
    .locals 4

    .prologue
    .line 1253
    const/16 v1, 0xa

    .line 1254
    .local v1, "requestCode":I
    const-string v2, "AccountSettings"

    const-string v3, "CheckNOXAccount_Verify start"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.knox.containeragent.password_verify_from_account"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1256
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1257
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1258
    return-void
.end method
