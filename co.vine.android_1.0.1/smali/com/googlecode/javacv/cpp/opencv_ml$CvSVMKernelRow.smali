.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernelRow;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_ml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvSVMKernelRow"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 365
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernelRow;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernelRow;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native data()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native data(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernelRow;
.end method

.method public native next()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernelRow;
.end method

.method public native next(Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernelRow;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernelRow;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernelRow;->position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernelRow;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernelRow;
    .locals 1
    .parameter "position"

    .prologue
    .line 373
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernelRow;

    return-object v0
.end method

.method public native prev()Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernelRow;
.end method

.method public native prev(Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernelRow;)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernelRow;
.end method
