.class public Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.super Lcom/googlecode/javacpp/Pointer;
.source "avformat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avformat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVIOContext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/avformat$AVIOContext$Read_seek;,
        Lcom/googlecode/javacv/cpp/avformat$AVIOContext$Read_pause;,
        Lcom/googlecode/javacv/cpp/avformat$AVIOContext$Update_checksum;,
        Lcom/googlecode/javacv/cpp/avformat$AVIOContext$Seek;,
        Lcom/googlecode/javacv/cpp/avformat$AVIOContext$Write_packet;,
        Lcom/googlecode/javacv/cpp/avformat$AVIOContext$Read_packet;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 334
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avformat$AVIOContext;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVIOContext;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native av_class(Lcom/googlecode/javacv/cpp/avutil$AVClass;)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native av_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native buf_end()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned char*"
        }
    .end annotation
.end method

.method public native buf_end(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native buf_ptr()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned char*"
        }
    .end annotation
.end method

.method public native buf_ptr(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native buffer()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned char*"
        }
    .end annotation
.end method

.method public native buffer(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native buffer_size()I
.end method

.method public native buffer_size(I)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native bytes_read()J
.end method

.method public native bytes_read(J)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native checksum()J
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation
.end method

.method public native checksum(J)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native checksum_ptr()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned char*"
        }
    .end annotation
.end method

.method public native checksum_ptr(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native direct()I
.end method

.method public native direct(I)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native eof_reached()I
.end method

.method public native eof_reached(I)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native error()I
.end method

.method public native error(I)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native max_packet_size()I
.end method

.method public native max_packet_size(I)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native maxsize()J
.end method

.method public native maxsize(J)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native must_flush()I
.end method

.method public native must_flush(I)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native opaque()Lcom/googlecode/javacpp/Pointer;
.end method

.method public native opaque(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native pos()J
.end method

.method public native pos(J)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVIOContext;->position(I)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
    .locals 1
    .parameter "position"

    .prologue
    .line 342
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avformat$AVIOContext;

    return-object v0
.end method

.method public native read_packet()Lcom/googlecode/javacv/cpp/avformat$AVIOContext$Read_packet;
.end method

.method public native read_packet(Lcom/googlecode/javacv/cpp/avformat$AVIOContext$Read_packet;)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native read_pause()Lcom/googlecode/javacv/cpp/avformat$AVIOContext$Read_pause;
.end method

.method public native read_pause(Lcom/googlecode/javacv/cpp/avformat$AVIOContext$Read_pause;)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native read_seek()Lcom/googlecode/javacv/cpp/avformat$AVIOContext$Read_seek;
.end method

.method public native read_seek(Lcom/googlecode/javacv/cpp/avformat$AVIOContext$Read_seek;)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native seek()Lcom/googlecode/javacv/cpp/avformat$AVIOContext$Seek;
.end method

.method public native seek(Lcom/googlecode/javacv/cpp/avformat$AVIOContext$Seek;)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native seek_count()I
.end method

.method public native seek_count(I)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native seekable()I
.end method

.method public native seekable(I)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native update_checksum()Lcom/googlecode/javacv/cpp/avformat$AVIOContext$Update_checksum;
.end method

.method public native update_checksum(Lcom/googlecode/javacv/cpp/avformat$AVIOContext$Update_checksum;)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native write_flag()I
.end method

.method public native write_flag(I)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public native write_packet()Lcom/googlecode/javacv/cpp/avformat$AVIOContext$Write_packet;
.end method

.method public native write_packet(Lcom/googlecode/javacv/cpp/avformat$AVIOContext$Write_packet;)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method
