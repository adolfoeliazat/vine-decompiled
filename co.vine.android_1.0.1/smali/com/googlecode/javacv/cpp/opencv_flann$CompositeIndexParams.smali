.class public Lcom/googlecode/javacv/cpp/opencv_flann$CompositeIndexParams;
.super Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;
.source "opencv_flann.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::flann"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_flann;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompositeIndexParams"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 160
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_flann$CompositeIndexParams;->allocate()V

    return-void
.end method

.method public constructor <init>(IIIIF)V
    .locals 0
    .parameter "trees"
    .parameter "branching"
    .parameter "iterations"
    .parameter "centers_init"
    .parameter "cb_index"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;-><init>()V

    .line 164
    invoke-direct/range {p0 .. p5}, Lcom/googlecode/javacv/cpp/opencv_flann$CompositeIndexParams;->allocate(IIIIF)V

    .line 165
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIIIF)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "cvflann::flann_centers_init_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method
