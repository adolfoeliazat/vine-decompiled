.class public Lcom/googlecode/javacv/cpp/opencv_stitching$PlanePortraitWarper;
.super Lcom/googlecode/javacv/cpp/opencv_stitching$RotationWarper;
.source "opencv_stitching.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::detail"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_stitching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlanePortraitWarper"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 438
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$RotationWarper;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$PlanePortraitWarper;->allocate(F)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$RotationWarper;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate(F)V
.end method
