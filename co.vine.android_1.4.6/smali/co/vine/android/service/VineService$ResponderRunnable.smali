.class Lco/vine/android/service/VineService$ResponderRunnable;
.super Ljava/lang/Object;
.source "VineService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/service/VineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponderRunnable"
.end annotation


# instance fields
.field private final mActionCode:I

.field private final mBundle:Landroid/os/Bundle;

.field private final mReasonPhrase:Ljava/lang/String;

.field private final mResponder:Lco/vine/android/service/VineServiceResponder;

.field private final mStartId:I

.field private final mStatusCode:I

.field final synthetic this$0:Lco/vine/android/service/VineService;


# direct methods
.method public constructor <init>(Lco/vine/android/service/VineService;Lco/vine/android/service/VineServiceResponder;IILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 0
    .parameter
    .parameter "responder"
    .parameter "actionCode"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "bundle"
    .parameter "startId"

    .prologue
    .line 2719
    iput-object p1, p0, Lco/vine/android/service/VineService$ResponderRunnable;->this$0:Lco/vine/android/service/VineService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2720
    iput-object p2, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mResponder:Lco/vine/android/service/VineServiceResponder;

    .line 2721
    iput p3, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mActionCode:I

    .line 2722
    iput p4, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mStatusCode:I

    .line 2723
    iput-object p5, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mReasonPhrase:Ljava/lang/String;

    .line 2724
    iput-object p6, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mBundle:Landroid/os/Bundle;

    .line 2725
    iput p7, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mStartId:I

    .line 2726
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2729
    iget-object v0, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mResponder:Lco/vine/android/service/VineServiceResponder;

    if-eqz v0, :cond_0

    .line 2730
    iget-object v0, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mResponder:Lco/vine/android/service/VineServiceResponder;

    iget v1, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mActionCode:I

    iget v2, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mStatusCode:I

    iget-object v3, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mReasonPhrase:Ljava/lang/String;

    iget-object v4, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, v4}, Lco/vine/android/service/VineServiceResponder;->onServiceResponse(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 2733
    :cond_0
    iget v0, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mStartId:I

    if-lez v0, :cond_1

    .line 2734
    iget-object v0, p0, Lco/vine/android/service/VineService$ResponderRunnable;->this$0:Lco/vine/android/service/VineService;

    iget v1, p0, Lco/vine/android/service/VineService$ResponderRunnable;->mStartId:I

    invoke-virtual {v0, v1}, Lco/vine/android/service/VineService;->attemptStop(I)V

    .line 2736
    :cond_1
    return-void
.end method
