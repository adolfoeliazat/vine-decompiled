.class public Lcom/flurry/org/apache/avro/SchemaParseException;
.super Lcom/flurry/org/apache/avro/AvroRuntimeException;
.source "SchemaParseException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
