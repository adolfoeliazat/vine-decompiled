.class final Lcom/crashlytics/android/R;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/crashlytics/android/E;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/E;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/crashlytics/android/R;->a:Lcom/crashlytics/android/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/crashlytics/android/R;->a:Lcom/crashlytics/android/E;

    invoke-static {v0}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/E;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/R;->a:Lcom/crashlytics/android/E;

    invoke-static {v0}, Lcom/crashlytics/android/E;->b(Lcom/crashlytics/android/E;)V

    iget-object v0, p0, Lcom/crashlytics/android/R;->a:Lcom/crashlytics/android/E;

    invoke-static {v0}, Lcom/crashlytics/android/E;->c(Lcom/crashlytics/android/E;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
