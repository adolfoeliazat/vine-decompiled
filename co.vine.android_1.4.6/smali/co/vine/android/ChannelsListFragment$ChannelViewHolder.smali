.class Lco/vine/android/ChannelsListFragment$ChannelViewHolder;
.super Ljava/lang/Object;
.source "ChannelsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ChannelsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelViewHolder"
.end annotation


# instance fields
.field public channelId:J

.field public channelImage:Landroid/widget/ImageView;

.field public channelImageKey:Lco/vine/android/util/image/ImageKey;

.field public channelTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lco/vine/android/ChannelsListFragment;


# direct methods
.method public constructor <init>(Lco/vine/android/ChannelsListFragment;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "view"

    .prologue
    .line 252
    iput-object p1, p0, Lco/vine/android/ChannelsListFragment$ChannelViewHolder;->this$0:Lco/vine/android/ChannelsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    const v0, 0x7f0a0058

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/ChannelsListFragment$ChannelViewHolder;->channelImage:Landroid/widget/ImageView;

    .line 254
    const v0, 0x7f0a0059

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ChannelsListFragment$ChannelViewHolder;->channelTitle:Landroid/widget/TextView;

    .line 255
    return-void
.end method
