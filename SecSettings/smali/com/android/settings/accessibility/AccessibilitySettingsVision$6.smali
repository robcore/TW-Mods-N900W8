.class Lcom/android/settings/accessibility/AccessibilitySettingsVision$6;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettingsVision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsVision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 253
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$800(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_magnifier"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 255
    .local v0, "magnifierEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 256
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$900(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 257
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$900(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    const v2, 0x7f0a0a60

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 262
    :goto_1
    return-void

    .end local v0    # "magnifierEnabled":Z
    :cond_0
    move v0, v2

    .line 253
    goto :goto_0

    .line 259
    .restart local v0    # "magnifierEnabled":Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$900(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 260
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$900(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    const v2, 0x7f0a0a61

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_1
.end method
