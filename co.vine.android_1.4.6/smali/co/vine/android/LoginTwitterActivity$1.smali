.class Lco/vine/android/LoginTwitterActivity$1;
.super Ljava/lang/Object;
.source "LoginTwitterActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/LoginTwitterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/LoginTwitterActivity;


# direct methods
.method constructor <init>(Lco/vine/android/LoginTwitterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lco/vine/android/LoginTwitterActivity$1;->this$0:Lco/vine/android/LoginTwitterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 95
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    .line 97
    :cond_1
    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$1;->this$0:Lco/vine/android/LoginTwitterActivity;

    #calls: Lco/vine/android/LoginTwitterActivity;->login(Z)V
    invoke-static {v0, v2}, Lco/vine/android/LoginTwitterActivity;->access$000(Lco/vine/android/LoginTwitterActivity;Z)V

    .line 98
    :cond_2
    return v2
.end method
