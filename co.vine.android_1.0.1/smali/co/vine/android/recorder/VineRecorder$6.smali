.class Lco/vine/android/recorder/VineRecorder$6;
.super Ljava/lang/Object;
.source "VineRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/recorder/VineRecorder;->onCameraReady(Lco/vine/android/recorder/RecordController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;

.field final synthetic val$bottomMaskParams:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic val$previewViewParams:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$6;->this$0:Lco/vine/android/recorder/VineRecorder;

    iput-object p2, p0, Lco/vine/android/recorder/VineRecorder$6;->val$previewViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object p3, p0, Lco/vine/android/recorder/VineRecorder$6;->val$bottomMaskParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 626
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$6;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mPreviewView:Landroid/view/View;
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$1900(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;

    move-result-object v0

    .line 627
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 628
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$6;->val$previewViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    :cond_0
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$6;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mBottomMaskView:Landroid/view/View;
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$2000(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;

    move-result-object v0

    .line 631
    if-eqz v0, :cond_1

    .line 632
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$6;->val$bottomMaskParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    :cond_1
    return-void
.end method
