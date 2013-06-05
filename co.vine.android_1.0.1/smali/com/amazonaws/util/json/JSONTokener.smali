.class public Lcom/amazonaws/util/json/JSONTokener;
.super Ljava/lang/Object;


# instance fields
.field private character:I

.field private eof:Z

.field private index:I

.field private line:I

.field private previous:C

.field private reader:Ljava/io/Reader;

.field private usePrevious:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/amazonaws/util/json/JSONTokener;->reader:Ljava/io/Reader;

    iput-boolean v1, p0, Lcom/amazonaws/util/json/JSONTokener;->eof:Z

    iput-boolean v1, p0, Lcom/amazonaws/util/json/JSONTokener;->usePrevious:Z

    iput-char v1, p0, Lcom/amazonaws/util/json/JSONTokener;->previous:C

    iput v1, p0, Lcom/amazonaws/util/json/JSONTokener;->index:I

    iput v2, p0, Lcom/amazonaws/util/json/JSONTokener;->character:I

    iput v2, p0, Lcom/amazonaws/util/json/JSONTokener;->line:I

    return-void

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method public static dehexchar(C)I
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x37

    goto :goto_0

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x57

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public back()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amazonaws/util/json/JSONTokener;->usePrevious:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amazonaws/util/json/JSONTokener;->index:I

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/amazonaws/util/json/JSONException;

    const-string v1, "Stepping back two steps is not supported"

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/amazonaws/util/json/JSONTokener;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazonaws/util/json/JSONTokener;->index:I

    iget v0, p0, Lcom/amazonaws/util/json/JSONTokener;->character:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazonaws/util/json/JSONTokener;->character:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/util/json/JSONTokener;->usePrevious:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/util/json/JSONTokener;->eof:Z

    return-void
.end method

.method public end()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazonaws/util/json/JSONTokener;->eof:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/util/json/JSONTokener;->usePrevious:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public more()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->next()C

    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->end()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->back()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    const/16 v5, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/amazonaws/util/json/JSONTokener;->usePrevious:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/amazonaws/util/json/JSONTokener;->usePrevious:Z

    iget-char v0, p0, Lcom/amazonaws/util/json/JSONTokener;->previous:C

    :cond_0
    :goto_0
    iget v3, p0, Lcom/amazonaws/util/json/JSONTokener;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/amazonaws/util/json/JSONTokener;->index:I

    iget-char v3, p0, Lcom/amazonaws/util/json/JSONTokener;->previous:C

    const/16 v4, 0xd

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/amazonaws/util/json/JSONTokener;->line:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/amazonaws/util/json/JSONTokener;->line:I

    if-ne v0, v5, :cond_2

    :goto_1
    iput v1, p0, Lcom/amazonaws/util/json/JSONTokener;->character:I

    :goto_2
    int-to-char v0, v0

    iput-char v0, p0, Lcom/amazonaws/util/json/JSONTokener;->previous:C

    iget-char v0, p0, Lcom/amazonaws/util/json/JSONTokener;->previous:C

    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/util/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-gtz v0, :cond_0

    iput-boolean v2, p0, Lcom/amazonaws/util/json/JSONTokener;->eof:Z

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    invoke-direct {v1, v0}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    if-ne v0, v5, :cond_4

    iget v2, p0, Lcom/amazonaws/util/json/JSONTokener;->line:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amazonaws/util/json/JSONTokener;->line:I

    iput v1, p0, Lcom/amazonaws/util/json/JSONTokener;->character:I

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/amazonaws/util/json/JSONTokener;->character:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazonaws/util/json/JSONTokener;->character:I

    goto :goto_2
.end method

.method public next(C)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->next()C

    move-result v0

    if-eq v0, p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and instead saw \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONException;

    move-result-object v0

    throw v0

    :cond_0
    return v0
.end method

.method public next(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-array v1, p1, [C

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->next()C

    move-result v2

    aput-char v2, v1, v0

    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->end()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "Substring bounds error"

    invoke-virtual {p0, v0}, Lcom/amazonaws/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONException;

    move-result-object v0

    throw v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public nextClean()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->next()C

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    :cond_1
    return v0
.end method

.method public nextString(C)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->next()C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "Unterminated string"

    invoke-virtual {p0, v0}, Lcom/amazonaws/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONException;

    move-result-object v0

    throw v0

    :sswitch_1
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->next()C

    move-result v1

    sparse-switch v1, :sswitch_data_1

    const-string v0, "Illegal escape."

    invoke-virtual {p0, v0}, Lcom/amazonaws/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONException;

    move-result-object v0

    throw v0

    :sswitch_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_3
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_4
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_5
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_6
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_7
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/amazonaws/util/json/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_8
        0x27 -> :sswitch_8
        0x2f -> :sswitch_8
        0x5c -> :sswitch_8
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_4
        0x72 -> :sswitch_6
        0x74 -> :sswitch_3
        0x75 -> :sswitch_7
    .end sparse-switch
.end method

.method public nextTo(C)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->next()C

    move-result v1

    if-eq v1, p1, :cond_0

    if-eqz v1, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->back()V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public nextTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->next()C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    if-eqz v1, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->back()V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public nextValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->nextClean()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    const/16 v2, 0x20

    if-lt v0, v2, :cond_0

    const-string v2, ",:]}/\\\"[{;=#"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->next()C

    move-result v0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0, v0}, Lcom/amazonaws/util/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :sswitch_1
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->back()V

    new-instance v0, Lcom/amazonaws/util/json/JSONObject;

    invoke-direct {v0, p0}, Lcom/amazonaws/util/json/JSONObject;-><init>(Lcom/amazonaws/util/json/JSONTokener;)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->back()V

    new-instance v0, Lcom/amazonaws/util/json/JSONArray;

    invoke-direct {v0, p0}, Lcom/amazonaws/util/json/JSONArray;-><init>(Lcom/amazonaws/util/json/JSONTokener;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->back()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Missing value"

    invoke-virtual {p0, v0}, Lcom/amazonaws/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {v0}, Lcom/amazonaws/util/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_2
        0x5b -> :sswitch_2
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method public skipTo(C)C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    :try_start_0
    iget v1, p0, Lcom/amazonaws/util/json/JSONTokener;->index:I

    iget v2, p0, Lcom/amazonaws/util/json/JSONTokener;->character:I

    iget v3, p0, Lcom/amazonaws/util/json/JSONTokener;->line:I

    iget-object v0, p0, Lcom/amazonaws/util/json/JSONTokener;->reader:Ljava/io/Reader;

    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Ljava/io/Reader;->mark(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->next()C

    move-result v0

    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/amazonaws/util/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->reset()V

    iput v1, p0, Lcom/amazonaws/util/json/JSONTokener;->index:I

    iput v2, p0, Lcom/amazonaws/util/json/JSONTokener;->character:I

    iput v3, p0, Lcom/amazonaws/util/json/JSONTokener;->line:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :cond_1
    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->back()V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    invoke-direct {v1, v0}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public syntaxError(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONException;
    .locals 3

    new-instance v0, Lcom/amazonaws/util/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazonaws/util/json/JSONTokener;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazonaws/util/json/JSONTokener;->character:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazonaws/util/json/JSONTokener;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
