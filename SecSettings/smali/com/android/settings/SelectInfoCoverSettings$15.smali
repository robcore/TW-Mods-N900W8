.class Lcom/android/settings/SelectInfoCoverSettings$15;
.super Ljava/lang/Object;
.source "SelectInfoCoverSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SelectInfoCoverSettings;->showGuidePopup(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SelectInfoCoverSettings;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/SelectInfoCoverSettings;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/settings/SelectInfoCoverSettings$15;->this$0:Lcom/android/settings/SelectInfoCoverSettings;

    iput-object p2, p0, Lcom/android/settings/SelectInfoCoverSettings$15;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 599
    iget-object v1, p0, Lcom/android/settings/SelectInfoCoverSettings$15;->val$layout:Landroid/view/View;

    const v2, 0x7f100169

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 600
    .local v0, "check":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/android/settings/SelectInfoCoverSettings$15;->this$0:Lcom/android/settings/SelectInfoCoverSettings;

    const-string v2, "com.android.settings.SViewCoverPopup.Pedometer"

    invoke-static {v1, v2}, Lcom/android/settings/SelectInfoCoverSettings;->access$400(Lcom/android/settings/SelectInfoCoverSettings;Ljava/lang/String;)V

    .line 602
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SelectInfoCoverSettings$15;->this$0:Lcom/android/settings/SelectInfoCoverSettings;

    iget-object v2, p0, Lcom/android/settings/SelectInfoCoverSettings$15;->this$0:Lcom/android/settings/SelectInfoCoverSettings;

    invoke-static {v2}, Lcom/android/settings/SelectInfoCoverSettings;->access$000(Lcom/android/settings/SelectInfoCoverSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/SelectInfoCoverSettings;->access$500(Lcom/android/settings/SelectInfoCoverSettings;Landroid/preference/Preference;)V

    .line 603
    return-void
.end method
