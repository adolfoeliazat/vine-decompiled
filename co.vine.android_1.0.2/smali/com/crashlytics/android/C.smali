.class final Lcom/crashlytics/android/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private final b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Lcom/crashlytics/android/Crashlytics;)V
    .locals 2
    .parameter

    .prologue
    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1039
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crashlytics/android/C;->a:Z

    .line 1040
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/C;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/crashlytics/android/Crashlytics;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1038
    invoke-direct {p0, p1}, Lcom/crashlytics/android/C;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    return-void
.end method


# virtual methods
.method final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1043
    iput-boolean p1, p0, Lcom/crashlytics/android/C;->a:Z

    .line 1044
    iget-object v0, p0, Lcom/crashlytics/android/C;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1045
    return-void
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 1048
    iget-boolean v0, p0, Lcom/crashlytics/android/C;->a:Z

    return v0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 1053
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/C;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
