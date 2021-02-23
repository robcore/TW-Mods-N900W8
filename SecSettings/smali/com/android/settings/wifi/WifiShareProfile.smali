.class public Lcom/android/settings/wifi/WifiShareProfile;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiShareProfile.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;
    }
.end annotation


# static fields
.field private static DBG:Z

.field private static cipher:Ljavax/crypto/Cipher;

.field private static key:Ljavax/crypto/spec/SecretKeySpec;


# instance fields
.field private final DEVICE_PICKER_REQUEST:I

.field private P2pPeers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private SelectedP2pPeers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field currentApInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dialog:Landroid/app/AlertDialog;

.field private mCandidateAPs:Landroid/preference/PreferenceGroup;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field public mHandler:Landroid/os/Handler;

.field private mP2pConnectedOnSend:Z

.field private mP2pThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mPeerListListener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mSessionKey:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private selectedApCount:I

.field selectedApIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedSSID:Ljava/lang/String;

.field private wifiIsEnabled:Z

.field private wifiP2pConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 109
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 120
    iput-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile;->dialog:Landroid/app/AlertDialog;

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mFilter:Landroid/content/IntentFilter;

    .line 128
    iput-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 131
    iput-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->P2pPeers:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->SelectedP2pPeers:Ljava/util/List;

    .line 145
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiIsEnabled:Z

    .line 146
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiP2pConnected:Z

    .line 148
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mP2pConnectedOnSend:Z

    .line 154
    const-string v0, "0b1e96db05d64ea4"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mSessionKey:Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApIndexes:Ljava/util/List;

    .line 160
    iput v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApCount:I

    .line 177
    new-instance v0, Lcom/android/settings/wifi/WifiShareProfile$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiShareProfile$1;-><init>(Lcom/android/settings/wifi/WifiShareProfile;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mHandler:Landroid/os/Handler;

    .line 629
    const/16 v0, 0x21b1

    iput v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->DEVICE_PICKER_REQUEST:I

    return-void
.end method

.method private EncryptData()I
    .locals 15

    .prologue
    .line 590
    const/4 v6, 0x0

    .line 591
    .local v6, "is":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 592
    .local v8, "os":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 593
    .local v2, "fiTemp":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 594
    .local v3, "foTemp":Ljava/io/FileOutputStream;
    const/4 v10, 0x0

    .line 597
    .local v10, "ret":I
    :try_start_0
    iget-object v11, p0, Lcom/android/settings/wifi/WifiShareProfile;->mSessionKey:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/settings/wifi/WifiShareProfile;->StreamCrypt(Ljava/lang/String;)V

    .line 598
    new-instance v7, Ljava/io/FileInputStream;

    const-string v11, "/data/misc/wifi_share_profile/selected_conf.conf"

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    .end local v6    # "is":Ljava/io/InputStream;
    .local v7, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v11, "/data/misc/wifi_share_profile/EncryptedToSend.conf"

    invoke-direct {v4, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 600
    .end local v3    # "foTemp":Ljava/io/FileOutputStream;
    .local v4, "foTemp":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiShareProfile;->encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v8

    .line 602
    const/4 v9, 0x0

    .line 603
    .local v9, "readcount":I
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 604
    .local v0, "buffer":[B
    :goto_0
    if-eqz v7, :cond_4

    const/4 v11, 0x0

    const/16 v12, 0x400

    invoke-virtual {v7, v0, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_4

    .line 605
    const/4 v11, 0x0

    invoke-virtual {v8, v0, v11, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 608
    .end local v0    # "buffer":[B
    .end local v9    # "readcount":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .end local v4    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v3    # "foTemp":Ljava/io/FileOutputStream;
    move-object v6, v7

    .line 609
    .end local v7    # "is":Ljava/io/InputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v6    # "is":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    const-string v11, "WifiShareProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 610
    const/4 v10, -0x1

    .line 613
    if-eqz v8, :cond_0

    .line 614
    :try_start_4
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 615
    :cond_0
    if-eqz v3, :cond_1

    .line 616
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 617
    :cond_1
    if-eqz v6, :cond_2

    .line 618
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 619
    :cond_2
    if-eqz v2, :cond_3

    .line 620
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 626
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return v10

    .line 613
    .end local v3    # "foTemp":Ljava/io/FileOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v9    # "readcount":I
    :cond_4
    if-eqz v8, :cond_5

    .line 614
    :try_start_5
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 615
    :cond_5
    if-eqz v4, :cond_6

    .line 616
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 617
    :cond_6
    if-eqz v7, :cond_7

    .line 618
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 619
    :cond_7
    if-eqz v2, :cond_8

    .line 620
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_8
    move-object v3, v4

    .end local v4    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v3    # "foTemp":Ljava/io/FileOutputStream;
    move-object v6, v7

    .line 624
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 621
    .end local v3    # "foTemp":Ljava/io/FileOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v4    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    .line 622
    .local v5, "ioe":Ljava/io/IOException;
    const-string v11, "WifiShareProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ioexception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v10, -0x1

    move-object v3, v4

    .end local v4    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v3    # "foTemp":Ljava/io/FileOutputStream;
    move-object v6, v7

    .line 625
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 621
    .end local v0    # "buffer":[B
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v9    # "readcount":I
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 622
    .restart local v5    # "ioe":Ljava/io/IOException;
    const-string v11, "WifiShareProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ioexception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v10, -0x1

    .line 625
    goto :goto_2

    .line 612
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 613
    :goto_3
    if-eqz v8, :cond_9

    .line 614
    :try_start_6
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 615
    :cond_9
    if-eqz v3, :cond_a

    .line 616
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 617
    :cond_a
    if-eqz v6, :cond_b

    .line 618
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 619
    :cond_b
    if-eqz v2, :cond_c

    .line 620
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 624
    :cond_c
    :goto_4
    throw v11

    .line 621
    :catch_3
    move-exception v5

    .line 622
    .restart local v5    # "ioe":Ljava/io/IOException;
    const-string v12, "WifiShareProfile"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ioexception "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v10, -0x1

    goto :goto_4

    .line 612
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_3

    .end local v3    # "foTemp":Ljava/io/FileOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v4    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v11

    move-object v3, v4

    .end local v4    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v3    # "foTemp":Ljava/io/FileOutputStream;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 608
    :catch_4
    move-exception v1

    goto/16 :goto_1

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v1

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto/16 :goto_1
.end method

.method private StreamCrypt(Ljava/lang/String;)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 675
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 676
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 677
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 678
    .local v1, "keyBytes":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 680
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/WifiShareProfile;->cipher:Ljavax/crypto/Cipher;

    .line 681
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object v2, Lcom/android/settings/wifi/WifiShareProfile;->key:Ljavax/crypto/spec/SecretKeySpec;

    .line 683
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 106
    sget-boolean v0, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiShareProfile;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->P2pPeers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiShareProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->updateWifiP2pDeviceList()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/preference/PreferenceGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiShareProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->convertSelectedApIndexesIntoEncrypedFile()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/WifiShareProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->startWifiP2pDevicePicker()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/WifiShareProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiP2pConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mPeerListListener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mP2pThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/WifiShareProfile;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mP2pThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiShareProfile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiIsEnabled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/wifi/WifiShareProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiIsEnabled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiShareProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiShareProfile;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->initPreferences()V

    return-void
.end method

.method private constructCurrentApInfoMap()V
    .locals 20

    .prologue
    .line 454
    new-instance v17, Ljava/io/File;

    const-string v2, "/data/misc/wifi_share_profile/raw_conf.conf"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .local v17, "rawConfFile":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 456
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 458
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 459
    .local v16, "msg":Landroid/os/Message;
    const/16 v2, 0xcd

    move-object/from16 v0, v16

    iput v2, v0, Landroid/os/Message;->what:I

    .line 461
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 462
    .local v10, "args":Landroid/os/Bundle;
    const-string v2, "OPTION"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 463
    const-string v2, "PATH"

    const-string v3, "/data/misc/wifi_share_profile/raw_conf.conf"

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    move-object/from16 v0, v16

    iput-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    if-nez v2, :cond_5

    .line 467
    sget-boolean v2, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiShareProfile"

    const-string v3, "BACK UP !!!!!!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .local v8, "apIndex":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .local v9, "apNetwork":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 476
    .local v11, "br":Ljava/io/BufferedReader;
    const/4 v13, 0x0

    .line 477
    .local v13, "currentHighestPriority":I
    const/4 v4, 0x0

    .line 478
    .local v4, "ssid":Ljava/lang/String;
    const/4 v7, 0x0

    .line 480
    .local v7, "priority":I
    :try_start_0
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 481
    .end local v11    # "br":Ljava/io/BufferedReader;
    .local v12, "br":Ljava/io/BufferedReader;
    const/4 v15, 0x0

    .line 484
    .local v15, "line":Ljava/lang/String;
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    .line 486
    if-nez v15, :cond_6

    .line 536
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 537
    :cond_3
    if-eqz v12, :cond_15

    .line 539
    :try_start_2
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v11, v12

    .line 545
    .end local v4    # "ssid":Ljava/lang/String;
    .end local v7    # "priority":I
    .end local v8    # "apIndex":Ljava/lang/StringBuilder;
    .end local v9    # "apNetwork":Ljava/lang/StringBuilder;
    .end local v12    # "br":Ljava/io/BufferedReader;
    .end local v13    # "currentHighestPriority":I
    .end local v15    # "line":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 469
    :cond_5
    const-string v2, "WifiShareProfile"

    const-string v3, "Failed to write networks"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 488
    .restart local v4    # "ssid":Ljava/lang/String;
    .restart local v7    # "priority":I
    .restart local v8    # "apIndex":Ljava/lang/StringBuilder;
    .restart local v9    # "apNetwork":Ljava/lang/StringBuilder;
    .restart local v12    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "currentHighestPriority":I
    .restart local v15    # "line":Ljava/lang/String;
    :cond_6
    :try_start_3
    const-string v2, "\n"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 490
    const-string v2, "\tssid="

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "\tkey_mgmt="

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "\tauth_alg="

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "\teap="

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 494
    :cond_7
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :cond_8
    const-string v2, "\tssid="

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 498
    const/4 v2, 0x6

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 501
    :cond_9
    const-string v2, "\tpriority="

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 502
    const/16 v2, 0xa

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 505
    :cond_a
    const-string v2, "\tcaptive_portal="

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\tauthenticated="

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\tusable_internet="

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\tskip_internet_check="

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 512
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const/16 v2, 0xa

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    const-string v2, "}"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 517
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\tkey_mgmt=NONE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\tauth_alg=OPEN SHARED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\teap="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 520
    :cond_c
    sget-boolean v2, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v2, :cond_d

    const-string v2, "WifiShareProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "constructCurrentApInfoMap - (EXCLUDE OPEN or EAP NETWORK!)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_d
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 530
    const/4 v2, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 533
    :catch_0
    move-exception v14

    move-object v11, v12

    .line 534
    .end local v12    # "br":Ljava/io/BufferedReader;
    .end local v15    # "line":Ljava/lang/String;
    .restart local v11    # "br":Ljava/io/BufferedReader;
    .local v14, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    sget-boolean v2, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v2, :cond_e

    const-string v2, "WifiShareProfile"

    const-string v3, "Exception while updating existing AP list"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 536
    :cond_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 537
    :cond_f
    if-eqz v11, :cond_4

    .line 539
    :try_start_5
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 540
    :catch_1
    move-exception v14

    .line 541
    .local v14, "e":Ljava/io/IOException;
    const-string v2, "WifiShareProfile"

    invoke-virtual {v14}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 521
    .end local v11    # "br":Ljava/io/BufferedReader;
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v12    # "br":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    :cond_10
    :try_start_6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\tshared=1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 522
    sget-boolean v2, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v2, :cond_d

    const-string v2, "WifiShareProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "constructCurrentApInfoMap - (EXCLUDE SHARED NETWORK!)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 536
    :catchall_0
    move-exception v2

    move-object v11, v12

    .end local v12    # "br":Ljava/io/BufferedReader;
    .end local v15    # "line":Ljava/lang/String;
    .restart local v11    # "br":Ljava/io/BufferedReader;
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 537
    :cond_11
    if-eqz v11, :cond_12

    .line 539
    :try_start_7
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 542
    :cond_12
    :goto_5
    throw v2

    .line 523
    .end local v11    # "br":Ljava/io/BufferedReader;
    .restart local v12    # "br":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    :cond_13
    :try_start_8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\tvendor_spec_ssid=1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 524
    sget-boolean v2, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v2, :cond_d

    const-string v2, "WifiShareProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "constructCurrentApInfoMap - (EXCLUDE CARRIER DEFAULT NETWORK!)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 526
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v2, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;-><init>(Lcom/android/settings/wifi/WifiShareProfile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-boolean v2, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v2, :cond_d

    const-string v2, "WifiShareProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "constructCurrentApInfoMap - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 540
    :catch_2
    move-exception v14

    .line 541
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v2, "WifiShareProfile"

    invoke-virtual {v14}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v12

    .line 542
    .end local v12    # "br":Ljava/io/BufferedReader;
    .restart local v11    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 540
    .end local v14    # "e":Ljava/io/IOException;
    .end local v15    # "line":Ljava/lang/String;
    :catch_3
    move-exception v14

    .line 541
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v3, "WifiShareProfile"

    invoke-virtual {v14}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 536
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    goto/16 :goto_4

    .line 533
    :catch_4
    move-exception v14

    goto/16 :goto_3

    .end local v11    # "br":Ljava/io/BufferedReader;
    .restart local v12    # "br":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    :cond_15
    move-object v11, v12

    .end local v12    # "br":Ljava/io/BufferedReader;
    .restart local v11    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method private convertSelectedApIndexesIntoEncrypedFile()V
    .locals 12

    .prologue
    const/16 v11, 0xa

    .line 548
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/misc/wifi_share_profile/selected_conf.conf"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 549
    .local v7, "selectedConfFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v8, "/data/misc/wifi_share_profile/EncryptedToSend.conf"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 550
    .local v2, "encryptedFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 551
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 553
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 554
    .local v6, "selectedConf":Ljava/lang/StringBuilder;
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    .local v0, "builderSelectedSSID":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 559
    iget-object v9, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApIndexes:Ljava/util/List;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    iget-object v8, v8, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 560
    sget-boolean v8, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v8, :cond_2

    const-string v9, "WifiShareProfile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "convertSelectedApIndexesIntoEncrypedFile - AP: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    iget-object v8, v8, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_2
    iget-object v8, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    invoke-virtual {v8}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->updatedNetwork()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 564
    iget-object v8, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    iget-object v8, v8, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    const-string v8, ",\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 568
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_5

    .line 569
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedSSID:Ljava/lang/String;

    .line 572
    :cond_5
    const/4 v3, 0x0

    .line 575
    .local v3, "fw":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .local v4, "fw":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 580
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 585
    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->EncryptData()I

    .line 586
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 587
    :cond_6
    return-void

    .line 577
    :catch_0
    move-exception v1

    .line 578
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v8, "WifiShareProfile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Create file failed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 580
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 582
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 583
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    const-string v8, "WifiShareProfile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while closing encryptedFile. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 580
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 582
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v4    # "fw":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 580
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v4    # "fw":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 577
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v4    # "fw":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 688
    sget-object v2, Lcom/android/settings/wifi/WifiShareProfile;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 689
    .local v0, "iv":[B
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 690
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 693
    .local v1, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 696
    sget-object v2, Lcom/android/settings/wifi/WifiShareProfile;->cipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    sget-object v4, Lcom/android/settings/wifi/WifiShareProfile;->key:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 697
    new-instance v2, Ljavax/crypto/CipherOutputStream;

    sget-object v3, Lcom/android/settings/wifi/WifiShareProfile;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v2
.end method

.method private initPreferences()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 295
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApIndexes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 296
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApCount:I

    .line 299
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 300
    sget-boolean v1, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiShareProfile"

    const-string v2, "Wifi is turned off. Hide the APs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 321
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 307
    .local v8, "preferenceScreen":Landroid/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 308
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    const v2, 0x7f0a058a

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 309
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 310
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 312
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 313
    .local v6, "apIndex":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->ssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->index:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->network:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareProfile;->currentApInfoMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;

    iget v5, v5, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->priority:I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 318
    .local v0, "temp_c":Lcom/android/settings/wifi/WifiShareProfileCandidateAP;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 320
    .end local v0    # "temp_c":Lcom/android/settings/wifi/WifiShareProfileCandidateAP;
    .end local v6    # "apIndex":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showAccessTimeoutAlertDialog(I)V
    .locals 5
    .param p1, "selectedApId"    # I

    .prologue
    .line 350
    move v0, p1

    .line 351
    .local v0, "apId":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 354
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a058c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0049

    new-instance v4, Lcom/android/settings/wifi/WifiShareProfile$6;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/wifi/WifiShareProfile$6;-><init>(Lcom/android/settings/wifi/WifiShareProfile;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a01cf

    new-instance v4, Lcom/android/settings/wifi/WifiShareProfile$5;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/wifi/WifiShareProfile$5;-><init>(Lcom/android/settings/wifi/WifiShareProfile;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiShareProfile$4;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/wifi/WifiShareProfile$4;-><init>(Lcom/android/settings/wifi/WifiShareProfile;I)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile;->dialog:Landroid/app/AlertDialog;

    .line 396
    return-void
.end method

.method private startWifiP2pDevicePicker()V
    .locals 2

    .prologue
    .line 631
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiP2pConnected:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mP2pConnectedOnSend:Z

    .line 633
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_DIRECT_DEVICE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 634
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 636
    const/16 v1, 0x21b1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiShareProfile;->startActivityForResult(Landroid/content/Intent;I)V

    .line 637
    return-void
.end method

.method private updateWifiP2pDeviceList()V
    .locals 8

    .prologue
    .line 640
    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareProfile;->P2pPeers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 641
    sget-boolean v5, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "WifiShareProfile"

    const-string v6, "updateWifiP2pDeviceList - No devices found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_0
    return-void

    .line 643
    :cond_1
    sget-boolean v5, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "WifiShareProfile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateWifiP2pDeviceList - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiShareProfile;->P2pPeers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " peer(s)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_2
    const/4 v1, 0x0

    .line 645
    .local v1, "deviceToDelete":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareProfile;->P2pPeers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 646
    .local v4, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    sget-boolean v5, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "WifiShareProfile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "       deviceName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", deviceAddress"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareProfile;->SelectedP2pPeers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v5, :cond_5

    .line 650
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 651
    .local v3, "msg":Landroid/os/Message;
    const/16 v5, 0xcc

    iput v5, v3, Landroid/os/Message;->what:I

    .line 653
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 654
    .local v0, "args":Landroid/os/Bundle;
    const-string v5, "deviceAddress"

    iget-object v6, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v5, "filePath"

    const-string v6, "/data/misc/wifi_share_profile/EncryptedToSend.conf"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v5, "senderName"

    iget-object v6, p0, Lcom/android/settings/wifi/WifiShareProfile;->mP2pThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v5, "SSIDs"

    iget-object v6, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedSSID:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v6, "disconnectOnCompletion"

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiShareProfile;->mP2pConnectedOnSend:Z

    if-nez v5, :cond_6

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 659
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 660
    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v5

    if-nez v5, :cond_7

    .line 661
    sget-boolean v5, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v5, :cond_4

    const-string v5, "WifiShareProfile"

    const-string v6, "SEC_COMMAND_ID_SEND_SELECTED_WIFI_PROFILE sent."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_4
    :goto_2
    move-object v1, v4

    .line 666
    sget-boolean v5, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "WifiShareProfile"

    const-string v6, "     HIT!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_5
    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareProfile;->SelectedP2pPeers:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 658
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v3    # "msg":Landroid/os/Message;
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 663
    :cond_7
    const-string v5, "WifiShareProfile"

    const-string v6, "SEC_COMMAND_ID_SEND_SELECTED_WIFI_PROFILE failed."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 442
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi_share_profile/EncryptedToSend.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 443
    .local v0, "encryptedFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    const-string v2, "com.android.settings.wifi.WifiShareProfileSelected"

    const-string v3, "/data/misc/wifi_share_profile/EncryptedToSend.conf"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    const-string v2, "com.android.settings.wifi.WifiShareProfileSelectedSSID"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedSSID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->onBackPressed()V

    .line 451
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mContext:Landroid/content/Context;

    .line 262
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->constructCurrentApInfoMap()V

    .line 263
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->initPreferences()V

    .line 264
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 400
    const/16 v1, 0x21b1

    if-ne p1, v1, :cond_1

    .line 401
    const/4 v1, -0x1

    if-ne v1, p2, :cond_2

    .line 402
    const-string v1, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 403
    .local v0, "deviceList":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    if-eqz v0, :cond_0

    .line 404
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->SelectedP2pPeers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 405
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->SelectedP2pPeers:Ljava/util/List;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 407
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->initPreferences()V

    .line 413
    .end local v0    # "deviceList":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    :cond_1
    :goto_0
    return-void

    .line 408
    :cond_2
    if-nez p2, :cond_1

    .line 409
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->SelectedP2pPeers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 410
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareProfile;->initPreferences()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    const v0, 0x7f070101

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiShareProfile;->addPreferencesFromResource(I)V

    .line 196
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiShareProfile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 201
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 203
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiShareProfile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 204
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->wifiIsEnabled:Z

    .line 206
    new-instance v0, Lcom/android/settings/wifi/WifiShareProfile$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiShareProfile$2;-><init>(Lcom/android/settings/wifi/WifiShareProfile;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 245
    new-instance v0, Lcom/android/settings/wifi/WifiShareProfile$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiShareProfile$3;-><init>(Lcom/android/settings/wifi/WifiShareProfile;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mPeerListListener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    .line 253
    const-string v0, "candidate_aps"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiShareProfile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfile;->getActivity()Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 255
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 423
    .line 427
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 270
    const v1, 0x7f040287

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 291
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 292
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 283
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 284
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 286
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 417
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 325
    instance-of v4, p2, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    if-eqz v4, :cond_2

    move-object v0, p2

    .line 326
    check-cast v0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    .line 329
    .local v0, "candidateAP":Lcom/android/settings/wifi/WifiShareProfileCandidateAP;
    const/4 v3, 0x0

    .local v3, "selectedIndex":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 330
    iget-object v5, v0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile;->mCandidateAPs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 334
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiShareProfile;->showAccessTimeoutAlertDialog(I)V

    .line 335
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApIndexes:Ljava/util/List;

    iget-object v5, v0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    iget v4, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApCount:I

    .line 338
    sget-boolean v4, Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z

    if-eqz v4, :cond_2

    .line 339
    const-string v4, "WifiShareProfile"

    const-string v5, "<selectedApIndexes>"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile;->selectedApIndexes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 341
    .local v2, "index":Ljava/lang/String;
    const-string v4, "WifiShareProfile"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 329
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "index":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 346
    .end local v0    # "candidateAP":Lcom/android/settings/wifi/WifiShareProfileCandidateAP;
    .end local v3    # "selectedIndex":I
    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 276
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 277
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 279
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 432
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 433
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 437
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 438
    return-void
.end method
