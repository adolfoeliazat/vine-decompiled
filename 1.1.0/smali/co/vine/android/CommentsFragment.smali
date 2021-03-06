.class public Lco/vine/android/CommentsFragment;
.super Lco/vine/android/BaseListFragment;
.source "CommentsFragment.java"

# interfaces
.implements Lco/vine/android/widget/SpanClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/CommentsFragment$CommentsAppSessionListener;
    }
.end annotation


# static fields
.field public static final ARG_POST_ID:Ljava/lang/String; = "post_id"

.field private static final MAX_CHARS:I = 0x8c

.field private static final STATE_FETCHED:Ljava/lang/String; = "fetched"

.field private static mActionMode:Landroid/view/ActionMode;

.field private static mSelectedCommentId:Ljava/lang/String;

.field private static mToastLengthExceeded:Landroid/widget/Toast;


# instance fields
.field private final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private final mActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mEditText:Landroid/widget/EditText;

.field private mEditTextList:Landroid/widget/EditText;

.field private mFetched:Z

.field private mPostId:J

.field private mSelectedView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lco/vine/android/BaseListFragment;-><init>()V

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    iput-object v0, p0, Lco/vine/android/CommentsFragment;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 243
    new-instance v0, Lco/vine/android/CommentsFragment$1;

    invoke-direct {v0, p0}, Lco/vine/android/CommentsFragment$1;-><init>(Lco/vine/android/CommentsFragment;)V

    iput-object v0, p0, Lco/vine/android/CommentsFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 274
    return-void
.end method

.method static synthetic access$000(Lco/vine/android/CommentsFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 39
    iget-wide v0, p0, Lco/vine/android/CommentsFragment;->mPostId:J

    return-wide v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lco/vine/android/CommentsFragment;->mSelectedCommentId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lco/vine/android/CommentsFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mSelectedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    sput-object p0, Lco/vine/android/CommentsFragment;->mActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static synthetic access$400(Lco/vine/android/CommentsFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private editTextLength()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method private fetchContent(I)V
    .locals 5
    .parameter "fetchType"

    .prologue
    const/4 v4, 0x1

    .line 136
    iput-boolean v4, p0, Lco/vine/android/CommentsFragment;->mFetched:Z

    .line 137
    packed-switch p1, :pswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 139
    :pswitch_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lco/vine/android/CommentsFragment;->showProgress(I)V

    .line 140
    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v1, p0, Lco/vine/android/CommentsFragment;->mPostId:J

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v4, v3}, Lco/vine/android/client/AppController;->fetchComments(JII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/vine/android/CommentsFragment;->addRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private validate(Landroid/widget/EditText;)Z
    .locals 1
    .parameter "editText"

    .prologue
    .line 175
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/CommentViewHolder;

    .line 195
    .local v0, h:Lco/vine/android/CommentViewHolder;
    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, v0, Lco/vine/android/CommentViewHolder;->userId:J

    invoke-static {v1, v2, v3}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;J)V

    .line 199
    .end local v0           #h:Lco/vine/android/CommentViewHolder;
    :goto_0
    return-void

    .line 186
    :pswitch_0
    invoke-direct {p0}, Lco/vine/android/CommentsFragment;->editTextLength()I

    move-result v1

    const/16 v2, 0x8c

    if-le v1, v2, :cond_0

    .line 187
    sget-object v1, Lco/vine/android/CommentsFragment;->mToastLengthExceeded:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v1, p0, Lco/vine/android/CommentsFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lco/vine/android/CommentsFragment;->postComment(Landroid/widget/EditText;)V

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x7f090015
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lco/vine/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lco/vine/android/CommentsFragment;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 63
    if-eqz p1, :cond_0

    .line 64
    const-string v0, "fetched"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "fetched"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lco/vine/android/CommentsFragment;->mFetched:Z

    .line 69
    :cond_0
    new-instance v0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;

    invoke-direct {v0, p0}, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;-><init>(Lco/vine/android/CommentsFragment;)V

    iput-object v0, p0, Lco/vine/android/CommentsFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    .line 70
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 9
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lco/vine/android/provider/Vine$Comments;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$CommentsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "post_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v7, p0, Lco/vine/android/CommentsFragment;->mPostId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 75
    const v0, 0x7f030005

    invoke-virtual {p0, p1, v0, p2}, Lco/vine/android/CommentsFragment;->createView(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "i"
    .parameter "l"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/CommentViewHolder;

    .line 171
    .local v0, h:Lco/vine/android/CommentViewHolder;
    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, v0, Lco/vine/android/CommentViewHolder;->userId:J

    invoke-static {v1, v2, v3}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;J)V

    .line 172
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .parameter
    .parameter "view"
    .parameter "i"
    .parameter "l"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 220
    sget-object v3, Lco/vine/android/CommentsFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v1

    .line 225
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lco/vine/android/CommentViewHolder;

    if-eqz v3, :cond_0

    .line 228
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/CommentViewHolder;

    .line 231
    .local v0, commentViewHolder:Lco/vine/android/CommentViewHolder;
    iget-object v3, p0, Lco/vine/android/CommentsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v3

    iget-wide v5, v0, Lco/vine/android/CommentViewHolder;->userId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 235
    iput-object p2, p0, Lco/vine/android/CommentsFragment;->mSelectedView:Landroid/view/View;

    .line 236
    iget-object v1, p0, Lco/vine/android/CommentsFragment;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 237
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/CommentViewHolder;

    iget-object v1, v1, Lco/vine/android/CommentViewHolder;->commentId:Ljava/lang/String;

    sput-object v1, Lco/vine/android/CommentsFragment;->mSelectedCommentId:Ljava/lang/String;

    .line 238
    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lco/vine/android/CommentsFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    sput-object v1, Lco/vine/android/CommentsFragment;->mActionMode:Landroid/view/ActionMode;

    move v1, v2

    .line 239
    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 165
    invoke-super/range {p0 .. p5}, Lco/vine/android/BaseListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 166
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x3

    .line 122
    invoke-super {p0, p1, p2}, Lco/vine/android/BaseListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 123
    iget-boolean v0, p0, Lco/vine/android/CommentsFragment;->mFetched:Z

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0, v1}, Lco/vine/android/CommentsFragment;->fetchContent(I)V

    .line 133
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0, v1}, Lco/vine/android/CommentsFragment;->hideProgress(I)V

    .line 127
    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lco/vine/android/CommentsFragment;->showSadface(Z)V

    goto :goto_0

    .line 130
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/CommentsFragment;->showSadface(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lco/vine/android/CommentsFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lco/vine/android/BaseListFragment;->onResume()V

    .line 98
    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->initLoader()V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lco/vine/android/CommentsFragment;->mFetched:Z

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lco/vine/android/CommentsFragment;->fetchContent(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 107
    invoke-super {p0, p1}, Lco/vine/android/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    const-string v0, "fetched"

    iget-boolean v1, p0, Lco/vine/android/CommentsFragment;->mFetched:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    return-void
.end method

.method public onSpanClicked(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .parameter "view"
    .parameter "type"
    .parameter "tag"

    .prologue
    .line 203
    packed-switch p2, :pswitch_data_0

    .line 216
    .end local p3
    :goto_0
    :pswitch_0
    return-void

    .line 205
    .restart local p3
    :pswitch_1
    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast p3, Ljava/lang/Long;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;J)V

    goto :goto_0

    .line 209
    .restart local p3
    :pswitch_2
    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-static {v0, p3}, Lco/vine/android/HashtagActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-super {p0, p1, p2}, Lco/vine/android/BaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "post_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/CommentsFragment;->mPostId:J

    .line 83
    const v0, 0x7f090016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lco/vine/android/CommentsFragment;->mEditText:Landroid/widget/EditText;

    .line 84
    const v0, 0x7f090015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 86
    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    new-instance v0, Lco/vine/android/CommentsAdapter;

    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-direct {v0, v1, v2, p0}, Lco/vine/android/CommentsAdapter;-><init>(Landroid/content/Context;Lco/vine/android/client/AppController;Lco/vine/android/widget/SpanClickListener;)V

    iput-object v0, p0, Lco/vine/android/CommentsFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 89
    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lco/vine/android/CommentsFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070070

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lco/vine/android/CommentsFragment;->mToastLengthExceeded:Landroid/widget/Toast;

    .line 92
    sget-object v0, Lco/vine/android/CommentsFragment;->mToastLengthExceeded:Landroid/widget/Toast;

    const/16 v1, 0x30

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 93
    return-void
.end method

.method public postComment(Landroid/widget/EditText;)V
    .locals 6
    .parameter "editText"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lco/vine/android/CommentsFragment;->validate(Landroid/widget/EditText;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 153
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f07006f

    invoke-virtual {p0, v1}, Lco/vine/android/CommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 154
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 155
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 156
    iput-object v0, p0, Lco/vine/android/CommentsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 157
    iget-object v1, p0, Lco/vine/android/CommentsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v2, p0, Lco/vine/android/CommentsFragment;->mPostId:J

    iget-object v4, p0, Lco/vine/android/CommentsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v4

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lco/vine/android/client/AppController;->postComment(JLco/vine/android/client/Session;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lco/vine/android/CommentsFragment;->addRequest(Ljava/lang/String;)V

    .line 159
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    return-void
.end method
