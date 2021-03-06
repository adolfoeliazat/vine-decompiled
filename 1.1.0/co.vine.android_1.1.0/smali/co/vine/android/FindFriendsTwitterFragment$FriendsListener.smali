.class Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;
.super Lco/vine/android/client/AppSessionListener;
.source "FindFriendsTwitterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/FindFriendsTwitterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FriendsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/FindFriendsTwitterFragment;


# direct methods
.method constructor <init>(Lco/vine/android/FindFriendsTwitterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 1
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "userId"

    .prologue
    .line 334
    if-eqz p1, :cond_0

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_0

    .line 335
    iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;

    #getter for: Lco/vine/android/FindFriendsTwitterFragment;->mFriendships:Lco/vine/android/Friendships;
    invoke-static {v0}, Lco/vine/android/FindFriendsTwitterFragment;->access$100(Lco/vine/android/FindFriendsTwitterFragment;)Lco/vine/android/Friendships;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lco/vine/android/Friendships;->removeFollowing(J)V

    .line 337
    :cond_0
    return-void
.end method

.method public onGetTwitterFriendsComplete(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "count"

    .prologue
    .line 313
    iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;

    invoke-virtual {v0}, Lco/vine/android/FindFriendsTwitterFragment;->dismissDialog()V

    .line 314
    if-eqz p1, :cond_0

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;

    invoke-virtual {v0}, Lco/vine/android/FindFriendsTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0700b2

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto :goto_0
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
    .line 328
    .local p1, images:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/image/ImageKey;Lco/vine/android/util/image/UrlImage;>;"
    iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;

    iget-object v0, v0, Lco/vine/android/FindFriendsTwitterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lco/vine/android/UsersAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/UsersAdapter;->setUserImages(Ljava/util/HashMap;)V

    .line 329
    return-void
.end method

.method public onRemoveUsersComplete(Ljava/lang/String;)V
    .locals 2
    .parameter "reqId"

    .prologue
    .line 322
    iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;

    const/4 v1, 0x1

    #setter for: Lco/vine/android/FindFriendsTwitterFragment;->mSafeToLoad:Z
    invoke-static {v0, v1}, Lco/vine/android/FindFriendsTwitterFragment;->access$002(Lco/vine/android/FindFriendsTwitterFragment;Z)Z

    .line 323
    iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;

    invoke-virtual {v0}, Lco/vine/android/FindFriendsTwitterFragment;->initLoader()V

    .line 324
    return-void
.end method

.method public onUnFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 1
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "userId"

    .prologue
    .line 342
    if-eqz p1, :cond_0

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_0

    .line 343
    iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;

    #getter for: Lco/vine/android/FindFriendsTwitterFragment;->mFriendships:Lco/vine/android/Friendships;
    invoke-static {v0}, Lco/vine/android/FindFriendsTwitterFragment;->access$100(Lco/vine/android/FindFriendsTwitterFragment;)Lco/vine/android/Friendships;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lco/vine/android/Friendships;->addFollowing(J)V

    .line 345
    :cond_0
    return-void
.end method
