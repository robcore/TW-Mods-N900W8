.class Lcom/android/settings/myplace/SelectMapActivity$13;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/SelectMapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/SelectMapActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0

    .prologue
    .line 913
    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity$13;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$13;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$600(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$13;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$600(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$13;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v0}, Lcom/android/settings/myplace/SelectMapActivity;->captureMap()Z

    .line 920
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$13;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v0}, Lcom/android/settings/myplace/SelectMapActivity;->doFinish()V

    .line 921
    return-void
.end method
