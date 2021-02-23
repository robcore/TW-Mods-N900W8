.class Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecuritySearchIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1901
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    .line 1903
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    .line 1904
    return-void

    .line 1903
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2004
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2006
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2008
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {p1, v1}, Lcom/android/settings/SecuritySettings;->access$500(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v2

    .line 2011
    .local v2, "resId":I
    const v5, 0x7f0700b6

    if-ne v2, v5, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v5

    const/high16 v6, 0x10000

    if-eq v5, v6, :cond_0

    .line 2014
    const-string v5, "visiblepattern"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2018
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 2019
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    iget-boolean v5, p0, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2020
    :cond_1
    const-string v5, "sim_lock"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2023
    :cond_2
    const-string v5, "user"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 2024
    .local v4, "um":Landroid/os/UserManager;
    const-string v5, "no_config_credentials"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2025
    const-string v5, "credentials_management"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2029
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2030
    const-string v5, "trust_agent"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2031
    const-string v5, "manage_trust_agents"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2034
    :cond_4
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1950
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1951
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1953
    .local v6, "res":Landroid/content/res/Resources;
    const v12, 0x7f0a0221

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1955
    .local v9, "screenTitle":Ljava/lang/String;
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1956
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    iput-object v9, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1957
    iput-object v9, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1958
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1960
    iget-boolean v12, p0, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-nez v12, :cond_0

    .line 1961
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v12

    if-eqz v12, :cond_2

    const v7, 0x7f0a021d

    .line 1964
    .local v7, "resId":I
    :goto_0
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1965
    .restart local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1966
    iput-object v9, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1967
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1971
    .end local v7    # "resId":I
    :cond_0
    const-string v12, "user"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    .line 1973
    .local v11, "um":Landroid/os/UserManager;
    const-string v12, "no_config_credentials"

    invoke-virtual {v11, v12}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1974
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    .line 1976
    .local v4, "keyStore":Landroid/security/KeyStore;
    invoke-virtual {v4}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v12

    if-eqz v12, :cond_3

    const v10, 0x7f0a0bd4

    .line 1980
    .local v10, "storageSummaryRes":I
    :goto_1
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1981
    .restart local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1982
    iput-object v9, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1983
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1987
    .end local v4    # "keyStore":Landroid/security/KeyStore;
    .end local v10    # "storageSummaryRes":I
    :cond_1
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1988
    .local v5, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1989
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-static {v12, v5}, Lcom/android/settings/SecuritySettings;->access$600(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1991
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_4

    .line 1992
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 1993
    .local v0, "agent":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1994
    .restart local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    iget-object v12, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    iput-object v12, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1995
    iput-object v9, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1996
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1991
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1961
    .end local v0    # "agent":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v1    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .end local v3    # "i":I
    .end local v5    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v11    # "um":Landroid/os/UserManager;
    :cond_2
    const v7, 0x7f0a021b

    goto :goto_0

    .line 1976
    .restart local v4    # "keyStore":Landroid/security/KeyStore;
    .restart local v11    # "um":Landroid/os/UserManager;
    :cond_3
    const v10, 0x7f0a0bd5

    goto :goto_1

    .line 1999
    .end local v4    # "keyStore":Landroid/security/KeyStore;
    .restart local v5    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_4
    return-object v8
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1910
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1912
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1914
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {p1, v1}, Lcom/android/settings/SecuritySettings;->access$500(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v2

    .line 1916
    .local v2, "resId":I
    new-instance v4, Landroid/provider/SearchIndexableResource;

    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1917
    .local v4, "sir":Landroid/provider/SearchIndexableResource;
    iput v2, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1918
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1920
    iget-boolean v5, p0, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v5, :cond_0

    .line 1921
    const-string v5, "device_policy"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1924
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1935
    :goto_0
    :pswitch_0
    new-instance v4, Landroid/provider/SearchIndexableResource;

    .end local v4    # "sir":Landroid/provider/SearchIndexableResource;
    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1936
    .restart local v4    # "sir":Landroid/provider/SearchIndexableResource;
    iput v2, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1937
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1941
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    new-instance v4, Landroid/provider/SearchIndexableResource;

    .end local v4    # "sir":Landroid/provider/SearchIndexableResource;
    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1942
    .restart local v4    # "sir":Landroid/provider/SearchIndexableResource;
    const v5, 0x7f0700bf

    iput v5, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1943
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1945
    return-object v3

    .line 1927
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :pswitch_1
    const v2, 0x7f0700bc

    .line 1928
    goto :goto_0

    .line 1931
    :pswitch_2
    const v2, 0x7f0700c6

    goto :goto_0

    .line 1924
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
