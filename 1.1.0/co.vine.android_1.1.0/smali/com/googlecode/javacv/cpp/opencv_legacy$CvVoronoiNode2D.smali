.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiNode2D;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvSetElem;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvVoronoiNode2D"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1232
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1233
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSetElem;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiNode2D;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1234
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSetElem;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiNode2D;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1235
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSetElem;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1231
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiNode2D;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiNode2D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSetElem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1231
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiNode2D;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiNode2D;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiNode2D;
    .locals 1
    .parameter "position"

    .prologue
    .line 1240
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSetElem;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSetElem;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiNode2D;

    return-object v0
.end method

.method public native pt()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native pt(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiNode2D;
.end method

.method public native radius()F
.end method

.method public native radius(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiNode2D;
.end method
