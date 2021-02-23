.class Lcom/android/settings/SViewColor$4;
.super Ljava/lang/Object;
.source "SViewColor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SViewColor;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewColor;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewColor;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/settings/SViewColor$4;->this$0:Lcom/android/settings/SViewColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 395
    iget-object v1, p0, Lcom/android/settings/SViewColor$4;->this$0:Lcom/android/settings/SViewColor;

    invoke-virtual {v1}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_color_wallpaper"

    iget-object v3, p0, Lcom/android/settings/SViewColor$4;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v3}, Lcom/android/settings/SViewColor;->access$100(Lcom/android/settings/SViewColor;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 396
    iget-object v1, p0, Lcom/android/settings/SViewColor$4;->this$0:Lcom/android/settings/SViewColor;

    invoke-virtual {v1}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "s_view_cover_skin_color"

    iget-object v3, p0, Lcom/android/settings/SViewColor$4;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v3}, Lcom/android/settings/SViewColor;->access$500(Lcom/android/settings/SViewColor;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 398
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, "mIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/SViewColor$4;->this$0:Lcom/android/settings/SViewColor;

    invoke-virtual {v1, v0}, Lcom/android/settings/SViewColor;->sendBroadcast(Landroid/content/Intent;)V

    .line 400
    iget-object v1, p0, Lcom/android/settings/SViewColor$4;->this$0:Lcom/android/settings/SViewColor;

    invoke-virtual {v1}, Lcom/android/settings/SViewColor;->finish()V

    .line 401
    return-void
.end method
