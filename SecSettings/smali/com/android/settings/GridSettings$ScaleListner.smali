.class Lcom/android/settings/GridSettings$ScaleListner;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "GridSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GridSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListner"
.end annotation


# instance fields
.field private scale:F

.field final synthetic this$0:Lcom/android/settings/GridSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/GridSettings;)V
    .locals 1

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/settings/GridSettings$ScaleListner;->this$0:Lcom/android/settings/GridSettings;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 565
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/GridSettings$ScaleListner;->scale:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/GridSettings;
    .param p2, "x1"    # Lcom/android/settings/GridSettings$1;

    .prologue
    .line 564
    invoke-direct {p0, p1}, Lcom/android/settings/GridSettings$ScaleListner;-><init>(Lcom/android/settings/GridSettings;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 570
    iget v0, p0, Lcom/android/settings/GridSettings$ScaleListner;->scale:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/GridSettings$ScaleListner;->scale:F

    .line 571
    const/high16 v0, 0x3f000000    # 0.5f

    iget v1, p0, Lcom/android/settings/GridSettings$ScaleListner;->scale:F

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/settings/GridSettings$ScaleListner;->scale:F

    .line 572
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/settings/GridSettings$ScaleListner;->this$0:Lcom/android/settings/GridSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/GridSettings;->access$302(Lcom/android/settings/GridSettings;Z)Z

    .line 579
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 585
    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 586
    .local v0, "f1":Ljava/lang/Float;
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 587
    .local v1, "f2":Ljava/lang/Float;
    iget v2, p0, Lcom/android/settings/GridSettings$ScaleListner;->scale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    iget-object v2, p0, Lcom/android/settings/GridSettings$ScaleListner;->this$0:Lcom/android/settings/GridSettings;

    iget-object v2, v2, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    if-eqz v2, :cond_0

    .line 589
    iget-object v2, p0, Lcom/android/settings/GridSettings$ScaleListner;->this$0:Lcom/android/settings/GridSettings;

    iget-object v2, v2, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings/grid/GridSettingsFragment;->expandAll()V

    .line 595
    :cond_0
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/settings/GridSettings$ScaleListner;->scale:F

    .line 596
    iget-object v2, p0, Lcom/android/settings/GridSettings$ScaleListner;->this$0:Lcom/android/settings/GridSettings;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/GridSettings;->access$302(Lcom/android/settings/GridSettings;Z)Z

    .line 597
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 598
    return-void

    .line 590
    :cond_1
    iget v2, p0, Lcom/android/settings/GridSettings$ScaleListner;->scale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 591
    iget-object v2, p0, Lcom/android/settings/GridSettings$ScaleListner;->this$0:Lcom/android/settings/GridSettings;

    iget-object v2, v2, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    if-eqz v2, :cond_0

    .line 592
    iget-object v2, p0, Lcom/android/settings/GridSettings$ScaleListner;->this$0:Lcom/android/settings/GridSettings;

    iget-object v2, v2, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings/grid/GridSettingsFragment;->collapseAll()V

    goto :goto_0
.end method
