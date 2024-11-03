.class Lcom/beetalk/sdk/networking/service/AuthService$1;
.super Ljava/lang/Object;
.source "AuthService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/networking/service/AuthService;->registerGuest(Lcom/beetalk/sdk/data/GuestAccountRegInfo;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V
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
.field final synthetic val$guestAccountRegInfo:Lcom/beetalk/sdk/data/GuestAccountRegInfo;

.field final synthetic val$jsonObjectCallback:Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/data/GuestAccountRegInfo;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/networking/service/AuthService$1;->val$guestAccountRegInfo:Lcom/beetalk/sdk/data/GuestAccountRegInfo;

    iput-object p2, p0, Lcom/beetalk/sdk/networking/service/AuthService$1;->val$jsonObjectCallback:Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;

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

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/service/AuthService$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/beetalk/sdk/networking/service/AuthService$1;->val$guestAccountRegInfo:Lcom/beetalk/sdk/data/GuestAccountRegInfo;

    iget-object v0, v0, Lcom/beetalk/sdk/data/GuestAccountRegInfo;->password:Ljava/lang/String;

    const-string v1, "password"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_type"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/beetalk/sdk/networking/service/AuthService$1;->val$guestAccountRegInfo:Lcom/beetalk/sdk/data/GuestAccountRegInfo;

    iget-object v0, v0, Lcom/beetalk/sdk/data/GuestAccountRegInfo;->app_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_id"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/beetalk/sdk/networking/service/AuthService$1;->val$guestAccountRegInfo:Lcom/beetalk/sdk/data/GuestAccountRegInfo;

    iget v0, v0, Lcom/beetalk/sdk/data/GuestAccountRegInfo;->source:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRegisterGuestAccountURL()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/beetalk/sdk/networking/service/AuthService$1;->val$guestAccountRegInfo:Lcom/beetalk/sdk/data/GuestAccountRegInfo;

    iget-object v5, v5, Lcom/beetalk/sdk/data/GuestAccountRegInfo;->app_key:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;ZLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/networking/service/AuthService$1;->val$jsonObjectCallback:Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;

    invoke-interface {v1, v0}, Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;->onCompleted(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    return-object v0
.end method
