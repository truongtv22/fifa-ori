.class Lcom/beetalk/sdk/networking/HttpRequestTask$4;
.super Ljava/lang/Object;
.source "HttpRequestTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/networking/HttpRequestTask;->onRequest(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/networking/HttpRequestTask;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$4;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    iput-object p2, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$4;->val$url:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/HttpRequestTask$4;->call()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/json/JSONObject;
    .locals 5

    sget-object v0, Lcom/beetalk/sdk/networking/HttpRequestTask$5;->$SwitchMap$com$beetalk$sdk$networking$HttpRequestTask$RequestType:[I

    iget-object v1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$4;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {v1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$300(Lcom/beetalk/sdk/networking/HttpRequestTask;)Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$4;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {v0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$600(Lcom/beetalk/sdk/networking/HttpRequestTask;)Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;->JSON:Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$4;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$4;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {v2}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$700(Lcom/beetalk/sdk/networking/HttpRequestTask;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$4;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {v3}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$800(Lcom/beetalk/sdk/networking/HttpRequestTask;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$4;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {v0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$400(Lcom/beetalk/sdk/networking/HttpRequestTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$4;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$4;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {v2}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$700(Lcom/beetalk/sdk/networking/HttpRequestTask;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$4;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {v3}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$500(Lcom/beetalk/sdk/networking/HttpRequestTask;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$4;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {v4}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$400(Lcom/beetalk/sdk/networking/HttpRequestTask;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$4;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$4;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {v2}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$700(Lcom/beetalk/sdk/networking/HttpRequestTask;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$4;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {v3}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$500(Lcom/beetalk/sdk/networking/HttpRequestTask;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$4;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {v0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$400(Lcom/beetalk/sdk/networking/HttpRequestTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$4;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$4;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {v2}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$500(Lcom/beetalk/sdk/networking/HttpRequestTask;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$4;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {v3}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$400(Lcom/beetalk/sdk/networking/HttpRequestTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makeGetRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$4;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$4;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {v2}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$500(Lcom/beetalk/sdk/networking/HttpRequestTask;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makeGetRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0
.end method
