.class public final enum Lcom/fasterxml/jackson/core/JsonFactory$Feature;
.super Ljava/lang/Enum;
.source "JsonFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/JsonFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fasterxml/jackson/core/JsonFactory$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/JsonFactory$Feature;

.field public static final enum CANONICALIZE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

.field public static final enum INTERN_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;


# instance fields
.field private final _defaultState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 97
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    const-string v1, "INTERN_FIELD_NAMES"

    invoke-direct {v0, v1, v3, v2}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->INTERN_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    .line 107
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    const-string v1, "CANONICALIZE_FIELD_NAMES"

    invoke-direct {v0, v1, v2, v2}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->INTERN_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    aput-object v1, v0, v2

    sput-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->$VALUES:[Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "defaultState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 133
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->_defaultState:Z

    .line 134
    return-void
.end method

.method public static collectDefaults()I
    .locals 6

    .prologue
    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, flags:I
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->values()[Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    move-result-object v0

    .local v0, arr$:[Lcom/fasterxml/jackson/core/JsonFactory$Feature;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 124
    .local v1, f:Lcom/fasterxml/jackson/core/JsonFactory$Feature;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 125
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->getMask()I

    move-result v5

    or-int/2addr v2, v5

    .line 123
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    .end local v1           #f:Lcom/fasterxml/jackson/core/JsonFactory$Feature;
    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonFactory$Feature;
    .locals 1
    .parameter "name"

    .prologue
    .line 78
    const-class v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/JsonFactory$Feature;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->$VALUES:[Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/JsonFactory$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->_defaultState:Z

    return v0
.end method

.method public enabledIn(I)Z
    .locals 1
    .parameter "flags"

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->getMask()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMask()I
    .locals 2

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method
