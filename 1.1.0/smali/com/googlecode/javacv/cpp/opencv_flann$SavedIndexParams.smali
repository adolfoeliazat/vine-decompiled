.class public Lcom/googlecode/javacv/cpp/opencv_flann$SavedIndexParams;
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
    name = "SavedIndexParams"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 221
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "filename"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_flann$SavedIndexParams;->allocate(Ljava/lang/String;)V

    return-void
.end method

.method private native allocate(Ljava/lang/String;)V
.end method
