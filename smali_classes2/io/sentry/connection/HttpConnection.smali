.class public Lio/sentry/connection/HttpConnection;
.super Lio/sentry/connection/AbstractConnection;
.source "HttpConnection.java"


# static fields
.field private static final DEFAULT_CONNECTION_TIMEOUT:I

.field private static final DEFAULT_READ_TIMEOUT:I

.field public static final HTTP_TOO_MANY_REQUESTS:I = 0x1ad

.field private static final NAIVE_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

.field private static final SENTRY_AUTH:Ljava/lang/String; = "X-Sentry-Auth"

.field private static final USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private bypassSecurity:Z

.field private connectionTimeout:I

.field private eventSampler:Lio/sentry/connection/EventSampler;

.field private marshaller:Lio/sentry/marshaller/Marshaller;

.field private final proxy:Ljava/net/Proxy;

.field private readTimeout:I

.field private final sentryUrl:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/connection/HttpConnection;->UTF_8:Ljava/nio/charset/Charset;

    const-class v0, Lio/sentry/connection/HttpConnection;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/sentry/connection/HttpConnection;->logger:Lorg/slf4j/Logger;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lio/sentry/connection/HttpConnection;->DEFAULT_CONNECTION_TIMEOUT:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lio/sentry/connection/HttpConnection;->DEFAULT_READ_TIMEOUT:I

    new-instance v0, Lio/sentry/connection/HttpConnection$1;

    invoke-direct {v0}, Lio/sentry/connection/HttpConnection$1;-><init>()V

    sput-object v0, Lio/sentry/connection/HttpConnection;->NAIVE_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;Lio/sentry/connection/EventSampler;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lio/sentry/connection/AbstractConnection;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget p2, Lio/sentry/connection/HttpConnection;->DEFAULT_CONNECTION_TIMEOUT:I

    iput p2, p0, Lio/sentry/connection/HttpConnection;->connectionTimeout:I

    sget p2, Lio/sentry/connection/HttpConnection;->DEFAULT_READ_TIMEOUT:I

    iput p2, p0, Lio/sentry/connection/HttpConnection;->readTimeout:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lio/sentry/connection/HttpConnection;->bypassSecurity:Z

    iput-object p1, p0, Lio/sentry/connection/HttpConnection;->sentryUrl:Ljava/net/URL;

    iput-object p4, p0, Lio/sentry/connection/HttpConnection;->proxy:Ljava/net/Proxy;

    iput-object p5, p0, Lio/sentry/connection/HttpConnection;->eventSampler:Lio/sentry/connection/EventSampler;

    return-void
.end method

.method private getErrorMessageFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Lio/sentry/connection/HttpConnection;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lio/sentry/connection/HttpConnection;->logger:Lorg/slf4j/Logger;

    const-string v2, "Exception while reading the error message from the connection."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getSentryApiUrl(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "api/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/store/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Couldn\'t build a valid URL from the Sentry API."

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected doSend(Lio/sentry/event/Event;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/sentry/connection/ConnectionException;
        }
    .end annotation

    const-string v0, "Event \'"

    iget-object v1, p0, Lio/sentry/connection/HttpConnection;->eventSampler:Lio/sentry/connection/EventSampler;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lio/sentry/connection/EventSampler;->shouldSendEvent(Lio/sentry/event/Event;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lio/sentry/connection/HttpConnection;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/connection/HttpConnection;->marshaller:Lio/sentry/marshaller/Marshaller;

    invoke-interface {v3, p1, v2}, Lio/sentry/marshaller/Marshaller;->marshall(Lio/sentry/event/Event;Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "Retry-After"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    :try_start_2
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double v5, v5, v7

    double-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    :cond_1
    move-object v3, v4

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x193

    if-ne v6, v7, :cond_2

    sget-object v6, Lio/sentry/connection/HttpConnection;->logger:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/sentry/event/Event;->getId()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' was rejected by the Sentry server due to a filter."

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :cond_2
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x1ad

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lio/sentry/connection/TooManyRequestsException;

    const-string v0, "Too many requests to Sentry: https://docs.sentry.io/learn/quotas/"

    invoke-direct {p1, v0, v2, v3, v5}, Lio/sentry/connection/TooManyRequestsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Long;Ljava/lang/Integer;)V

    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_2
    move-object v5, v4

    :catch_3
    :goto_1
    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lio/sentry/connection/HttpConnection;->getErrorMessageFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const-string v4, "An exception occurred while submitting the event to the Sentry server."

    :cond_6
    new-instance p1, Lio/sentry/connection/ConnectionException;

    invoke-direct {p1, v4, v2, v3, v5}, Lio/sentry/connection/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Long;Ljava/lang/Integer;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1
.end method

.method protected getConnection()Ljava/net/HttpURLConnection;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lio/sentry/connection/HttpConnection;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/sentry/connection/HttpConnection;->sentryUrl:Ljava/net/URL;

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/sentry/connection/HttpConnection;->sentryUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :goto_0
    iget-boolean v1, p0, Lio/sentry/connection/HttpConnection;->bypassSecurity:Z

    if-eqz v1, :cond_1

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v2, Lio/sentry/connection/HttpConnection;->NAIVE_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_1
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget v1, p0, Lio/sentry/connection/HttpConnection;->connectionTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lio/sentry/connection/HttpConnection;->readTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "User-Agent"

    invoke-static {}, Lio/sentry/environment/SentryEnvironment;->getSentryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-Sentry-Auth"

    invoke-virtual {p0}, Lio/sentry/connection/HttpConnection;->getAuthHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lio/sentry/connection/HttpConnection;->marshaller:Lio/sentry/marshaller/Marshaller;

    invoke-interface {v1}, Lio/sentry/marshaller/Marshaller;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "Content-Type"

    iget-object v2, p0, Lio/sentry/connection/HttpConnection;->marshaller:Lio/sentry/marshaller/Marshaller;

    invoke-interface {v2}, Lio/sentry/marshaller/Marshaller;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lio/sentry/connection/HttpConnection;->marshaller:Lio/sentry/marshaller/Marshaller;

    invoke-interface {v1}, Lio/sentry/marshaller/Marshaller;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "Content-Encoding"

    iget-object v2, p0, Lio/sentry/connection/HttpConnection;->marshaller:Lio/sentry/marshaller/Marshaller;

    invoke-interface {v2}, Lio/sentry/marshaller/Marshaller;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Couldn\'t set up a connection to the Sentry server."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setBypassSecurity(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/connection/HttpConnection;->bypassSecurity:Z

    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 0

    iput p1, p0, Lio/sentry/connection/HttpConnection;->connectionTimeout:I

    return-void
.end method

.method public setMarshaller(Lio/sentry/marshaller/Marshaller;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/connection/HttpConnection;->marshaller:Lio/sentry/marshaller/Marshaller;

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0

    iput p1, p0, Lio/sentry/connection/HttpConnection;->readTimeout:I

    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lio/sentry/connection/HttpConnection;->connectionTimeout:I

    return-void
.end method
