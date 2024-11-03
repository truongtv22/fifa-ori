.class Lcom/beetalk/sdk/networking/service/AuthService$3;
.super Ljava/lang/Object;
.source "AuthService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/networking/service/AuthService;->bindGuestAccount(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V
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
.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$guestAccessToken:Ljava/lang/String;

.field final synthetic val$jsonObjectCallback:Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/networking/service/AuthService$3;->val$accessToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/beetalk/sdk/networking/service/AuthService$3;->val$guestAccessToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/beetalk/sdk/networking/service/AuthService$3;->val$jsonObjectCallback:Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;

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

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/service/AuthService$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "access_token"

    iget-object v1, p0, Lcom/beetalk/sdk/networking/service/AuthService$3;->val$accessToken:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "guest_access_token"

    iget-object v1, p0, Lcom/beetalk/sdk/networking/service/AuthService$3;->val$guestAccessToken:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getBindGuestAccountURL()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;ZLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/networking/service/AuthService$3;->val$jsonObjectCallback:Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;

    invoke-interface {v1, v0}, Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;->onCompleted(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    return-object v0
.end method
