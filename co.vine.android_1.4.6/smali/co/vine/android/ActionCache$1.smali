.class final Lco/vine/android/ActionCache$1;
.super Ljava/lang/Object;
.source "ActionCache.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ActionCache;
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
        "Lco/vine/android/ActionCache;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lco/vine/android/ActionCache;
    .locals 1
    .parameter "in"

    .prologue
    .line 37
    new-instance v0, Lco/vine/android/ActionCache;

    invoke-direct {v0, p1}, Lco/vine/android/ActionCache;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lco/vine/android/ActionCache$1;->createFromParcel(Landroid/os/Parcel;)Lco/vine/android/ActionCache;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lco/vine/android/ActionCache;
    .locals 1
    .parameter "size"

    .prologue
    .line 42
    new-array v0, p1, [Lco/vine/android/ActionCache;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lco/vine/android/ActionCache$1;->newArray(I)[Lco/vine/android/ActionCache;

    move-result-object v0

    return-object v0
.end method
