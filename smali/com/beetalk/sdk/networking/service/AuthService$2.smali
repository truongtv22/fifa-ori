.class Lcom/beetalk/sdk/networking/service/AuthService$2;
.super Ljava/lang/Object;
.source "AuthService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/networking/service/AuthService;->grantGuestToken(JLjava/lang/String;Lcom/beetalk/sdk/request/ResponseType;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$clientId:Ljava/lang/String;

.field final synthetic val$jsonObjectCallback:Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$responseType:Lcom/beetalk/sdk/request/ResponseType;

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(JLjava/lang/String;Lcom/beetalk/sdk/request/ResponseType;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V
    .locals 0

    iput-wide p1, p0, Lcom/beetalk/sdk/networking/service/AuthService$2;->val$uid:J

    iput-object p3, p0, Lcom/beetalk/sdk/networking/service/AuthService$2;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/beetalk/sdk/networking/service/AuthService$2;->val$responseType:Lcom/beetalk/sdk/request/ResponseType;

    iput-object p5, p0, Lcom/beetalk/sdk/networking/service/AuthService$2;->val$clientId:Ljava/lang/String;

    iput-object p6, p0, Lcom/beetalk/sdk/networking/service/AuthService$2;->val$jsonObjectCallback:Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/service/AuthService$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-wide v0, p0, Lcom/beetalk/sdk/networking/service/AuthService$2;->val$uid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uid"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/beetalk/sdk/networking/service/AuthService$2;->val$password:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/beetalk/sdk/networking/service/AuthService$2;->val$responseType:Lcom/beetalk/sdk/request/ResponseType;

    invoke-virtual {v0}, Lcom/beetalk/sdk/request/ResponseType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "response_type"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_type"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/beetalk/sdk/networking/service/AuthService$2;->val$clientId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_id"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_secret"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getGuestGrantTokenURL()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;ZLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/networking/service/AuthService$2;->val$jsonObjectCallback:Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;

    invoke-interface {v1, v0}, Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;->onCompleted(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    return-object v0
.end method
