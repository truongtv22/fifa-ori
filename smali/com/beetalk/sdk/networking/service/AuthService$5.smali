.class Lcom/beetalk/sdk/networking/service/AuthService$5;
.super Ljava/lang/Object;
.source "AuthService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/networking/service/AuthService;->appPlatformBindCreate(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V
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
.field final synthetic val$jsonObjectCallback:Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;

.field final synthetic val$primaryAccessToken:Ljava/lang/String;

.field final synthetic val$secondaryAccessToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/networking/service/AuthService$5;->val$primaryAccessToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/beetalk/sdk/networking/service/AuthService$5;->val$secondaryAccessToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/beetalk/sdk/networking/service/AuthService$5;->val$jsonObjectCallback:Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;

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

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/service/AuthService$5;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/beetalk/sdk/networking/service/AuthService$5;->val$primaryAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "secondary_access_token"

    iget-object v2, p0, Lcom/beetalk/sdk/networking/service/AuthService$5;->val$secondaryAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v1

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAppPlatformBindCreateURL()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/networking/service/AuthService$5;->val$jsonObjectCallback:Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;

    invoke-interface {v1, v0}, Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;->onCompleted(Lorg/json/JSONObject;)V

    return-object v3
.end method
