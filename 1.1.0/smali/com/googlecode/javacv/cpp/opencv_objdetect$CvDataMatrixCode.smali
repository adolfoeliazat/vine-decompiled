.class public Lcom/googlecode/javacv/cpp/opencv_objdetect$CvDataMatrixCode;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_objdetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_objdetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvDataMatrixCode"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 626
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvDataMatrixCode;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvDataMatrixCode;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 629
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native corners()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native corners(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvDataMatrixCode;
.end method

.method public native msg(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvDataMatrixCode;
.end method

.method public native msg()Ljava/lang/String;
.end method

.method public native original()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native original(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvDataMatrixCode;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 625
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvDataMatrixCode;->position(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvDataMatrixCode;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvDataMatrixCode;
    .locals 1
    .parameter "position"

    .prologue
    .line 634
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvDataMatrixCode;

    return-object v0
.end method
