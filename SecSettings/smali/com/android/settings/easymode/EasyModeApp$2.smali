.class Lcom/android/settings/easymode/EasyModeApp$2;
.super Ljava/lang/Object;
.source "EasyModeApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/easymode/EasyModeApp;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/easymode/EasyModeApp;


# direct methods
.method constructor <init>(Lcom/android/settings/easymode/EasyModeApp;)V
    .locals 0

    .prologue
    .line 909
    iput-object p1, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 912
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$000(Lcom/android/settings/easymode/EasyModeApp;)V

    .line 913
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$100(Lcom/android/settings/easymode/EasyModeApp;)Lcom/android/settings/easymode/EasyModeEnabler;

    move-result-object v3

    const-string v6, "easy_mode_switch"

    invoke-virtual {v3, v6}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v2

    .line 915
    .local v2, "mPrevModeState":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 916
    .local v1, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$200(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 917
    .local v0, "currentDefaultHome":Landroid/content/ComponentName;
    const-string v3, "EasyModeApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KKK onClick mPrevModeState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mModeState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v7}, Lcom/android/settings/easymode/EasyModeApp;->access$300(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const-string v3, "EasyModeApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KKK onClick isDefaultEasyLauncher : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v7}, Lcom/android/settings/easymode/EasyModeApp;->access$400(Lcom/android/settings/easymode/EasyModeApp;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$500(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "easy_mode_select_all"

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$600(Lcom/android/settings/easymode/EasyModeApp;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 920
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$300(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$700(Lcom/android/settings/easymode/EasyModeApp;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 921
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v5, 0x7f0a09f4

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 922
    const-string v3, "EasyModeApp"

    const-string v4, "KKK onClick case 1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :goto_1
    return-void

    :cond_0
    move v3, v5

    .line 919
    goto :goto_0

    .line 924
    :cond_1
    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$300(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 925
    const-string v3, "EasyModeApp"

    const-string v4, "KKK onClick case 2"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeApp;->setStandardFont()V

    .line 927
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3, v5}, Lcom/android/settings/easymode/EasyModeApp;->setDefaultLauncher(Z)V

    .line 928
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3, v5}, Lcom/android/settings/easymode/EasyModeApp;->access$802(Lcom/android/settings/easymode/EasyModeApp;I)I

    .line 929
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$900(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_flag_for_talkback"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 930
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$100(Lcom/android/settings/easymode/EasyModeApp;)Lcom/android/settings/easymode/EasyModeEnabler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeEnabler;->startStandardMode()V

    .line 931
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3, v5}, Lcom/android/settings/easymode/EasyModeApp;->access$1000(Lcom/android/settings/easymode/EasyModeApp;Z)V

    .line 932
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeApp;->finish()V

    goto :goto_1

    .line 933
    :cond_2
    if-ne v2, v4, :cond_3

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$300(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v3

    if-nez v3, :cond_3

    .line 934
    const-string v3, "EasyModeApp"

    const-string v6, "KKK onClick case 3"

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$1100(Lcom/android/settings/easymode/EasyModeApp;)V

    .line 936
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3, v4}, Lcom/android/settings/easymode/EasyModeApp;->setDefaultLauncher(Z)V

    .line 937
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeApp;->setLargeFont()V

    .line 938
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3, v4}, Lcom/android/settings/easymode/EasyModeApp;->access$802(Lcom/android/settings/easymode/EasyModeApp;I)I

    .line 939
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$1200(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "easy_mode_flag_for_talkback"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 940
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$100(Lcom/android/settings/easymode/EasyModeApp;)Lcom/android/settings/easymode/EasyModeEnabler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeEnabler;->startEasyMode()V

    .line 941
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3, v4}, Lcom/android/settings/easymode/EasyModeApp;->access$1000(Lcom/android/settings/easymode/EasyModeApp;Z)V

    .line 942
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeApp;->finish()V

    goto/16 :goto_1

    .line 943
    :cond_3
    if-ne v2, v4, :cond_5

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$300(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v3

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$400(Lcom/android/settings/easymode/EasyModeApp;)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v0, :cond_5

    .line 945
    :cond_4
    const-string v3, "EasyModeApp"

    const-string v4, "KKK onClick case 4"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3, v5}, Lcom/android/settings/easymode/EasyModeApp;->setDefaultLauncher(Z)V

    .line 947
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3, v5}, Lcom/android/settings/easymode/EasyModeApp;->access$1000(Lcom/android/settings/easymode/EasyModeApp;Z)V

    goto/16 :goto_1

    .line 948
    :cond_5
    if-nez v2, :cond_7

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$300(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v3

    if-nez v3, :cond_7

    .line 949
    const-string v3, "EasyModeApp"

    const-string v5, "KKK onClick case 5"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$1100(Lcom/android/settings/easymode/EasyModeApp;)V

    .line 951
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3}, Lcom/android/settings/easymode/EasyModeApp;->access$400(Lcom/android/settings/easymode/EasyModeApp;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 952
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeApp;->finish()V

    goto/16 :goto_1

    .line 954
    :cond_6
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3, v4}, Lcom/android/settings/easymode/EasyModeApp;->setDefaultLauncher(Z)V

    .line 955
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {v3, v4}, Lcom/android/settings/easymode/EasyModeApp;->access$1000(Lcom/android/settings/easymode/EasyModeApp;Z)V

    goto/16 :goto_1

    .line 958
    :cond_7
    const-string v3, "EasyModeApp"

    const-string v4, "KKK onClick case 6"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v3}, Lcom/android/settings/easymode/EasyModeApp;->finish()V

    goto/16 :goto_1
.end method
