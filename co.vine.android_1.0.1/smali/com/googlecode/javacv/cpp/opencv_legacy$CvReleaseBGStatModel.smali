.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvReleaseBGStatModel;
.super Lcom/googlecode/javacpp/FunctionPointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvReleaseBGStatModel"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 2509
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2508
    invoke-direct {p0}, Lcom/googlecode/javacpp/FunctionPointer;-><init>()V

    return-void
.end method


# virtual methods
.method public native call(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method
