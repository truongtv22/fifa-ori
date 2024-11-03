.class Lcom/ea/nimble/NetworkConnection;
.super Ljava/lang/Object;
.source "NetworkConnection.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionHandle;
.implements Ljava/lang/Runnable;
.implements Lcom/ea/nimble/LogSource;


# static fields
.field private static final MAXIMUM_RAW_DATA_LENGTH:I = 0x100000

.field static s_loggingIdCount:I = 0x64

.field static s_trustAllCert:Ljavax/net/ssl/SSLSocketFactory;

.field static s_trustAllHost:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private m_completionCallback:Lcom/ea/nimble/NetworkConnectionCallback;

.field private m_connectionStartTimestamp:Ljava/util/Date;

.field private m_headerCallback:Lcom/ea/nimble/NetworkConnectionCallback;

.field private m_loggingId:Ljava/lang/String;

.field private m_manager:Lcom/ea/nimble/NetworkImpl;

.field private m_otDispatch:Lcom/ea/nimble/IOperationalTelemetryDispatch;

.field private m_progressCallback:Lcom/ea/nimble/NetworkConnectionCallback;

.field private m_request:Lcom/ea/nimble/HttpRequest;

.field private m_requestDataForLog:Ljava/lang/String;

.field private m_response:Lcom/ea/nimble/HttpResponse;

.field private m_responseDataForLog:Ljava/lang/StringBuilder;

.field private m_thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    new-instance v2, Lcom/ea/nimble/NetworkConnection$1;

    invoke-direct {v2}, Lcom/ea/nimble/NetworkConnection$1;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/ea/nimble/NetworkConnection;->s_trustAllCert:Ljavax/net/ssl/SSLSocketFactory;

    new-instance v0, Lcom/ea/nimble/NetworkConnection$2;

    invoke-direct {v0}, Lcom/ea/nimble/NetworkConnection$2;-><init>()V

    sput-object v0, Lcom/ea/nimble/NetworkConnection;->s_trustAllHost:Ljavax/net/ssl/HostnameVerifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/HttpRequest;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ea/nimble/NetworkConnection;-><init>(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/IOperationalTelemetryDispatch;)V

    return-void
.end method

.method public constructor <init>(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/IOperationalTelemetryDispatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/NetworkConnection;->m_manager:Lcom/ea/nimble/NetworkImpl;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    iput-object p2, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    new-instance p2, Lcom/ea/nimble/HttpResponse;

    invoke-direct {p2}, Lcom/ea/nimble/HttpResponse;-><init>()V

    iput-object p2, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iput-object p1, p0, Lcom/ea/nimble/NetworkConnection;->m_headerCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    iput-object p1, p0, Lcom/ea/nimble/NetworkConnection;->m_progressCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    iput-object p1, p0, Lcom/ea/nimble/NetworkConnection;->m_completionCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    iput-object p1, p0, Lcom/ea/nimble/NetworkConnection;->m_connectionStartTimestamp:Ljava/util/Date;

    iput-object p3, p0, Lcom/ea/nimble/NetworkConnection;->m_otDispatch:Lcom/ea/nimble/IOperationalTelemetryDispatch;

    sget p1, Lcom/ea/nimble/NetworkConnection;->s_loggingIdCount:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ea/nimble/NetworkConnection;->m_loggingId:Ljava/lang/String;

    sget p1, Lcom/ea/nimble/NetworkConnection;->s_loggingIdCount:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Lcom/ea/nimble/NetworkConnection;->s_loggingIdCount:I

    const/16 p2, 0x3e8

    if-lt p1, p2, :cond_0

    const/16 p1, 0x64

    sput p1, Lcom/ea/nimble/NetworkConnection;->s_loggingIdCount:I

    :cond_0
    return-void
.end method

.method private beautifyJSONString(Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "NetworkConnection"

    invoke-static {v2}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    if-eqz v1, :cond_c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v3, v3, 0x800

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v7, v11, :cond_a

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x9

    if-eq v11, v12, :cond_8

    const/16 v12, 0xa

    if-eq v11, v12, :cond_9

    const/16 v12, 0xd

    if-eq v11, v12, :cond_9

    const/16 v12, 0x20

    if-eq v11, v12, :cond_8

    const/16 v8, 0x2c

    const-string v12, "\t"

    if-eq v11, v8, :cond_7

    const/16 v8, 0x5b

    if-eq v11, v8, :cond_5

    const/16 v13, 0x7d

    const/16 v14, 0x7b

    const/16 v15, 0x5d

    if-eq v11, v15, :cond_1

    if-eq v11, v14, :cond_5

    if-eq v11, v13, :cond_1

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    const/4 v10, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Character;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Character;->charValue()C

    move-result v5

    if-ne v11, v13, :cond_2

    if-ne v5, v14, :cond_3

    :cond_2
    if-ne v11, v15, :cond_4

    if-eq v5, v8, :cond_4

    :cond_3
    const-string v2, "JSONString expect valid closing brackets but found none"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v12, v9}, Lcom/ea/nimble/NetworkConnection;->multiplyStringNTimes(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    if-nez v10, :cond_6

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v12, v9}, Lcom/ea/nimble/NetworkConnection;->multiplyStringNTimes(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v9, v9, 0x1

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v12, v9}, Lcom/ea/nimble/NetworkConnection;->multiplyStringNTimes(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v12, v9}, Lcom/ea/nimble/NetworkConnection;->multiplyStringNTimes(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v8, 0x1

    const/4 v10, 0x1

    goto :goto_2

    :cond_8
    if-nez v8, :cond_9

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "JSONString did not close it\'s brackets, invalid json"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_c
    :goto_3
    return-object v1
.end method

.method private static disableSSLCertificateChecking(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/ea/nimble/NetworkConnection;->s_trustAllCert:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    sget-object v0, Lcom/ea/nimble/NetworkConnection;->s_trustAllHost:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private downloadToBuffer(Ljava/io/InputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ea/nimble/NetworkConnection;->prepareResponseLog()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ltz v1, :cond_6

    :try_start_0
    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-object v1, v1, Lcom/ea/nimble/HttpResponse;->data:Lcom/ea/nimble/ByteBufferIOStream;

    invoke-virtual {v1}, Lcom/ea/nimble/ByteBufferIOStream;->prepareSegment()[B

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Error preparing segment"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    :cond_1
    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_5

    if-gez v3, :cond_2

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1, v2, v3}, Lcom/ea/nimble/NetworkConnection;->prepareResponseLog([BII)V

    add-int/2addr v2, v3

    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-wide v5, v4, Lcom/ea/nimble/HttpResponse;->downloadedContentLength:J

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/ea/nimble/HttpResponse;->downloadedContentLength:J

    :goto_1
    array-length v4, v1

    if-lt v2, v4, :cond_1

    :goto_2
    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-object v4, v4, Lcom/ea/nimble/HttpResponse;->data:Lcom/ea/nimble/ByteBufferIOStream;

    invoke-virtual {v4, v1, v2}, Lcom/ea/nimble/ByteBufferIOStream;->appendSegmentToBuffer([BI)V

    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_progressCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    if-eqz v1, :cond_4

    invoke-interface {v1, p0}, Lcom/ea/nimble/NetworkConnectionCallback;->callback(Lcom/ea/nimble/NetworkConnectionHandle;)V

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_6
    :goto_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private downloadToFile(Ljava/io/InputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Failed to delete file "

    const-string v1, "NetworkConnection"

    invoke-static {v1}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    if-eqz p1, :cond_f

    invoke-direct {p0}, Lcom/ea/nimble/NetworkConnection;->skipDownloadForOverwritePolicy()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v2, v2, Lcom/ea/nimble/HttpRequest;->targetFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->getCachePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v2, v2, Lcom/ea/nimble/HttpRequest;->overwritePolicy:Ljava/util/EnumSet;

    sget-object v5, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;->RESUME_DOWNLOAD:Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    invoke-virtual {v2, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const/high16 v2, 0x10000

    new-array v2, v2, [B

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Started File Download for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ltz v6, :cond_4

    if-nez v6, :cond_3

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v2, v4, v6}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object v7, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-wide v8, v7, Lcom/ea/nimble/HttpResponse;->downloadedContentLength:J

    int-to-long v10, v6

    add-long/2addr v8, v10

    iput-wide v8, v7, Lcom/ea/nimble/HttpResponse;->downloadedContentLength:J

    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_progressCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    if-eqz v6, :cond_2

    invoke-interface {v6, p0}, Lcom/ea/nimble/NetworkConnectionCallback;->callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to delete existed target file "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, p1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to move temp file "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to target file "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, p1, v2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Using fallback, and copying file instead "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "to target file "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, p1, v2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Could not create target file "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, p1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    const/4 p1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    const-wide/16 v7, 0x0

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    move-object v5, p1

    move-object v6, v2

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_8
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v1

    move-object v12, v1

    move-object v1, p1

    move-object p1, v2

    move-object v2, v12

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v12, v1

    move-object v1, p1

    move-object p1, v2

    move-object v2, v12

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v1, p1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, p1

    :goto_2
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERROR while copying file, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_a
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :catchall_2
    move-exception v2

    :goto_3
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_c
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    throw v2

    :cond_e
    :goto_4
    return-void

    :catchall_3
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    throw v0

    :cond_f
    :goto_5
    return-void
.end method

.method private finish()V
    .locals 2

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ea/nimble/HttpResponse;->isCompleted:Z

    invoke-virtual {p0}, Lcom/ea/nimble/NetworkConnection;->logOperationalTelemetryResponse()V

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_completionCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/ea/nimble/NetworkConnectionCallback;->callback(Lcom/ea/nimble/NetworkConnectionHandle;)V

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_manager:Lcom/ea/nimble/NetworkImpl;

    invoke-virtual {v0, p0}, Lcom/ea/nimble/NetworkImpl;->removeConnection(Lcom/ea/nimble/NetworkConnection;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private generateHttpHeaderAndBodyLogString(Ljava/lang/StringBuilder;ZLjava/util/Map;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v0, "RESP"

    goto :goto_0

    :cond_0
    const-string v0, "REQ"

    :goto_0
    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eqz p3, :cond_9

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_9

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "(null)"

    if-nez v6, :cond_4

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    move-object v7, v5

    :cond_3
    const-string v5, "Network request contains a null key with value %s"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v7, v6}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    move-object v6, v7

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " HEADER: "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_6

    move-object v7, v5

    :cond_6
    const-string v5, " VALUE: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "Content-Type"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "application/json"

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "text/json"

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_7
    const/4 v4, 0x1

    goto :goto_1

    :cond_8
    move v2, v4

    :cond_9
    if-eqz p4, :cond_b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " BODY:\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_a

    invoke-direct {p0, p4}, Lcom/ea/nimble/NetworkConnection;->beautifyJSONString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_a
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    return-void
.end method

.method private httpRecv(Ljava/net/HttpURLConnection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/ea/nimble/Error;
        }
    .end annotation

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x1

    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    iput-object v5, v4, Lcom/ea/nimble/HttpResponse;->url:Ljava/net/URL;

    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    iput v5, v4, Lcom/ea/nimble/HttpResponse;->statusCode:I

    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v4, Lcom/ea/nimble/HttpResponse;->expectedContentLength:J

    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/ea/nimble/HttpResponse;->lastModified:J

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-object v5, v5, Lcom/ea/nimble/HttpResponse;->headers:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, ", "

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v7, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-wide v4, p1, Lcom/ea/nimble/HttpResponse;->expectedContentLength:J

    const-wide/32 v6, 0x100000

    cmp-long p1, v4, v6

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v4, v4, Lcom/ea/nimble/HttpRequest;->targetFilePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    invoke-virtual {v5}, Lcom/ea/nimble/HttpRequest;->getMethod()Lcom/ea/nimble/IHttpRequest$Method;

    move-result-object v5

    sget-object v6, Lcom/ea/nimble/IHttpRequest$Method;->HEAD:Lcom/ea/nimble/IHttpRequest$Method;

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_3
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget v6, v6, Lcom/ea/nimble/HttpResponse;->statusCode:I

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget v6, v6, Lcom/ea/nimble/HttpResponse;->statusCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v7, 0xce

    if-ne v6, v7, :cond_3

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v6, 0x1

    :goto_5
    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    if-eqz v6, :cond_5

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    const-string v1, "Request "

    if-eqz p1, :cond_8

    if-nez v5, :cond_8

    if-eqz v4, :cond_7

    if-eqz v0, :cond_6

    goto :goto_7

    :cond_6
    :try_start_3
    new-instance p1, Lcom/ea/nimble/Error;

    sget-object v0, Lcom/ea/nimble/Error$Code;->NETWORK_OVERSIZE_DATA:Lcom/ea/nimble/Error$Code;

    const-string v1, "HTTP error for file download with an oversized error response."

    invoke-direct {p1, v0, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lcom/ea/nimble/Error;

    sget-object v0, Lcom/ea/nimble/Error$Code;->NETWORK_OVERSIZE_DATA:Lcom/ea/nimble/Error$Code;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is oversize, please provide a local file path to download it as file."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_7
    iget-object p1, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    const-wide/16 v7, 0x0

    iput-wide v7, p1, Lcom/ea/nimble/HttpResponse;->downloadedContentLength:J

    iget-object p1, p0, Lcom/ea/nimble/NetworkConnection;->m_headerCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    if-eqz p1, :cond_9

    invoke-interface {p1, p0}, Lcom/ea/nimble/NetworkConnectionCallback;->callback(Lcom/ea/nimble/NetworkConnectionHandle;)V

    :cond_9
    if-eqz v5, :cond_a

    goto :goto_a

    :cond_a
    const/4 p1, 0x0

    if-eqz v4, :cond_b

    if-eqz v0, :cond_b

    invoke-direct {p0, v2}, Lcom/ea/nimble/NetworkConnection;->downloadToFile(Ljava/io/InputStream;)V

    move-object v2, p1

    goto :goto_a

    :cond_b
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-wide v4, v0, Lcom/ea/nimble/HttpResponse;->expectedContentLength:J

    cmp-long v0, v4, v7

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-object v0, v0, Lcom/ea/nimble/HttpResponse;->data:Lcom/ea/nimble/ByteBufferIOStream;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    new-instance v4, Lcom/ea/nimble/ByteBufferIOStream;

    iget-wide v7, v0, Lcom/ea/nimble/HttpResponse;->expectedContentLength:J

    long-to-int v5, v7

    invoke-direct {v4, v5}, Lcom/ea/nimble/ByteBufferIOStream;-><init>(I)V

    iput-object v4, v0, Lcom/ea/nimble/HttpResponse;->data:Lcom/ea/nimble/ByteBufferIOStream;

    goto :goto_8

    :cond_c
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-object v0, v0, Lcom/ea/nimble/HttpResponse;->data:Lcom/ea/nimble/ByteBufferIOStream;

    invoke-virtual {v0}, Lcom/ea/nimble/ByteBufferIOStream;->clear()V

    :goto_8
    if-eqz v2, :cond_d

    invoke-direct {p0, v2}, Lcom/ea/nimble/NetworkConnection;->downloadToBuffer(Ljava/io/InputStream;)V

    move-object v2, p1

    goto :goto_9

    :cond_d
    new-instance p1, Lcom/ea/nimble/Error;

    sget-object v0, Lcom/ea/nimble/Error$Code;->SYSTEM_UNEXPECTED:Lcom/ea/nimble/Error$Code;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " failed because no stream available to read expected response data."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_e
    :goto_9
    if-eqz v6, :cond_11

    if-nez v3, :cond_10

    :goto_a
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_f
    invoke-direct {p0}, Lcom/ea/nimble/NetworkConnection;->logCommunication()V

    return-void

    :cond_10
    :try_start_4
    new-instance p1, Lcom/ea/nimble/Error;

    sget-object v0, Lcom/ea/nimble/Error$Code;->SYSTEM_UNEXPECTED:Lcom/ea/nimble/Error$Code;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " failed because response is from error stream even the status code("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget v1, v1, Lcom/ea/nimble/HttpResponse;->statusCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "). In some cases, you may ignore this and treat it as success."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    throw p1

    :cond_11
    if-eqz v3, :cond_12

    new-instance p1, Lcom/ea/nimble/HttpError;

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget v0, v0, Lcom/ea/nimble/HttpResponse;->statusCode:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " failed for HTTP error."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/ea/nimble/HttpError;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_12
    new-instance p1, Lcom/ea/nimble/HttpError;

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget v0, v0, Lcom/ea/nimble/HttpResponse;->statusCode:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " failed for HTTP error even the response data is from normal response stream."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/ea/nimble/HttpError;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_13
    invoke-direct {p0}, Lcom/ea/nimble/NetworkConnection;->logCommunication()V

    throw p1

    :catch_1
    move-exception p1

    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->NETWORK_CONNECTION_ERROR:Lcom/ea/nimble/Error$Code;

    const-string v2, "Fail to get either input stream or error stream from HTTP connection."

    invoke-direct {v0, v1, v2, p1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private httpSend(Ljava/net/HttpURLConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_connectionStartTimestamp:Ljava/util/Date;

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v2, v2, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/ea/nimble/NetworkConnection;->logRequest()V

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    if-gtz v1, :cond_1

    goto :goto_4

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in network connection:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_3
    throw p1

    :cond_4
    :goto_4
    return-void
.end method

.method private logCommunication()V
    .locals 7

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ILog;->getThresholdLevel()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_requestDataForLog:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ea/nimble/NetworkConnection;->prepareRequestLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_requestDataForLog:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_requestDataForLog:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->targetFilePath:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_responseDataForLog:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    :try_start_0
    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_responseDataForLog:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v4, "<-- UNREADABLE -->"

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    const-string v4, "<-- FILE -->"

    goto :goto_1

    :cond_4
    const-string v4, "<-- EMPTY -->"

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_loggingId:Ljava/lang/String;

    aput-object v6, v1, v3

    const-string v6, "%n>>>> CONNECTION ID %s FINISH >>>> REQUEST >>>>%n"

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_requestDataForLog:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<<<< REQUEST <<<<<<<< -- >>>>>>>> RESPONSE >>>>\nRESP URL: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-object v1, v1, Lcom/ea/nimble/HttpResponse;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nRESP STATUS: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget v1, v1, Lcom/ea/nimble/HttpResponse;->statusCode:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    invoke-virtual {v1}, Lcom/ea/nimble/HttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v1

    const-string v6, "\n"

    if-eqz v1, :cond_6

    const-string v1, "RESP ERROR: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    invoke-virtual {v1}, Lcom/ea/nimble/HttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    invoke-virtual {v1}, Lcom/ea/nimble/HttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string v1, "<-- UNKNOWN -->\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    const-string v0, "RESP FILE: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->targetFilePath:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-object v0, v0, Lcom/ea/nimble/HttpResponse;->headers:Ljava/util/HashMap;

    invoke-direct {p0, v5, v2, v0, v4}, Lcom/ea/nimble/NetworkConnection;->generateHttpHeaderAndBodyLogString(Ljava/lang/StringBuilder;ZLjava/util/Map;Ljava/lang/String;)V

    const-string v0, "<<<< RESPONSE <<<< CONNECTION FINISH <<<<<<<<<<"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private logRequest()V
    .locals 4

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ILog;->getThresholdLevel()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/ea/nimble/NetworkConnection;->prepareRequestLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_requestDataForLog:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ea/nimble/NetworkConnection;->m_loggingId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "\n>>>> CONNECTION ID %s BEGIN >>>>>>>>>>>>>>>>>>\n%s<<<< CONNECTION BEGIN <<<<<<<<<<<<<<<<<<<<<<<<<\n"

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private multiplyStringNTimes(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int v1, v1, p2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private prepareRequestLog()Ljava/lang/String;
    .locals 4

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v1, v0

    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "<-- UNREADABLE -->"

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    invoke-virtual {v0}, Lcom/ea/nimble/HttpRequest;->getMethod()Lcom/ea/nimble/IHttpRequest$Method;

    move-result-object v0

    sget-object v2, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    invoke-virtual {v0}, Lcom/ea/nimble/HttpRequest;->getMethod()Lcom/ea/nimble/IHttpRequest$Method;

    move-result-object v0

    sget-object v2, Lcom/ea/nimble/IHttpRequest$Method;->PUT:Lcom/ea/nimble/IHttpRequest$Method;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "<-- EMPTY -->"

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "REQUEST: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v1, v1, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-virtual {v1}, Lcom/ea/nimble/IHttpRequest$Method;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v1, v1, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v1, v1, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/ea/nimble/NetworkConnection;->generateHttpHeaderAndBodyLogString(Ljava/lang/StringBuilder;ZLjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private prepareResponseLog()V
    .locals 5

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ILog;->getThresholdLevel()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-wide v0, v0, Lcom/ea/nimble/HttpResponse;->expectedContentLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-wide v0, v0, Lcom/ea/nimble/HttpResponse;->expectedContentLength:J

    long-to-int v1, v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x1000

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_responseDataForLog:Ljava/lang/StringBuilder;

    return-void
.end method

.method private prepareResponseLog([BII)V
    .locals 2

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ILog;->getThresholdLevel()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_responseDataForLog:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object p1, p0, Lcom/ea/nimble/NetworkConnection;->m_responseDataForLog:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ea/nimble/NetworkConnection;->m_responseDataForLog:Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    return-void
.end method

.method private skipDownloadForOverwritePolicy()Z
    .locals 8

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v1, v1, Lcom/ea/nimble/HttpRequest;->targetFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v1, v1, Lcom/ea/nimble/HttpRequest;->overwritePolicy:Ljava/util/EnumSet;

    sget-object v3, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;->SMART:Ljava/util/EnumSet;

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-wide v6, v1, Lcom/ea/nimble/HttpResponse;->lastModified:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-wide v6, v1, Lcom/ea/nimble/HttpResponse;->expectedContentLength:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    return v3

    :cond_1
    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v1, v1, Lcom/ea/nimble/HttpRequest;->overwritePolicy:Ljava/util/EnumSet;

    sget-object v4, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;->DATE_CHECK:Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    invoke-virtual {v1, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-wide v6, v1, Lcom/ea/nimble/HttpResponse;->lastModified:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_2

    return v3

    :cond_2
    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v1, v1, Lcom/ea/nimble/HttpRequest;->overwritePolicy:Ljava/util/EnumSet;

    sget-object v4, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;->LENGTH_CHECK:Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    invoke-virtual {v1, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-wide v4, v4, Lcom/ea/nimble/HttpResponse;->expectedContentLength:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_3

    return v3

    :cond_3
    return v2
.end method


# virtual methods
.method public cancel()V
    .locals 4

    const-string v0, "Network connection "

    const-string v1, "NetworkConnection"

    invoke-static {v1}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->NETWORK_OPERATION_CANCELLED:Lcom/ea/nimble/Error$Code;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is cancelled"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ea/nimble/NetworkConnection;->finishWithError(Ljava/lang/Exception;)V

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method cancelForAppSuspend()V
    .locals 0

    invoke-virtual {p0}, Lcom/ea/nimble/NetworkConnection;->cancel()V

    return-void
.end method

.method finishWithError(Ljava/lang/Exception;)V
    .locals 5

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-boolean v0, v0, Lcom/ea/nimble/HttpResponse;->isCompleted:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Finished connection %s skipped an error %s"

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_loggingId:Ljava/lang/String;

    aput-object v4, v0, v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Running connection number %s with name %s failed for error %s"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iput-object p1, v0, Lcom/ea/nimble/HttpResponse;->error:Ljava/lang/Exception;

    invoke-direct {p0}, Lcom/ea/nimble/NetworkConnection;->finish()V

    return-void
.end method

.method public getCompletionCallback()Lcom/ea/nimble/NetworkConnectionCallback;
    .locals 1

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_completionCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    return-object v0
.end method

.method public getHeaderCallback()Lcom/ea/nimble/NetworkConnectionCallback;
    .locals 1

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_headerCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Network"

    return-object v0
.end method

.method public getProgressCallback()Lcom/ea/nimble/NetworkConnectionCallback;
    .locals 1

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_progressCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    return-object v0
.end method

.method public getRequest()Lcom/ea/nimble/HttpRequest;
    .locals 1

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    return-object v0
.end method

.method public bridge synthetic getRequest()Lcom/ea/nimble/IHttpRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/ea/nimble/NetworkConnection;->getRequest()Lcom/ea/nimble/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/ea/nimble/HttpResponse;
    .locals 1

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ea/nimble/IHttpResponse;
    .locals 1

    invoke-virtual {p0}, Lcom/ea/nimble/NetworkConnection;->getResponse()Lcom/ea/nimble/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method logOperationalTelemetryResponse()V
    .locals 13

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    if-nez v0, :cond_1

    const-string v0, "Empty response object for OT logging."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "BaseCore not active for operational telemetry logging."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_otDispatch:Lcom/ea/nimble/IOperationalTelemetryDispatch;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/ea/nimble/OperationalTelemetryDispatch;->getComponent()Lcom/ea/nimble/IOperationalTelemetryDispatch;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_otDispatch:Lcom/ea/nimble/IOperationalTelemetryDispatch;

    if-nez v0, :cond_3

    const-string v0, "OperationalTelemetry Component not active for operational telemetry logging."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v2, v2, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v3, v3, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v4, v4, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v5, v5, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget v6, v6, Lcom/ea/nimble/HttpResponse;->statusCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v7, v7, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_connectionStartTimestamp:Ljava/util/Date;

    if-eqz v8, :cond_4

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    iget-object v10, p0, Lcom/ea/nimble/NetworkConnection;->m_connectionStartTimestamp:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_4
    const-string v8, "0"

    :goto_0
    iget-object v9, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    invoke-virtual {v9}, Lcom/ea/nimble/HttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v9

    if-eqz v9, :cond_6

    instance-of v10, v9, Lcom/ea/nimble/Error;

    const-string v11, "NIMBLE_ERROR_DOMAIN"

    if-eqz v10, :cond_5

    check-cast v9, Lcom/ea/nimble/Error;

    invoke-virtual {v9}, Lcom/ea/nimble/Error;->getCode()I

    move-result v10

    invoke-virtual {v9}, Lcom/ea/nimble/Error;->getDomain()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "NIMBLE_ERROR_CODE"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/ea/nimble/Error;->getDomain()Ljava/lang/String;

    move-result-object v9

    const-string v11, "NimbleError"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    sget-object v9, Lcom/ea/nimble/Error$Code;->NETWORK_TIMEOUT:Lcom/ea/nimble/Error$Code;

    invoke-virtual {v9}, Lcom/ea/nimble/Error$Code;->intValue()I

    move-result v9

    if-ne v10, v9, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_1
    const-string v9, "CONNECTIONID"

    iget-object v10, p0, Lcom/ea/nimble/NetworkConnection;->m_loggingId:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "URL_ABSOLUTE"

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "URL_PROTOCOL"

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "URL_PATH"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "URL_QUERY"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "URL_HOST"

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "RESPONSE_TIME_MS"

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HTTP_STATUS_CODE"

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "REQUEST_TIMED_OUT"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_otDispatch:Lcom/ea/nimble/IOperationalTelemetryDispatch;

    const-string v2, "com.ea.nimble.network"

    invoke-interface {v1, v2, v0}, Lcom/ea/nimble/IOperationalTelemetryDispatch;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_7
    :goto_2
    const-string v0, "Empty request object and/or request URL for OT logging."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 7

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-boolean v1, v1, Lcom/ea/nimble/HttpResponse;->isCompleted:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/ea/nimble/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_0

    monitor-enter p0

    :try_start_1
    iput-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_3

    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/ea/nimble/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    invoke-virtual {v1}, Lcom/ea/nimble/HttpRequest;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v2, v2, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-virtual {v2}, Lcom/ea/nimble/IHttpRequest$Method;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-wide v2, v2, Lcom/ea/nimble/HttpRequest;->timeout:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v2, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-wide v2, v2, Lcom/ea/nimble/HttpRequest;->timeout:D

    mul-double v2, v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v2, "Connection"

    const-string v3, "close"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_requestDataForLog:Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_responseDataForLog:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/ea/nimble/NetworkConnection;->httpSend(Ljava/net/HttpURLConnection;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/ea/nimble/NetworkConnection;->httpRecv(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0}, Lcom/ea/nimble/NetworkConnection;->finish()V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/ea/nimble/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-enter p0

    :try_start_5
    iput-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    monitor-exit p0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_1
    :try_start_6
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    :cond_2
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/ea/nimble/Error; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1

    :cond_3
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/ea/nimble/Error; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v1

    goto/16 :goto_2

    :catch_0
    move-exception v1

    :try_start_9
    new-instance v2, Lcom/ea/nimble/Error;

    sget-object v3, Lcom/ea/nimble/Error$Code;->SYSTEM_UNEXPECTED:Lcom/ea/nimble/Error$Code;

    const-string v4, "Unexpected error."

    invoke-direct {v2, v3, v4, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lcom/ea/nimble/NetworkConnection;->finishWithError(Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    monitor-enter p0

    :try_start_a
    iput-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    monitor-exit p0

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    :catch_1
    move-exception v1

    :try_start_b
    invoke-virtual {p0, v1}, Lcom/ea/nimble/NetworkConnection;->finishWithError(Ljava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    monitor-enter p0

    :try_start_c
    iput-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    monitor-exit p0

    goto/16 :goto_1

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v0

    :catch_2
    move-exception v1

    :try_start_d
    new-instance v2, Lcom/ea/nimble/Error;

    sget-object v3, Lcom/ea/nimble/Error$Code;->NETWORK_CONNECTION_ERROR:Lcom/ea/nimble/Error$Code;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " failed with I/O exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lcom/ea/nimble/NetworkConnection;->finishWithError(Ljava/lang/Exception;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    monitor-enter p0

    :try_start_e
    iput-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    monitor-exit p0

    goto/16 :goto_1

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v0

    :catch_3
    move-exception v1

    :try_start_f
    iget-object v2, p0, Lcom/ea/nimble/NetworkConnection;->m_manager:Lcom/ea/nimble/NetworkImpl;

    invoke-virtual {v2}, Lcom/ea/nimble/NetworkImpl;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v2

    sget-object v3, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-eq v2, v3, :cond_4

    new-instance v3, Lcom/ea/nimble/Error;

    sget-object v4, Lcom/ea/nimble/Error$Code;->NETWORK_NO_CONNECTION:Lcom/ea/nimble/Error$Code;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No network connection, network status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ea/nimble/Network$Status;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lcom/ea/nimble/NetworkConnection;->finishWithError(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/ea/nimble/Error;

    sget-object v3, Lcom/ea/nimble/Error$Code;->NETWORK_UNREACHABLE:Lcom/ea/nimble/Error$Code;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " failed for unreachable host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lcom/ea/nimble/NetworkConnection;->finishWithError(Ljava/lang/Exception;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :goto_0
    monitor-enter p0

    :try_start_10
    iput-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    monitor-exit p0

    goto/16 :goto_1

    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw v0

    :catch_4
    move-exception v1

    :try_start_11
    new-instance v2, Lcom/ea/nimble/Error;

    sget-object v3, Lcom/ea/nimble/Error$Code;->NETWORK_OPERATION_CANCELLED:Lcom/ea/nimble/Error$Code;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is cancelled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lcom/ea/nimble/NetworkConnection;->finishWithError(Ljava/lang/Exception;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    monitor-enter p0

    :try_start_12
    iput-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    monitor-exit p0

    goto :goto_1

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    throw v0

    :catch_5
    move-exception v1

    :try_start_13
    new-instance v2, Lcom/ea/nimble/Error;

    sget-object v3, Lcom/ea/nimble/Error$Code;->NETWORK_TIMEOUT:Lcom/ea/nimble/Error$Code;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " timed out"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lcom/ea/nimble/NetworkConnection;->finishWithError(Ljava/lang/Exception;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    monitor-enter p0

    :try_start_14
    iput-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    monitor-exit p0

    goto :goto_1

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    throw v0

    :catch_6
    move-exception v1

    :try_start_15
    new-instance v2, Lcom/ea/nimble/Error;

    sget-object v3, Lcom/ea/nimble/Error$Code;->NETWORK_UNSUPPORTED_CONNECTION_TYPE:Lcom/ea/nimble/Error$Code;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " failed for unsupported connection type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    invoke-virtual {v5}, Lcom/ea/nimble/HttpRequest;->getUrl()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lcom/ea/nimble/NetworkConnection;->finishWithError(Ljava/lang/Exception;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    monitor-enter p0

    :try_start_16
    iput-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    monitor-exit p0

    :goto_1
    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    throw v0

    :goto_2
    monitor-enter p0

    :try_start_17
    iput-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    throw v1

    :catchall_b
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    throw v0
.end method

.method public setCompletionCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V
    .locals 1

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ea/nimble/NetworkConnection;->m_completionCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    return-void
.end method

.method public setHeaderCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V
    .locals 1

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ea/nimble/NetworkConnection;->m_headerCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    return-void
.end method

.method public setProgressCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V
    .locals 1

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ea/nimble/NetworkConnection;->m_progressCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    return-void
.end method

.method public waitOn()V
    .locals 1

    const-string v0, "NetworkConnection"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    monitor-enter p0

    :catch_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-boolean v0, v0, Lcom/ea/nimble/HttpResponse;->isCompleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
