.class public Lcom/amazonaws/util/json/JSONWriter;
.super Ljava/lang/Object;


# static fields
.field private static final maxdepth:I = 0x14


# instance fields
.field private comma:Z

.field protected mode:C

.field private stack:[Lcom/amazonaws/util/json/JSONObject;

.field private top:I

.field protected writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/amazonaws/util/json/JSONWriter;->comma:Z

    const/16 v0, 0x69

    iput-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/amazonaws/util/json/JSONObject;

    iput-object v0, p0, Lcom/amazonaws/util/json/JSONWriter;->stack:[Lcom/amazonaws/util/json/JSONObject;

    iput v1, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    iput-object p1, p0, Lcom/amazonaws/util/json/JSONWriter;->writer:Ljava/io/Writer;

    return-void
.end method

.method private append(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    const/16 v2, 0x6f

    const/16 v1, 0x61

    if-nez p1, :cond_0

    new-instance v0, Lcom/amazonaws/util/json/JSONException;

    const-string v1, "Null pointer"

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    if-ne v0, v1, :cond_4

    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/amazonaws/util/json/JSONWriter;->comma:Z

    if-eqz v0, :cond_2

    iget-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/amazonaws/util/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :cond_2
    iget-object v0, p0, Lcom/amazonaws/util/json/JSONWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    if-ne v0, v2, :cond_3

    const/16 v0, 0x6b

    iput-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/util/json/JSONWriter;->comma:Z

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    invoke-direct {v1, v0}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance v0, Lcom/amazonaws/util/json/JSONException;

    const-string v1, "Value out of sequence."

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private end(CC)Lcom/amazonaws/util/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    iget-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    if-eq v0, p1, :cond_1

    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    const/16 v0, 0x61

    if-ne p1, v0, :cond_0

    const-string v0, "Misplaced endArray."

    :goto_0
    invoke-direct {v1, v0}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, "Misplaced endObject."

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/amazonaws/util/json/JSONWriter;->pop(C)V

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/util/json/JSONWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/util/json/JSONWriter;->comma:Z

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    invoke-direct {v1, v0}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private pop(C)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    const/16 v1, 0x6b

    const/16 v0, 0x61

    iget v2, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    if-gtz v2, :cond_0

    new-instance v0, Lcom/amazonaws/util/json/JSONException;

    const-string v1, "Nesting error."

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/amazonaws/util/json/JSONWriter;->stack:[Lcom/amazonaws/util/json/JSONObject;

    iget v3, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    move v2, v0

    :goto_0
    if-eq v2, p1, :cond_2

    new-instance v0, Lcom/amazonaws/util/json/JSONException;

    const-string v1, "Nesting error."

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    iget v2, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    if-nez v2, :cond_4

    const/16 v0, 0x64

    :cond_3
    :goto_1
    iput-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    return-void

    :cond_4
    iget-object v2, p0, Lcom/amazonaws/util/json/JSONWriter;->stack:[Lcom/amazonaws/util/json/JSONObject;

    iget v3, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_1
.end method

.method private push(Lcom/amazonaws/util/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    iget v0, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/amazonaws/util/json/JSONException;

    const-string v1, "Nesting too deep."

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/util/json/JSONWriter;->stack:[Lcom/amazonaws/util/json/JSONObject;

    iget v1, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    aput-object p1, v0, v1

    if-nez p1, :cond_1

    const/16 v0, 0x61

    :goto_0
    iput-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    iget v0, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    return-void

    :cond_1
    const/16 v0, 0x6b

    goto :goto_0
.end method


# virtual methods
.method public array()Lcom/amazonaws/util/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    iget-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    const/16 v1, 0x69

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JSONWriter;->push(Lcom/amazonaws/util/json/JSONObject;)V

    const-string v0, "["

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JSONWriter;->append(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/util/json/JSONWriter;->comma:Z

    return-object p0

    :cond_1
    new-instance v0, Lcom/amazonaws/util/json/JSONException;

    const-string v1, "Misplaced array."

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endArray()Lcom/amazonaws/util/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    const/16 v0, 0x61

    const/16 v1, 0x5d

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->end(CC)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lcom/amazonaws/util/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    const/16 v0, 0x6b

    const/16 v1, 0x7d

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->end(CC)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/amazonaws/util/json/JSONException;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/util/json/JSONWriter;->stack:[Lcom/amazonaws/util/json/JSONObject;

    iget v1, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Lcom/amazonaws/util/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;

    iget-boolean v0, p0, Lcom/amazonaws/util/json/JSONWriter;->comma:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazonaws/util/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :cond_1
    iget-object v0, p0, Lcom/amazonaws/util/json/JSONWriter;->writer:Ljava/io/Writer;

    invoke-static {p1}, Lcom/amazonaws/util/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazonaws/util/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/util/json/JSONWriter;->comma:Z

    const/16 v0, 0x6f

    iput-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    invoke-direct {v1, v0}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v0, Lcom/amazonaws/util/json/JSONException;

    const-string v1, "Misplaced key."

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public object()Lcom/amazonaws/util/json/JSONWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    const/16 v2, 0x6f

    iget-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    iput-char v2, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    :cond_0
    iget-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_2

    :cond_1
    const-string v0, "{"

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JSONWriter;->append(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    new-instance v0, Lcom/amazonaws/util/json/JSONObject;

    invoke-direct {v0}, Lcom/amazonaws/util/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JSONWriter;->push(Lcom/amazonaws/util/json/JSONObject;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/util/json/JSONWriter;->comma:Z

    return-object p0

    :cond_2
    new-instance v0, Lcom/amazonaws/util/json/JSONException;

    const-string v1, "Misplaced object."

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public value(D)Lcom/amazonaws/util/json/JSONWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(J)Lcom/amazonaws/util/json/JSONWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    invoke-static {p1}, Lcom/amazonaws/util/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JSONWriter;->append(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    invoke-static {v0}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(Ljava/util/Date;)Lcom/amazonaws/util/json/JSONWriter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(Z)Lcom/amazonaws/util/json/JSONWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JSONWriter;->append(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
