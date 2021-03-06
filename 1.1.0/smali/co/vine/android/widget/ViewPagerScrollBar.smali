.class public Lco/vine/android/widget/ViewPagerScrollBar;
.super Landroid/view/View;
.source "ViewPagerScrollBar.java"


# instance fields
.field private mColorIds:[I

.field private mOffsetPixels:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mPosition:I

.field private mRange:I

.field private final mTabBounds:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x0

    const v1, 0x7f01000d

    invoke-direct {p0, p1, v0, v1}, Lco/vine/android/widget/ViewPagerScrollBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    const v0, 0x7f01000d

    invoke-direct {p0, p1, p2, v0}, Lco/vine/android/widget/ViewPagerScrollBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lco/vine/android/widget/ViewPagerScrollBar;->mPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lco/vine/android/widget/ViewPagerScrollBar;->mTabBounds:Landroid/graphics/RectF;

    .line 44
    sget-object v4, Lco/vine/android/R$styleable;->ViewPagerScrollBar:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 48
    .local v1, colorArrayRes:I
    if-lez v1, :cond_1

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 50
    .local v3, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, p0, Lco/vine/android/widget/ViewPagerScrollBar;->mColorIds:[I

    .line 51
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 52
    iget-object v4, p0, Lco/vine/android/widget/ViewPagerScrollBar;->mColorIds:[I

    invoke-virtual {v3, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    aput v5, v4, v2

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    iget-object v4, p0, Lco/vine/android/widget/ViewPagerScrollBar;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lco/vine/android/widget/ViewPagerScrollBar;->mColorIds:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    .end local v2           #i:I
    .end local v3           #ta:Landroid/content/res/TypedArray;
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    return-void

    .line 58
    :cond_1
    iget-object v4, p0, Lco/vine/android/widget/ViewPagerScrollBar;->mPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 73
    iget-object v0, p0, Lco/vine/android/widget/ViewPagerScrollBar;->mTabBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lco/vine/android/widget/ViewPagerScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 74
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 66
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 67
    invoke-virtual {p0}, Lco/vine/android/widget/ViewPagerScrollBar;->updateBounds()V

    .line 68
    return-void
.end method

.method public scroll(II)V
    .locals 1
    .parameter "position"
    .parameter "pixels"

    .prologue
    .line 98
    iput p1, p0, Lco/vine/android/widget/ViewPagerScrollBar;->mPosition:I

    .line 99
    iget v0, p0, Lco/vine/android/widget/ViewPagerScrollBar;->mRange:I

    div-int v0, p2, v0

    int-to-float v0, v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lco/vine/android/widget/ViewPagerScrollBar;->mOffsetPixels:I

    .line 100
    invoke-virtual {p0}, Lco/vine/android/widget/ViewPagerScrollBar;->updateBounds()V

    .line 101
    invoke-virtual {p0}, Lco/vine/android/widget/ViewPagerScrollBar;->invalidate()V

    .line 102
    return-void
.end method

.method public setPageColor(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 106
    iget-object v0, p0, Lco/vine/android/widget/ViewPagerScrollBar;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lco/vine/android/widget/ViewPagerScrollBar;->mColorIds:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 85
    iput p1, p0, Lco/vine/android/widget/ViewPagerScrollBar;->mPosition:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/widget/ViewPagerScrollBar;->mOffsetPixels:I

    .line 87
    invoke-virtual {p0}, Lco/vine/android/widget/ViewPagerScrollBar;->updateBounds()V

    .line 88
    invoke-virtual {p0}, Lco/vine/android/widget/ViewPagerScrollBar;->invalidate()V

    .line 89
    return-void
.end method

.method public setRange(I)V
    .locals 0
    .parameter "range"

    .prologue
    .line 92
    iput p1, p0, Lco/vine/android/widget/ViewPagerScrollBar;->mRange:I

    .line 93
    invoke-virtual {p0}, Lco/vine/android/widget/ViewPagerScrollBar;->requestLayout()V

    .line 94
    invoke-virtual {p0}, Lco/vine/android/widget/ViewPagerScrollBar;->invalidate()V

    .line 95
    return-void
.end method

.method public updateBounds()V
    .locals 8

    .prologue
    .line 77
    invoke-virtual {p0}, Lco/vine/android/widget/ViewPagerScrollBar;->getWidth()I

    move-result v4

    iget v5, p0, Lco/vine/android/widget/ViewPagerScrollBar;->mRange:I

    div-int/2addr v4, v5

    int-to-float v3, v4

    .line 78
    .local v3, width:F
    iget v1, p0, Lco/vine/android/widget/ViewPagerScrollBar;->mOffsetPixels:I

    .line 79
    .local v1, v:I
    iget v4, p0, Lco/vine/android/widget/ViewPagerScrollBar;->mPosition:I

    int-to-float v4, v4

    mul-float v2, v3, v4

    .line 80
    .local v2, w:F
    int-to-float v4, v1

    add-float v0, v4, v2

    .line 81
    .local v0, left:F
    iget-object v4, p0, Lco/vine/android/widget/ViewPagerScrollBar;->mTabBounds:Landroid/graphics/RectF;

    const/4 v5, 0x0

    add-float v6, v0, v3

    invoke-virtual {p0}, Lco/vine/android/widget/ViewPagerScrollBar;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 82
    return-void
.end method
