.class final Lco/vine/android/api/VineComment$1;
.super Ljava/lang/Object;
.source "VineComment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/api/VineComment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lco/vine/android/api/VineComment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lco/vine/android/api/VineComment;
    .locals 1
    .parameter "in"

    .prologue
    .line 171
    new-instance v0, Lco/vine/android/api/VineComment;

    invoke-direct {v0, p1}, Lco/vine/android/api/VineComment;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lco/vine/android/api/VineComment$1;->createFromParcel(Landroid/os/Parcel;)Lco/vine/android/api/VineComment;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lco/vine/android/api/VineComment;
    .locals 1
    .parameter "size"

    .prologue
    .line 175
    new-array v0, p1, [Lco/vine/android/api/VineComment;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lco/vine/android/api/VineComment$1;->newArray(I)[Lco/vine/android/api/VineComment;

    move-result-object v0

    return-object v0
.end method
