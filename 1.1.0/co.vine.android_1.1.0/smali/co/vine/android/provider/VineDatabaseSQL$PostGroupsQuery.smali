.class public final Lco/vine/android/provider/VineDatabaseSQL$PostGroupsQuery;
.super Ljava/lang/Object;
.source "VineDatabaseSQL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/VineDatabaseSQL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostGroupsQuery"
.end annotation


# static fields
.field public static final INDEX_POST_ID:I = 0x0

.field public static final INDEX_TAG:I = 0x2

.field public static final INDEX_TYPE:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 265
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "post_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "post_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tag"

    aput-object v2, v0, v1

    sput-object v0, Lco/vine/android/provider/VineDatabaseSQL$PostGroupsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
