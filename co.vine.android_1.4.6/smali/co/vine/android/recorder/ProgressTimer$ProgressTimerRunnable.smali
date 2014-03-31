.class public Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;
.super Ljava/lang/Object;
.source "ProgressTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/ProgressTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressTimerRunnable"
.end annotation


# instance fields
.field private hasNotifiedThreshold:Z

.field private final mController:Lco/vine/android/recorder/VineRecorder;

.field private final mHandler:Landroid/os/Handler;

.field private mProgress:I

.field public volatile run:Z


# direct methods
.method public constructor <init>(Lco/vine/android/recorder/VineRecorder;Landroid/os/Handler;)V
    .locals 1
    .parameter "controller"
    .parameter "handler"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mProgress:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->run:Z

    .line 43
    iput-object p1, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mController:Lco/vine/android/recorder/VineRecorder;

    .line 44
    iput-object p2, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method private exec()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v1, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mController:Lco/vine/android/recorder/VineRecorder;

    .line 60
    .local v1, controller:Lco/vine/android/recorder/VineRecorder;
    :goto_0
    iget-boolean v7, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->run:Z

    if-eqz v7, :cond_2

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 62
    .local v5, time:J
    iget-wide v3, v1, Lco/vine/android/recorder/VineRecorder;->currentDuration:J

    .line 63
    .local v3, temp:J
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-gez v7, :cond_3

    .line 64
    add-long v7, v3, v5

    long-to-int v2, v7

    .line 68
    .local v2, progress:I
    :goto_1
    iget v7, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mProgress:I

    if-eq v2, v7, :cond_0

    .line 69
    iput v2, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mProgress:I

    .line 70
    iget v7, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mProgress:I

    invoke-virtual {v1, v7}, Lco/vine/android/recorder/VineRecorder;->postProgressUpdate(I)V

    .line 72
    :cond_0
    iget-boolean v7, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->hasNotifiedThreshold:Z

    if-nez v7, :cond_1

    invoke-virtual {v1}, Lco/vine/android/recorder/VineRecorder;->isRecordingSegment()Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mProgress:I

    const/16 v8, 0x3e8

    if-lt v7, v8, :cond_1

    .line 73
    const/4 v7, 0x1

    iput-boolean v7, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->hasNotifiedThreshold:Z

    .line 74
    iget-object v7, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mHandler:Landroid/os/Handler;

    new-instance v8, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable$1;

    invoke-direct {v8, p0, v1}, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable$1;-><init>(Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;Lco/vine/android/recorder/VineRecorder;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    :cond_1
    iget-object v7, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mController:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v7}, Lco/vine/android/recorder/VineRecorder;->getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-result-object v0

    .line 82
    .local v0, config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
    if-eqz v0, :cond_4

    iget v7, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mProgress:I

    iget v8, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->maxDuration:I

    if-lt v7, v8, :cond_4

    .line 83
    iget-object v7, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mHandler:Landroid/os/Handler;

    new-instance v8, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable$2;

    invoke-direct {v8, p0, v1}, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable$2;-><init>(Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;Lco/vine/android/recorder/VineRecorder;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    .end local v0           #config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
    .end local v2           #progress:I
    .end local v3           #temp:J
    .end local v5           #time:J
    :cond_2
    return-void

    .line 66
    .restart local v3       #temp:J
    .restart local v5       #time:J
    :cond_3
    long-to-int v2, v3

    .restart local v2       #progress:I
    goto :goto_1

    .line 91
    .restart local v0       #config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
    :cond_4
    const-wide/16 v7, 0x23

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 50
    :try_start_0
    invoke-direct {p0}, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->exec()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    goto :goto_0
.end method
