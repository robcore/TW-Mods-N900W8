.class Lcom/android/settings/flipfont/FontListPreference$LoadListTask;
.super Landroid/os/AsyncTask;
.source "FontListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/flipfont/FontListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private privState:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/android/settings/flipfont/FontListPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/flipfont/FontListPreference;)V
    .locals 1

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/flipfont/FontListPreference;Lcom/android/settings/flipfont/FontListPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/flipfont/FontListPreference;
    .param p2, "x1"    # Lcom/android/settings/flipfont/FontListPreference$1;

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 369
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    new-instance v1, Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-static {v2}, Lcom/android/settings/flipfont/FontListPreference;->access$200(Lcom/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/settings/flipfont/FontListPreference;->access$002(Lcom/android/settings/flipfont/FontListPreference;Lcom/android/settings/flipfont/FontListAdapter;)Lcom/android/settings/flipfont/FontListAdapter;

    .line 389
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-static {v0}, Lcom/android/settings/flipfont/FontListPreference;->access$000(Lcom/android/settings/flipfont/FontListPreference;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 390
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 369
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 397
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 398
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListPreference;->mState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/settings/flipfont/FontListPreference;->showDialog(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 402
    const-string v1, "FlipFont"

    const-string v2, "dismiss/show ListLoad() - catch (Exception ex)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 376
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListPreference;->mState:Landroid/os/Bundle;

    iput-object v2, p0, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;->privState:Landroid/os/Bundle;

    .line 378
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-static {v2}, Lcom/android/settings/flipfont/FontListPreference;->access$200(Lcom/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0d84

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 379
    .local v1, "sTitle":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-static {v2}, Lcom/android/settings/flipfont/FontListPreference;->access$200(Lcom/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0d81

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 382
    .local v0, "sMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-static {v2}, Lcom/android/settings/flipfont/FontListPreference;->access$200(Lcom/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v1, v0, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 383
    return-void
.end method
