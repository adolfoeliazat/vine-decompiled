.class Lco/vine/android/recorder/VineRecorder$14;
.super Ljava/lang/Object;
.source "VineRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/recorder/VineRecorder;->showCameraFailedToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;


# direct methods
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1558
    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$14;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$14;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$4200(Lco/vine/android/recorder/VineRecorder;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1562
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$14;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$4200(Lco/vine/android/recorder/VineRecorder;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1564
    :cond_0
    return-void
.end method
