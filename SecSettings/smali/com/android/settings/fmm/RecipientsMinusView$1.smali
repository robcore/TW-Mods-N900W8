.class Lcom/android/settings/fmm/RecipientsMinusView$1;
.super Ljava/lang/Object;
.source "RecipientsMinusView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/RecipientsMinusView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/RecipientsMinusView;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/RecipientsMinusView;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/fmm/RecipientsMinusView$1;->this$0:Lcom/android/settings/fmm/RecipientsMinusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 53
    iget-object v2, p0, Lcom/android/settings/fmm/RecipientsMinusView$1;->this$0:Lcom/android/settings/fmm/RecipientsMinusView;

    invoke-virtual {v2}, Lcom/android/settings/fmm/RecipientsMinusView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 54
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/settings/fmm/RecipientsMinusView$1;->this$0:Lcom/android/settings/fmm/RecipientsMinusView;

    const v3, 0x7f100213

    invoke-virtual {v2, v3}, Lcom/android/settings/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 56
    .local v0, "PhoneNumber":Landroid/widget/EditText;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/android/settings/fmm/RecipientsMinusView$1;->this$0:Lcom/android/settings/fmm/RecipientsMinusView;

    invoke-static {v2}, Lcom/android/settings/fmm/RecipientsMinusView;->access$000(Lcom/android/settings/fmm/RecipientsMinusView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 60
    iget-object v2, p0, Lcom/android/settings/fmm/RecipientsMinusView$1;->this$0:Lcom/android/settings/fmm/RecipientsMinusView;

    invoke-static {v2, v4}, Lcom/android/settings/fmm/RecipientsMinusView;->access$102(Lcom/android/settings/fmm/RecipientsMinusView;Z)Z

    .line 61
    return-void
.end method
