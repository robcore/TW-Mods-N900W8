.class public Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;
.super Landroid/app/DialogFragment;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimePickerFragment"
.end annotation


# instance fields
.field public pref:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 818
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 824
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->access$1900(Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->access$2000(Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v7, 0x1

    .line 825
    .local v7, "usePref":Z
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 826
    .local v6, "c":Ljava/util/Calendar;
    if-eqz v7, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->access$1900(Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;)I

    move-result v3

    .line 827
    .local v3, "hour":I
    :goto_1
    if-eqz v7, :cond_2

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->access$2000(Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;)I

    move-result v4

    .line 828
    .local v4, "minute":I
    :goto_2
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 829
    .local v0, "t":Landroid/app/TimePickerDialog;
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 830
    return-object v0

    .line 824
    .end local v0    # "t":Landroid/app/TimePickerDialog;
    .end local v3    # "hour":I
    .end local v4    # "minute":I
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v7    # "usePref":Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 826
    .restart local v6    # "c":Ljava/util/Calendar;
    .restart local v7    # "usePref":Z
    :cond_1
    const/16 v1, 0xb

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_1

    .line 827
    .restart local v3    # "hour":I
    :cond_2
    const/16 v1, 0xc

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    goto :goto_2
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    invoke-virtual {v0, p2, p3}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setTime(II)V

    .line 839
    :cond_0
    return-void
.end method
