.class Lcom/android/settings/SViewStyleClock$4;
.super Ljava/lang/Object;
.source "SViewStyleClock.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SViewStyleClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewStyleClock;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewStyleClock;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/settings/SViewStyleClock$4;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 185
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    .line 186
    .local v0, "mClickButton":Landroid/widget/ImageButton;
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 197
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock$4;->this$0:Lcom/android/settings/SViewStyleClock;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/settings/SViewStyleClock;->access$202(Lcom/android/settings/SViewStyleClock;I)I

    .line 200
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock$4;->this$0:Lcom/android/settings/SViewStyleClock;

    iget-object v2, p0, Lcom/android/settings/SViewStyleClock$4;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-static {v2}, Lcom/android/settings/SViewStyleClock;->access$200(Lcom/android/settings/SViewStyleClock;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/SViewStyleClock;->access$402(Lcom/android/settings/SViewStyleClock;I)I

    .line 201
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock$4;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-virtual {v1}, Lcom/android/settings/SViewStyleClock;->setPreview()V

    .line 202
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock$4;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-static {v1}, Lcom/android/settings/SViewStyleClock;->access$100(Lcom/android/settings/SViewStyleClock;)V

    .line 203
    return-void

    .line 188
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock$4;->this$0:Lcom/android/settings/SViewStyleClock;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/SViewStyleClock;->access$202(Lcom/android/settings/SViewStyleClock;I)I

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock$4;->this$0:Lcom/android/settings/SViewStyleClock;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/SViewStyleClock;->access$202(Lcom/android/settings/SViewStyleClock;I)I

    goto :goto_0

    .line 194
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock$4;->this$0:Lcom/android/settings/SViewStyleClock;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/settings/SViewStyleClock;->access$202(Lcom/android/settings/SViewStyleClock;I)I

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x7f1000c6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
