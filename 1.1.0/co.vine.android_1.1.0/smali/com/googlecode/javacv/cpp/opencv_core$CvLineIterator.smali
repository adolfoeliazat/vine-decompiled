.class public Lcom/googlecode/javacv/cpp/opencv_core$CvLineIterator;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvLineIterator"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 2686
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2687
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvLineIterator;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 2688
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvLineIterator;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2689
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native err()I
.end method

.method public native err(I)Lcom/googlecode/javacv/cpp/opencv_core$CvLineIterator;
.end method

.method public native minus_delta()I
.end method

.method public native minus_delta(I)Lcom/googlecode/javacv/cpp/opencv_core$CvLineIterator;
.end method

.method public native minus_step()I
.end method

.method public native minus_step(I)Lcom/googlecode/javacv/cpp/opencv_core$CvLineIterator;
.end method

.method public native plus_delta()I
.end method

.method public native plus_delta(I)Lcom/googlecode/javacv/cpp/opencv_core$CvLineIterator;
.end method

.method public native plus_step()I
.end method

.method public native plus_step(I)Lcom/googlecode/javacv/cpp/opencv_core$CvLineIterator;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2685
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvLineIterator;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvLineIterator;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvLineIterator;
    .locals 1
    .parameter "position"

    .prologue
    .line 2694
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvLineIterator;

    return-object v0
.end method

.method public native ptr()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uchar*"
        }
    .end annotation
.end method

.method public native ptr(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvLineIterator;
.end method
