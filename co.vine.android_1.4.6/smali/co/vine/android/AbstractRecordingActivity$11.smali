.class Lco/vine/android/AbstractRecordingActivity$11;
.super Ljava/lang/Object;
.source "AbstractRecordingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/AbstractRecordingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/AbstractRecordingActivity;


# direct methods
.method constructor <init>(Lco/vine/android/AbstractRecordingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1367
    iput-object p1, p0, Lco/vine/android/AbstractRecordingActivity$11;->this$0:Lco/vine/android/AbstractRecordingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1370
    iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity$11;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mAdapter:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;
    invoke-static {v2}, Lco/vine/android/AbstractRecordingActivity;->access$2600(Lco/vine/android/AbstractRecordingActivity;)Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->getCount()I

    move-result v2

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity$11;->this$0:Lco/vine/android/AbstractRecordingActivity;

    iget v2, v2, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I

    iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity$11;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mAdapter:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;
    invoke-static {v3}, Lco/vine/android/AbstractRecordingActivity;->access$2600(Lco/vine/android/AbstractRecordingActivity;)Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1371
    iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity$11;->this$0:Lco/vine/android/AbstractRecordingActivity;

    iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity$11;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mSessions:Ljava/util/ArrayList;
    invoke-static {v2}, Lco/vine/android/AbstractRecordingActivity;->access$2800(Lco/vine/android/AbstractRecordingActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lco/vine/android/AbstractRecordingActivity$11;->this$0:Lco/vine/android/AbstractRecordingActivity;

    iget v4, v4, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;

    #setter for: Lco/vine/android/AbstractRecordingActivity;->mCurrentSession:Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;
    invoke-static {v3, v2}, Lco/vine/android/AbstractRecordingActivity;->access$2702(Lco/vine/android/AbstractRecordingActivity;Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;)Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;

    .line 1372
    iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity$11;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
    invoke-static {v2}, Lco/vine/android/AbstractRecordingActivity;->access$000(Lco/vine/android/AbstractRecordingActivity;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity$11;->this$0:Lco/vine/android/AbstractRecordingActivity;

    iget v3, v3, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1373
    .local v0, f:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/DraftFragment;>;"
    if-eqz v0, :cond_0

    .line 1374
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/DraftFragment;

    .line 1375
    .local v1, fragment:Lco/vine/android/DraftFragment;
    if-eqz v1, :cond_0

    .line 1376
    invoke-virtual {v1, v5}, Lco/vine/android/DraftFragment;->setSelected(Z)V

    .line 1380
    .end local v0           #f:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/DraftFragment;>;"
    .end local v1           #fragment:Lco/vine/android/DraftFragment;
    :cond_0
    return-void
.end method
