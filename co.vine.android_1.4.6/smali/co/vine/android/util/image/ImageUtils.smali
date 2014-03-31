.class public Lco/vine/android/util/image/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/util/image/ImageUtils$BitmapInfo;,
        Lco/vine/android/util/image/ImageUtils$ImageFilenameFilter;
    }
.end annotation


# static fields
.field public static final MAX_AVATAR_UPLOAD_SIZE_KB:I = 0x2bc

.field public static final MAX_TWEET_UPLOAD_SIZE_KB:I = 0xc00

.field public static final MIN_REQUIRED_SD_SPACE:J = 0x100000L

.field public static final SUPPORTS_FILTERS:Z = false

.field public static final TEMP_FILENAME_PREFIX:Ljava/lang/String; = "pic-"

.field public static final TEMP_RESIZED_PREFIX:Ljava/lang/String; = "pic-r-"

.field private static final sInStrokePaint:Landroid/graphics/Paint;

.field private static final sOutStrokePaint:Landroid/graphics/Paint;

.field private static final sResizePaint:Landroid/graphics/Paint;

.field private static final sSolidStrokePaint:Landroid/graphics/Paint;

.field public static final sSrcXferMode:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, -0xf0f10

    const/high16 v2, 0x3f80

    .line 60
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lco/vine/android/util/image/ImageUtils;->sSrcXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lco/vine/android/util/image/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lco/vine/android/util/image/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;

    .line 73
    sget-object v0, Lco/vine/android/util/image/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    sget-object v0, Lco/vine/android/util/image/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    sget-object v0, Lco/vine/android/util/image/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;

    const v1, -0x1f1f20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lco/vine/android/util/image/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;

    .line 81
    sget-object v0, Lco/vine/android/util/image/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    sget-object v0, Lco/vine/android/util/image/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    sget-object v0, Lco/vine/android/util/image/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lco/vine/android/util/image/ImageUtils;->sSolidStrokePaint:Landroid/graphics/Paint;

    .line 89
    sget-object v0, Lco/vine/android/util/image/ImageUtils;->sSolidStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    sget-object v0, Lco/vine/android/util/image/ImageUtils;->sSolidStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    sget-object v0, Lco/vine/android/util/image/ImageUtils;->sSolidStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method public static adjustRotation(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "uri"
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 1030
    invoke-static {p0, p1}, Lco/vine/android/util/image/ImageUtils;->getExifOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v8

    .line 1032
    .local v8, degrees:I
    packed-switch v8, :pswitch_data_0

    .line 1053
    .end local p2
    :goto_0
    :pswitch_0
    return-object p2

    .line 1034
    .restart local p2
    :pswitch_1
    const/high16 v10, 0x4334

    .line 1046
    .local v10, rotation:F
    :goto_1
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1047
    .local v6, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v6, v10}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1048
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p2

    move v3, v2

    invoke-static/range {v0 .. v7}, Lco/vine/android/util/image/ImageUtils;->createBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1050
    .local v9, result:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_0

    if-eq v9, p2, :cond_0

    .line 1051
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    move-object p2, v9

    .line 1053
    goto :goto_0

    .line 1037
    .end local v6           #matrix:Landroid/graphics/Matrix;
    .end local v9           #result:Landroid/graphics/Bitmap;
    .end local v10           #rotation:F
    :pswitch_2
    const/high16 v10, 0x4387

    .line 1038
    .restart local v10       #rotation:F
    goto :goto_1

    .line 1040
    .end local v10           #rotation:F
    :pswitch_3
    const/high16 v10, 0x42b4

    .line 1041
    .restart local v10       #rotation:F
    goto :goto_1

    .line 1032
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static changeFormatIfNeeded(Landroid/content/Context;Landroid/net/Uri;J)Landroid/net/Uri;
    .locals 10
    .parameter "context"
    .parameter "uri"
    .parameter "ownerId"

    .prologue
    const/4 v7, 0x0

    .line 671
    if-nez p1, :cond_0

    move-object v4, v7

    .line 706
    :goto_0
    return-object v4

    .line 676
    :cond_0
    const/4 v3, 0x0

    .line 677
    .local v3, inputStream:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 680
    .local v5, optionsStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 681
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 682
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 683
    .local v1, dbo:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 684
    const/4 v8, 0x0

    invoke-static {p0, v5, v8, v1}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 685
    iget-object v8, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v9, "image/jpeg"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v9, "image/gif"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v9, "image/png"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_2

    .line 705
    :cond_1
    invoke-static {v3}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 706
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, p1

    goto :goto_0

    .line 691
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 692
    invoke-static {p0, v3}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 693
    .local v6, srcBitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_4

    .line 694
    invoke-static {p0, v6, p2, p3}, Lco/vine/android/util/image/ImageUtils;->writePicToFile(Landroid/content/Context;Landroid/graphics/Bitmap;J)Landroid/net/Uri;

    move-result-object v4

    .line 695
    .local v4, newUri:Landroid/net/Uri;
    if-eqz v4, :cond_3

    .line 696
    invoke-static {p1}, Lco/vine/android/util/image/ImageUtils;->deleteTempPic(Landroid/net/Uri;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 705
    :cond_3
    invoke-static {v3}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 706
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 705
    .end local v4           #newUri:Landroid/net/Uri;
    :cond_4
    invoke-static {v3}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 706
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, v7

    goto :goto_0

    .line 702
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #srcBitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 705
    .local v2, e:Ljava/io/IOException;
    invoke-static {v3}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 706
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, v7

    goto :goto_0

    .line 705
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-static {v3}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 706
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v7
.end method

.method public static createBitmap(Landroid/content/Context;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 820
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 823
    :goto_0
    return-object v1

    .line 821
    :catch_0
    move-exception v0

    .line 823
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "bmp"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 791
    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 794
    :goto_0
    return-object v1

    .line 792
    :catch_0
    move-exception v0

    .line 794
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "bmp"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "matrix"
    .parameter "filter"

    .prologue
    .line 806
    :try_start_0
    invoke-static/range {p1 .. p7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 809
    :goto_0
    return-object v1

    .line 807
    :catch_0
    move-exception v0

    .line 809
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static decodeByteArray(Landroid/content/Context;[BII)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
    .locals 8
    .parameter "context"
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .line 744
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 745
    .local v1, dbo:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p1, p2, p3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 746
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 747
    new-instance v3, Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v3, v0, v5, v6, v7}, Lco/vine/android/util/image/ImageUtils$BitmapInfo;-><init>(Landroid/graphics/Bitmap;III)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #dbo:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v3

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #dbo:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    move-object v3, v4

    .line 749
    goto :goto_0

    .line 751
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #dbo:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/OutOfMemoryError;
    move-object v3, v4

    .line 753
    goto :goto_0
.end method

.method public static decodeByteArray(Landroid/content/Context;[BIILandroid/graphics/BitmapFactory$Options;)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
    .locals 9
    .parameter "context"
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "opts"

    .prologue
    const/4 v7, 0x0

    .line 765
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 766
    .local v1, dbo:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 767
    const/4 v6, 0x0

    array-length v8, p1

    invoke-static {p1, v6, v8, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 768
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 769
    .local v4, origWidth:I
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 771
    .local v3, origHeight:I
    iget v5, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 772
    .local v5, scale:I
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 773
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 774
    new-instance v6, Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    invoke-direct {v6, v0, v5, v4, v3}, Lco/vine/android/util/image/ImageUtils$BitmapInfo;-><init>(Landroid/graphics/Bitmap;III)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #origHeight:I
    .end local v4           #origWidth:I
    .end local v5           #scale:I
    :goto_0
    return-object v6

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #dbo:Landroid/graphics/BitmapFactory$Options;
    .restart local v3       #origHeight:I
    .restart local v4       #origWidth:I
    .restart local v5       #scale:I
    :cond_0
    move-object v6, v7

    .line 776
    goto :goto_0

    .line 778
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #origHeight:I
    .end local v4           #origWidth:I
    .end local v5           #scale:I
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/OutOfMemoryError;
    move-object v6, v7

    .line 780
    goto :goto_0
.end method

.method public static decodeResource(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "resources"
    .parameter "id"

    .prologue
    .line 851
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 854
    :goto_0
    return-object v1

    .line 852
    :catch_0
    move-exception v0

    .line 854
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static decodeResource(Landroid/content/Context;Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "resources"
    .parameter "id"
    .parameter "opts"

    .prologue
    .line 837
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 840
    :goto_0
    return-object v1

    .line 838
    :catch_0
    move-exception v0

    .line 840
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static decodeStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "is"

    .prologue
    .line 716
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 719
    :goto_0
    return-object v1

    .line 717
    :catch_0
    move-exception v0

    .line 719
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "is"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    .line 731
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 734
    :goto_0
    return-object v1

    .line 732
    :catch_0
    move-exception v0

    .line 734
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static deleteTempPic(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 597
    invoke-static {p0}, Lco/vine/android/util/image/ImageUtils;->isTempPic(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 598
    const/4 v1, 0x0

    .line 601
    :goto_0
    return v1

    .line 600
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_0
.end method

.method public static getExifOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 13
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v12, 0x0

    .line 976
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 977
    .local v11, scheme:Ljava/lang/String;
    if-eqz v11, :cond_0

    const-string v1, "file"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 978
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lco/vine/android/util/image/ImageUtils;->getExifOrientation(Ljava/lang/String;)I

    move-result v10

    .line 1018
    :goto_0
    return v10

    .line 979
    :cond_1
    const-string v1, "content"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 980
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 982
    .local v0, provider:Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_6

    .line 985
    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "orientation"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 993
    .local v8, result:Landroid/database/Cursor;
    if-nez v8, :cond_2

    move v10, v12

    .line 994
    goto :goto_0

    .line 989
    .end local v8           #result:Landroid/database/Cursor;
    :catch_0
    move-exception v6

    .local v6, e:Landroid/os/RemoteException;
    move v10, v12

    .line 990
    goto :goto_0

    .line 998
    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v8       #result:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 999
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1000
    .local v7, path:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 1001
    invoke-static {v7}, Lco/vine/android/util/image/ImageUtils;->getExifOrientation(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 1002
    .local v10, rotationFromFile:I
    if-eqz v10, :cond_3

    .line 1014
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1007
    .end local v10           #rotationFromFile:I
    :cond_3
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    .line 1008
    .local v9, rotationFromCursor:I
    if-eqz v9, :cond_4

    .line 1014
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v10, v9

    goto :goto_0

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v10, v12

    goto :goto_0

    .end local v7           #path:Ljava/lang/String;
    .end local v9           #rotationFromCursor:I
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v0           #provider:Landroid/content/ContentProviderClient;
    .end local v8           #result:Landroid/database/Cursor;
    :cond_6
    move v10, v12

    .line 1018
    goto :goto_0

    .line 1014
    .restart local v0       #provider:Landroid/content/ContentProviderClient;
    .restart local v8       #result:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 5
    .parameter "filepath"

    .prologue
    const/4 v2, 0x0

    .line 937
    if-nez p0, :cond_0

    .line 944
    :goto_0
    return v2

    .line 941
    :cond_0
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 942
    .local v1, exif:Landroid/media/ExifInterface;
    const-string v3, "Orientation"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 943
    .end local v1           #exif:Landroid/media/ExifInterface;
    :catch_0
    move-exception v0

    .line 944
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public static getRealPathFromImageUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 949
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 950
    .local v8, scheme:Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v0, "file"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 951
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 972
    :goto_0
    return-object v7

    .line 952
    :cond_1
    const-string v0, "content"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 953
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    .line 954
    .local v2, proj:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 955
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 957
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 958
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 959
    .local v7, result:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 968
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 962
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 968
    .end local v7           #result:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 965
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 968
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 972
    .end local v2           #proj:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public static getTempPic(Landroid/content/Context;ZJ)Ljava/io/File;
    .locals 6
    .parameter "context"
    .parameter "resized"
    .parameter "ownerId"

    .prologue
    .line 571
    invoke-static {p0}, Lco/vine/android/util/Util;->getFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 572
    .local v0, dir:Ljava/io/File;
    if-nez v0, :cond_0

    .line 573
    const/4 v2, 0x0

    .line 576
    :goto_0
    return-object v2

    .line 575
    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "pic-r-"

    .line 576
    .local v1, prefix:Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 575
    .end local v1           #prefix:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pic-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static hasEnoughExternalStorageForNewPhoto(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 913
    invoke-static {p0}, Lco/vine/android/util/Util;->getFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 914
    .local v2, dir:Ljava/io/File;
    if-nez v2, :cond_1

    .line 919
    :cond_0
    :goto_0
    return v4

    .line 917
    :cond_1
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 918
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    mul-long v0, v5, v7

    .line 919
    .local v0, bytesAvailable:J
    const-wide/32 v5, 0x100000

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static isPortrait(II)Z
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 197
    if-le p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isResized(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 1057
    invoke-static {p0}, Lco/vine/android/util/image/ImageUtils;->isTempPic(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pic-r-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTempPic(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 586
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pic-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static processPicture(Landroid/content/Context;Landroid/net/Uri;J)Landroid/net/Uri;
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "ownerId"

    .prologue
    .line 619
    invoke-static {p0, p1, p2, p3}, Lco/vine/android/util/image/ImageUtils;->changeFormatIfNeeded(Landroid/content/Context;Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0xc00

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, p2

    invoke-static/range {v0 .. v5}, Lco/vine/android/util/image/ImageUtils;->resizeIfNeeded(Landroid/content/Context;Landroid/net/Uri;IJLandroid/graphics/Rect;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static removeFiles(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 877
    invoke-static {p0}, Lco/vine/android/util/Util;->getFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 878
    .local v1, dir:Ljava/io/File;
    if-nez v1, :cond_1

    .line 889
    :cond_0
    return-void

    .line 881
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 882
    .local v3, files:[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 883
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 884
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    .line 885
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 883
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static resizeBitmap(Landroid/content/Context;Landroid/net/Uri;FFI)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "context"
    .parameter "uri"
    .parameter "viewWidth"
    .parameter "viewHeight"
    .parameter "border"

    .prologue
    .line 455
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 458
    .local v5, cr:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 459
    .local v10, inputStream:Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 462
    .local v13, optionStream:Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v13

    .line 464
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 465
    .local v6, dbo:Landroid/graphics/BitmapFactory$Options;
    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 466
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v13, v1, v6}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 468
    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v12, v0

    .line 469
    .local v12, nativeWidth:F
    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v11, v0

    .line 471
    .local v11, nativeHeight:F
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float p2, p2, v16

    .line 472
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float p3, p3, v16

    .line 478
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 480
    cmpl-float v16, v12, p2

    if-gtz v16, :cond_0

    cmpl-float v16, v11, p3

    if-lez v16, :cond_3

    .line 481
    :cond_0
    div-float v7, v12, p2

    .line 482
    .local v7, dx:F
    div-float v8, v11, p3

    .line 483
    .local v8, dy:F
    cmpl-float v16, v7, v8

    if-lez v16, :cond_1

    .line 484
    move/from16 v4, p2

    .line 485
    .local v4, bitmapWidth:F
    div-float v3, v11, v7

    .line 491
    .local v3, bitmapHeight:F
    :goto_0
    div-float v16, v12, v4

    const/high16 v17, 0x3f80

    cmpl-float v16, v16, v17

    if-lez v16, :cond_2

    .line 492
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 493
    .local v14, options:Landroid/graphics/BitmapFactory$Options;
    div-float v16, v12, v4

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 494
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v10, v1, v14}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 506
    .end local v7           #dx:F
    .end local v8           #dy:F
    .end local v14           #options:Landroid/graphics/BitmapFactory$Options;
    .local v15, srcBitmap:Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v15, :cond_4

    .line 507
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static {v0, v15, v4, v3, v1}, Lco/vine/android/util/image/ImageUtils;->scaleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 510
    .local v2, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    invoke-static {v13}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 519
    invoke-static {v10}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #bitmapHeight:F
    .end local v4           #bitmapWidth:F
    .end local v6           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v11           #nativeHeight:F
    .end local v12           #nativeWidth:F
    .end local v15           #srcBitmap:Landroid/graphics/Bitmap;
    :goto_2
    return-object v2

    .line 487
    .restart local v6       #dbo:Landroid/graphics/BitmapFactory$Options;
    .restart local v7       #dx:F
    .restart local v8       #dy:F
    .restart local v11       #nativeHeight:F
    .restart local v12       #nativeWidth:F
    :cond_1
    div-float v4, v12, v8

    .line 488
    .restart local v4       #bitmapWidth:F
    move/from16 v3, p3

    .restart local v3       #bitmapHeight:F
    goto :goto_0

    .line 497
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v15

    .restart local v15       #srcBitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 501
    .end local v3           #bitmapHeight:F
    .end local v4           #bitmapWidth:F
    .end local v7           #dx:F
    .end local v8           #dy:F
    .end local v15           #srcBitmap:Landroid/graphics/Bitmap;
    :cond_3
    move/from16 v4, p2

    .line 502
    .restart local v4       #bitmapWidth:F
    move/from16 v3, p3

    .line 503
    .restart local v3       #bitmapHeight:F
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    .restart local v15       #srcBitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 513
    :cond_4
    const/4 v2, 0x0

    .line 518
    invoke-static {v13}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 519
    invoke-static {v10}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    .line 515
    .end local v3           #bitmapHeight:F
    .end local v4           #bitmapWidth:F
    .end local v6           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v11           #nativeHeight:F
    .end local v12           #nativeWidth:F
    .end local v15           #srcBitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 516
    .local v9, e:Ljava/io/IOException;
    const/4 v2, 0x0

    .line 518
    invoke-static {v13}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 519
    invoke-static {v10}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    .line 518
    .end local v9           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v16

    invoke-static {v13}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 519
    invoke-static {v10}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v16
.end method

.method public static resizeBitmap(Landroid/content/Context;Landroid/net/Uri;JLandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "uri"
    .parameter "size"
    .parameter "rect"

    .prologue
    .line 400
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 401
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .line 402
    .local v5, inputStream:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 405
    .local v8, optionsStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 406
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 407
    .local v2, dbo:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 408
    const/4 v9, 0x0

    invoke-static {p0, v8, v9, v2}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 410
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v9, v9

    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v10, v10

    div-float v0, v9, v10

    .line 411
    .local v0, aspectRatio:F
    long-to-float v9, p2

    mul-float/2addr v9, v0

    invoke-static {v9}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v7

    .line 412
    .local v7, newWidth:F
    long-to-float v9, p2

    const/high16 v10, 0x3f80

    div-float/2addr v10, v0

    mul-float/2addr v9, v10

    invoke-static {v9}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v6

    .line 413
    .local v6, newHeight:F
    const/4 v4, 0x1

    .line 415
    .local v4, inSampleSize:I
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v9, v9

    cmpl-float v9, v9, v7

    if-gtz v9, :cond_0

    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v9, v9

    cmpl-float v9, v9, v6

    if-lez v9, :cond_1

    .line 416
    :cond_0
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v9, v10, :cond_2

    .line 417
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v9, v9

    div-float/2addr v9, v6

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v4, v9

    .line 422
    :goto_0
    if-eqz p4, :cond_1

    .line 424
    iget v9, p4, Landroid/graphics/Rect;->left:I

    div-int/2addr v9, v4

    iput v9, p4, Landroid/graphics/Rect;->left:I

    .line 425
    iget v9, p4, Landroid/graphics/Rect;->top:I

    div-int/2addr v9, v4

    iput v9, p4, Landroid/graphics/Rect;->top:I

    .line 426
    iget v9, p4, Landroid/graphics/Rect;->right:I

    div-int/2addr v9, v4

    iput v9, p4, Landroid/graphics/Rect;->right:I

    .line 427
    iget v9, p4, Landroid/graphics/Rect;->bottom:I

    div-int/2addr v9, v4

    iput v9, p4, Landroid/graphics/Rect;->bottom:I

    .line 431
    :cond_1
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 432
    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 433
    const/4 v9, 0x0

    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 434
    const/4 v9, 0x0

    invoke-static {p0, v5, v9, v2}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 438
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 439
    invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .end local v0           #aspectRatio:F
    .end local v2           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #inSampleSize:I
    .end local v6           #newHeight:F
    .end local v7           #newWidth:F
    :goto_1
    return-object v9

    .line 419
    .restart local v0       #aspectRatio:F
    .restart local v2       #dbo:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #inSampleSize:I
    .restart local v6       #newHeight:F
    .restart local v7       #newWidth:F
    :cond_2
    :try_start_1
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v9

    double-to-int v4, v9

    goto :goto_0

    .line 435
    .end local v0           #aspectRatio:F
    .end local v2           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #inSampleSize:I
    .end local v6           #newHeight:F
    .end local v7           #newWidth:F
    :catch_0
    move-exception v3

    .line 436
    .local v3, e:Ljava/io/IOException;
    const/4 v9, 0x0

    .line 438
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 439
    invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 438
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 439
    invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v9
.end method

.method private static resizeBitmap(Landroid/content/Context;Lco/vine/android/util/image/ImageUtils$BitmapInfo;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
    .locals 12
    .parameter "context"
    .parameter "src"
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 364
    if-nez p1, :cond_1

    .line 365
    const/4 p1, 0x0

    .line 386
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 368
    .restart local p1
    :cond_1
    iget-object v1, p1, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 369
    .local v1, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 370
    .local v4, width:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 371
    .local v5, height:I
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 372
    .local v9, desiredSize:I
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 373
    .local v11, size:I
    if-le v11, v9, :cond_0

    .line 374
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 375
    .local v6, matrix:Landroid/graphics/Matrix;
    int-to-float v0, v9

    int-to-float v2, v11

    div-float v10, v0, v2

    .line 376
    .local v10, scale:F
    invoke-virtual {v6, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 378
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lco/vine/android/util/image/ImageUtils;->createBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 379
    .local v8, bitmap:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_2

    .line 380
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 381
    new-instance p1, Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    .end local p1
    float-to-int v0, v10

    invoke-direct {p1, v8, v0, v4, v5}, Lco/vine/android/util/image/ImageUtils$BitmapInfo;-><init>(Landroid/graphics/Bitmap;III)V

    goto :goto_0

    .line 383
    .restart local p1
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static resizeBitmap(Landroid/content/Context;Ljava/io/InputStream;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
    .locals 1
    .parameter "context"
    .parameter "is"
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 358
    invoke-static {p0, p1, p2, p3}, Lco/vine/android/util/image/ImageUtils;->safeDecode(Landroid/content/Context;Ljava/io/InputStream;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lco/vine/android/util/image/ImageUtils;->resizeBitmap(Landroid/content/Context;Lco/vine/android/util/image/ImageUtils$BitmapInfo;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public static resizeBitmap(Landroid/content/Context;[BII)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
    .locals 1
    .parameter "context"
    .parameter "imageBytes"
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 345
    invoke-static {p0, p1, p2, p3}, Lco/vine/android/util/image/ImageUtils;->safeDecode(Landroid/content/Context;[BII)Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lco/vine/android/util/image/ImageUtils;->resizeBitmap(Landroid/content/Context;Lco/vine/android/util/image/ImageUtils$BitmapInfo;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public static resizeIfNeeded(Landroid/content/Context;Landroid/net/Uri;IJLandroid/graphics/Rect;)Landroid/net/Uri;
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "maxSizeKB"
    .parameter "ownerId"
    .parameter "rect"

    .prologue
    const/4 v2, 0x0

    .line 636
    if-nez p1, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-object v2

    .line 644
    :cond_1
    mul-int/lit16 v4, p2, 0xfa

    int-to-long v0, v4

    .line 646
    .local v0, maxSizePixels:J
    invoke-static {p0, p1}, Lco/vine/android/util/Util;->getFileSize(Landroid/content/Context;Landroid/net/Uri;)F

    move-result v4

    int-to-float v5, p2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 647
    invoke-static {p0, p1, v0, v1, p5}, Lco/vine/android/util/image/ImageUtils;->resizeBitmap(Landroid/content/Context;Landroid/net/Uri;JLandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 648
    .local v3, smaller:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 651
    invoke-static {p0, v3, p3, p4}, Lco/vine/android/util/image/ImageUtils;->writePicToFile(Landroid/content/Context;Landroid/graphics/Bitmap;J)Landroid/net/Uri;

    move-result-object v2

    .line 652
    .local v2, newUri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 653
    invoke-static {p1}, Lco/vine/android/util/image/ImageUtils;->deleteTempPic(Landroid/net/Uri;)Z

    goto :goto_0

    .end local v2           #newUri:Landroid/net/Uri;
    .end local v3           #smaller:Landroid/graphics/Bitmap;
    :cond_2
    move-object v2, p1

    .line 657
    goto :goto_0
.end method

.method public static roundBitmapCorners(Landroid/content/Context;Landroid/graphics/Bitmap;IIF)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"
    .parameter "bm"
    .parameter "width"
    .parameter "height"
    .parameter "cornerRadius"

    .prologue
    .line 313
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p2, p3, v6}, Lco/vine/android/util/image/ImageUtils;->createBitmap(Landroid/content/Context;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 314
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x0

    .line 333
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 317
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 318
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    const/4 v6, 0x3

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 319
    .local v3, p:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v6, 0x8

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput p4, v6, v7

    const/4 v7, 0x1

    aput p4, v6, v7

    const/4 v7, 0x2

    aput p4, v6, v7

    const/4 v7, 0x3

    aput p4, v6, v7

    const/4 v7, 0x4

    aput p4, v6, v7

    const/4 v7, 0x5

    aput p4, v6, v7

    const/4 v7, 0x6

    aput p4, v6, v7

    const/4 v7, 0x7

    aput p4, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 323
    .local v4, rrs:Landroid/graphics/drawable/shapes/RoundRectShape;
    int-to-float v6, p2

    int-to-float v7, p3

    invoke-virtual {v4, v6, v7}, Landroid/graphics/drawable/shapes/RoundRectShape;->resize(FF)V

    .line 324
    invoke-virtual {v4, v1, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 325
    sget-object v6, Lco/vine/android/util/image/ImageUtils;->sSrcXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 326
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v6, p3, :cond_2

    .line 327
    :cond_1
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 328
    .local v5, src:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 329
    .local v2, dest:Landroid/graphics/Rect;
    invoke-virtual {v1, p1, v5, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 331
    .end local v2           #dest:Landroid/graphics/Rect;
    .end local v5           #src:Landroid/graphics/Rect;
    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, p1, v6, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static safeDecode(Landroid/content/Context;Landroid/net/Uri;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lco/vine/android/util/image/ImageUtils;->safeDecode(Landroid/content/Context;Landroid/net/Uri;IIZ)Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public static safeDecode(Landroid/content/Context;Landroid/net/Uri;IIZ)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
    .locals 16
    .parameter "context"
    .parameter "uri"
    .parameter "width"
    .parameter "height"
    .parameter "conservative"

    .prologue
    .line 229
    const/4 v9, 0x0

    .line 230
    .local v9, optionsStream:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 232
    .local v8, inputStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 233
    .local v10, resolver:Landroid/content/ContentResolver;
    if-eqz v10, :cond_0

    if-nez p1, :cond_1

    .line 234
    :cond_0
    const/4 v13, 0x0

    .line 266
    invoke-static {v9}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 267
    invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .end local v10           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v13

    .line 236
    .restart local v10       #resolver:Landroid/content/ContentResolver;
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    .line 237
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 238
    .local v6, dbo:Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 239
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9, v13, v6}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 240
    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 241
    .local v4, bitmapWidth:I
    iget v3, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 242
    .local v3, bitmapHeight:I
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v6, v0, v1, v2}, Lco/vine/android/util/image/ImageUtils;->setBitmapOptionsScale(Landroid/graphics/BitmapFactory$Options;IIZ)V

    .line 245
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 246
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v8, v13, v6}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 247
    .local v5, bmp:Landroid/graphics/Bitmap;
    if-nez v5, :cond_2

    .line 248
    const/4 v13, 0x0

    .line 266
    invoke-static {v9}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 267
    invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 250
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lco/vine/android/util/image/ImageUtils;->adjustRotation(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 251
    .local v11, result:Landroid/graphics/Bitmap;
    if-nez v11, :cond_4

    .line 253
    move-object v11, v5

    .line 262
    :cond_3
    :goto_1
    new-instance v13, Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    iget v14, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-direct {v13, v11, v14, v4, v3}, Lco/vine/android/util/image/ImageUtils$BitmapInfo;-><init>(Landroid/graphics/Bitmap;III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 266
    invoke-static {v9}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 267
    invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 254
    :cond_4
    :try_start_3
    invoke-static {v4, v3}, Lco/vine/android/util/image/ImageUtils;->isPortrait(II)Z

    move-result v13

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-static {v14, v15}, Lco/vine/android/util/image/ImageUtils;->isPortrait(II)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v14

    if-eq v13, v14, :cond_3

    .line 258
    move v12, v3

    .line 259
    .local v12, tempHeight:I
    move v3, v4

    .line 260
    move v4, v12

    goto :goto_1

    .line 263
    .end local v3           #bitmapHeight:I
    .end local v4           #bitmapWidth:I
    .end local v5           #bmp:Landroid/graphics/Bitmap;
    .end local v6           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v10           #resolver:Landroid/content/ContentResolver;
    .end local v11           #result:Landroid/graphics/Bitmap;
    .end local v12           #tempHeight:I
    :catch_0
    move-exception v7

    .line 264
    .local v7, ignore:Ljava/lang/Exception;
    const/4 v13, 0x0

    .line 266
    invoke-static {v9}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 267
    invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 266
    .end local v7           #ignore:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    invoke-static {v9}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 267
    invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v13
.end method

.method public static safeDecode(Landroid/content/Context;Ljava/io/InputStream;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
    .locals 17
    .parameter "context"
    .parameter "is"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    .line 147
    invoke-static/range {p0 .. p0}, Lco/vine/android/util/Util;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    .line 149
    .local v6, f:Ljava/io/File;
    const/4 v13, 0x0

    .line 151
    .local v13, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v13           #out:Ljava/io/FileOutputStream;
    .local v14, out:Ljava/io/FileOutputStream;
    const/16 v15, 0x1000

    :try_start_1
    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lco/vine/android/util/Util;->readFullyWriteTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v3

    .line 153
    .local v3, bytesLen:I
    if-nez v3, :cond_0

    .line 154
    const/4 v15, 0x0

    .line 160
    :try_start_2
    invoke-static {v14}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 192
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-object v13, v14

    .end local v3           #bytesLen:I
    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    :goto_0
    return-object v15

    .line 156
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v3       #bytesLen:I
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :cond_0
    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 160
    :try_start_4
    invoke-static {v14}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 162
    const/4 v9, 0x0

    .line 163
    .local v9, optionsInput:Ljava/io/BufferedInputStream;
    const/4 v7, 0x0

    .line 165
    .local v7, imageInput:Ljava/io/BufferedInputStream;
    :try_start_5
    new-instance v10, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2

    .line 167
    .end local v9           #optionsInput:Ljava/io/BufferedInputStream;
    .local v10, optionsInput:Ljava/io/BufferedInputStream;
    :try_start_6
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 168
    .local v4, dbo:Landroid/graphics/BitmapFactory$Options;
    const/4 v15, 0x1

    iput-boolean v15, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 169
    const/4 v15, 0x0

    invoke-static {v10, v15, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 171
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_3

    .line 173
    .end local v7           #imageInput:Ljava/io/BufferedInputStream;
    .local v8, imageInput:Ljava/io/BufferedInputStream;
    :try_start_7
    iget v12, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 174
    .local v12, origWidth:I
    iget v11, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 175
    .local v11, origHeight:I
    const/4 v15, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v4, v0, v1, v15}, Lco/vine/android/util/image/ImageUtils;->setBitmapOptionsScale(Landroid/graphics/BitmapFactory$Options;IIZ)V

    .line 176
    const/4 v15, 0x0

    invoke-static {v8, v15, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 177
    .local v2, bitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 178
    new-instance v15, Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v15, v2, v0, v12, v11}, Lco/vine/android/util/image/ImageUtils$BitmapInfo;-><init>(Landroid/graphics/Bitmap;III)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_4

    .line 188
    :try_start_8
    invoke-static {v10}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 189
    invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 192
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 157
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #bytesLen:I
    .end local v4           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #imageInput:Ljava/io/BufferedInputStream;
    .end local v10           #optionsInput:Ljava/io/BufferedInputStream;
    .end local v11           #origHeight:I
    .end local v12           #origWidth:I
    :catch_0
    move-exception v5

    .line 158
    .local v5, e:Ljava/io/IOException;
    :goto_1
    const/4 v15, 0x0

    .line 160
    :try_start_9
    invoke-static {v13}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 192
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 160
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v15

    :goto_2
    :try_start_a
    invoke-static {v13}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 192
    :catchall_1
    move-exception v15

    :goto_3
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    throw v15

    .line 180
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #bytesLen:I
    .restart local v4       #dbo:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #imageInput:Ljava/io/BufferedInputStream;
    .restart local v10       #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v11       #origHeight:I
    .restart local v12       #origWidth:I
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :cond_1
    const/4 v15, 0x0

    .line 188
    :try_start_b
    invoke-static {v10}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 189
    invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 192
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 182
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #imageInput:Ljava/io/BufferedInputStream;
    .end local v10           #optionsInput:Ljava/io/BufferedInputStream;
    .end local v11           #origHeight:I
    .end local v12           #origWidth:I
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v7       #imageInput:Ljava/io/BufferedInputStream;
    .restart local v9       #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    .line 183
    .restart local v5       #e:Ljava/io/IOException;
    :goto_4
    const/4 v15, 0x0

    .line 188
    :try_start_c
    invoke-static {v9}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 189
    invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 192
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 184
    .end local v5           #e:Ljava/io/IOException;
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v5

    .line 186
    .local v5, e:Ljava/lang/OutOfMemoryError;
    :goto_5
    const/4 v15, 0x0

    .line 188
    :try_start_d
    invoke-static {v9}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 189
    invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 192
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 188
    .end local v5           #e:Ljava/lang/OutOfMemoryError;
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v15

    :goto_6
    :try_start_e
    invoke-static {v9}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 189
    invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 192
    .end local v7           #imageInput:Ljava/io/BufferedInputStream;
    .end local v9           #optionsInput:Ljava/io/BufferedInputStream;
    :catchall_3
    move-exception v15

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 188
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v7       #imageInput:Ljava/io/BufferedInputStream;
    .restart local v10       #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v15

    move-object v9, v10

    .end local v10           #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v9       #optionsInput:Ljava/io/BufferedInputStream;
    goto :goto_6

    .end local v7           #imageInput:Ljava/io/BufferedInputStream;
    .end local v9           #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v4       #dbo:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #imageInput:Ljava/io/BufferedInputStream;
    .restart local v10       #optionsInput:Ljava/io/BufferedInputStream;
    :catchall_5
    move-exception v15

    move-object v7, v8

    .end local v8           #imageInput:Ljava/io/BufferedInputStream;
    .restart local v7       #imageInput:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v9       #optionsInput:Ljava/io/BufferedInputStream;
    goto :goto_6

    .line 184
    .end local v4           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v10       #optionsInput:Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v5

    move-object v9, v10

    .end local v10           #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v9       #optionsInput:Ljava/io/BufferedInputStream;
    goto :goto_5

    .end local v7           #imageInput:Ljava/io/BufferedInputStream;
    .end local v9           #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v4       #dbo:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #imageInput:Ljava/io/BufferedInputStream;
    .restart local v10       #optionsInput:Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v5

    move-object v7, v8

    .end local v8           #imageInput:Ljava/io/BufferedInputStream;
    .restart local v7       #imageInput:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v9       #optionsInput:Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 182
    .end local v4           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v10       #optionsInput:Ljava/io/BufferedInputStream;
    :catch_5
    move-exception v5

    move-object v9, v10

    .end local v10           #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v9       #optionsInput:Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v7           #imageInput:Ljava/io/BufferedInputStream;
    .end local v9           #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v4       #dbo:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #imageInput:Ljava/io/BufferedInputStream;
    .restart local v10       #optionsInput:Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v5

    move-object v7, v8

    .end local v8           #imageInput:Ljava/io/BufferedInputStream;
    .restart local v7       #imageInput:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v9       #optionsInput:Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 160
    .end local v3           #bytesLen:I
    .end local v4           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v7           #imageInput:Ljava/io/BufferedInputStream;
    .end local v9           #optionsInput:Ljava/io/BufferedInputStream;
    :catchall_6
    move-exception v15

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 157
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v5

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static safeDecode(Landroid/content/Context;[BII)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
    .locals 7
    .parameter "context"
    .parameter "imageBytes"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/4 v5, 0x0

    .line 117
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 118
    .local v1, dbo:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 119
    array-length v4, p1

    invoke-static {p0, p1, v5, v4, v1}, Lco/vine/android/util/image/ImageUtils;->decodeByteArray(Landroid/content/Context;[BIILandroid/graphics/BitmapFactory$Options;)Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    .line 120
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 121
    .local v3, origWidth:I
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 123
    .local v2, origHeight:I
    invoke-static {v1, p2, p3, v5}, Lco/vine/android/util/image/ImageUtils;->setBitmapOptionsScale(Landroid/graphics/BitmapFactory$Options;IIZ)V

    .line 124
    array-length v4, p1

    invoke-static {p0, p1, v5, v4, v1}, Lco/vine/android/util/image/ImageUtils;->decodeByteArray(Landroid/content/Context;[BIILandroid/graphics/BitmapFactory$Options;)Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    move-result-object v0

    .line 126
    .local v0, bitmapInfo:Lco/vine/android/util/image/ImageUtils$BitmapInfo;
    if-eqz v0, :cond_0

    .line 127
    new-instance v4, Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    iget-object v5, v0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-direct {v4, v5, v6, v3, v2}, Lco/vine/android/util/image/ImageUtils$BitmapInfo;-><init>(Landroid/graphics/Bitmap;III)V

    .line 129
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static scaleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "src"
    .parameter "width"
    .parameter "height"
    .parameter "border"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 536
    float-to-int v2, p2

    add-int/2addr v2, p4

    float-to-int v3, p3

    add-int/2addr v3, p4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v2, v3, v4}, Lco/vine/android/util/image/ImageUtils;->createBitmap(Landroid/content/Context;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 538
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-nez v6, :cond_0

    .line 539
    const/4 v6, 0x0

    .line 558
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v6

    .line 541
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 543
    .local v0, canvas:Landroid/graphics/Canvas;
    if-lez p4, :cond_1

    .line 544
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 545
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    float-to-int v4, p2

    add-int/lit8 v4, v4, 0x1

    float-to-int v5, p3

    invoke-direct {v3, p4, p4, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v4, Lco/vine/android/util/image/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 548
    int-to-float v2, p4

    add-float/2addr v2, p2

    sub-float v3, v2, v7

    int-to-float v2, p4

    add-float/2addr v2, p3

    sub-float v4, v2, v7

    sget-object v5, Lco/vine/android/util/image/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 550
    add-int/lit8 v1, p4, -0x1

    int-to-float v1, v1

    add-int/lit8 v2, p4, -0x1

    int-to-float v2, v2

    sget-object v5, Lco/vine/android/util/image/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 553
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    float-to-int v3, p2

    add-int/lit8 v3, v3, 0x1

    float-to-int v4, p3

    invoke-direct {v2, p4, p4, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v3, Lco/vine/android/util/image/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static setBitmapOptionsScale(Landroid/graphics/BitmapFactory$Options;IIZ)V
    .locals 8
    .parameter "dbo"
    .parameter "desiredWidth"
    .parameter "desiredHeight"
    .parameter "conservative"

    .prologue
    const/4 v7, 0x1

    .line 283
    iget v5, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 284
    .local v5, width:I
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 286
    .local v0, height:I
    const/4 v3, 0x1

    .line 287
    .local v3, scale:I
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 288
    .local v4, size:I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 290
    .local v2, maxSize:I
    if-eqz p3, :cond_0

    .line 291
    const/4 v1, 0x1

    .line 295
    .local v1, initialScale:I
    :goto_0
    div-int v6, v4, v1

    if-lt v6, v2, :cond_1

    .line 296
    div-int/lit8 v4, v4, 0x2

    .line 297
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 293
    .end local v1           #initialScale:I
    :cond_0
    const/4 v1, 0x2

    .restart local v1       #initialScale:I
    goto :goto_0

    .line 299
    :cond_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 300
    iput-boolean v7, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 301
    iput-boolean v7, p0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 302
    iput v3, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 303
    return-void
.end method

.method public static writePicToFile(Landroid/content/Context;Landroid/graphics/Bitmap;J)Landroid/net/Uri;
    .locals 7
    .parameter "context"
    .parameter "pic"
    .parameter "ownerId"

    .prologue
    const/4 v4, 0x0

    .line 892
    const/4 v2, 0x0

    .line 893
    .local v2, fs:Ljava/io/FileOutputStream;
    const/4 v5, 0x1

    invoke-static {p0, v5, p2, p3}, Lco/vine/android/util/image/ImageUtils;->getTempPic(Landroid/content/Context;ZJ)Ljava/io/File;

    move-result-object v1

    .line 894
    .local v1, f:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 896
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 897
    .end local v2           #fs:Ljava/io/FileOutputStream;
    .local v3, fs:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x55

    invoke-virtual {p1, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 898
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 899
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 905
    invoke-static {v3}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 908
    .end local v3           #fs:Ljava/io/FileOutputStream;
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-object v4

    .line 900
    :catch_0
    move-exception v0

    .line 905
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 902
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 905
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :goto_2
    invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    :goto_3
    invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .end local v2           #fs:Ljava/io/FileOutputStream;
    .restart local v3       #fs:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fs:Ljava/io/FileOutputStream;
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 902
    .end local v2           #fs:Ljava/io/FileOutputStream;
    .restart local v3       #fs:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #fs:Ljava/io/FileOutputStream;
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 900
    .end local v2           #fs:Ljava/io/FileOutputStream;
    .restart local v3       #fs:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #fs:Ljava/io/FileOutputStream;
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
