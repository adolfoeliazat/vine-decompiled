.class public Lcom/google/android/gms/internal/ec;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/eb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/eb;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ad;->d(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eb;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ad;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eb;->u()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ad;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eb;->bv()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ad;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eb;->bw()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ad;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eb;->bx()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ad;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ad;->C(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public O(I)[Lcom/google/android/gms/internal/eb;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/eb;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ec;->u(Landroid/os/Parcel;)Lcom/google/android/gms/internal/eb;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ec;->O(I)[Lcom/google/android/gms/internal/eb;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroid/os/Parcel;)Lcom/google/android/gms/internal/eb;
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ac;->c(Landroid/os/Parcel;)I

    move-result v0

    move-object v3, v4

    move-object v2, v4

    move v1, v5

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ac;->b(Landroid/os/Parcel;)I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ac;->j(I)I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ac;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ac;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ac;->f(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :sswitch_2
    sget-object v3, Lcom/google/android/gms/internal/ag;->CREATOR:Lcom/google/android/gms/internal/ah;

    invoke-static {p1, v6, v3}, Lcom/google/android/gms/internal/ac;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    :sswitch_3
    sget-object v4, Lcom/google/android/gms/internal/ag;->CREATOR:Lcom/google/android/gms/internal/ah;

    invoke-static {p1, v6, v4}, Lcom/google/android/gms/internal/ac;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    :sswitch_4
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ac;->c(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-eq v6, v0, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ac$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overread allowed size end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ac$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/eb;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/eb;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method