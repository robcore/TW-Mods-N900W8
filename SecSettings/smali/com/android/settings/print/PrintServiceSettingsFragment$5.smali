.class Lcom/android/settings/print/PrintServiceSettingsFragment$5;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

.field final synthetic val$searchView:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;Landroid/widget/SearchView;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$5;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    iput-object p2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$5;->val$searchView:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$5;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 456
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$5;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    const-string v2, "input_method"

    invoke-static {v1, v2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$1000(Lcom/android/settings/print/PrintServiceSettingsFragment;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 449
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$5;->val$searchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 450
    const/4 v1, 0x1

    return v1
.end method
