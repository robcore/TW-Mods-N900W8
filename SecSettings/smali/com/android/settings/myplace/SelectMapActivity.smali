.class public Lcom/android/settings/myplace/SelectMapActivity;
.super Lcom/google/android/maps/MapActivity;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;,
        Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;,
        Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCaptureHeight:I

.field private mCaptureWidth:I

.field private mCloseIcon:Landroid/widget/ImageButton;

.field private mCurrentLocation:Landroid/widget/ImageButton;

.field private mEditText:Landroid/widget/EditText;

.field private mGeo:Landroid/location/Geocoder;

.field private mIsTabletConfig:Z

.field private mLatitude:I

.field private mLocation:Ljava/lang/String;

.field private mLocationDisabledDialog:Landroid/app/AlertDialog;

.field private mLongitude:I

.field private mMapMode:I

.field protected mMapView:Lcom/google/android/maps/MapView;

.field private mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

.field private mResearch:Z

.field private mSaveButton:Landroid/widget/Button;

.field private mSearchButton:Landroid/widget/ImageButton;

.field private mSearchContainer:Landroid/view/View;

.field private mSearchIcon:Landroid/widget/ImageView;

.field mSearchRunnable:Ljava/lang/Runnable;

.field private mSearchViewContainer:Landroid/widget/FrameLayout;

.field private mSnippet:Ljava/lang/String;

.field private mcancelButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 80
    const-string v0, "SelectMapActivity"

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->TAG:Ljava/lang/String;

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapMode:I

    .line 102
    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchIcon:Landroid/widget/ImageView;

    .line 103
    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCloseIcon:Landroid/widget/ImageButton;

    .line 107
    iput v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 108
    iput v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 109
    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    .line 111
    iput-boolean v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mResearch:Z

    .line 474
    new-instance v0, Lcom/android/settings/myplace/SelectMapActivity$10;

    invoke-direct {v0, p0}, Lcom/android/settings/myplace/SelectMapActivity$10;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchRunnable:Ljava/lang/Runnable;

    .line 704
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->searchLocation()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/settings/myplace/SelectMapActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mResearch:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/myplace/SelectMapActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/myplace/SelectMapActivity;->getFromLocationName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/location/Geocoder;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/myplace/SelectMapActivity;D)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # D

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/myplace/SelectMapActivity;IILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/settings/myplace/SelectMapActivity;IIII)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/settings/myplace/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/myplace/SelectMapActivity;->updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/myplace/SelectMapActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mIsTabletConfig:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/myplace/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(Lcom/google/android/maps/GeoPoint;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings/myplace/SelectMapActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapMode:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/settings/myplace/SelectMapActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCloseIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->showLocationDisabledDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/myplace/SelectMapActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/myplace/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/SelectMapActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->setMyLocationOverlay()V

    return-void
.end method

.method private addMarker(IILjava/lang/String;)Z
    .locals 7
    .param p1, "lat"    # I
    .param p2, "lon"    # I
    .param p3, "snippet"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 546
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    .line 547
    .local v1, "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    .line 548
    .local v0, "itemizedOverlay":Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    invoke-direct {p0, p1, p2, v4, p3}, Lcom/android/settings/myplace/SelectMapActivity;->getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/google/android/maps/OverlayItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->addOverlay(Lcom/google/android/maps/OverlayItem;)V

    .line 550
    iput p1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 551
    iput p2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 552
    iput-object p3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    .line 555
    new-instance v2, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v2, p1, p2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 556
    .local v2, "point":Lcom/google/android/maps/GeoPoint;
    new-instance v3, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    new-array v4, v6, [Lcom/google/android/maps/GeoPoint;

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 558
    return v6
.end method

.method private convToDouble(I)D
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 533
    int-to-double v0, p1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private convToInt(D)I
    .locals 3
    .param p1, "d"    # D

    .prologue
    .line 529
    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0
.end method

.method private getFromLocationName(Ljava/lang/String;)Z
    .locals 20
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 433
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_1

    .line 434
    :cond_0
    const/16 v17, 0x0

    .line 471
    :goto_0
    return v17

    .line 437
    :cond_1
    new-instance v6, Landroid/location/Geocoder;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 438
    .local v6, "geo":Landroid/location/Geocoder;
    const v15, 0x55d4a80

    .local v15, "minLat":I
    const v13, -0x55d4a80

    .line 439
    .local v13, "maxLat":I
    const v16, 0xaba9500

    .local v16, "minLon":I
    const v14, -0xaba9500

    .line 442
    .local v14, "maxLon":I
    const/16 v17, 0x5

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 444
    .local v10, "loc":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_4

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v12

    .line 447
    .local v12, "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    .line 448
    .local v8, "itemizedOverlay":Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    invoke-virtual {v8}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    .line 450
    const/4 v4, 0x0

    .line 451
    .local v4, "addr":Landroid/location/Address;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_2

    .line 452
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "addr":Landroid/location/Address;
    check-cast v4, Landroid/location/Address;

    .line 453
    .restart local v4    # "addr":Landroid/location/Address;
    invoke-virtual {v4}, Landroid/location/Address;->getLatitude()D

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I

    move-result v9

    .line 454
    .local v9, "lat":I
    invoke-virtual {v4}, Landroid/location/Address;->getLongitude()D

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I

    move-result v11

    .line 455
    .local v11, "lon":I
    invoke-virtual {v4}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v9, v11, v1}, Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    .line 456
    invoke-static {v15, v9}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 457
    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 458
    move/from16 v0, v16

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 459
    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 451
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 461
    .end local v9    # "lat":I
    .end local v11    # "lon":I
    :cond_2
    if-eqz v4, :cond_3

    .line 462
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v13, v1, v14}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(IIII)Z

    .line 471
    .end local v4    # "addr":Landroid/location/Address;
    .end local v7    # "i":I
    .end local v8    # "itemizedOverlay":Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    .end local v10    # "loc":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v12    # "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    :cond_3
    :goto_2
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 465
    .restart local v10    # "loc":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a198a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 468
    .end local v10    # "loc":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v5

    .line 469
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/google/android/maps/OverlayItem;
    .locals 3
    .param p1, "latitude"    # I
    .param p2, "longitude"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "snippet"    # Ljava/lang/String;

    .prologue
    .line 562
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v1, p1, p2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 563
    .local v1, "point":Lcom/google/android/maps/GeoPoint;
    new-instance v0, Lcom/google/android/maps/OverlayItem;

    const-string v2, ""

    invoke-direct {v0, v1, v2, p4}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    .local v0, "overlay":Lcom/google/android/maps/OverlayItem;
    invoke-virtual {v0, p3}, Lcom/google/android/maps/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 565
    return-object v0
.end method

.method private initMarker()Z
    .locals 5

    .prologue
    .line 536
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    .line 538
    .local v2, "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 539
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 540
    .local v1, "itemizedOverlay":Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    const/4 v3, 0x1

    return v3
.end method

.method private moveToMarker(II)Z
    .locals 5
    .param p1, "lat"    # I
    .param p2, "lon"    # I

    .prologue
    const/4 v4, 0x1

    .line 578
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 579
    .local v0, "point":Lcom/google/android/maps/GeoPoint;
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 580
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 581
    new-instance v1, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    new-array v2, v4, [Lcom/google/android/maps/GeoPoint;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 582
    iput p1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 583
    iput p2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 584
    return v4
.end method

.method private moveToMarker(IIII)Z
    .locals 7
    .param p1, "minLat"    # I
    .param p2, "maxLat"    # I
    .param p3, "minLon"    # I
    .param p4, "maxLon"    # I

    .prologue
    const/4 v6, 0x1

    .line 588
    sub-int v0, p2, p1

    .line 589
    .local v0, "lat_span":I
    sub-int v1, p4, p3

    .line 590
    .local v1, "lon_span":I
    new-instance v2, Lcom/google/android/maps/GeoPoint;

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p1

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p3

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 591
    .local v2, "point":Lcom/google/android/maps/GeoPoint;
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 592
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 593
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 594
    new-instance v3, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    new-array v4, v6, [Lcom/google/android/maps/GeoPoint;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 595
    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    iput v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 596
    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    iput v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 597
    return v6
.end method

.method private moveToMarker(Lcom/google/android/maps/GeoPoint;)Z
    .locals 4
    .param p1, "point"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    const/4 v3, 0x1

    .line 569
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 570
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 571
    new-instance v0, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    new-array v1, v3, [Lcom/google/android/maps/GeoPoint;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 572
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 573
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 574
    return v3
.end method

.method private searchLocation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 412
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "location":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mResearch:Z

    if-eqz v2, :cond_0

    .line 422
    :cond_2
    iput-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 423
    iput-boolean v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mResearch:Z

    .line 426
    new-instance v2, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 428
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/SelectMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 429
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setMyLocationOverlay()V
    .locals 4

    .prologue
    .line 843
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-nez v2, :cond_0

    .line 844
    new-instance v2, Lcom/google/android/maps/MyLocationOverlay;

    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-direct {v2, p0, v3}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    .line 846
    :cond_0
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v2}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    .line 849
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    .line 850
    .local v1, "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    if-eqz v1, :cond_1

    .line 851
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    .line 852
    .local v0, "itemizedOverlay":Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    if-eqz v0, :cond_1

    .line 853
    invoke-virtual {v0}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    .line 857
    .end local v0    # "itemizedOverlay":Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    new-instance v3, Lcom/android/settings/myplace/SelectMapActivity$11;

    invoke-direct {v3, p0}, Lcom/android/settings/myplace/SelectMapActivity$11;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/maps/MyLocationOverlay;->runOnFirstFix(Ljava/lang/Runnable;)Z

    .line 871
    return-void
.end method

.method private showLocationDisabledDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 976
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 978
    iput-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    .line 981
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a198c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a198d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0aa5

    new-instance v2, Lcom/android/settings/myplace/SelectMapActivity$14;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/SelectMapActivity$14;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a01cf

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    .line 993
    return-void
.end method

.method private updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 13
    .param p1, "point"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    .line 667
    const-string v12, ""

    .line 668
    .local v12, "location":Ljava/lang/String;
    const/4 v9, 0x0

    .line 671
    .local v9, "data":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fa_FA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 672
    new-instance v2, Ljava/util/Locale;

    const-string v3, "fa_IR"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 678
    :cond_0
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 679
    .local v1, "geoCoder":Landroid/location/Geocoder;
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/myplace/SelectMapActivity;->convToDouble(I)D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->convToDouble(I)D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v9

    .line 681
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 682
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 684
    .local v0, "address":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v8

    .line 685
    .local v8, "addressLines":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-gt v11, v8, :cond_3

    .line 686
    invoke-virtual {v0, v11}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v7

    .line 687
    .local v7, "addressLine":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 688
    if-nez v11, :cond_2

    .line 689
    move-object v12, v7

    .line 685
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 691
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_1

    .line 697
    .end local v0    # "address":Landroid/location/Address;
    .end local v1    # "geoCoder":Landroid/location/Geocoder;
    .end local v7    # "addressLine":Ljava/lang/String;
    .end local v8    # "addressLines":I
    .end local v11    # "i":I
    :catch_0
    move-exception v10

    .line 698
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 701
    .end local v10    # "e":Ljava/io/IOException;
    :cond_3
    return-object v12
.end method


# virtual methods
.method protected captureMap()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 601
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4, v3}, Lcom/google/android/maps/MapView;->setDrawingCacheEnabled(Z)V

    .line 602
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 604
    .local v0, "saved":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 605
    .local v1, "x":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 606
    .local v2, "y":I
    if-gez v2, :cond_0

    .line 607
    const/4 v2, 0x0

    .line 613
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureHeight:I

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_2

    .line 614
    :cond_1
    const/4 v3, 0x0

    .line 616
    :goto_0
    return v3

    .line 615
    :cond_2
    iget v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureWidth:I

    iget v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureHeight:I

    invoke-static {v0, v1, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public configureActionBar()V
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    .line 338
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 339
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f040064

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 340
    return-void
.end method

.method protected doFinish()V
    .locals 5

    .prologue
    .line 620
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 621
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 624
    .local v1, "result":Landroid/content/Intent;
    const-string v2, "latitude"

    iget v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 625
    const-string v2, "longitude"

    iget v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    const-string v2, "location"

    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->captureMap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 636
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 637
    const-string v2, "map"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 640
    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/myplace/SelectMapActivity;->setResult(ILandroid/content/Intent;)V

    .line 641
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->finish()V

    .line 642
    return-void
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 944
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 945
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->invalidateOptionsMenu()V

    .line 946
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 132
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    :try_start_0
    const-string v4, "android.os.AsyncTask"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v6, 0x7f0a0954

    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setTitle(I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "location"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 144
    const-string v4, "mode"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapMode:I

    .line 145
    const-string v4, "map_latitude"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 146
    const-string v4, "map_longtitude"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 147
    const v4, 0x7f0401ec

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->setContentView(I)V

    .line 149
    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mIsTabletConfig:Z

    .line 151
    new-instance v4, Landroid/location/Geocoder;

    invoke-direct {v4, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    .line 153
    const v4, 0x7f10045d

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/maps/MapView;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    .line 154
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4, v7}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 156
    const v4, 0x7f100457

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchContainer:Landroid/view/View;

    .line 157
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 158
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 159
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchContainer:Landroid/view/View;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$1;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$1;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 172
    const v4, 0x7f100459

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchIcon:Landroid/widget/ImageView;

    .line 173
    const v4, 0x7f10045a

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCloseIcon:Landroid/widget/ImageButton;

    .line 174
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCloseIcon:Landroid/widget/ImageButton;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$2;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$2;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v4, 0x7f100458

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchViewContainer:Landroid/widget/FrameLayout;

    .line 200
    const v4, 0x7f1003d0

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    .line 201
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    const v6, 0x10000003

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 202
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$3;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$3;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    const-wide/16 v8, 0x64

    invoke-virtual {v4, v6, v8, v9}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$4;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$4;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 220
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$5;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$5;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 248
    new-instance v3, Landroid/text/SpannableStringBuilder;

    const-string v4, "       "

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 249
    .local v3, "ssb":Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    .line 250
    .local v2, "mSearchHint":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 253
    :cond_0
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$6;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$6;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 269
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    const-string v6, "My_Location"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 270
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 271
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x1060000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 275
    :goto_1
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 277
    .local v1, "length":I
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    if-lez v1, :cond_6

    .end local v1    # "length":I
    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 280
    :cond_1
    const v4, 0x7f10045b

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    .line 283
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/android/settings/myplace/SelectMapActivity$7;

    invoke-direct {v5, p0}, Lcom/android/settings/myplace/SelectMapActivity$7;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    const v4, 0x7f10045c

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCurrentLocation:Landroid/widget/ImageButton;

    .line 295
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCurrentLocation:Landroid/widget/ImageButton;

    new-instance v5, Lcom/android/settings/myplace/SelectMapActivity$8;

    invoke-direct {v5, p0}, Lcom/android/settings/myplace/SelectMapActivity$8;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f01bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureHeight:I

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f01bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureWidth:I

    .line 324
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 325
    const-string v4, ""

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 328
    :cond_2
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    const-string v5, "My_Location"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 329
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->setMyLocationOverlay()V

    .line 332
    :cond_3
    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->configureActionBar()V

    .line 334
    :cond_4
    return-void

    .line 273
    :cond_5
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto/16 :goto_1

    .restart local v1    # "length":I
    :cond_6
    move v1, v5

    .line 277
    goto :goto_2

    .line 136
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "length":I
    .end local v2    # "mSearchHint":Ljava/lang/CharSequence;
    .end local v3    # "ssb":Landroid/text/SpannableStringBuilder;
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 889
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 891
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 893
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_1

    .line 894
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 895
    .local v0, "customView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 896
    const v2, 0x7f10010a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mcancelButton:Landroid/widget/Button;

    .line 897
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mcancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/myplace/SelectMapActivity$12;

    invoke-direct {v3, p0}, Lcom/android/settings/myplace/SelectMapActivity$12;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 907
    const v2, 0x7f10010b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSaveButton:Landroid/widget/Button;

    .line 908
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 909
    .local v1, "mEditboxText":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 910
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 912
    :cond_0
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSaveButton:Landroid/widget/Button;

    const v3, 0x7f0a0df2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 913
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSaveButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/myplace/SelectMapActivity$13;

    invoke-direct {v3, p0}, Lcom/android/settings/myplace/SelectMapActivity$13;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    .end local v0    # "customView":Landroid/view/View;
    .end local v1    # "mEditboxText":Ljava/lang/String;
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapMode:I

    if-nez v2, :cond_2

    .line 936
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 937
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 939
    :cond_2
    return v5

    .line 926
    :cond_3
    const v2, 0x7f0a01cf

    invoke-interface {p1, v4, v4, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 928
    const v2, 0x7f0a11de

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 931
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02011b

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 932
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02011f

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 402
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    .line 408
    :goto_0
    return v0

    .line 404
    :cond_0
    const/16 v1, 0x54

    if-ne p1, v1, :cond_1

    .line 405
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->searchLocation()V

    goto :goto_0

    .line 408
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 950
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 971
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 952
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->finish()V

    goto :goto_0

    .line 956
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-eqz v1, :cond_0

    .line 957
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 959
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->captureMap()Z

    .line 960
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->doFinish()V

    goto :goto_0

    .line 964
    :sswitch_2
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-eqz v1, :cond_1

    .line 965
    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 966
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 968
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->finish()V

    goto :goto_0

    .line 950
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
        0x7f10010a -> :sswitch_2
        0x7f10010b -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 375
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 376
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 380
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 393
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 394
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 395
    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 396
    const-string v0, "longitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 397
    const-string v0, "snippet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    .line 398
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 344
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 346
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->initMarker()Z

    .line 348
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    if-eqz v0, :cond_3

    .line 349
    :cond_0
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    const-string v2, "here"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    .line 350
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(II)Z

    .line 367
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 368
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    .line 369
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(II)Z

    .line 371
    :cond_2
    return-void

    .line 352
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/myplace/SelectMapActivity$9;

    invoke-direct {v1, p0}, Lcom/android/settings/myplace/SelectMapActivity$9;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 359
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    const-string v1, "My_Location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-nez v0, :cond_4

    .line 361
    new-instance v0, Lcom/google/android/maps/MyLocationOverlay;

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    .line 363
    :cond_4
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 384
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 385
    const-string v0, "location"

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v0, "latitude"

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 387
    const-string v0, "longitude"

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 388
    const-string v0, "snippet"

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method
