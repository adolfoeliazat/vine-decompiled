.class public Lcom/google/android/gms/internal/eb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ae;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ec;


# instance fields
.field private final T:I

.field private final ch:Ljava/lang/String;

.field private final hO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ag;",
            ">;"
        }
    .end annotation
.end field

.field private final hP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ag;",
            ">;"
        }
    .end annotation
.end field

.field private final hQ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ec;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ec;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/eb;->CREATOR:Lcom/google/android/gms/internal/ec;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ag;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ag;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/eb;->T:I

    iput-object p2, p0, Lcom/google/android/gms/internal/eb;->ch:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/eb;->hO:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/internal/eb;->hP:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/eb;->hQ:Z

    return-void
.end method


# virtual methods
.method public bv()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/eb;->hO:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bw()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/eb;->hP:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bx()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/eb;->hQ:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eb;->ch:Ljava/lang/String;

    return-object v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/eb;->T:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "out"
    .parameter "flags"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ec;->a(Lcom/google/android/gms/internal/eb;Landroid/os/Parcel;I)V

    return-void
.end method
