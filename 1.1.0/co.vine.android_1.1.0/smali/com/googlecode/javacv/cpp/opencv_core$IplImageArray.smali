.class public Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;
.source "opencv_core.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Name;
    value = {
        "IplImage*"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IplImageArray"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 244
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/googlecode/javacv/cpp/opencv_core$CvArr;

    invoke-direct {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;-><init>([Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
    .locals 1
    .parameter "array"

    .prologue
    .line 243
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;->put([Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;

    return-void
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public bridge synthetic get()Lcom/googlecode/javacv/cpp/opencv_core$CvArr;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;->get()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    return-object v0
.end method

.method public native get()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ValueGetter;
    .end annotation
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;
    .locals 1
    .parameter "position"

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;

    return-object v0
.end method

.method public bridge synthetic put(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;->put(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put([Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;->put([Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;
    .locals 2
    .parameter "p"

    .prologue
    .line 256
    instance-of v0, p1, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-eqz v0, :cond_0

    .line 257
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;->put(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;

    return-object v0

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/ArrayStoreException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs put([Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;
    .locals 1
    .parameter "array"

    .prologue
    .line 252
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;->put([Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;

    return-object v0
.end method
