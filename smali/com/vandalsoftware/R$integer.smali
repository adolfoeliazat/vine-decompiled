.class public final Lcom/vandalsoftware/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vandalsoftware/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field public static activity_anim_duration:I

.field public static bounceAnimTime:I

.field public static rotateAnimTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 810
    const v0, 0x7f0a0002

    sput v0, Lcom/vandalsoftware/R$integer;->activity_anim_duration:I

    .line 811
    const v0, 0x7f0a0001

    sput v0, Lcom/vandalsoftware/R$integer;->bounceAnimTime:I

    .line 812
    const/high16 v0, 0x7f0a

    sput v0, Lcom/vandalsoftware/R$integer;->rotateAnimTime:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
