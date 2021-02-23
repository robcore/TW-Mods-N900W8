.class Lcom/android/settings/SViewColor2014$7;
.super Ljava/lang/Object;
.source "SViewColor2014.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SViewColor2014;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewColor2014;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewColor2014;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 519
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    .line 520
    .local v0, "mClickButton":Landroid/widget/ImageButton;
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 565
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    const v2, 0x7f0205ef

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    .line 566
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v2

    aget v2, v2, v4

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    .line 567
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    iget-object v2, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v2}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v2

    aget v2, v2, v4

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    .line 569
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v1}, Lcom/android/settings/SViewColor2014;->access$1100(Lcom/android/settings/SViewColor2014;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v2}, Lcom/android/settings/SViewColor2014;->access$800(Lcom/android/settings/SViewColor2014;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 570
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v1, v4}, Lcom/android/settings/SViewColor2014;->access$200(Lcom/android/settings/SViewColor2014;Z)V

    .line 571
    :goto_1
    return-void

    .line 522
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v2

    aget v2, v2, v4

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    .line 523
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    iget-object v2, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v2}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v2

    aget v2, v2, v4

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto :goto_0

    .line 526
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    .line 527
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    iget-object v2, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v2}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto :goto_0

    .line 530
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v2

    aget v2, v2, v5

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    .line 531
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    iget-object v2, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v2}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v2

    aget v2, v2, v5

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto :goto_0

    .line 534
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v2

    aget v2, v2, v6

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    .line 535
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    iget-object v2, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v2}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v2

    aget v2, v2, v6

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto :goto_0

    .line 538
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v2

    aget v2, v2, v7

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    .line 539
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    iget-object v2, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v2}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v2

    aget v2, v2, v7

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto/16 :goto_0

    .line 542
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v2

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    .line 543
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    iget-object v2, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v2}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v2

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto/16 :goto_0

    .line 546
    :pswitch_6
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v2

    const/4 v3, 0x6

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    .line 547
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    iget-object v2, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v2}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v2

    const/4 v3, 0x6

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto/16 :goto_0

    .line 550
    :pswitch_7
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v2

    const/4 v3, 0x7

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    .line 551
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    iget-object v2, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v2}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v2

    const/4 v3, 0x7

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto/16 :goto_0

    .line 554
    :pswitch_8
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v2

    const/16 v3, 0x8

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    .line 555
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    iget-object v2, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v2}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v2

    const/16 v3, 0x8

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    .line 556
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v1, v4}, Lcom/android/settings/SViewColor2014;->access$200(Lcom/android/settings/SViewColor2014;Z)V

    .line 557
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v1}, Lcom/android/settings/SViewColor2014;->access$1100(Lcom/android/settings/SViewColor2014;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v2}, Lcom/android/settings/SViewColor2014;->access$1000(Lcom/android/settings/SViewColor2014;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 560
    :pswitch_9
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v2

    const/16 v3, 0x9

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    .line 561
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    iget-object v2, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v2}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v2

    const/16 v3, 0x9

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    .line 562
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$7;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v1, v4}, Lcom/android/settings/SViewColor2014;->access$200(Lcom/android/settings/SViewColor2014;Z)V

    goto/16 :goto_1

    .line 520
    nop

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
