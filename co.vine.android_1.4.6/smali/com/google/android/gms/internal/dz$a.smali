.class Lcom/google/android/gms/internal/dz$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final hJ:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

.field final synthetic hK:Lcom/google/android/gms/internal/dz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dz$a;->hK:Lcom/google/android/gms/internal/dz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/dz$a;->hJ:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/dz$a;->hK:Lcom/google/android/gms/internal/dz;

    iget-object v0, v0, Lcom/google/android/gms/internal/dz;->hw:Landroid/widget/CompoundButton;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dz$a;->hK:Lcom/google/android/gms/internal/dz;

    iget-object v0, v0, Lcom/google/android/gms/internal/dz;->hy:Lcom/google/android/gms/internal/ea;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dz$a;->hK:Lcom/google/android/gms/internal/dz;

    iget-object v0, v0, Lcom/google/android/gms/internal/dz;->hF:Lcom/google/android/gms/internal/du;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/dz$a;->hJ:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/dz$a;->hJ:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

    invoke-interface {v1, v0}, Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;->onPlusOneClick(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/dz$a;->hK:Lcom/google/android/gms/internal/dz;

    iget-object v0, v0, Lcom/google/android/gms/internal/dz;->hF:Lcom/google/android/gms/internal/du;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/du;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dz$a;->onPlusOneClick(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onPlusOneClick(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/dz$a;->hK:Lcom/google/android/gms/internal/dz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dz;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/dz$a;->hK:Lcom/google/android/gms/internal/dz;

    iget v1, v1, Lcom/google/android/gms/internal/dz;->ht:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
