.class public Lcom/twitter/android/sdk/Twitter;
.super Ljava/lang/Object;
.source "Twitter.java"


# static fields
.field private static final APP_SIGNATURE:Ljava/lang/String; = "3082025d308201c6a00302010202044bd76cce300d06092a864886f70d01010505003073310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f31163014060355040a130d547769747465722c20496e632e310f300d060355040b13064d6f62696c65311630140603550403130d4c656c616e6420526563686973301e170d3130303432373233303133345a170d3438303832353233303133345a3073310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f31163014060355040a130d547769747465722c20496e632e310f300d060355040b13064d6f62696c65311630140603550403130d4c656c616e642052656368697330819f300d06092a864886f70d010101050003818d003081890281810086233c2e51c62232d49cc932e470713d63a6a1106b38f9e442e01bc79ca4f95c72b2cb3f1369ef7dea6036bff7c4b2828cb3787e7657ad83986751ced5b131fcc6f413efb7334e32ed9787f9e9a249ae108fa66009ac7a7932c25d37e1e07d4f9f66aa494c270dbac87d261c9668d321c2fba4ef2800e46671a597ff2eac5d7f0203010001300d06092a864886f70d0101050500038181003e1f01cb6ea8be8d2cecef5cd2a64c97ba8728aa5f08f8275d00508d64d139b6a72c5716b40a040df0eeeda04de9361107e123ee8d3dc05e70c8a355f46dbadf1235443b0b214c57211afd4edd147451c443d49498d2a7ff27e45a99c39b9e47429a1dae843ba233bf8ca81296dbe1dc5c5434514d995b0279246809392a219b"

.field private static final AUTH_ACTIVITY:Landroid/content/ComponentName; = null

.field private static final AUTH_CLASS_NAME:Ljava/lang/String; = "com.twitter.android.AuthorizeAppActivity"

.field private static final EXTRA_CONSUMER_KEY:Ljava/lang/String; = "ck"

.field private static final EXTRA_CONSUMER_SECRET:Ljava/lang/String; = "cs"

.field public static final EXTRA_SCREEN_NAME:Ljava/lang/String; = "screen_name"

.field public static final EXTRA_TOKEN:Ljava/lang/String; = "tk"

.field public static final EXTRA_TOKEN_SECRET:Ljava/lang/String; = "ts"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "user_id"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.twitter.android"


# instance fields
.field private mConsumerKey:Ljava/lang/String;

.field private mConsumerSecret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.twitter.android"

    const-string v2, "com.twitter.android.AuthorizeAppActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/twitter/android/sdk/Twitter;->AUTH_ACTIVITY:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "consumerKey"
    .parameter "consumerSecret"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "consumerKey, consumerSecret, and getTokenListener must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    iput-object p1, p0, Lcom/twitter/android/sdk/Twitter;->mConsumerKey:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/twitter/android/sdk/Twitter;->mConsumerSecret:Ljava/lang/String;

    .line 91
    return-void
.end method

.method private static checkAppSignature(Landroid/content/pm/PackageManager;)Z
    .locals 9
    .parameter "pm"

    .prologue
    const/4 v6, 0x0

    .line 142
    :try_start_0
    const-string v7, "com.twitter.android"

    const/16 v8, 0x40

    invoke-virtual {p0, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 147
    .local v4, p:Landroid/content/pm/PackageInfo;
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 148
    .local v5, s:Landroid/content/pm/Signature;
    const-string v7, "3082025d308201c6a00302010202044bd76cce300d06092a864886f70d01010505003073310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f31163014060355040a130d547769747465722c20496e632e310f300d060355040b13064d6f62696c65311630140603550403130d4c656c616e6420526563686973301e170d3130303432373233303133345a170d3438303832353233303133345a3073310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f31163014060355040a130d547769747465722c20496e632e310f300d060355040b13064d6f62696c65311630140603550403130d4c656c616e642052656368697330819f300d06092a864886f70d010101050003818d003081890281810086233c2e51c62232d49cc932e470713d63a6a1106b38f9e442e01bc79ca4f95c72b2cb3f1369ef7dea6036bff7c4b2828cb3787e7657ad83986751ced5b131fcc6f413efb7334e32ed9787f9e9a249ae108fa66009ac7a7932c25d37e1e07d4f9f66aa494c270dbac87d261c9668d321c2fba4ef2800e46671a597ff2eac5d7f0203010001300d06092a864886f70d0101050500038181003e1f01cb6ea8be8d2cecef5cd2a64c97ba8728aa5f08f8275d00508d64d139b6a72c5716b40a040df0eeeda04de9361107e123ee8d3dc05e70c8a355f46dbadf1235443b0b214c57211afd4edd147451c443d49498d2a7ff27e45a99c39b9e47429a1dae843ba233bf8ca81296dbe1dc5c5434514d995b0279246809392a219b"

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 149
    const/4 v6, 0x1

    .line 153
    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #p:Landroid/content/pm/PackageInfo;
    .end local v5           #s:Landroid/content/pm/Signature;
    :cond_0
    :goto_1
    return v6

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 147
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #arr$:[Landroid/content/pm/Signature;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #p:Landroid/content/pm/PackageInfo;
    .restart local v5       #s:Landroid/content/pm/Signature;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/sdk/Twitter;->checkAppSignature(Landroid/content/pm/PackageManager;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public startAuthActivityForResult(Landroid/app/Activity;I)Z
    .locals 8
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    const/4 v4, 0x0

    .line 104
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 106
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/twitter/android/sdk/Twitter;->checkAppSignature(Landroid/content/pm/PackageManager;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v4

    .line 110
    :cond_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    sget-object v6, Lcom/twitter/android/sdk/Twitter;->AUTH_ACTIVITY:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 111
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 113
    .local v0, cn:Landroid/content/ComponentName;
    sget-object v5, Lcom/twitter/android/sdk/Twitter;->AUTH_ACTIVITY:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    const-string v5, "ck"

    iget-object v6, p0, Lcom/twitter/android/sdk/Twitter;->mConsumerKey:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "cs"

    iget-object v7, p0, Lcom/twitter/android/sdk/Twitter;->mConsumerSecret:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    :try_start_0
    invoke-virtual {p1, v2, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    const/4 v4, 0x1

    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, e:Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method
