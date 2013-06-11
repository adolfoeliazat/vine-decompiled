.class public final Lcom/fasterxml/jackson/core/Base64Variant;
.super Ljava/lang/Object;
.source "Base64Variant.java"


# static fields
.field public static final BASE64_VALUE_INVALID:I = -0x1

.field public static final BASE64_VALUE_PADDING:I = -0x2

.field static final PADDING_CHAR_NONE:C


# instance fields
.field private final _asciiToBase64:[I

.field private final _base64ToAsciiB:[B

.field private final _base64ToAsciiC:[C

.field final _maxLineLength:I

.field final _name:Ljava/lang/String;

.field final _paddingChar:C

.field final _usesPadding:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;I)V
    .locals 6
    .parameter "base"
    .parameter "name"
    .parameter "maxLineLength"

    .prologue
    .line 145
    iget-boolean v3, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    iget-char v4, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/Base64Variant;-><init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCI)V

    .line 146
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCI)V
    .locals 6
    .parameter "base"
    .parameter "name"
    .parameter "usesPadding"
    .parameter "paddingChar"
    .parameter "maxLineLength"

    .prologue
    const/16 v4, 0x40

    const/4 v5, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v3, 0x80

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    .line 63
    new-array v3, v4, [C

    iput-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    .line 69
    new-array v3, v4, [B

    iput-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    .line 155
    iput-object p2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    .line 156
    iget-object v0, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    .line 157
    .local v0, srcB:[B
    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    array-length v4, v0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget-object v1, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    .line 159
    .local v1, srcC:[C
    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    array-length v4, v1

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object v2, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    .line 161
    .local v2, srcV:[I
    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    array-length v4, v2

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    .line 164
    iput-char p4, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    .line 165
    iput p5, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZCI)V
    .locals 6
    .parameter "name"
    .parameter "base64Alphabet"
    .parameter "usesPadding"
    .parameter "paddingChar"
    .parameter "maxLineLength"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x40

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v3, 0x80

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    .line 63
    new-array v3, v4, [C

    iput-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    .line 69
    new-array v3, v4, [B

    iput-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    .line 110
    iput-object p1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    .line 111
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    .line 112
    iput-char p4, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    .line 113
    iput p5, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    .line 118
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 119
    .local v1, alphaLen:I
    if-eq v1, v4, :cond_0

    .line 120
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Base64Alphabet length must be exactly 64 (was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    invoke-virtual {p2, v5, v1, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 125
    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 126
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 127
    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    aget-char v0, v3, v2

    .line 128
    .local v0, alpha:C
    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    int-to-byte v4, v0

    aput-byte v4, v3, v2

    .line 129
    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aput v2, v3, v0

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v0           #alpha:C
    :cond_1
    if-eqz p3, :cond_2

    .line 134
    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    const/4 v4, -0x2

    aput v4, v3, p4

    .line 136
    :cond_2
    return-void
.end method


# virtual methods
.method public decodeBase64Byte(B)I
    .locals 2
    .parameter "b"

    .prologue
    .line 206
    move v0, p1

    .line 207
    .local v0, ch:I
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aget v1, v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public decodeBase64Char(C)I
    .locals 2
    .parameter "c"

    .prologue
    .line 195
    move v0, p1

    .line 196
    .local v0, ch:I
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aget v1, v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public decodeBase64Char(I)I
    .locals 1
    .parameter "ch"

    .prologue
    .line 201
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public encode([B)Ljava/lang/String;
    .locals 1
    .parameter "input"

    .prologue
    .line 337
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->encode([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode([BZ)Ljava/lang/String;
    .locals 12
    .parameter "input"
    .parameter "addQuotes"

    .prologue
    const/16 v11, 0x22

    .line 350
    array-length v2, p1

    .line 354
    .local v2, inputEnd:I
    shr-int/lit8 v9, v2, 0x2

    add-int/2addr v9, v2

    shr-int/lit8 v10, v2, 0x3

    add-int v6, v9, v10

    .line 355
    .local v6, outputLen:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 357
    .local v8, sb:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 358
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v9

    shr-int/lit8 v1, v9, 0x2

    .line 364
    .local v1, chunksBeforeLF:I
    const/4 v4, 0x0

    .line 365
    .local v4, inputPtr:I
    add-int/lit8 v7, v2, -0x3

    .local v7, safeInputEnd:I
    move v5, v4

    .line 367
    .end local v4           #inputPtr:I
    .local v5, inputPtr:I
    :goto_0
    if-gt v5, v7, :cond_2

    .line 369
    add-int/lit8 v4, v5, 0x1

    .end local v5           #inputPtr:I
    .restart local v4       #inputPtr:I
    aget-byte v9, p1, v5

    shl-int/lit8 v0, v9, 0x8

    .line 370
    .local v0, b24:I
    add-int/lit8 v5, v4, 0x1

    .end local v4           #inputPtr:I
    .restart local v5       #inputPtr:I
    aget-byte v9, p1, v4

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v0, v9

    .line 371
    shl-int/lit8 v9, v0, 0x8

    add-int/lit8 v4, v5, 0x1

    .end local v5           #inputPtr:I
    .restart local v4       #inputPtr:I
    aget-byte v10, p1, v5

    and-int/lit16 v10, v10, 0xff

    or-int v0, v9, v10

    .line 372
    invoke-virtual {p0, v8, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(Ljava/lang/StringBuilder;I)V

    .line 373
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1

    .line 375
    const/16 v9, 0x5c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    const/16 v9, 0x6e

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v9

    shr-int/lit8 v1, v9, 0x2

    :cond_1
    move v5, v4

    .line 379
    .end local v4           #inputPtr:I
    .restart local v5       #inputPtr:I
    goto :goto_0

    .line 382
    .end local v0           #b24:I
    :cond_2
    sub-int v3, v2, v5

    .line 383
    .local v3, inputLeft:I
    if-lez v3, :cond_5

    .line 384
    add-int/lit8 v4, v5, 0x1

    .end local v5           #inputPtr:I
    .restart local v4       #inputPtr:I
    aget-byte v9, p1, v5

    shl-int/lit8 v0, v9, 0x10

    .line 385
    .restart local v0       #b24:I
    const/4 v9, 0x2

    if-ne v3, v9, :cond_3

    .line 386
    add-int/lit8 v5, v4, 0x1

    .end local v4           #inputPtr:I
    .restart local v5       #inputPtr:I
    aget-byte v9, p1, v4

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v0, v9

    move v4, v5

    .line 388
    .end local v5           #inputPtr:I
    .restart local v4       #inputPtr:I
    :cond_3
    invoke-virtual {p0, v8, v0, v3}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(Ljava/lang/StringBuilder;II)V

    .line 391
    .end local v0           #b24:I
    :goto_1
    if-eqz p2, :cond_4

    .line 392
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .end local v4           #inputPtr:I
    .restart local v5       #inputPtr:I
    :cond_5
    move v4, v5

    .end local v5           #inputPtr:I
    .restart local v4       #inputPtr:I
    goto :goto_1
.end method

.method public encodeBase64BitsAsByte(I)B
    .locals 1
    .parameter "value"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public encodeBase64BitsAsChar(I)C
    .locals 1
    .parameter "value"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public encodeBase64Chunk(I[BI)I
    .locals 3
    .parameter "b24"
    .parameter "buffer"
    .parameter "ptr"

    .prologue
    .line 296
    add-int/lit8 v0, p3, 0x1

    .end local p3
    .local v0, ptr:I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p2, p3

    .line 297
    add-int/lit8 p3, v0, 0x1

    .end local v0           #ptr:I
    .restart local p3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p2, v0

    .line 298
    add-int/lit8 v0, p3, 0x1

    .end local p3
    .restart local v0       #ptr:I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p2, p3

    .line 299
    add-int/lit8 p3, v0, 0x1

    .end local v0           #ptr:I
    .restart local p3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    and-int/lit8 v2, p1, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p2, v0

    .line 300
    return p3
.end method

.method public encodeBase64Chunk(I[CI)I
    .locals 3
    .parameter "b24"
    .parameter "buffer"
    .parameter "ptr"

    .prologue
    .line 230
    add-int/lit8 v0, p3, 0x1

    .end local p3
    .local v0, ptr:I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p2, p3

    .line 231
    add-int/lit8 p3, v0, 0x1

    .end local v0           #ptr:I
    .restart local p3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p2, v0

    .line 232
    add-int/lit8 v0, p3, 0x1

    .end local p3
    .restart local v0       #ptr:I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p2, p3

    .line 233
    add-int/lit8 p3, v0, 0x1

    .end local v0           #ptr:I
    .restart local p3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    and-int/lit8 v2, p1, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p2, v0

    .line 234
    return p3
.end method

.method public encodeBase64Chunk(Ljava/lang/StringBuilder;I)V
    .locals 2
    .parameter "sb"
    .parameter "b24"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    and-int/lit8 v1, p2, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    return-void
.end method

.method public encodeBase64Partial(II[BI)I
    .locals 5
    .parameter "bits"
    .parameter "outputBytes"
    .parameter "buffer"
    .parameter "outPtr"

    .prologue
    const/4 v4, 0x2

    .line 313
    add-int/lit8 v0, p4, 0x1

    .end local p4
    .local v0, outPtr:I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0x12

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, p4

    .line 314
    add-int/lit8 p4, v0, 0x1

    .end local v0           #outPtr:I
    .restart local p4
    iget-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v0

    .line 315
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    if-eqz v2, :cond_2

    .line 316
    iget-char v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    int-to-byte v1, v2

    .line 317
    .local v1, pb:B
    add-int/lit8 v0, p4, 0x1

    .end local p4
    .restart local v0       #outPtr:I
    if-ne p2, v4, :cond_1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    :goto_0
    aput-byte v2, p3, p4

    .line 319
    add-int/lit8 p4, v0, 0x1

    .end local v0           #outPtr:I
    .restart local p4
    aput-byte v1, p3, v0

    .line 325
    .end local v1           #pb:B
    :cond_0
    :goto_1
    return p4

    .end local p4
    .restart local v0       #outPtr:I
    .restart local v1       #pb:B
    :cond_1
    move v2, v1

    .line 317
    goto :goto_0

    .line 321
    .end local v0           #outPtr:I
    .end local v1           #pb:B
    .restart local p4
    :cond_2
    if-ne p2, v4, :cond_0

    .line 322
    add-int/lit8 v0, p4, 0x1

    .end local p4
    .restart local v0       #outPtr:I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, p4

    move p4, v0

    .end local v0           #outPtr:I
    .restart local p4
    goto :goto_1
.end method

.method public encodeBase64Partial(II[CI)I
    .locals 4
    .parameter "bits"
    .parameter "outputBytes"
    .parameter "buffer"
    .parameter "outPtr"

    .prologue
    const/4 v3, 0x2

    .line 255
    add-int/lit8 v0, p4, 0x1

    .end local p4
    .local v0, outPtr:I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p3, p4

    .line 256
    add-int/lit8 p4, v0, 0x1

    .end local v0           #outPtr:I
    .restart local p4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p3, v0

    .line 257
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    if-eqz v1, :cond_2

    .line 258
    add-int/lit8 v0, p4, 0x1

    .end local p4
    .restart local v0       #outPtr:I
    if-ne p2, v3, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    :goto_0
    aput-char v1, p3, p4

    .line 260
    add-int/lit8 p4, v0, 0x1

    .end local v0           #outPtr:I
    .restart local p4
    iget-char v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    aput-char v1, p3, v0

    .line 266
    :cond_0
    :goto_1
    return p4

    .line 258
    .end local p4
    .restart local v0       #outPtr:I
    :cond_1
    iget-char v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    goto :goto_0

    .line 262
    .end local v0           #outPtr:I
    .restart local p4
    :cond_2
    if-ne p2, v3, :cond_0

    .line 263
    add-int/lit8 v0, p4, 0x1

    .end local p4
    .restart local v0       #outPtr:I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p3, p4

    move p4, v0

    .end local v0           #outPtr:I
    .restart local p4
    goto :goto_1
.end method

.method public encodeBase64Partial(Ljava/lang/StringBuilder;II)V
    .locals 3
    .parameter "sb"
    .parameter "bits"
    .parameter "outputBytes"

    .prologue
    const/4 v2, 0x2

    .line 271
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    if-eqz v0, :cond_2

    .line 274
    if-ne p3, v2, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    :cond_0
    :goto_1
    return-void

    .line 274
    :cond_1
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    goto :goto_0

    .line 278
    :cond_2
    if-ne p3, v2, :cond_0

    .line 279
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getMaxLineLength()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPaddingByte()B
    .locals 1

    .prologue
    .line 180
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    int-to-byte v0, v0

    return v0
.end method

.method public getPaddingChar()C
    .locals 1

    .prologue
    .line 179
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public usesPadding()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    return v0
.end method

.method public usesPaddingChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 177
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public usesPaddingChar(I)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 178
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
