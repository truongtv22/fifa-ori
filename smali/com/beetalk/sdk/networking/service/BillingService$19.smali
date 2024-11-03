.class Lcom/beetalk/sdk/networking/service/BillingService$19;
.super Ljava/lang/Object;
.source "BillingService.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/networking/service/BillingService;->getProductItems(Landroid/content/Context;Lcom/garena/pay/android/GGPayRequest;Ljava/util/Map;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;",
        "Lcom/beetalk/sdk/networking/model/ChannelsResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$request:Lcom/garena/pay/android/GGPayRequest;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGPayRequest;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/networking/service/BillingService$19;->val$request:Lcom/garena/pay/android/GGPayRequest;

    iput-object p2, p0, Lcom/beetalk/sdk/networking/service/BillingService$19;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/beetalk/sdk/networking/model/ChannelsResp;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;",
            ">;)",
            "Lcom/beetalk/sdk/networking/model/ChannelsResp;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;

    iget-boolean v0, p1, Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;->hasTimedOut:Z

    if-nez v0, :cond_f

    iget-object p1, p1, Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;->response:Ljava/lang/String;

    invoke-static {p1}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/ChannelsResp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getErrorCode()I

    move-result v0

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/networking/service/BillingService$19;->val$request:Lcom/garena/pay/android/GGPayRequest;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGPayRequest;->getClientPaymentRequest()Lcom/garena/pay/android/data/GGPayment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGPayment;->getRebateId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v5, -0x1

    cmp-long v2, v0, v5

    if-nez v2, :cond_d

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getChannels()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;

    invoke-virtual {v6}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/garena/pay/android/data/GGPayment$Denomination;

    invoke-virtual {v7}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getRebateId()J

    move-result-wide v8

    cmp-long v10, v8, v3

    if-eqz v10, :cond_4

    invoke-virtual {v7}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getRebateId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getChannels()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/pay/android/helper/NetworkUtils;->filterChannels(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->setChannels(Ljava/util/List;)V

    return-object p1

    :cond_6
    new-instance v3, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    invoke-direct {v3}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setAppId(Ljava/lang/String;)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object v4

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setOpenId(Ljava/lang/String;)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object v4

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/beetalk/sdk/GGLoginSession;->getPlatform()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setPlatform(I)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object v4

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v5

    invoke-virtual {v5}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setToken(Ljava/lang/String;)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/beetalk/sdk/networking/service/BillingService$19;->val$request:Lcom/garena/pay/android/GGPayRequest;

    invoke-virtual {v5}, Lcom/garena/pay/android/GGPayRequest;->getClientPaymentRequest()Lcom/garena/pay/android/data/GGPayment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/garena/pay/android/data/GGPayment;->getAppServerId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setServerId(I)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/beetalk/sdk/networking/service/BillingService$19;->val$request:Lcom/garena/pay/android/GGPayRequest;

    invoke-virtual {v5}, Lcom/garena/pay/android/GGPayRequest;->getClientPaymentRequest()Lcom/garena/pay/android/data/GGPayment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/garena/pay/android/data/GGPayment;->getRoleId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setRoleId(I)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setRebateIds(Ljava/util/List;)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/beetalk/sdk/networking/service/BillingService$19;->val$request:Lcom/garena/pay/android/GGPayRequest;

    invoke-virtual {v4}, Lcom/garena/pay/android/GGPayRequest;->getClientPaymentRequest()Lcom/garena/pay/android/data/GGPayment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/garena/pay/android/data/GGPayment;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->setLocale(Ljava/util/Locale;)Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;

    new-instance v2, Lcom/beetalk/sdk/networking/HttpRequestTask;

    sget-object v4, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->GET:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-virtual {v3}, Lcom/garena/pay/android/data/GGRebateOptionsRequest$GGRebateOptionsRequestBuilder;->Build()Lcom/garena/pay/android/data/GGRebateOptionsRequest;

    move-result-object v3

    iget-object v5, p0, Lcom/beetalk/sdk/networking/service/BillingService$19;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v5}, Lcom/garena/pay/android/data/GGRebateOptionsRequest;->getParams(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;)V

    invoke-static {}, Lcom/beetalk/sdk/networking/service/BillingService;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/beetalk/sdk/networking/HttpRequestTask;->setSignatureKey(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask;

    move-result-object v2

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRebateOptionsUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/beetalk/sdk/networking/HttpRequestTask;->executeStringSync(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;

    move-result-object v2

    iget-boolean v3, v2, Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;->hasTimedOut:Z

    if-nez v3, :cond_c

    iget-object v2, v2, Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;->response:Ljava/lang/String;

    invoke-static {v2}, Lcom/beetalk/sdk/networking/model/RebatesResp;->parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/RebatesResp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beetalk/sdk/networking/model/RebatesResp;->getRebates()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    return-object v1

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;

    invoke-virtual {v3}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/garena/pay/android/data/GGPayment$Denomination;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/garena/pay/android/ndk/RebateOptionItem;

    iget-wide v7, v6, Lcom/garena/pay/android/ndk/RebateOptionItem;->rebateId:J

    invoke-virtual {v4}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getRebateId()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-nez v11, :cond_a

    iget-object v6, v6, Lcom/garena/pay/android/ndk/RebateOptionItem;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/garena/pay/android/data/GGPayment$Denomination;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    invoke-static {v0}, Lcom/garena/pay/android/helper/NetworkUtils;->filterChannels(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->setChannels(Ljava/util/List;)V

    return-object p1

    :cond_c
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    :cond_d
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getChannels()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/pay/android/helper/NetworkUtils;->filterChannels(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->setChannels(Ljava/util/List;)V

    return-object p1

    :cond_e
    :goto_2
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getChannels()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/pay/android/helper/NetworkUtils;->filterNormalPaymentChannelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->setChannels(Ljava/util/List;)V

    return-object p1

    :cond_f
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    :cond_10
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/networking/service/BillingService$19;->then(Lbolts/Task;)Lcom/beetalk/sdk/networking/model/ChannelsResp;

    move-result-object p1

    return-object p1
.end method
