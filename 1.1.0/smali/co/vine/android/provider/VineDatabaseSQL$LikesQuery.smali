.class public final Lco/vine/android/provider/VineDatabaseSQL$LikesQuery;
.super Ljava/lang/Object;
.source "VineDatabaseSQL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/VineDatabaseSQL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LikesQuery"
.end annotation


# static fields
.field public static final INDEX_AVATAR_URL:I = 0x3

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_LIKE_ID:I = 0x1

.field public static final INDEX_LOCATION:I = 0x7

.field public static final INDEX_POST_ID:I = 0x2

.field public static final INDEX_TIMESTAMP:I = 0x6

.field public static final INDEX_USERNAME:I = 0x5

.field public static final INDEX_USER_ID:I = 0x4

.field public static final INDEX_VERIFIED:I = 0x8

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 290
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "like_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "post_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "avatar_url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "location"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "verified"

    aput-object v2, v0, v1

    sput-object v0, Lco/vine/android/provider/VineDatabaseSQL$LikesQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method