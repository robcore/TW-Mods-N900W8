.class public Lcom/android/settings/notification/VolumeSeekBarPreference;
.super Landroid/preference/SeekBarPreference;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;
    }
.end annotation


# instance fields
.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

.field private mStream:I

.field private mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    new-instance v0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/VolumeSeekBarPreference$1;-><init>(Lcom/android/settings/notification/VolumeSeekBarPreference;)V

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    new-instance v0, Lcom/android/settings/notification/VolumeSeekBarPreference$4;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/VolumeSeekBarPreference$4;-><init>(Lcom/android/settings/notification/VolumeSeekBarPreference;)V

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 75
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/VolumeSeekBarPreference;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/VolumeSeekBarPreference;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/VolumeSeekBarPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/VolumeSeekBarPreference;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setDualColorSeekbar()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/VolumeSeekBarPreference;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/VolumeSeekBarPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/VolumeSeekBarPreference;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->requestAudioFocus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/VolumeSeekBarPreference;)Landroid/preference/SeekBarVolumizer;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/VolumeSeekBarPreference;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    return-object v0
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private requestAudioFocus()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 226
    const-string v3, "VolumeSeekBarPreference"

    const-string v4, "requestAudioFocus()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "focusResult":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v5, 0x3

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 230
    if-ne v0, v2, :cond_2

    .line 234
    :cond_0
    if-nez v0, :cond_1

    .line 235
    const-string v2, "VolumeSeekBarPreference"

    const-string v3, "requestAudioFocus is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v2, 0x0

    .line 239
    :cond_1
    return v2

    .line 228
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setDualColorSeekbar()V
    .locals 2

    .prologue
    .line 255
    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityStop()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stop()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    .line 104
    :cond_0
    const-string v0, "VolumeSeekBarPreference"

    const-string v1, "onActivityStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->onClosed()V

    .line 106
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindView(Landroid/view/View;)V

    .line 111
    iget v6, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    if-nez v6, :cond_1

    .line 112
    const-string v6, "VolumeSeekBarPreference"

    const-string v7, "No stream found, not binding volumizer"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 116
    const v6, 0x1020423

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    .line 117
    .local v5, "seekBar":Landroid/widget/SeekBar;
    iget-object v6, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eq v5, v6, :cond_0

    .line 118
    iput-object v5, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 119
    new-instance v4, Lcom/android/settings/notification/VolumeSeekBarPreference$2;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/VolumeSeekBarPreference$2;-><init>(Lcom/android/settings/notification/VolumeSeekBarPreference;)V

    .line 152
    .local v4, "sbvc":Landroid/preference/SeekBarVolumizer$Callback;
    const/4 v1, 0x0

    .line 153
    .local v1, "defaultRingtone":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 171
    .local v0, "context":Landroid/content/Context;
    iget v6, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v3

    .line 172
    .local v3, "sampleUri":Landroid/net/Uri;
    :goto_1
    iget-object v6, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-nez v6, :cond_2

    .line 173
    const-string v6, "VolumeSeekBarPreference"

    const-string v7, "onBindView : mSeekBarVolumizer == null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v6, Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    invoke-direct {v6, v7, v8, v3, v4}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    iput-object v6, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    .line 182
    :cond_2
    iget-object v6, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    iget-object v7, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v7}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 183
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 184
    .local v2, "intentFilterVolume":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    iget-object v6, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v6, :cond_0

    .line 188
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/settings/notification/VolumeSeekBarPreference$3;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/VolumeSeekBarPreference$3;-><init>(Lcom/android/settings/notification/VolumeSeekBarPreference;)V

    const-wide/16 v8, 0xa

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 171
    .end local v2    # "intentFilterVolume":Landroid/content/IntentFilter;
    .end local v3    # "sampleUri":Landroid/net/Uri;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onClosed()V
    .locals 3

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 244
    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 247
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "VolumeSeekBarPreference"

    const-string v2, "onDialogClosed : mVolumeChangeReceiver is not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    .line 96
    return-void
.end method

.method public setStream(I)V
    .locals 0
    .param p1, "stream"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    .line 92
    return-void
.end method
