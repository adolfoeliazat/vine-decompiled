.class Lco/vine/android/service/VineService$1;
.super Landroid/content/BroadcastReceiver;
.source "VineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/service/VineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/service/VineService;


# direct methods
.method constructor <init>(Lco/vine/android/service/VineService;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lco/vine/android/service/VineService$1;->this$0:Lco/vine/android/service/VineService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 345
    if-eqz p2, :cond_0

    .line 346
    const-string v0, "co.vine.android.service.mergePost"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const-string v0, "Received broadcasted intent to merge a single post."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lco/vine/android/service/VineService$1;->this$0:Lco/vine/android/service/VineService;

    invoke-static {v0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->mergeSinglePost(Landroid/os/Bundle;)V

    .line 351
    :cond_0
    return-void
.end method
