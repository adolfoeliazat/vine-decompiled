.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvForestTree;
.super Lcom/googlecode/javacv/cpp/opencv_ml$CvDTree;
.source "opencv_ml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvForestTree"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 963
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 964
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTree;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvForestTree;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 965
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTree;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native get_var_count()I
.end method

.method public native read(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Lcom/googlecode/javacv/cpp/opencv_ml$CvRTrees;Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;)V
.end method

.method public native train(Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeTrainData;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_ml$CvRTrees;)Z
.end method
