.class final Lcom/vandalsoftware/io/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vandalsoftware/io/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field final synthetic this$0:Lcom/vandalsoftware/io/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/vandalsoftware/io/DiskLruCache;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "key"

    .prologue
    .line 743
    iput-object p1, p0, Lcom/vandalsoftware/io/DiskLruCache$Entry;->this$0:Lcom/vandalsoftware/io/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iput-object p2, p0, Lcom/vandalsoftware/io/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 745
    #getter for: Lcom/vandalsoftware/io/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/vandalsoftware/io/DiskLruCache;->access$1500(Lcom/vandalsoftware/io/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache$Entry;->lengths:[J

    .line 746
    return-void
.end method

.method synthetic constructor <init>(Lcom/vandalsoftware/io/DiskLruCache;Ljava/lang/String;Lcom/vandalsoftware/io/DiskLruCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 728
    invoke-direct {p0, p1, p2}, Lcom/vandalsoftware/io/DiskLruCache$Entry;-><init>(Lcom/vandalsoftware/io/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/vandalsoftware/io/DiskLruCache$Entry;->readable:Z

    return v0
.end method

.method static synthetic access$502(Lcom/vandalsoftware/io/DiskLruCache$Entry;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 728
    iput-boolean p1, p0, Lcom/vandalsoftware/io/DiskLruCache$Entry;->readable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Lcom/vandalsoftware/io/DiskLruCache$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic access$602(Lcom/vandalsoftware/io/DiskLruCache$Entry;Lcom/vandalsoftware/io/DiskLruCache$Editor;)Lcom/vandalsoftware/io/DiskLruCache$Editor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 728
    iput-object p1, p0, Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;

    return-object p1
.end method

.method static synthetic access$700(Lcom/vandalsoftware/io/DiskLruCache$Entry;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache$Entry;->lengths:[J

    return-object v0
.end method

.method static synthetic access$900(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache$Entry;->key:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCleanFile(I)Ljava/io/File;
    .locals 4
    .parameter "i"

    .prologue
    .line 749
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache$Entry;->this$0:Lcom/vandalsoftware/io/DiskLruCache;

    #getter for: Lcom/vandalsoftware/io/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v1}, Lcom/vandalsoftware/io/DiskLruCache;->access$1600(Lcom/vandalsoftware/io/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDirtyFile(I)Ljava/io/File;
    .locals 4
    .parameter "i"

    .prologue
    .line 753
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache$Entry;->this$0:Lcom/vandalsoftware/io/DiskLruCache;

    #getter for: Lcom/vandalsoftware/io/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v1}, Lcom/vandalsoftware/io/DiskLruCache;->access$1600(Lcom/vandalsoftware/io/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
