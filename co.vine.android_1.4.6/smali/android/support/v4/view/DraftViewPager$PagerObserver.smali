.class Landroid/support/v4/view/DraftViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "DraftViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/DraftViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/DraftViewPager;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/DraftViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 2079
    iput-object p1, p0, Landroid/support/v4/view/DraftViewPager$PagerObserver;->this$0:Landroid/support/v4/view/DraftViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/DraftViewPager;Landroid/support/v4/view/DraftViewPager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2079
    invoke-direct {p0, p1}, Landroid/support/v4/view/DraftViewPager$PagerObserver;-><init>(Landroid/support/v4/view/DraftViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2082
    iget-object v0, p0, Landroid/support/v4/view/DraftViewPager$PagerObserver;->this$0:Landroid/support/v4/view/DraftViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/DraftViewPager;->dataSetChanged()V

    .line 2083
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2087
    iget-object v0, p0, Landroid/support/v4/view/DraftViewPager$PagerObserver;->this$0:Landroid/support/v4/view/DraftViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/DraftViewPager;->dataSetChanged()V

    .line 2088
    return-void
.end method
