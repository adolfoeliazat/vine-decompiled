.class final Lcom/google/android/gms/internal/bj$ae;
.super Lcom/google/android/gms/internal/p$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ae"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/p",
        "<",
        "Lcom/google/android/gms/internal/bm;",
        ">.c<",
        "Lcom/google/android/gms/games/OnPlayersLoadedListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic cH:Lcom/google/android/gms/internal/bj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/games/OnPlayersLoadedListener;Lcom/google/android/gms/internal/k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bj$ae;->cH:Lcom/google/android/gms/internal/bj;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/p$c;-><init>(Lcom/google/android/gms/internal/p;Ljava/lang/Object;Lcom/google/android/gms/internal/k;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/games/OnPlayersLoadedListener;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bj$ae;->O:Lcom/google/android/gms/internal/k;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/k;->getStatusCode()I

    move-result v0

    new-instance v1, Lcom/google/android/gms/games/PlayerBuffer;

    iget-object v2, p0, Lcom/google/android/gms/internal/bj$ae;->O:Lcom/google/android/gms/internal/k;

    invoke-direct {v1, v2}, Lcom/google/android/gms/games/PlayerBuffer;-><init>(Lcom/google/android/gms/internal/k;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/games/OnPlayersLoadedListener;->onPlayersLoaded(ILcom/google/android/gms/games/PlayerBuffer;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/OnPlayersLoadedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bj$ae;->a(Lcom/google/android/gms/games/OnPlayersLoadedListener;)V

    return-void
.end method
