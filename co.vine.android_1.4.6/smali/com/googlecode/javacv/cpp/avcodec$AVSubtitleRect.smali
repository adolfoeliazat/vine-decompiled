.class public Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.super Lcom/googlecode/javacpp/Pointer;
.source "avcodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avcodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVSubtitleRect"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 3646
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3647
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 3648
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3649
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native ass()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public native ass(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.end method

.method public native flags()I
.end method

.method public native flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.end method

.method public native h()I
.end method

.method public native h(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.end method

.method public native nb_colors()I
.end method

.method public native nb_colors(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.end method

.method public native pict()Lcom/googlecode/javacv/cpp/avcodec$AVPicture;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native pict(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3645
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;->position(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
    .locals 1
    .parameter "position"

    .prologue
    .line 3653
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;

    return-object v0
.end method

.method public native text()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public native text(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.end method

.method public native type()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVSubtitleType"
        }
    .end annotation
.end method

.method public native type(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.end method

.method public native w()I
.end method

.method public native w(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.end method

.method public native x()I
.end method

.method public native x(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.end method

.method public native y()I
.end method

.method public native y(I)Lcom/googlecode/javacv/cpp/avcodec$AVSubtitleRect;
.end method
