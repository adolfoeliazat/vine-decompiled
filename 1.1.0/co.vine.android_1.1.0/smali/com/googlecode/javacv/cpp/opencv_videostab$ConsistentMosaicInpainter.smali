.class public Lcom/googlecode/javacv/cpp/opencv_videostab$ConsistentMosaicInpainter;
.super Lcom/googlecode/javacv/cpp/opencv_videostab$InpainterBase;
.source "opencv_videostab.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::videostab"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_videostab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConsistentMosaicInpainter"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 436
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab$InpainterBase;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab$ConsistentMosaicInpainter;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 438
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_videostab$InpainterBase;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native setStdevThresh(F)V
.end method

.method public native stdevThresh()F
.end method
