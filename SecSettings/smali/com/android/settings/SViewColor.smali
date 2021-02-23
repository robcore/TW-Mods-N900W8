.class public Lcom/android/settings/SViewColor;
.super Landroid/app/Activity;
.source "SViewColor.java"


# static fields
.field static final COVER_BACKGROUND_COLOR_BUTTON1:I

.field static final COVER_BACKGROUND_COLOR_BUTTON10:I

.field static final COVER_BACKGROUND_COLOR_BUTTON2:I

.field static final COVER_BACKGROUND_COLOR_BUTTON3:I

.field static final COVER_BACKGROUND_COLOR_BUTTON4:I

.field static final COVER_BACKGROUND_COLOR_BUTTON5:I

.field static final COVER_BACKGROUND_COLOR_BUTTON6:I

.field static final COVER_BACKGROUND_COLOR_BUTTON7:I

.field static final COVER_BACKGROUND_COLOR_BUTTON8:I

.field static final COVER_BACKGROUND_COLOR_BUTTON9:I


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field private mBackground:Landroid/widget/FrameLayout;

.field private mBackgroundImage:Landroid/widget/ImageView;

.field mCalendar:Ljava/util/Calendar;

.field private mColorArray:[I

.field private mColorButton:Landroid/view/View$OnClickListener;

.field mColorButtonArray:[Lcom/android/settings/ColorButton;

.field private mCurrentCoverBackground:I

.field private mCurrentCoverBackgroundColor:I

.field private mCurrentRealCoverColor:I

.field private mImageArray:[I

.field private mInitRandom:I

.field private mInitUseAll:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs24HTime:Z

.field private mMonthandDay:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x21

    const/4 v3, 0x0

    .line 52
    const/16 v0, 0x8

    const/16 v1, 0x6b

    const/16 v2, 0x77

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON1:I

    .line 53
    const/16 v0, 0x98

    const/16 v1, 0x24

    const/16 v2, 0x69

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON2:I

    .line 54
    const/16 v0, 0x15

    const/16 v1, 0x2f

    const/16 v2, 0x26

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON3:I

    .line 55
    const/16 v0, 0x91

    const/16 v1, 0x22

    invoke-static {v0, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON4:I

    .line 56
    const/16 v0, 0x41

    const/16 v1, 0x4f

    const/16 v2, 0x13

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON5:I

    .line 57
    const/16 v0, 0x53

    const/16 v1, 0x10

    invoke-static {v0, v3, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON6:I

    .line 58
    const/16 v0, 0x1d

    const/16 v1, 0x14

    const/16 v2, 0x3d

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON7:I

    .line 59
    const/16 v0, 0x2e

    const/16 v1, 0x1a

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON8:I

    .line 60
    const/16 v0, 0x75

    const/16 v1, 0x48

    invoke-static {v0, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON9:I

    .line 61
    const/16 v0, 0x25

    invoke-static {v0, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON10:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xa

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    new-array v0, v3, [I

    sget v1, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON1:I

    aput v1, v0, v4

    const/4 v1, 0x1

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON2:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON3:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON4:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON5:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON6:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON7:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON8:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON9:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON10:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/SViewColor;->mColorArray:[I

    .line 70
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/SViewColor;->mImageArray:[I

    .line 72
    new-array v0, v3, [Lcom/android/settings/ColorButton;

    iput-object v0, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    .line 88
    iput-boolean v4, p0, Lcom/android/settings/SViewColor;->mIs24HTime:Z

    .line 98
    new-instance v0, Lcom/android/settings/SViewColor$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SViewColor$1;-><init>(Lcom/android/settings/SViewColor;)V

    iput-object v0, p0, Lcom/android/settings/SViewColor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 310
    new-instance v0, Lcom/android/settings/SViewColor$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SViewColor$2;-><init>(Lcom/android/settings/SViewColor;)V

    iput-object v0, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    .line 437
    return-void

    .line 70
    nop

    :array_0
    .array-data 4
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/SViewColor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewColor;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/SViewColor;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SViewColor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewColor;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackground:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/SViewColor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewColor;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackground:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/SViewColor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewColor;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/SViewColor;->setfocusButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/SViewColor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewColor;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/settings/SViewColor;->mInitUseAll:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/SViewColor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewColor;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/settings/SViewColor;->mInitRandom:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/SViewColor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewColor;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/settings/SViewColor;->mCurrentRealCoverColor:I

    return v0
.end method

.method private configureActionBar()V
    .locals 4

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 180
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 181
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 182
    const v2, 0x7f040064

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 183
    const v2, 0x7f10010b

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 184
    .local v1, "buttonSave":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .end local v1    # "buttonSave":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method private onTimeChanged()V
    .locals 8

    .prologue
    .line 250
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 251
    .local v1, "mCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 252
    iget-boolean v5, p0, Lcom/android/settings/SViewColor;->mIs24HTime:Z

    if-eqz v5, :cond_4

    .line 253
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mTime:Landroid/widget/TextView;

    const-string v6, "kk:mm"

    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 255
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 262
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    const-string v6, "AA"

    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 267
    :cond_1
    const-string v0, ""

    .line 268
    .local v0, "dateFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getCurrentDateFormat()Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, "value":Ljava/lang/String;
    const v2, 0x7f0a001b

    .line 270
    .local v2, "resId_MM_dd":I
    const v3, 0x7f0a001c

    .line 272
    .local v3, "resId_dd_MM":I
    const v2, 0x7f0a001b

    .line 273
    const v3, 0x7f0a001c

    .line 275
    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 276
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mMonthandDay:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    return-void

    .line 257
    .end local v0    # "dateFormat":Ljava/lang/String;
    .end local v2    # "resId_MM_dd":I
    .end local v3    # "resId_dd_MM":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mTime:Landroid/widget/TextView;

    const-string v6, "h:mm"

    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 259
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 277
    .restart local v0    # "dateFormat":Ljava/lang/String;
    .restart local v2    # "resId_MM_dd":I
    .restart local v3    # "resId_dd_MM":I
    .restart local v4    # "value":Ljava/lang/String;
    :cond_5
    const-string v5, "dd-MM-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 278
    invoke-virtual {p0, v3}, Lcom/android/settings/SViewColor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setfocusButton()V
    .locals 3

    .prologue
    .line 366
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 367
    iget v1, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackground:I

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mImageArray:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/ColorButton;->setFocus(Z)V

    .line 372
    :goto_1
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/ColorButton;->invalidate()V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/ColorButton;->setFocus(Z)V

    goto :goto_1

    .line 374
    :cond_1
    return-void
.end method


# virtual methods
.method public getColorOfCover()I
    .locals 6

    .prologue
    .line 502
    const/4 v0, 0x0

    .line 503
    .local v0, "color":I
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 504
    .local v1, "coverManager":Lcom/samsung/android/sdk/cover/ScoverManager;
    if-eqz v1, :cond_0

    .line 505
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    .line 506
    .local v2, "coverState":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v2, :cond_1

    .line 507
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getColor()I

    move-result v0

    .line 511
    .end local v2    # "coverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_0
    :goto_0
    const-string v3, "SViewColor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scover getColorOfCover color : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return v0

    .line 509
    .restart local v2    # "coverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_1
    const-string v3, "SViewColor"

    const-string v4, "Scover getColorOfCover ScoverState is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentDateFormat()Ljava/lang/String;
    .locals 9

    .prologue
    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .local v5, "result":Ljava/lang/StringBuilder;
    const-string v6, "yyyy"

    .line 288
    .local v6, "year":Ljava/lang/String;
    const-string v4, "MM"

    .line 289
    .local v4, "month":Ljava/lang/String;
    const-string v0, "dd"

    .line 290
    .local v0, "day":Ljava/lang/String;
    const-string v1, "-"

    .line 292
    .local v1, "divider":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 293
    .local v2, "formatArray":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_4

    .line 294
    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_0

    .line 295
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_0
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_1

    .line 298
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_1
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_2

    .line 301
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_2
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_3

    .line 304
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 307
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getWallpaperIndexbySkincolor(I)I
    .locals 4
    .param p1, "currenCoverColor"    # I

    .prologue
    .line 479
    const-string v1, "SViewColor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cover skin color = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/16 v0, 0xa

    .line 481
    .local v0, "mWallpaerIndex":I
    packed-switch p1, :pswitch_data_0

    .line 498
    :goto_0
    :pswitch_0
    return v0

    .line 484
    :pswitch_1
    const/16 v0, 0xa

    .line 485
    goto :goto_0

    .line 489
    :pswitch_2
    const/16 v0, 0xb

    .line 490
    goto :goto_0

    .line 492
    :pswitch_3
    const/16 v0, 0x11

    .line 493
    goto :goto_0

    .line 495
    :pswitch_4
    const/16 v0, 0xd

    goto :goto_0

    .line 481
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sview_color_use_all"

    iget v2, p0, Lcom/android/settings/SViewColor;->mInitUseAll:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sview_color_random"

    iget v2, p0, Lcom/android/settings/SViewColor;->mInitRandom:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 434
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 435
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const v2, 0x7f04004a

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->setContentView(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "s_vew_cover_background_color"

    sget v4, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON1:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sview_color_wallpaper"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackground:I

    .line 117
    const v2, 0x7f100093

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/settings/SViewColor;->mBackground:Landroid/widget/FrameLayout;

    .line 118
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mBackground:Landroid/widget/FrameLayout;

    const v3, 0x7f10042d

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/SViewColor;->mBackgroundImage:Landroid/widget/ImageView;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "s_view_cover_skin_color"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SViewColor;->mCurrentRealCoverColor:I

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getColorOfCover()I

    move-result v1

    .line 125
    .local v1, "coverColorChip":I
    iget v2, p0, Lcom/android/settings/SViewColor;->mCurrentRealCoverColor:I

    if-eq v2, v1, :cond_0

    .line 126
    iput v1, p0, Lcom/android/settings/SViewColor;->mCurrentRealCoverColor:I

    .line 127
    invoke-virtual {p0, v1}, Lcom/android/settings/SViewColor;->getWallpaperIndexbySkincolor(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackground:I

    .line 130
    :cond_0
    iget v2, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackground:I

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->setPreviewImage(I)V

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "clockTypeface":Landroid/graphics/Typeface;
    const-string v2, "system/fonts/SamsungSans-Light.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 134
    const v2, 0x7f100430

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/SViewColor;->mTime:Landroid/widget/TextView;

    .line 135
    const v2, 0x7f100431

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    .line 136
    const v2, 0x7f100432

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/SViewColor;->mMonthandDay:Landroid/widget/TextView;

    .line 137
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 139
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SViewColor;->mIs24HTime:Z

    .line 141
    iget-object v3, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const v2, 0x7f1000c6

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v3, v5

    .line 142
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v3, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const v2, 0x7f1000c7

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v3, v6

    .line 145
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v3, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const v2, 0x7f1000c8

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v3, v7

    .line 148
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v3, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const v2, 0x7f1000c9

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v3, v8

    .line 151
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v2, v2, v8

    iget-object v3, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v3, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const v2, 0x7f1000ca

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v3, v9

    .line 154
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v2, v2, v9

    iget-object v3, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v3, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v4, 0x5

    const v2, 0x7f1000cb

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v3, v4

    .line 157
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v3, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v4, 0x6

    const v2, 0x7f1000cc

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v3, v4

    .line 160
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v3, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v4, 0x7

    const v2, 0x7f1000cd

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v3, v4

    .line 163
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v3, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v4, 0x8

    const v2, 0x7f1000ce

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v3, v4

    .line 166
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v3, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v4, 0x9

    const v2, 0x7f1000cf

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v3, v4

    .line 169
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-direct {p0}, Lcom/android/settings/SViewColor;->setfocusButton()V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sview_color_use_all"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SViewColor;->mInitUseAll:I

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sview_color_random"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SViewColor;->mInitRandom:I

    .line 175
    invoke-direct {p0}, Lcom/android/settings/SViewColor;->configureActionBar()V

    .line 176
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 379
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 381
    .local v2, "customView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 382
    const v4, 0x7f10010a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 383
    .local v1, "cancelButton":Landroid/widget/Button;
    new-instance v4, Lcom/android/settings/SViewColor$3;

    invoke-direct {v4, p0}, Lcom/android/settings/SViewColor$3;-><init>(Lcom/android/settings/SViewColor;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    const v4, 0x7f10010b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 392
    .local v3, "saveButton":Landroid/widget/Button;
    new-instance v4, Lcom/android/settings/SViewColor$4;

    invoke-direct {v4, p0}, Lcom/android/settings/SViewColor$4;-><init>(Lcom/android/settings/SViewColor;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    .end local v1    # "cancelButton":Landroid/widget/Button;
    .end local v2    # "customView":Landroid/view/View;
    .end local v3    # "saveButton":Landroid/widget/Button;
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 427
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 246
    iget-object v0, p0, Lcom/android/settings/SViewColor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SViewColor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 247
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 230
    invoke-direct {p0}, Lcom/android/settings/SViewColor;->onTimeChanged()V

    .line 232
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 234
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SViewColor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    return-void
.end method

.method public setPreviewImage(I)V
    .locals 3
    .param p1, "CurrentCoverBackgroundDbId"    # I

    .prologue
    const v1, 0x7f0205ef

    const/4 v2, 0x0

    .line 189
    packed-switch p1, :pswitch_data_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/SViewColor;->mBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 224
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SViewColor;->mBackground:Landroid/widget/FrameLayout;

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 225
    return-void

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/SViewColor;->mBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 194
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/SViewColor;->mBackgroundImage:Landroid/widget/ImageView;

    const v1, 0x7f0205f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 197
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/SViewColor;->mBackgroundImage:Landroid/widget/ImageView;

    const v1, 0x7f0205f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 200
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/SViewColor;->mBackgroundImage:Landroid/widget/ImageView;

    const v1, 0x7f0205f2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 203
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/SViewColor;->mBackgroundImage:Landroid/widget/ImageView;

    const v1, 0x7f0205f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 206
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/SViewColor;->mBackgroundImage:Landroid/widget/ImageView;

    const v1, 0x7f0205f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 209
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/SViewColor;->mBackgroundImage:Landroid/widget/ImageView;

    const v1, 0x7f0205f5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 212
    :pswitch_7
    iget-object v0, p0, Lcom/android/settings/SViewColor;->mBackgroundImage:Landroid/widget/ImageView;

    const v1, 0x7f0205f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 215
    :pswitch_8
    iget-object v0, p0, Lcom/android/settings/SViewColor;->mBackgroundImage:Landroid/widget/ImageView;

    const v1, 0x7f0205f7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 218
    :pswitch_9
    iget-object v0, p0, Lcom/android/settings/SViewColor;->mBackgroundImage:Landroid/widget/ImageView;

    const v1, 0x7f0205f8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0xa
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
