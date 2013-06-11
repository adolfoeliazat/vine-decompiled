.class public Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private expiration:Ljava/util/Date;

.field private key:Ljava/lang/String;

.field private method:Lcom/amazonaws/HttpMethod;

.field private requestParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/amazonaws/HttpMethod;->GET:Lcom/amazonaws/HttpMethod;

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/HttpMethod;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/HttpMethod;)V
    .locals 1

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->requestParameters:Ljava/util/Map;

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->bucketName:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->method:Lcom/amazonaws/HttpMethod;

    return-void
.end method


# virtual methods
.method public addRequestParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->requestParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->expiration:Ljava/util/Date;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Lcom/amazonaws/HttpMethod;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->method:Lcom/amazonaws/HttpMethod;

    return-object v0
.end method

.method public getRequestParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->requestParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseHeaders()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setExpiration(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->expiration:Ljava/util/Date;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->key:Ljava/lang/String;

    return-void
.end method

.method public setMethod(Lcom/amazonaws/HttpMethod;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->method:Lcom/amazonaws/HttpMethod;

    return-void
.end method

.method public setResponseHeaders(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withContentType(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setContentType(Ljava/lang/String;)V

    return-object p0
.end method

.method public withExpiration(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setExpiration(Ljava/util/Date;)V

    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setKey(Ljava/lang/String;)V

    return-object p0
.end method

.method public withMethod(Lcom/amazonaws/HttpMethod;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setMethod(Lcom/amazonaws/HttpMethod;)V

    return-object p0
.end method

.method public withResponseHeaders(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setResponseHeaders(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    return-object p0
.end method
