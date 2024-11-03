.class public final Lcom/garena/android/gpns/network/PacketRouter;
.super Ljava/lang/Object;
.source "PacketRouter.java"


# static fields
.field private static final mProcessorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/garena/android/gpns/processor/AbstractProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/garena/android/gpns/network/PacketRouter;->mProcessorMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static register(Lcom/garena/android/gpns/processor/AbstractProcessor;)V
    .locals 2

    sget-object v0, Lcom/garena/android/gpns/network/PacketRouter;->mProcessorMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/garena/android/gpns/processor/AbstractProcessor;->getCommand()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static registerProcessors(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/garena/android/gpns/network/PacketRouter;->mProcessorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Lcom/garena/android/gpns/processor/RegionResponseProcessor;

    invoke-direct {v0, p0}, Lcom/garena/android/gpns/processor/RegionResponseProcessor;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/garena/android/gpns/network/PacketRouter;->register(Lcom/garena/android/gpns/processor/AbstractProcessor;)V

    new-instance v0, Lcom/garena/android/gpns/processor/PushIdResponseProcessor;

    invoke-direct {v0, p0}, Lcom/garena/android/gpns/processor/PushIdResponseProcessor;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/garena/android/gpns/network/PacketRouter;->register(Lcom/garena/android/gpns/processor/AbstractProcessor;)V

    new-instance v0, Lcom/garena/android/gpns/processor/PushMsgArrivedProcessor;

    invoke-direct {v0, p0}, Lcom/garena/android/gpns/processor/PushMsgArrivedProcessor;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/garena/android/gpns/network/PacketRouter;->register(Lcom/garena/android/gpns/processor/AbstractProcessor;)V

    return-void
.end method

.method public static route(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V
    .locals 3

    sget-object v0, Lcom/garena/android/gpns/network/PacketRouter;->mProcessorMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/garena/android/gpns/network/tcp/TCPPacket;->getCommand()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/garena/android/gpns/processor/AbstractProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/garena/android/gpns/network/tcp/TCPPacket;->getData()[B

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/garena/android/gpns/processor/AbstractProcessor;->process([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/garena/android/gpns/utility/AppLogger;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
