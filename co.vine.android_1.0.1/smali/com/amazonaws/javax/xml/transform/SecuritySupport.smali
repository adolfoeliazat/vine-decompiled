.class Lcom/amazonaws/javax/xml/transform/SecuritySupport;
.super Ljava/lang/Object;
.source "SecuritySupport.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method doesFileExist(Ljava/io/File;)Z
    .locals 1
    .parameter "f"

    .prologue
    .line 116
    new-instance v0, Lcom/amazonaws/javax/xml/transform/SecuritySupport$5;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/javax/xml/transform/SecuritySupport$5;-><init>(Lcom/amazonaws/javax/xml/transform/SecuritySupport;Ljava/io/File;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/amazonaws/javax/xml/transform/SecuritySupport$1;

    invoke-direct {v0, p0}, Lcom/amazonaws/javax/xml/transform/SecuritySupport$1;-><init>(Lcom/amazonaws/javax/xml/transform/SecuritySupport;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 2
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    new-instance v1, Lcom/amazonaws/javax/xml/transform/SecuritySupport$3;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/javax/xml/transform/SecuritySupport$3;-><init>(Lcom/amazonaws/javax/xml/transform/SecuritySupport;Ljava/io/File;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/FileNotFoundException;

    throw v1
.end method

.method getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cl"
    .parameter "name"

    .prologue
    .line 101
    new-instance v0, Lcom/amazonaws/javax/xml/transform/SecuritySupport$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazonaws/javax/xml/transform/SecuritySupport$4;-><init>(Lcom/amazonaws/javax/xml/transform/SecuritySupport;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "propName"

    .prologue
    .line 75
    new-instance v0, Lcom/amazonaws/javax/xml/transform/SecuritySupport$2;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/javax/xml/transform/SecuritySupport$2;-><init>(Lcom/amazonaws/javax/xml/transform/SecuritySupport;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
