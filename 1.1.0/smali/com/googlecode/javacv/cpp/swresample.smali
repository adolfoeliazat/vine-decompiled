.class public Lcom/googlecode/javacv/cpp/swresample;
.super Ljava/lang/Object;
.source "swresample.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            cinclude = {
                "<libswresample/swresample.h>"
            }
            define = {
                "__STDC_CONSTANT_MACROS"
            }
            includepath = {
                "/usr/local/include/ffmpeg/:/usr/local/include/:/opt/local/include/ffmpeg/:/opt/local/include/:/usr/include/ffmpeg/"
            }
            link = {
                "swresample@.0",
                "avutil@.52"
            }
            linkpath = {
                "/usr/local/lib/:/usr/local/lib64/:/opt/local/lib/:/opt/local/lib64/"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            includepath = {
                "C:/MinGW/local/include/ffmpeg/;C:/MinGW/include/ffmpeg/;C:/MinGW/local/include/;src/main/resources/com/googlecode/javacv/cpp/"
            }
            linkpath = {
                "C:/MinGW/local/lib/;C:/MinGW/lib/"
            }
            preload = {
                "swresample-0"
            }
            preloadpath = {
                "C:/MinGW/local/bin/;C:/MinGW/bin/"
            }
            value = {
                "windows"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            includepath = {
                "../include/"
            }
            linkpath = {
                "../lib/"
            }
            value = {
                "android"
            }
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/swresample$SwrContext;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final LIBSWRESAMPLE_BUILD:I = 0x0

.field public static final LIBSWRESAMPLE_IDENT:Ljava/lang/String; = null

.field public static final LIBSWRESAMPLE_VERSION:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final LIBSWRESAMPLE_VERSION_INT:I = 0x0

.field public static final LIBSWRESAMPLE_VERSION_MAJOR:I = 0x0

.field public static final LIBSWRESAMPLE_VERSION_MICRO:I = 0x66

.field public static final LIBSWRESAMPLE_VERSION_MINOR:I = 0x11

.field public static final SWR_CH_MAX:I = 0x20

.field public static final SWR_DITHER_NONE:I = 0x0

.field public static final SWR_DITHER_NS_F_WEIGHTED:I = 0x42

.field public static final SWR_DITHER_NS_HIGH_SHIBATA:I = 0x47

.field public static final SWR_DITHER_NS_IMPROVED_E_WEIGHTED:I = 0x44

.field public static final SWR_DITHER_NS_LIPSHITZ:I = 0x41

.field public static final SWR_DITHER_NS_LOW_SHIBATA:I = 0x46

.field public static final SWR_DITHER_NS_MODIFIED_E_WEIGHTED:I = 0x43

.field public static final SWR_DITHER_NS_SHIBATA:I = 0x45

.field public static final SWR_DITHER_RECTANGULAR:I = 0x1

.field public static final SWR_DITHER_TRIANGULAR:I = 0x2

.field public static final SWR_DITHER_TRIANGULAR_HIGHPASS:I = 0x3

.field public static final SWR_ENGINE_SOXR:I = 0x1

.field public static final SWR_ENGINE_SWR:I = 0x0

.field public static final SWR_FILTER_TYPE_BLACKMAN_NUTTALL:I = 0x1

.field public static final SWR_FILTER_TYPE_CUBIC:I = 0x0

.field public static final SWR_FILTER_TYPE_KAISER:I = 0x2

.field public static final SWR_FLAG_RESAMPLE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    const/16 v2, 0x11

    const/4 v1, 0x0

    .line 69
    const-class v0, Lcom/googlecode/javacv/cpp/avutil;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    .line 81
    invoke-static {v1, v2, v3}, Lcom/googlecode/javacv/cpp/avutil;->AV_VERSION_INT(III)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/swresample;->LIBSWRESAMPLE_VERSION_INT:I

    .line 84
    invoke-static {v1, v2, v3}, Lcom/googlecode/javacv/cpp/avutil;->AV_VERSION(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/cpp/swresample;->LIBSWRESAMPLE_VERSION:Ljava/lang/String;

    .line 87
    sget v0, Lcom/googlecode/javacv/cpp/swresample;->LIBSWRESAMPLE_VERSION_INT:I

    sput v0, Lcom/googlecode/javacv/cpp/swresample;->LIBSWRESAMPLE_BUILD:I

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/googlecode/javacv/cpp/swresample;->LIBSWRESAMPLE_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/cpp/swresample;->LIBSWRESAMPLE_IDENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

.method public static native swr_alloc()Lcom/googlecode/javacv/cpp/swresample$SwrContext;
.end method

.method public static native swr_alloc_set_opts(Lcom/googlecode/javacv/cpp/swresample$SwrContext;JIIJIIILcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/swresample$SwrContext;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native swr_convert(Lcom/googlecode/javacv/cpp/swresample$SwrContext;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/BytePointer;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native swr_convert(Lcom/googlecode/javacv/cpp/swresample$SwrContext;Lcom/googlecode/javacpp/PointerPointer;ILcom/googlecode/javacpp/PointerPointer;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native swr_drop_output(Lcom/googlecode/javacv/cpp/swresample$SwrContext;I)I
.end method

.method public static native swr_free(Lcom/googlecode/javacv/cpp/swresample$SwrContext;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native swr_get_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native swr_get_delay(Lcom/googlecode/javacv/cpp/swresample$SwrContext;J)J
.end method

.method public static native swr_init(Lcom/googlecode/javacv/cpp/swresample$SwrContext;)I
.end method

.method public static native swr_inject_silence(Lcom/googlecode/javacv/cpp/swresample$SwrContext;I)I
.end method

.method public static native swr_next_pts(Lcom/googlecode/javacv/cpp/swresample$SwrContext;J)J
.end method

.method public static native swr_set_channel_mapping(Lcom/googlecode/javacv/cpp/swresample$SwrContext;[I)I
.end method

.method public static native swr_set_compensation(Lcom/googlecode/javacv/cpp/swresample$SwrContext;II)I
.end method

.method public static native swr_set_matrix(Lcom/googlecode/javacv/cpp/swresample$SwrContext;[DI)I
.end method

.method public static native swresample_configuration()Ljava/lang/String;
.end method

.method public static native swresample_license()Ljava/lang/String;
.end method

.method public static native swresample_version()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method
