.class Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM$ReleaseDeallocator;
.super Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;
.source "opencv_legacy.java"

# interfaces
.implements Lcom/googlecode/javacpp/Pointer$Deallocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReleaseDeallocator"
.end annotation


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public deallocate()V
    .locals 0

    .prologue
    .line 449
    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvRelease2DHMM(Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;)V

    return-void
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 447
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;

    move-result-object v0

    return-object v0
.end method
