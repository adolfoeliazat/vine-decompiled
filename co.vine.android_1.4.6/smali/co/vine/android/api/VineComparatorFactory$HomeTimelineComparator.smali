.class Lco/vine/android/api/VineComparatorFactory$HomeTimelineComparator;
.super Ljava/lang/Object;
.source "VineComparatorFactory.java"

# interfaces
.implements Lco/vine/android/api/VineComparatorFactory$VineComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/api/VineComparatorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeTimelineComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lco/vine/android/api/VineComparatorFactory$VineComparator",
        "<",
        "Lco/vine/android/api/VinePost;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/api/VineComparatorFactory$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lco/vine/android/api/VineComparatorFactory$HomeTimelineComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lco/vine/android/api/VinePost;Lco/vine/android/api/VinePost;)I
    .locals 3
    .parameter "vinePost"
    .parameter "vinePost2"

    .prologue
    .line 39
    invoke-virtual {p0, p2}, Lco/vine/android/api/VineComparatorFactory$HomeTimelineComparator;->getOrderId(Lco/vine/android/api/VinePost;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1}, Lco/vine/android/api/VineComparatorFactory$HomeTimelineComparator;->getOrderId(Lco/vine/android/api/VinePost;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    check-cast p1, Lco/vine/android/api/VinePost;

    .end local p1
    check-cast p2, Lco/vine/android/api/VinePost;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lco/vine/android/api/VineComparatorFactory$HomeTimelineComparator;->compare(Lco/vine/android/api/VinePost;Lco/vine/android/api/VinePost;)I

    move-result v0

    return v0
.end method

.method public getOrderId(Lco/vine/android/api/VinePost;)J
    .locals 2
    .parameter "post"

    .prologue
    .line 53
    iget-object v0, p1, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p1, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    invoke-virtual {v0}, Lco/vine/android/api/VineUser;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-wide v0, p1, Lco/vine/android/api/VinePost;->postId:J

    .line 61
    :goto_0
    return-wide v0

    .line 58
    :cond_0
    iget-object v0, p1, Lco/vine/android/api/VinePost;->repost:Lco/vine/android/api/VineRepost;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p1, Lco/vine/android/api/VinePost;->repost:Lco/vine/android/api/VineRepost;

    iget-wide v0, v0, Lco/vine/android/api/VineRepost;->repostId:J

    goto :goto_0

    .line 61
    :cond_1
    iget-wide v0, p1, Lco/vine/android/api/VinePost;->postId:J

    goto :goto_0
.end method

.method public bridge synthetic getOrderId(Ljava/lang/Object;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Lco/vine/android/api/VinePost;

    .end local p1
    invoke-virtual {p0, p1}, Lco/vine/android/api/VineComparatorFactory$HomeTimelineComparator;->getOrderId(Lco/vine/android/api/VinePost;)J

    move-result-wide v0

    return-wide v0
.end method
