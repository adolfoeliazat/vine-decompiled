.class public Lco/vine/android/recorder/ProgressView;
.super Landroid/view/View;
.source "ProgressView.java"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field public shouldBeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/ProgressView;->mPaint:Landroid/graphics/Paint;

    .line 23
    invoke-direct {p0}, Lco/vine/android/recorder/ProgressView;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/ProgressView;->mPaint:Landroid/graphics/Paint;

    .line 29
    invoke-direct {p0}, Lco/vine/android/recorder/ProgressView;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/ProgressView;->mPaint:Landroid/graphics/Paint;

    .line 35
    invoke-direct {p0}, Lco/vine/android/recorder/ProgressView;->init()V

    .line 36
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lco/vine/android/recorder/ProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    iget-object v0, p0, Lco/vine/android/recorder/ProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lco/vine/android/recorder/ProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lco/vine/android/recorder/R$color;->vine_green:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 47
    iget v0, p0, Lco/vine/android/recorder/ProgressView;->shouldBeWidth:I

    if-lez v0, :cond_0

    .line 48
    iget v0, p0, Lco/vine/android/recorder/ProgressView;->shouldBeWidth:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lco/vine/android/recorder/ProgressView;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lco/vine/android/recorder/ProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 50
    :cond_0
    return-void
.end method
