.class public Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "NotificationPanelMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationPanelMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PanelDragShadowBuilder"
.end annotation


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mPanel:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/android/settings/NotificationPanelMenu;


# direct methods
.method public constructor <init>(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1307
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;->this$0:Lcom/android/settings/NotificationPanelMenu;

    .line 1308
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 1309
    const v0, 0x7f10025a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;->mPanel:Landroid/widget/LinearLayout;

    .line 1310
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1314
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;->mCanvas:Landroid/graphics/Canvas;

    .line 1316
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    .line 1317
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1318
    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;->mPanel:Landroid/widget/LinearLayout;

    const v2, 0x7f02052b

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1319
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1322
    :cond_0
    return-void
.end method

.method public restoreOriginalImage()V
    .locals 3

    .prologue
    .line 1325
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    .line 1326
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1327
    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;->mPanel:Landroid/widget/LinearLayout;

    const v2, 0x7f020529

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1330
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_1

    .line 1331
    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1333
    :cond_1
    return-void
.end method
