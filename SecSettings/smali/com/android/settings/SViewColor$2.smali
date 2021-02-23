.class Lcom/android/settings/SViewColor$2;
.super Ljava/lang/Object;
.source "SViewColor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SViewColor;
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
    .line 310
    iput-object p1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0xa

    .line 313
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    .line 314
    .local v0, "mClickButton":Landroid/widget/ImageButton;
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 357
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$102(Lcom/android/settings/SViewColor;I)I

    .line 360
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    iget-object v2, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v2}, Lcom/android/settings/SViewColor;->access$100(Lcom/android/settings/SViewColor;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/SViewColor;->setPreviewImage(I)V

    .line 361
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v1}, Lcom/android/settings/SViewColor;->access$200(Lcom/android/settings/SViewColor;)V

    .line 362
    return-void

    .line 317
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$102(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 321
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$102(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 325
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$102(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 329
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$102(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 333
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    const/16 v2, 0xe

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$102(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 337
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$102(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 341
    :pswitch_6
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$102(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 345
    :pswitch_7
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    const/16 v2, 0x11

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$102(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 349
    :pswitch_8
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    const/16 v2, 0x12

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$102(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 353
    :pswitch_9
    iget-object v1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    const/16 v2, 0x13

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$102(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x7f1000c6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
