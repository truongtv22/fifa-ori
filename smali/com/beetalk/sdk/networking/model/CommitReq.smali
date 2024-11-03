.class public Lcom/beetalk/sdk/networking/model/CommitReq;
.super Lcom/beetalk/sdk/networking/model/BaseReq;
.source "CommitReq.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/networking/model/BaseReq;-><init>()V

    return-void
.end method

.method public static toParams(Lcom/android/billingclient/api/Purchase;IILjava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/Purchase;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "access_token"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "open_id"

    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_server_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "app_role_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "purchase_data"

    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getQuantity()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "quantity"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data_signature"

    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "flag"

    const-string p1, "1"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/cache/PayCachePreference;->getInstance()Lcom/beetalk/sdk/cache/PayCachePreference;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/beetalk/sdk/cache/PayCachePreference;->getTransactionInfo(Ljava/lang/String;)Lcom/garena/pay/android/data/UserTransactionInfo;

    move-result-object p0

    const-string/jumbo p1, "user_region"

    iget-object p2, p0, Lcom/garena/pay/android/data/UserTransactionInfo;->region:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "display_local_currency"

    iget-object p0, p0, Lcom/garena/pay/android/data/UserTransactionInfo;->currency:Ljava/lang/String;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
