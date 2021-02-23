.class public Lcom/android/settings/MasterClear;
.super Landroid/app/Fragment;
.source "MasterClear.java"


# static fields
.field private static final mAppLabelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private static rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;


# instance fields
.field private mCanEraseExternalOnFuseSystem:Z

.field private mContentView:Landroid/view/View;

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mNotTouched:Z

.field private mPinConfirmed:Z

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 554
    new-instance v0, Lcom/android/settings/MasterClear$4;

    invoke-direct {v0}, Lcom/android/settings/MasterClear$4;-><init>()V

    sput-object v0, Lcom/android/settings/MasterClear;->mAppLabelComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MasterClear;->mNotTouched:Z

    .line 207
    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    .line 593
    new-instance v0, Lcom/android/settings/MasterClear$5;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$5;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/MasterClear;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClear;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClear;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClear;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->runRestrictionsChallenge()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/MasterClear;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClear;
    .param p1, "x1"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/MasterClear;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClear;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClear;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/MasterClear;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClear;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/settings/MasterClear;->mNotTouched:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/MasterClear;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClear;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/settings/MasterClear;->mNotTouched:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/MasterClear;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClear;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private addDescriptionForRemovingPreloadApp()V
    .locals 37

    .prologue
    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v34, v0

    const v35, 0x7f100267

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 451
    .local v12, "description":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v34, v0

    const v35, 0x7f100268

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 452
    .local v6, "apps":Landroid/widget/LinearLayout;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 454
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 456
    .local v11, "context":Landroid/content/Context;
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v31, "pkg_names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v22, 0x0

    .line 458
    .local v22, "instream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 460
    .local v8, "buffreader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v23, Ljava/io/FileInputStream;

    new-instance v34, Ljava/io/File;

    const-string v35, "/system/etc/removable_preload.txt"

    invoke-direct/range {v34 .. v35}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    .end local v22    # "instream":Ljava/io/InputStream;
    .local v23, "instream":Ljava/io/InputStream;
    :try_start_1
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v34, Ljava/io/InputStreamReader;

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v34

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 464
    .end local v8    # "buffreader":Ljava/io/BufferedReader;
    .local v9, "buffreader":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v26

    .local v26, "line":Ljava/lang/String;
    if-eqz v26, :cond_5

    .line 465
    const-string v34, "name="

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_1

    .line 466
    const-string v34, "name=\'"

    const-string v35, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v34

    const-string v35, "\'"

    const-string v36, ""

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 469
    .end local v26    # "line":Ljava/lang/String;
    :catch_0
    move-exception v14

    move-object v8, v9

    .end local v9    # "buffreader":Ljava/io/BufferedReader;
    .restart local v8    # "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .line 470
    .end local v23    # "instream":Ljava/io/InputStream;
    .local v14, "e1":Ljava/io/FileNotFoundException;
    .restart local v22    # "instream":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 475
    if-eqz v8, :cond_2

    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 480
    :cond_2
    :goto_2
    if-eqz v22, :cond_3

    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 486
    .end local v14    # "e1":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 487
    .local v5, "N":I
    if-nez v5, :cond_b

    .line 552
    :cond_4
    :goto_4
    return-void

    .line 475
    .end local v5    # "N":I
    .end local v8    # "buffreader":Ljava/io/BufferedReader;
    .end local v22    # "instream":Ljava/io/InputStream;
    .restart local v9    # "buffreader":Ljava/io/BufferedReader;
    .restart local v23    # "instream":Ljava/io/InputStream;
    .restart local v26    # "line":Ljava/lang/String;
    :cond_5
    if-eqz v9, :cond_6

    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 480
    :cond_6
    :goto_5
    if-eqz v23, :cond_7

    :try_start_7
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_7
    move-object v8, v9

    .end local v9    # "buffreader":Ljava/io/BufferedReader;
    .restart local v8    # "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .line 483
    .end local v23    # "instream":Ljava/io/InputStream;
    .restart local v22    # "instream":Ljava/io/InputStream;
    goto :goto_3

    .line 476
    .end local v8    # "buffreader":Ljava/io/BufferedReader;
    .end local v22    # "instream":Ljava/io/InputStream;
    .restart local v9    # "buffreader":Ljava/io/BufferedReader;
    .restart local v23    # "instream":Ljava/io/InputStream;
    :catch_1
    move-exception v16

    .line 477
    .local v16, "e_reader":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 481
    .end local v16    # "e_reader":Ljava/io/IOException;
    :catch_2
    move-exception v15

    .line 482
    .local v15, "e_input":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    .end local v9    # "buffreader":Ljava/io/BufferedReader;
    .restart local v8    # "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .line 484
    .end local v23    # "instream":Ljava/io/InputStream;
    .restart local v22    # "instream":Ljava/io/InputStream;
    goto :goto_3

    .line 476
    .end local v15    # "e_input":Ljava/io/IOException;
    .end local v26    # "line":Ljava/lang/String;
    .restart local v14    # "e1":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v16

    .line 477
    .restart local v16    # "e_reader":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 481
    .end local v16    # "e_reader":Ljava/io/IOException;
    :catch_4
    move-exception v15

    .line 482
    .restart local v15    # "e_input":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 471
    .end local v14    # "e1":Ljava/io/FileNotFoundException;
    .end local v15    # "e_input":Ljava/io/IOException;
    :catch_5
    move-exception v13

    .line 472
    .local v13, "e":Ljava/io/IOException;
    :goto_6
    :try_start_8
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 475
    if-eqz v8, :cond_8

    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 480
    :cond_8
    :goto_7
    if-eqz v22, :cond_3

    :try_start_a
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_3

    .line 481
    :catch_6
    move-exception v15

    .line 482
    .restart local v15    # "e_input":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 476
    .end local v15    # "e_input":Ljava/io/IOException;
    :catch_7
    move-exception v16

    .line 477
    .restart local v16    # "e_reader":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 474
    .end local v13    # "e":Ljava/io/IOException;
    .end local v16    # "e_reader":Ljava/io/IOException;
    :catchall_0
    move-exception v34

    .line 475
    :goto_8
    if-eqz v8, :cond_9

    :try_start_b
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 480
    :cond_9
    :goto_9
    if-eqz v22, :cond_a

    :try_start_c
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 483
    :cond_a
    :goto_a
    throw v34

    .line 476
    :catch_8
    move-exception v16

    .line 477
    .restart local v16    # "e_reader":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 481
    .end local v16    # "e_reader":Ljava/io/IOException;
    :catch_9
    move-exception v15

    .line 482
    .restart local v15    # "e_input":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 491
    .end local v15    # "e_input":Ljava/io/IOException;
    .restart local v5    # "N":I
    :cond_b
    const-string v34, "layout_inflater"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/LayoutInflater;

    .line 495
    .local v21, "inflater":Landroid/view/LayoutInflater;
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v33, "sec_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v29, "other_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_b
    move/from16 v0, v18

    if-ge v0, v5, :cond_11

    .line 498
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    .line 500
    .local v32, "pm":Landroid/content/pm/PackageManager;
    :try_start_d
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_a

    move-result-object v30

    .line 505
    .local v30, "pkg_info":Landroid/content/pm/PackageInfo;
    const/16 v20, 0x0

    .line 506
    .local v20, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 509
    const v34, 0x7f040116

    const/16 v35, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 511
    .local v10, "child":Landroid/widget/TextView;
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    if-eqz v20, :cond_c

    .line 513
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0f023e

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 514
    .local v17, "height":I
    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v17

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 515
    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 518
    .end local v17    # "height":I
    :cond_c
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    const-string v35, "\\."

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 519
    .local v28, "names":[Ljava/lang/String;
    const/16 v24, 0x0

    .line 520
    .local v24, "is_sec_apps":Z
    move-object/from16 v7, v28

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v25, v0

    .local v25, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_c
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_e

    aget-object v27, v7, v19

    .line 521
    .local v27, "name":Ljava/lang/String;
    const-string v34, "sec"

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_d

    const-string v34, "samsung"

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_f

    .line 522
    :cond_d
    const/16 v24, 0x1

    .line 526
    .end local v27    # "name":Ljava/lang/String;
    :cond_e
    if-eqz v24, :cond_10

    .line 527
    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v10    # "child":Landroid/widget/TextView;
    .end local v19    # "i$":I
    .end local v20    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v24    # "is_sec_apps":Z
    .end local v25    # "len$":I
    .end local v28    # "names":[Ljava/lang/String;
    .end local v30    # "pkg_info":Landroid/content/pm/PackageInfo;
    :goto_d
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_b

    .line 501
    :catch_a
    move-exception v13

    .line 502
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_d

    .line 520
    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v10    # "child":Landroid/widget/TextView;
    .restart local v19    # "i$":I
    .restart local v20    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v24    # "is_sec_apps":Z
    .restart local v25    # "len$":I
    .restart local v27    # "name":Ljava/lang/String;
    .restart local v28    # "names":[Ljava/lang/String;
    .restart local v30    # "pkg_info":Landroid/content/pm/PackageInfo;
    :cond_f
    add-int/lit8 v19, v19, 0x1

    goto :goto_c

    .line 529
    .end local v27    # "name":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 533
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v10    # "child":Landroid/widget/TextView;
    .end local v19    # "i$":I
    .end local v20    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v24    # "is_sec_apps":Z
    .end local v25    # "len$":I
    .end local v28    # "names":[Ljava/lang/String;
    .end local v30    # "pkg_info":Landroid/content/pm/PackageInfo;
    .end local v32    # "pm":Landroid/content/pm/PackageManager;
    :cond_11
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-nez v34, :cond_12

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-eqz v34, :cond_4

    .line 537
    :cond_12
    sget-object v34, Lcom/android/settings/MasterClear;->mAppLabelComparator:Ljava/util/Comparator;

    invoke-static/range {v33 .. v34}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 538
    sget-object v34, Lcom/android/settings/MasterClear;->mAppLabelComparator:Ljava/util/Comparator;

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 539
    if-eqz v6, :cond_14

    .line 540
    const/16 v18, 0x0

    :goto_e
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v18

    move/from16 v1, v34

    if-ge v0, v1, :cond_13

    .line 541
    move-object/from16 v0, v33

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 540
    add-int/lit8 v18, v18, 0x1

    goto :goto_e

    .line 543
    :cond_13
    const/16 v18, 0x0

    :goto_f
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v18

    move/from16 v1, v34

    if-ge v0, v1, :cond_14

    .line 544
    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 543
    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    .line 547
    :cond_14
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->clear()V

    .line 548
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V

    .line 550
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 551
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 474
    .end local v5    # "N":I
    .end local v18    # "i":I
    .end local v21    # "inflater":Landroid/view/LayoutInflater;
    .end local v22    # "instream":Ljava/io/InputStream;
    .end local v29    # "other_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    .end local v33    # "sec_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    .restart local v23    # "instream":Ljava/io/InputStream;
    :catchall_1
    move-exception v34

    move-object/from16 v22, v23

    .end local v23    # "instream":Ljava/io/InputStream;
    .restart local v22    # "instream":Ljava/io/InputStream;
    goto/16 :goto_8

    .end local v8    # "buffreader":Ljava/io/BufferedReader;
    .end local v22    # "instream":Ljava/io/InputStream;
    .restart local v9    # "buffreader":Ljava/io/BufferedReader;
    .restart local v23    # "instream":Ljava/io/InputStream;
    :catchall_2
    move-exception v34

    move-object v8, v9

    .end local v9    # "buffreader":Ljava/io/BufferedReader;
    .restart local v8    # "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .end local v23    # "instream":Ljava/io/InputStream;
    .restart local v22    # "instream":Ljava/io/InputStream;
    goto/16 :goto_8

    .line 471
    .end local v22    # "instream":Ljava/io/InputStream;
    .restart local v23    # "instream":Ljava/io/InputStream;
    :catch_b
    move-exception v13

    move-object/from16 v22, v23

    .end local v23    # "instream":Ljava/io/InputStream;
    .restart local v22    # "instream":Ljava/io/InputStream;
    goto/16 :goto_6

    .end local v8    # "buffreader":Ljava/io/BufferedReader;
    .end local v22    # "instream":Ljava/io/InputStream;
    .restart local v9    # "buffreader":Ljava/io/BufferedReader;
    .restart local v23    # "instream":Ljava/io/InputStream;
    :catch_c
    move-exception v13

    move-object v8, v9

    .end local v9    # "buffreader":Ljava/io/BufferedReader;
    .restart local v8    # "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .end local v23    # "instream":Ljava/io/InputStream;
    .restart local v22    # "instream":Ljava/io/InputStream;
    goto/16 :goto_6

    .line 469
    :catch_d
    move-exception v14

    goto/16 :goto_1

    .end local v22    # "instream":Ljava/io/InputStream;
    .restart local v23    # "instream":Ljava/io/InputStream;
    :catch_e
    move-exception v14

    move-object/from16 v22, v23

    .end local v23    # "instream":Ljava/io/InputStream;
    .restart local v22    # "instream":Ljava/io/InputStream;
    goto/16 :goto_1
.end method

.method private checkReactivationLock()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 630
    const/4 v1, 0x0

    .line 631
    .local v1, "ret":Z
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 632
    sget-object v3, Lcom/android/settings/MasterClear;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    .line 633
    .local v0, "lmmFlag":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 634
    const/4 v1, 0x1

    .line 639
    const-string v2, "MasterClear"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LMM[getReqiredAuthFlag] in Check= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "lmmFlag":I
    :cond_0
    move v2, v1

    .line 642
    :cond_1
    return v2
.end method

.method private establishInitialState()V
    .locals 15

    .prologue
    .line 275
    iget-object v13, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v14, 0x7f10025c

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ScrollView;

    iput-object v13, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    .line 276
    iget-object v13, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v14, 0x7f100269

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    iput-object v13, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    .line 277
    iget-object v13, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v14, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v13, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v14, 0x7f100263

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    iput-object v13, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 279
    iget-object v13, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v14, 0x7f100264

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    iput-object v13, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 288
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    .line 289
    .local v4, "isExtStorageEmulated":Z
    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->isExtStorageEncrypted()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 291
    :cond_0
    iget-object v13, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object v13, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v14, 0x7f100262

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 294
    .local v2, "externalOption":Landroid/view/View;
    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v13, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v14, 0x7f10025e

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 297
    .local v0, "externalAlsoErased":Landroid/view/View;
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 300
    const-string v13, "ro.sec.fle.encryption"

    const-string v14, "false"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 301
    iget-object v13, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v14, 0x7f10025f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 302
    .local v1, "externalAlsoErasedSdCardKey":Landroid/view/View;
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 308
    .end local v1    # "externalAlsoErasedSdCardKey":Landroid/view/View;
    :cond_1
    iget-object v14, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    if-nez v4, :cond_7

    const/4 v13, 0x1

    :goto_0
    invoke-virtual {v14, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 321
    .end local v0    # "externalAlsoErased":Landroid/view/View;
    .end local v2    # "externalOption":Landroid/view/View;
    :goto_1
    const-string v13, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isConceptForSPR()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isConceptForVZW()Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_2
    if-eqz v4, :cond_4

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "storage"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageManager;

    .line 323
    .local v9, "storageManager":Landroid/os/storage/StorageManager;
    iget-object v13, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v14, 0x7f100265

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 324
    .local v7, "mExternalTitle":Landroid/widget/TextView;
    const v13, 0x7f0a07e9

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(I)V

    .line 325
    iget-object v13, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v14, 0x7f100266

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 326
    .local v6, "mExternalSummary":Landroid/widget/TextView;
    const v13, 0x7f0a07eb

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(I)V

    .line 327
    invoke-virtual {v9}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v10

    .line 328
    .local v10, "storageVolumes":[Landroid/os/storage/StorageVolume;
    array-length v5, v10

    .line 329
    .local v5, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v5, :cond_3

    .line 330
    aget-object v13, v10, v3

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v11

    .line 331
    .local v11, "subsystem":Ljava/lang/String;
    aget-object v13, v10, v3

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 332
    .local v8, "state":Ljava/lang/String;
    if-eqz v11, :cond_9

    .line 333
    const-string v13, "sd"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "mounted"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    aget-object v13, v10, v3

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 334
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    .line 339
    .end local v8    # "state":Ljava/lang/String;
    .end local v11    # "subsystem":Ljava/lang/String;
    :cond_3
    iget-boolean v13, p0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    if-eqz v13, :cond_4

    .line 340
    iget-object v13, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object v13, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v14, Lcom/android/settings/MasterClear$3;

    invoke-direct {v14, p0}, Lcom/android/settings/MasterClear$3;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    .end local v3    # "i":I
    .end local v5    # "length":I
    .end local v6    # "mExternalSummary":Landroid/widget/TextView;
    .end local v7    # "mExternalTitle":Landroid/widget/TextView;
    .end local v9    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v10    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :cond_4
    iget-object v13, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v14, 0x7f10025d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 352
    .local v12, "tv":Landroid/widget/TextView;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 353
    const v13, 0x7f0a1e35

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 356
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->loadAccountList()V

    .line 358
    const-string v13, "ro.config.rm_preload_enabled"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 359
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->addDescriptionForRemovingPreloadApp()V

    .line 361
    :cond_6
    return-void

    .line 308
    .end local v12    # "tv":Landroid/widget/TextView;
    .restart local v0    # "externalAlsoErased":Landroid/view/View;
    .restart local v2    # "externalOption":Landroid/view/View;
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 310
    .end local v0    # "externalAlsoErased":Landroid/view/View;
    .end local v2    # "externalOption":Landroid/view/View;
    :cond_8
    iget-object v13, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v14, Lcom/android/settings/MasterClear$2;

    invoke-direct {v14, p0}, Lcom/android/settings/MasterClear$2;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 329
    .restart local v3    # "i":I
    .restart local v5    # "length":I
    .restart local v6    # "mExternalSummary":Landroid/widget/TextView;
    .restart local v7    # "mExternalTitle":Landroid/widget/TextView;
    .restart local v8    # "state":Ljava/lang/String;
    .restart local v9    # "storageManager":Landroid/os/storage/StorageManager;
    .restart local v10    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    .restart local v11    # "subsystem":Ljava/lang/String;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 364
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "state":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadAccountList()V
    .locals 26

    .prologue
    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f100260

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 370
    .local v9, "accountsLabel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f100261

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 371
    .local v12, "contents":Landroid/widget/LinearLayout;
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v13

    .line 375
    .local v13, "context":Landroid/content/Context;
    invoke-static {v13}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v22

    .line 376
    .local v22, "mgr":Landroid/accounts/AccountManager;
    invoke-virtual/range {v22 .. v22}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v8

    .line 377
    .local v8, "accounts":[Landroid/accounts/Account;
    array-length v6, v8

    .line 378
    .local v6, "N":I
    if-nez v6, :cond_0

    .line 379
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 380
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 427
    :goto_0
    return-void

    .line 384
    :cond_0
    const-string v23, "layout_inflater"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/LayoutInflater;

    .line 387
    .local v20, "inflater":Landroid/view/LayoutInflater;
    invoke-static {v13}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v15

    .line 388
    .local v15, "descs":[Landroid/accounts/AuthenticatorDescription;
    array-length v5, v15

    .line 390
    .local v5, "M":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v6, :cond_6

    .line 391
    aget-object v7, v8, v18

    .line 392
    .local v7, "account":Landroid/accounts/Account;
    const/4 v14, 0x0

    .line 393
    .local v14, "desc":Landroid/accounts/AuthenticatorDescription;
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_2
    move/from16 v0, v21

    if-ge v0, v5, :cond_1

    .line 394
    iget-object v0, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v24, v15, v21

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 395
    aget-object v14, v15, v21

    .line 399
    :cond_1
    if-nez v14, :cond_3

    .line 400
    const-string v23, "MasterClear"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "No descriptor for account name="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " type="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 393
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 404
    :cond_3
    const/16 v19, 0x0

    .line 406
    .local v19, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget v0, v14, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 407
    iget-object v0, v14, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v10

    .line 408
    .local v10, "authContext":Landroid/content/Context;
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    iget v0, v14, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 414
    .end local v10    # "authContext":Landroid/content/Context;
    :cond_4
    :goto_4
    const v23, 0x7f040116

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v12, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 416
    .local v11, "child":Landroid/widget/TextView;
    iget-object v0, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    if-eqz v19, :cond_5

    .line 418
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0f023e

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 419
    .local v17, "height":I
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v17

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 420
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 422
    .end local v17    # "height":I
    :cond_5
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 410
    .end local v11    # "child":Landroid/widget/TextView;
    :catch_0
    move-exception v16

    .line 411
    .local v16, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v23, "MasterClear"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "No icon for account type "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v14, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 425
    .end local v7    # "account":Landroid/accounts/Account;
    .end local v14    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v16    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v19    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v21    # "j":I
    :cond_6
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 426
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    const/4 v3, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 127
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    invoke-virtual {v1, p1, v3, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private runRestrictionsChallenge()Z
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RESTRICTIONS_CHALLENGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x38

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MasterClear;->startActivityForResult(Landroid/content/Intent;I)V

    .line 137
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showFinalConfirmation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 188
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 189
    .local v0, "preference":Landroid/preference/Preference;
    const-class v1, Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 190
    const v1, 0x7f0a07e2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 191
    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "erase_sd"

    iget-object v3, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "can_erase_sd_on_fuse"

    iget-boolean v3, p0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1, v4, v0}, Lcom/android/settings/SettingsActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v4, v0}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0x3eb

    const/4 v2, -0x1

    .line 144
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 146
    const/16 v1, 0x38

    if-ne p1, v1, :cond_1

    .line 147
    if-ne p2, v2, :cond_0

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    const/16 v1, 0x37

    if-eq p1, v1, :cond_2

    if-ne p1, v3, :cond_0

    .line 157
    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 159
    :sswitch_0
    if-ne p2, v2, :cond_4

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->checkReactivationLock()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "com.osp.app.signin"

    const-string v2, "com.osp.app.signin.UserValidateCheck"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v1, "MODE"

    const-string v2, "REMOTE_CONTROLS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/MasterClear;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 166
    .end local v0    # "mIntent":Landroid/content/Intent;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 169
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0

    .line 173
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    if-ne p2, v2, :cond_5

    .line 175
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 177
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0

    .line 157
    nop

    :sswitch_data_0
    .sparse-switch
        0x37 -> :sswitch_0
        0x3eb -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 432
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    :cond_0
    const v0, 0x7f040118

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 446
    :goto_0
    return-object v0

    .line 438
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/MasterClear;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    .line 442
    :cond_2
    const v0, 0x7f040115

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MasterClear;->mNotTouched:Z

    .line 445
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 446
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 590
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 591
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 563
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 566
    iget-boolean v3, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    if-eqz v3, :cond_0

    .line 567
    iput-boolean v2, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    .line 568
    const/16 v3, 0x37

    invoke-direct {p0, v3}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 569
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    .line 574
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v5, "isFactoryResetAllowed"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 575
    .local v0, "isFactoryResetAllowed":I
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 576
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    if-ne v0, v1, :cond_3

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 580
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v1, :cond_2

    .line 581
    iget-object v1, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 583
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 576
    goto :goto_0
.end method
