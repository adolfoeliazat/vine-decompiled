.class Lco/vine/android/SingleFragment$SinglePostListener;
.super Lco/vine/android/client/AppSessionListener;
.source "SingleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/SingleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SinglePostListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/SingleFragment;


# direct methods
.method constructor <init>(Lco/vine/android/SingleFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lco/vine/android/SingleFragment$SinglePostListener;->this$0:Lco/vine/android/SingleFragment;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPostIdComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 2
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "postId"

    .prologue
    .line 112
    iget-object v0, p0, Lco/vine/android/SingleFragment$SinglePostListener;->this$0:Lco/vine/android/SingleFragment;

    #getter for: Lco/vine/android/SingleFragment;->mWrapper:Lco/vine/android/SingleFragmentWrapper;
    invoke-static {v0}, Lco/vine/android/SingleFragment;->access$000(Lco/vine/android/SingleFragment;)Lco/vine/android/SingleFragmentWrapper;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lco/vine/android/SingleFragmentWrapper;->onGetPostIdComplete(J)V

    .line 113
    iget-object v0, p0, Lco/vine/android/SingleFragment$SinglePostListener;->this$0:Lco/vine/android/SingleFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lco/vine/android/SingleFragment;->fetchPostContent(I)V

    .line 114
    return-void
.end method

.method public onGetSinglePostComplete(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"

    .prologue
    .line 105
    iget-object v0, p0, Lco/vine/android/SingleFragment$SinglePostListener;->this$0:Lco/vine/android/SingleFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lco/vine/android/SingleFragment;->mFetched:Z

    .line 106
    iget-object v0, p0, Lco/vine/android/SingleFragment$SinglePostListener;->this$0:Lco/vine/android/SingleFragment;

    invoke-virtual {v0}, Lco/vine/android/SingleFragment;->restartLoader()Z

    .line 107
    return-void
.end method
