.class public Lcom/googlecode/javacv/cpp/avutil$AVOptionRange;
.super Lcom/googlecode/javacpp/Pointer;
.source "avutil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avutil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVOptionRange"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 4138
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4139
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avutil$AVOptionRange;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 4140
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avutil$AVOptionRange;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 4141
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native component_max()D
.end method

.method public native component_max(D)Lcom/googlecode/javacv/cpp/avutil$AVOptionRange;
.end method

.method public native component_min()D
.end method

.method public native component_min(D)Lcom/googlecode/javacv/cpp/avutil$AVOptionRange;
.end method

.method public native is_range()I
.end method

.method public native is_range(I)Lcom/googlecode/javacv/cpp/avutil$AVOptionRange;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4137
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avutil$AVOptionRange;->position(I)Lcom/googlecode/javacv/cpp/avutil$AVOptionRange;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avutil$AVOptionRange;
    .locals 1
    .parameter "position"

    .prologue
    .line 4145
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avutil$AVOptionRange;

    return-object v0
.end method

.method public native str()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native value_max()D
.end method

.method public native value_max(D)Lcom/googlecode/javacv/cpp/avutil$AVOptionRange;
.end method

.method public native value_min()D
.end method

.method public native value_min(D)Lcom/googlecode/javacv/cpp/avutil$AVOptionRange;
.end method
