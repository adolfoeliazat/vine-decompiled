.class Lcom/google/android/gms/maps/MapFragment$b;
.super Lcom/google/android/gms/internal/bb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/MapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/bb",
        "<",
        "Lcom/google/android/gms/maps/MapFragment$a;",
        ">;"
    }
.end annotation


# instance fields
.field private ar:Landroid/app/Activity;

.field private final fu:Landroid/app/Fragment;

.field protected fw:Lcom/google/android/gms/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/be",
            "<",
            "Lcom/google/android/gms/maps/MapFragment$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/maps/MapFragment$b;->fu:Landroid/app/Fragment;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/maps/MapFragment$b;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/maps/MapFragment$b;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method private setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/maps/MapFragment$b;->ar:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/MapFragment$b;->aP()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/be;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/be",
            "<",
            "Lcom/google/android/gms/maps/MapFragment$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/maps/MapFragment$b;->fw:Lcom/google/android/gms/internal/be;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/MapFragment$b;->aP()V

    return-void
.end method

.method public aP()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$b;->ar:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$b;->fw:Lcom/google/android/gms/internal/be;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/MapFragment$b;->ag()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$b;->ar:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$b;->ar:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/internal/cw;->g(Landroid/content/Context;)Lcom/google/android/gms/internal/cl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/MapFragment$b;->ar:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/internal/bd;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/bc;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cl;->d(Lcom/google/android/gms/internal/bc;)Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/MapFragment$b;->fw:Lcom/google/android/gms/internal/be;

    new-instance v2, Lcom/google/android/gms/maps/MapFragment$a;

    iget-object v3, p0, Lcom/google/android/gms/maps/MapFragment$b;->fu:Landroid/app/Fragment;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/MapFragment$a;-><init>(Landroid/app/Fragment;Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/be;->a(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
