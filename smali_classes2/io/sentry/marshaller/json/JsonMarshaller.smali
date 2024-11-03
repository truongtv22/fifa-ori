.class public Lio/sentry/marshaller/json/JsonMarshaller;
.super Ljava/lang/Object;
.source "JsonMarshaller.java"

# interfaces
.implements Lio/sentry/marshaller/Marshaller;


# static fields
.field public static final BREADCRUMBS:Ljava/lang/String; = "breadcrumbs"

.field public static final CHECKSUM:Ljava/lang/String; = "checksum"

.field public static final CONTEXTS:Ljava/lang/String; = "contexts"

.field public static final CULPRIT:Ljava/lang/String; = "culprit"

.field public static final DEFAULT_MAX_MESSAGE_LENGTH:I = 0x3e8

.field public static final DIST:Ljava/lang/String; = "dist"

.field public static final ENVIRONMENT:Ljava/lang/String; = "environment"

.field public static final EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final EXTRA:Ljava/lang/String; = "extra"

.field public static final FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final ISO_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEVEL:Ljava/lang/String; = "level"

.field public static final LOGGER:Ljava/lang/String; = "logger"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final MODULES:Ljava/lang/String; = "modules"

.field public static final PLATFORM:Ljava/lang/String; = "platform"

.field public static final RELEASE:Ljava/lang/String; = "release"

.field public static final SDK:Ljava/lang/String; = "sdk"

.field public static final SERVER_NAME:Ljava/lang/String; = "server_name"

.field public static final TAGS:Ljava/lang/String; = "tags"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TRANSACTION:Ljava/lang/String; = "transaction"

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private compression:Z

.field private final interfaceBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/sentry/event/interfaces/SentryInterface;",
            ">;",
            "Lio/sentry/marshaller/json/InterfaceBinding<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

.field private final maxMessageLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/marshaller/json/JsonMarshaller$1;

    invoke-direct {v0}, Lio/sentry/marshaller/json/JsonMarshaller$1;-><init>()V

    sput-object v0, Lio/sentry/marshaller/json/JsonMarshaller;->ISO_FORMAT:Ljava/lang/ThreadLocal;

    const-class v0, Lio/sentry/marshaller/json/JsonMarshaller;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/sentry/marshaller/json/JsonMarshaller;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lio/sentry/marshaller/json/JsonMarshaller;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    iput-object v0, p0, Lio/sentry/marshaller/json/JsonMarshaller;->jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/marshaller/json/JsonMarshaller;->interfaceBindings:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/marshaller/json/JsonMarshaller;->compression:Z

    iput p1, p0, Lio/sentry/marshaller/json/JsonMarshaller;->maxMessageLength:I

    return-void
.end method

.method private formatId(Ljava/util/UUID;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatLevel(Lio/sentry/event/Event$Level;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lio/sentry/marshaller/json/JsonMarshaller$2;->$SwitchMap$io$sentry$event$Event$Level:[I

    invoke-virtual {p1}, Lio/sentry/event/Event$Level;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    sget-object v1, Lio/sentry/marshaller/json/JsonMarshaller;->logger:Lorg/slf4j/Logger;

    const-string v2, "The level \'{}\' isn\'t supported, this should NEVER happen, contact Sentry developers"

    invoke-virtual {p1}, Lio/sentry/event/Event$Level;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    const-string p1, "error"

    return-object p1

    :cond_2
    const-string p1, "info"

    return-object p1

    :cond_3
    const-string p1, "warning"

    return-object p1

    :cond_4
    const-string p1, "fatal"

    return-object p1

    :cond_5
    const-string p1, "debug"

    return-object p1
.end method

.method private getInterfaceBinding(Lio/sentry/event/interfaces/SentryInterface;)Lio/sentry/marshaller/json/InterfaceBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/sentry/event/interfaces/SentryInterface;",
            ">(TT;)",
            "Lio/sentry/marshaller/json/InterfaceBinding<",
            "-TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/marshaller/json/JsonMarshaller;->interfaceBindings:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/marshaller/json/InterfaceBinding;

    return-object p1
.end method

.method private writeBreadcumbs(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Ljava/util/List<",
            "Lio/sentry/event/Breadcrumb;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "breadcrumbs"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    const-string v0, "values"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/event/Breadcrumb;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    invoke-virtual {v0}, Lio/sentry/event/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-string v3, "timestamp"

    invoke-virtual {p1, v3, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lio/sentry/event/Breadcrumb;->getType()Lio/sentry/event/Breadcrumb$Type;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lio/sentry/event/Breadcrumb;->getType()Lio/sentry/event/Breadcrumb$Type;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/event/Breadcrumb$Type;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {p1, v2, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lio/sentry/event/Breadcrumb;->getLevel()Lio/sentry/event/Breadcrumb$Level;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lio/sentry/event/Breadcrumb;->getLevel()Lio/sentry/event/Breadcrumb$Level;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/event/Breadcrumb$Level;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "level"

    invoke-virtual {p1, v2, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lio/sentry/event/Breadcrumb;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "message"

    invoke-virtual {v0}, Lio/sentry/event/Breadcrumb;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lio/sentry/event/Breadcrumb;->getCategory()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "category"

    invoke-virtual {v0}, Lio/sentry/event/Breadcrumb;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lio/sentry/event/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lio/sentry/event/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "data"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/sentry/event/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method

.method private writeCollection(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    :cond_1
    return-void
.end method

.method private writeContent(Lcom/fasterxml/jackson/core/JsonGenerator;Lio/sentry/event/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    invoke-virtual {p2}, Lio/sentry/event/Event;->getId()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/marshaller/json/JsonMarshaller;->formatId(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "event_id"

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/sentry/event/Event;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lio/sentry/marshaller/json/JsonMarshaller;->maxMessageLength:I

    invoke-static {v0, v1}, Lio/sentry/util/Util;->trimString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lio/sentry/marshaller/json/JsonMarshaller;->ISO_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {p2}, Lio/sentry/event/Event;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/sentry/event/Event;->getLevel()Lio/sentry/event/Event$Level;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/marshaller/json/JsonMarshaller;->formatLevel(Lio/sentry/event/Event$Level;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "level"

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-virtual {p2}, Lio/sentry/event/Event;->getLogger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "platform"

    invoke-virtual {p2}, Lio/sentry/event/Event;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "culprit"

    invoke-virtual {p2}, Lio/sentry/event/Event;->getCulprit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "transaction"

    invoke-virtual {p2}, Lio/sentry/event/Event;->getTransaction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/sentry/event/Event;->getSdk()Lio/sentry/event/Sdk;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/marshaller/json/JsonMarshaller;->writeSdk(Lcom/fasterxml/jackson/core/JsonGenerator;Lio/sentry/event/Sdk;)V

    invoke-virtual {p2}, Lio/sentry/event/Event;->getTags()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/marshaller/json/JsonMarshaller;->writeTags(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/util/Map;)V

    invoke-virtual {p2}, Lio/sentry/event/Event;->getBreadcrumbs()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/marshaller/json/JsonMarshaller;->writeBreadcumbs(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/util/List;)V

    invoke-virtual {p2}, Lio/sentry/event/Event;->getContexts()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/marshaller/json/JsonMarshaller;->writeContexts(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/util/Map;)V

    const-string v0, "server_name"

    invoke-virtual {p2}, Lio/sentry/event/Event;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "release"

    invoke-virtual {p2}, Lio/sentry/event/Event;->getRelease()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dist"

    invoke-virtual {p2}, Lio/sentry/event/Event;->getDist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "environment"

    invoke-virtual {p2}, Lio/sentry/event/Event;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/sentry/event/Event;->getExtra()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/marshaller/json/JsonMarshaller;->writeExtras(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/util/Map;)V

    const-string v0, "fingerprint"

    invoke-virtual {p2}, Lio/sentry/event/Event;->getFingerprint()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lio/sentry/marshaller/json/JsonMarshaller;->writeCollection(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Ljava/util/Collection;)V

    const-string v0, "checksum"

    invoke-virtual {p2}, Lio/sentry/event/Event;->getChecksum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/sentry/event/Event;->getSentryInterfaces()Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/sentry/marshaller/json/JsonMarshaller;->writeInterfaces(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method

.method private writeContexts(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "contexts"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method

.method private writeExtras(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "extra"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method

.method private writeInterfaces(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/event/interfaces/SentryInterface;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/event/interfaces/SentryInterface;

    iget-object v2, p0, Lio/sentry/marshaller/json/JsonMarshaller;->interfaceBindings:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lio/sentry/marshaller/json/JsonMarshaller;->getInterfaceBinding(Lio/sentry/event/interfaces/SentryInterface;)Lio/sentry/marshaller/json/InterfaceBinding;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/event/interfaces/SentryInterface;

    invoke-interface {v1, p1, v0}, Lio/sentry/marshaller/json/InterfaceBinding;->writeInterface(Lcom/fasterxml/jackson/core/JsonGenerator;Lio/sentry/event/interfaces/SentryInterface;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lio/sentry/marshaller/json/JsonMarshaller;->logger:Lorg/slf4j/Logger;

    const-string v3, "Couldn\'t parse the content of \'{}\' provided in {}."

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeSdk(Lcom/fasterxml/jackson/core/JsonGenerator;Lio/sentry/event/Sdk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sdk"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    const-string v0, "name"

    invoke-virtual {p2}, Lio/sentry/event/Sdk;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-virtual {p2}, Lio/sentry/event/Sdk;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/sentry/event/Sdk;->getIntegrations()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lio/sentry/event/Sdk;->getIntegrations()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "integrations"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/sentry/event/Sdk;->getIntegrations()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method

.method private writeTags(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "tags"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method


# virtual methods
.method public addInterfaceBinding(Ljava/lang/Class;Lio/sentry/marshaller/json/InterfaceBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/sentry/event/interfaces/SentryInterface;",
            "F:TT;>(",
            "Ljava/lang/Class<",
            "TF;>;",
            "Lio/sentry/marshaller/json/InterfaceBinding<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/marshaller/json/JsonMarshaller;->interfaceBindings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected createJsonGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lio/sentry/marshaller/json/SentryJsonGenerator;

    iget-object v1, p0, Lio/sentry/marshaller/json/JsonMarshaller;->jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/sentry/marshaller/json/SentryJsonGenerator;-><init>(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/sentry/marshaller/json/JsonMarshaller;->isCompressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gzip"

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/json"

    return-object v0
.end method

.method public isCompressed()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/marshaller/json/JsonMarshaller;->compression:Z

    return v0
.end method

.method public marshall(Lio/sentry/event/Event;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "An exception occurred while serialising the event."

    new-instance v1, Lio/sentry/marshaller/Marshaller$UncloseableOutputStream;

    invoke-direct {v1, p2}, Lio/sentry/marshaller/Marshaller$UncloseableOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-boolean p2, p0, Lio/sentry/marshaller/json/JsonMarshaller;->compression:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, p2

    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lio/sentry/marshaller/json/JsonMarshaller;->createJsonGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-direct {p0, p2, p1}, Lio/sentry/marshaller/json/JsonMarshaller;->writeContent(Lcom/fasterxml/jackson/core/JsonGenerator;Lio/sentry/event/Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    :try_start_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object p2, Lio/sentry/marshaller/json/JsonMarshaller;->logger:Lorg/slf4j/Logger;

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p2, :cond_2

    :try_start_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_7
    sget-object p2, Lio/sentry/marshaller/json/JsonMarshaller;->logger:Lorg/slf4j/Logger;

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_1
    return-void

    :goto_2
    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    sget-object v1, Lio/sentry/marshaller/json/JsonMarshaller;->logger:Lorg/slf4j/Logger;

    invoke-interface {v1, v0, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    throw p1
.end method

.method public setCompression(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/marshaller/json/JsonMarshaller;->compression:Z

    return-void
.end method
