.class Lcom/google/android/gms/maps/GoogleMap$2;
.super Lcom/google/android/gms/internal/cn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eW:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic eZ:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$2;->eW:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$2;->eZ:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cn$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 1
    .parameter "position"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$2;->eZ:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;->onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V

    return-void
.end method
