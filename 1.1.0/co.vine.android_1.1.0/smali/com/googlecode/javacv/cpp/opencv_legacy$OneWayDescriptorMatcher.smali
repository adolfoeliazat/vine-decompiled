.class public Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher;
.super Lcom/googlecode/javacv/cpp/opencv_features2d$GenericDescriptorMatcher;
.source "opencv_legacy.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OneWayDescriptorMatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher$Params;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 2176
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2215
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$GenericDescriptorMatcher;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2216
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$GenericDescriptorMatcher;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher$Params;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 2217
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$GenericDescriptorMatcher;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher;->allocate(Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher$Params;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher$Params;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method


# virtual methods
.method public native initialize(Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher$Params;Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorBase;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
.end method
