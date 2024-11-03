.class public Lcom/beetalk/sdk/networking/service/AppService;
.super Ljava/lang/Object;
.source "AppService.java"


# static fields
.field private static final CLIENT_ANDROID_GARENA:I = 0x1101

.field private static final CLIENT_ANDROID_GOOGLE_PLAY:I = 0x1100

.field private static final CLIENT_ANDROID_INTERNAL:I = 0x1102


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppConfigSync(Ljava/lang/String;II)Lorg/json/JSONObject;
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0x1100

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    move-result-object p1

    sget-object v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->PRODUCTION:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    if-ne p1, v0, :cond_1

    const/16 p1, 0x1101

    goto :goto_0

    :cond_1
    const/16 p1, 0x1102

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "app_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "client_type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "client_version"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAppConfigURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makeGetRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static getOverlayConfigSync(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makeGetRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static postFeedbackSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/networking/service/AppService$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/beetalk/sdk/networking/service/AppService$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getFeedbackServerUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
