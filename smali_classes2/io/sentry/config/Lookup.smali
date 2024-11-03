.class public final Lio/sentry/config/Lookup;
.super Ljava/lang/Object;
.source "Lookup.java"


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "sentry.properties"

.field private static checkJndi:Z

.field private static configProps:Ljava/util/Properties;

.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lio/sentry/config/Lookup;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/sentry/config/Lookup;->logger:Lorg/slf4j/Logger;

    const/4 v1, 0x1

    sput-boolean v1, Lio/sentry/config/Lookup;->checkJndi:Z

    invoke-static {}, Lio/sentry/config/Lookup;->getConfigFilePath()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lio/sentry/config/Lookup;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lio/sentry/config/Lookup;->configProps:Ljava/util/Properties;

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    const-string v2, "Sentry configuration file not found in filesystem or classpath: \'{}\'."

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lio/sentry/config/Lookup;->logger:Lorg/slf4j/Logger;

    const-string v3, "Error loading Sentry configuration file \'{}\': "

    invoke-interface {v2, v3, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getConfigFilePath()Ljava/lang/String;
    .locals 1

    const-string v0, "sentry.properties.file"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SENTRY_PROPERTIES_FILE"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "sentry.properties"

    :cond_1
    return-object v0
.end method

.method private static getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object p0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/sentry/config/Lookup;->lookup(Ljava/lang/String;Lio/sentry/dsn/Dsn;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lookup(Ljava/lang/String;Lio/sentry/dsn/Dsn;)Ljava/lang/String;
    .locals 7

    sget-boolean v0, Lio/sentry/config/Lookup;->checkJndi:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "javax.naming.InitialContext"

    const-class v3, Lio/sentry/dsn/Dsn;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    invoke-static {p0}, Lio/sentry/config/JndiLookup;->jndiLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v3, Lio/sentry/config/Lookup;->logger:Lorg/slf4j/Logger;

    const-string v4, "Found {}={} in JNDI."

    invoke-interface {v3, v4, p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v3

    :goto_0
    move-object v0, v2

    :goto_1
    sget-object v4, Lio/sentry/config/Lookup;->logger:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "JNDI is not available: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    sput-boolean v1, Lio/sentry/config/Lookup;->checkJndi:Z

    goto :goto_2

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_2
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "sentry."

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v3, Lio/sentry/config/Lookup;->logger:Lorg/slf4j/Logger;

    const-string v4, "Found {}={} in Java System Properties."

    invoke-interface {v3, v4, p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "SENTRY_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    const-string v4, "_"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v3, Lio/sentry/config/Lookup;->logger:Lorg/slf4j/Logger;

    const-string v4, "Found {}={} in System Environment Variables."

    invoke-interface {v3, v4, p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lio/sentry/dsn/Dsn;->getOptions()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object p1, Lio/sentry/config/Lookup;->logger:Lorg/slf4j/Logger;

    const-string v3, "Found {}={} in DSN."

    invoke-interface {p1, v3, p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    if-nez v0, :cond_5

    sget-object p1, Lio/sentry/config/Lookup;->configProps:Ljava/util/Properties;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object p1, Lio/sentry/config/Lookup;->logger:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    const/4 p0, 0x1

    aput-object v0, v3, p0

    const/4 p0, 0x2

    const-string v1, "sentry.properties"

    aput-object v1, v3, p0

    const-string p0, "Found {}={} in {}."

    invoke-interface {p1, p0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v2
.end method
