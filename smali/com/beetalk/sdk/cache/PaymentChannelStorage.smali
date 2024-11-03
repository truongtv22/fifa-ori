.class public Lcom/beetalk/sdk/cache/PaymentChannelStorage;
.super Ljava/lang/Object;
.source "PaymentChannelStorage.java"


# static fields
.field private static final CACHE_VALID_PERIOD:I = 0xea60

.field private static volatile mInstance:Lcom/beetalk/sdk/cache/PaymentChannelStorage;


# instance fields
.field private channelsResp:Lcom/beetalk/sdk/networking/model/ChannelsResp;

.field private key:Ljava/lang/String;

.field private mCreateTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->mCreateTime:J

    return-void
.end method

.method static synthetic access$002(Lcom/beetalk/sdk/cache/PaymentChannelStorage;Lcom/beetalk/sdk/networking/model/ChannelsResp;)Lcom/beetalk/sdk/networking/model/ChannelsResp;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->channelsResp:Lcom/beetalk/sdk/networking/model/ChannelsResp;

    return-object p1
.end method

.method static synthetic access$102(Lcom/beetalk/sdk/cache/PaymentChannelStorage;J)J
    .locals 0

    iput-wide p1, p0, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->mCreateTime:J

    return-wide p1
.end method

.method public static getInstance()Lcom/beetalk/sdk/cache/PaymentChannelStorage;
    .locals 2

    sget-object v0, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->mInstance:Lcom/beetalk/sdk/cache/PaymentChannelStorage;

    if-nez v0, :cond_1

    const-class v0, Lcom/beetalk/sdk/cache/PaymentChannelStorage;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->mInstance:Lcom/beetalk/sdk/cache/PaymentChannelStorage;

    if-nez v1, :cond_0

    new-instance v1, Lcom/beetalk/sdk/cache/PaymentChannelStorage;

    invoke-direct {v1}, Lcom/beetalk/sdk/cache/PaymentChannelStorage;-><init>()V

    sput-object v1, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->mInstance:Lcom/beetalk/sdk/cache/PaymentChannelStorage;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->mInstance:Lcom/beetalk/sdk/cache/PaymentChannelStorage;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->mCreateTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->channelsResp:Lcom/beetalk/sdk/networking/model/ChannelsResp;

    iput-object v0, p0, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->key:Ljava/lang/String;

    return-void
.end method

.method public getPaymentChannels(Landroid/content/Context;ZLcom/garena/pay/android/GGPayRequest;)Lbolts/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/garena/pay/android/GGPayRequest;",
            ")",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/ChannelsResp;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getChannelSource()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p3}, Lcom/beetalk/sdk/networking/model/ChannelsReq;->toParams(Landroid/content/Context;Lcom/garena/pay/android/GGPayRequest;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/garena/pay/android/GGPayRequest;->getClientPaymentRequest()Lcom/garena/pay/android/data/GGPayment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/garena/pay/android/data/GGPayment;->getRebateId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->channelsResp:Lcom/beetalk/sdk/networking/model/ChannelsResp;

    if-eqz p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->mCreateTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long p2, v2, v4

    if-gtz p2, :cond_1

    iget-object p2, p0, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->key:Ljava/lang/String;

    invoke-static {p2, v1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cache hit: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->channelsResp:Lcom/beetalk/sdk/networking/model/ChannelsResp;

    invoke-static {p1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object p1

    return-object p1

    :cond_1
    iput-object v1, p0, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->key:Ljava/lang/String;

    invoke-static {p1, p3, v0}, Lcom/beetalk/sdk/networking/service/BillingService;->getProductItems(Landroid/content/Context;Lcom/garena/pay/android/GGPayRequest;Ljava/util/Map;)Lbolts/Task;

    move-result-object p1

    new-instance p2, Lcom/beetalk/sdk/cache/PaymentChannelStorage$1;

    invoke-direct {p2, p0}, Lcom/beetalk/sdk/cache/PaymentChannelStorage$1;-><init>(Lcom/beetalk/sdk/cache/PaymentChannelStorage;)V

    sget-object p3, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, p3}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->clear()V

    const/4 p1, 0x0

    invoke-static {p1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method
