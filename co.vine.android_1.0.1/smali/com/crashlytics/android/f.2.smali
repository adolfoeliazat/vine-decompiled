.class final enum Lcom/crashlytics/android/f;
.super Lcom/crashlytics/android/d;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/crashlytics/android/d;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Map;)Lcom/crashlytics/android/HttpRequest;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/crashlytics/android/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p1}, Lcom/crashlytics/android/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/crashlytics/android/HttpRequest;

    move-result-object v0

    return-object v0
.end method
