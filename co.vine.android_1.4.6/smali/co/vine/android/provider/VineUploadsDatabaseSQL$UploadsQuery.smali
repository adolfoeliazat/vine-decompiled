.class public final Lco/vine/android/provider/VineUploadsDatabaseSQL$UploadsQuery;
.super Ljava/lang/Object;
.source "VineUploadsDatabaseSQL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/VineUploadsDatabaseSQL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UploadsQuery"
.end annotation


# static fields
.field public static final INDEX_CAPTCHA_URL:I = 0xb

.field public static final INDEX_HASH:I = 0x2

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_OWNER_ID:I = 0xa

.field public static final INDEX_PATH:I = 0x1

.field public static final INDEX_POST_INFO:I = 0x4

.field public static final INDEX_REFERENCE:I = 0x9

.field public static final INDEX_STATUS:I = 0x3

.field public static final INDEX_THUMBNAIL_PATH:I = 0x6

.field public static final INDEX_THUMBNAIL_URL:I = 0x7

.field public static final INDEX_UPLOAD_TIME:I = 0x8

.field public static final INDEX_VIDEO_URL:I = 0x5

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "path"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hash"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "post_info"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "video_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "thumbnail_path"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "thumbnail_url"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "upload_time"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "reference"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "owner_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "captcha_url"

    aput-object v2, v0, v1

    sput-object v0, Lco/vine/android/provider/VineUploadsDatabaseSQL$UploadsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
