.class Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "BaseTimelineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/BaseTimelineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeLineSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/BaseTimelineFragment;


# direct methods
.method constructor <init>(Lco/vine/android/BaseTimelineFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetCommentsComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "postId"

    .prologue
    .line 335
    invoke-super/range {p0 .. p5}, Lco/vine/android/client/AppSessionListener;->onGetCommentsComplete(Ljava/lang/String;ILjava/lang/String;J)V

    .line 336
    return-void
.end method

.method public onGetTimeLineComplete(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 3
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "type"
    .parameter "count"

    .prologue
    .line 313
    iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;

    invoke-virtual {v1, p1}, Lco/vine/android/BaseTimelineFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v0

    .line 314
    .local v0, req:Lco/vine/android/PendingRequest;
    if-eqz v0, :cond_0

    .line 315
    iget v1, v0, Lco/vine/android/PendingRequest;->fetchType:I

    packed-switch v1, :pswitch_data_0

    .line 326
    iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;

    iget v2, v0, Lco/vine/android/PendingRequest;->fetchType:I

    invoke-virtual {v1, v2}, Lco/vine/android/BaseTimelineFragment;->hideProgress(I)V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 317
    :pswitch_0
    iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;

    iget-object v1, v1, Lco/vine/android/BaseTimelineFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;

    iget-object v1, v1, Lco/vine/android/BaseTimelineFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p5, :cond_1

    .line 318
    iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;

    iget v2, v0, Lco/vine/android/PendingRequest;->fetchType:I

    invoke-virtual {v1, v2}, Lco/vine/android/BaseTimelineFragment;->hideProgress(I)V

    .line 319
    iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lco/vine/android/BaseTimelineFragment;->showSadface(Z)V

    goto :goto_0

    .line 321
    :cond_1
    iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lco/vine/android/BaseTimelineFragment;->showSadface(Z)V

    goto :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onLikePost(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 2
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "postId"

    .prologue
    .line 353
    iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;

    invoke-virtual {v1, p1}, Lco/vine/android/BaseTimelineFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v0

    .line 354
    .local v0, req:Lco/vine/android/PendingRequest;
    if-eqz v0, :cond_0

    .line 355
    const/16 v1, 0xc8

    if-eq p2, v1, :cond_0

    .line 356
    iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;

    iget-object v1, v1, Lco/vine/android/BaseTimelineFragment;->mLikeCache:Lco/vine/android/LikeCache;

    invoke-virtual {v1, p4, p5}, Lco/vine/android/LikeCache;->removeEntry(J)V

    .line 357
    iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;

    iget-object v1, v1, Lco/vine/android/BaseTimelineFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 360
    :cond_0
    return-void
.end method

.method public onPhotoImageError(Lco/vine/android/util/image/ImageKey;Lco/vine/android/network/HttpResult;)V
    .locals 0
    .parameter "key"
    .parameter "result"

    .prologue
    .line 302
    invoke-super {p0, p1, p2}, Lco/vine/android/client/AppSessionListener;->onPhotoImageError(Lco/vine/android/util/image/ImageKey;Lco/vine/android/network/HttpResult;)V

    .line 303
    return-void
.end method

.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/image/ImageKey;",
            "Lco/vine/android/util/image/UrlImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, images:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/image/ImageKey;Lco/vine/android/util/image/UrlImage;>;"
    iget-object v0, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;

    iget-object v0, v0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/widget/FeedAdapter;->setImages(Ljava/util/HashMap;)V

    .line 308
    return-void
.end method

.method public onReportPostComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "postId"

    .prologue
    .line 341
    iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;

    invoke-virtual {v1, p1}, Lco/vine/android/BaseTimelineFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v0

    .line 342
    .local v0, req:Lco/vine/android/PendingRequest;
    if-eqz v0, :cond_0

    .line 343
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_1

    .line 344
    iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;

    invoke-virtual {v1}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0700cb

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;

    invoke-virtual {v1}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0700cc

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onUnlikePost(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 2
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "postId"

    .prologue
    .line 364
    iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;

    invoke-virtual {v1, p1}, Lco/vine/android/BaseTimelineFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v0

    .line 365
    .local v0, req:Lco/vine/android/PendingRequest;
    if-eqz v0, :cond_0

    .line 366
    const/16 v1, 0xc8

    if-eq p2, v1, :cond_0

    .line 367
    iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;

    iget-object v1, v1, Lco/vine/android/BaseTimelineFragment;->mLikeCache:Lco/vine/android/LikeCache;

    invoke-virtual {v1, p4, p5}, Lco/vine/android/LikeCache;->removeEntry(J)V

    .line 368
    iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;

    iget-object v1, v1, Lco/vine/android/BaseTimelineFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 371
    :cond_0
    return-void
.end method

.method public onVideoPathError(Lco/vine/android/util/video/VideoKey;Lco/vine/android/network/HttpResult;)V
    .locals 3
    .parameter "key"
    .parameter "result"

    .prologue
    .line 297
    const-string v0, "s"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download of video failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lco/vine/android/network/HttpResult;->reasonPhrase:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method public onVideoPathObtained(Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/video/VideoKey;",
            "Lco/vine/android/util/video/UrlVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, videos:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/video/VideoKey;Lco/vine/android/util/video/UrlVideo;>;"
    iget-object v0, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;

    iget-object v0, v0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/widget/FeedAdapter;->onVideoPathObtained(Ljava/util/HashMap;)V

    .line 293
    return-void
.end method
