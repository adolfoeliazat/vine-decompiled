.class Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;
.super Lco/vine/android/client/AppSessionListener;
.source "SignUpNameAvatarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/SignUpNameAvatarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignUpListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/SignUpNameAvatarFragment;


# direct methods
.method private constructor <init>(Lco/vine/android/SignUpNameAvatarFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/SignUpNameAvatarFragment;Lco/vine/android/SignUpNameAvatarFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;-><init>(Lco/vine/android/SignUpNameAvatarFragment;)V

    return-void
.end method


# virtual methods
.method public onGetTwitterUserComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/TwitterUser;Lco/vine/android/api/VineLogin;)V
    .locals 5
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "user"
    .parameter "login"

    .prologue
    const/4 v4, 0x0

    .line 319
    const/16 v2, 0xc8

    if-eq p2, v2, :cond_1

    if-eqz p4, :cond_1

    .line 320
    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;

    #getter for: Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;
    invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$100(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p4, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;

    #setter for: Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;
    invoke-static {v2, v4}, Lco/vine/android/SignUpNameAvatarFragment;->access$202(Lco/vine/android/SignUpNameAvatarFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 322
    iget-boolean v2, p4, Lco/vine/android/api/TwitterUser;->defaultProfileImage:Z

    if-nez v2, :cond_0

    .line 323
    new-instance v1, Lco/vine/android/util/image/ImageKey;

    iget-object v2, p4, Lco/vine/android/api/TwitterUser;->profileUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    .line 324
    .local v1, key:Lco/vine/android/util/image/ImageKey;
    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;

    iget-object v2, v2, Lco/vine/android/SignUpNameAvatarFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2, v1}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 326
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 327
    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;

    #getter for: Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$300(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f02001b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;

    #getter for: Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$300(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 329
    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;

    const/4 v3, 0x0

    #setter for: Lco/vine/android/SignUpNameAvatarFragment;->mPhotoAttached:Z
    invoke-static {v2, v3}, Lco/vine/android/SignUpNameAvatarFragment;->access$402(Lco/vine/android/SignUpNameAvatarFragment;Z)Z

    .line 337
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #key:Lco/vine/android/util/image/ImageKey;
    :cond_0
    :goto_0
    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;

    #setter for: Lco/vine/android/SignUpNameAvatarFragment;->mTwitterUser:Lco/vine/android/api/TwitterUser;
    invoke-static {v2, p4}, Lco/vine/android/SignUpNameAvatarFragment;->access$602(Lco/vine/android/SignUpNameAvatarFragment;Lco/vine/android/api/TwitterUser;)Lco/vine/android/api/TwitterUser;

    .line 339
    :cond_1
    return-void

    .line 331
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #key:Lco/vine/android/util/image/ImageKey;
    :cond_2
    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;

    #getter for: Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$300(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 332
    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;

    #getter for: Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$300(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 333
    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;

    const/4 v3, 0x1

    #setter for: Lco/vine/android/SignUpNameAvatarFragment;->mPhotoAttached:Z
    invoke-static {v2, v3}, Lco/vine/android/SignUpNameAvatarFragment;->access$402(Lco/vine/android/SignUpNameAvatarFragment;Z)Z

    .line 334
    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;

    #getter for: Lco/vine/android/SignUpNameAvatarFragment;->mImagePicker:Lco/vine/android/ImagePicker;
    invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$500(Lco/vine/android/SignUpNameAvatarFragment;)Lco/vine/android/ImagePicker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lco/vine/android/ImagePicker;->saveProfileImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/image/ImageKey;",
            "Lco/vine/android/util/image/UrlImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p1, images:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/image/ImageKey;Lco/vine/android/util/image/UrlImage;>;"
    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;

    #getter for: Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$300(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/util/image/ImageKey;

    .line 344
    .local v1, key:Lco/vine/android/util/image/ImageKey;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/util/image/UrlImage;

    .line 345
    .local v0, image:Lco/vine/android/util/image/UrlImage;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;

    #getter for: Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$300(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, v0, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 347
    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;

    const/4 v3, 0x1

    #setter for: Lco/vine/android/SignUpNameAvatarFragment;->mPhotoAttached:Z
    invoke-static {v2, v3}, Lco/vine/android/SignUpNameAvatarFragment;->access$402(Lco/vine/android/SignUpNameAvatarFragment;Z)Z

    .line 348
    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;->this$0:Lco/vine/android/SignUpNameAvatarFragment;

    #getter for: Lco/vine/android/SignUpNameAvatarFragment;->mImagePicker:Lco/vine/android/ImagePicker;
    invoke-static {v2}, Lco/vine/android/SignUpNameAvatarFragment;->access$500(Lco/vine/android/SignUpNameAvatarFragment;)Lco/vine/android/ImagePicker;

    move-result-object v2

    iget-object v3, v0, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lco/vine/android/ImagePicker;->saveProfileImage(Landroid/graphics/Bitmap;)V

    .line 350
    :cond_0
    return-void
.end method