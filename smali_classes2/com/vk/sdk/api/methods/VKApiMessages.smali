.class public Lcom/vk/sdk/api/methods/VKApiMessages;
.super Lcom/vk/sdk/api/methods/VKApiBase;
.source "VKApiMessages.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/methods/VKApiBase;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/vk/sdk/api/VKRequest;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "10"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/vk/sdk/api/VKParameters;->from([Ljava/lang/Object;)Lcom/vk/sdk/api/VKParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vk/sdk/api/methods/VKApiMessages;->get(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 2

    new-instance v0, Lcom/vk/sdk/api/methods/VKApiMessages$1;

    invoke-direct {v0, p0}, Lcom/vk/sdk/api/methods/VKApiMessages$1;-><init>(Lcom/vk/sdk/api/methods/VKApiMessages;)V

    const-string v1, "get"

    invoke-virtual {p0, v1, p1, v0}, Lcom/vk/sdk/api/methods/VKApiMessages;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Lcom/vk/sdk/api/VKParser;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getDialogs()Lcom/vk/sdk/api/VKRequest;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "5"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/vk/sdk/api/VKParameters;->from([Ljava/lang/Object;)Lcom/vk/sdk/api/VKParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vk/sdk/api/methods/VKApiMessages;->getDialogs(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDialogs(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 2

    new-instance v0, Lcom/vk/sdk/api/methods/VKApiMessages$2;

    invoke-direct {v0, p0}, Lcom/vk/sdk/api/methods/VKApiMessages$2;-><init>(Lcom/vk/sdk/api/methods/VKApiMessages;)V

    const-string v1, "getDialogs"

    invoke-virtual {p0, v1, p1, v0}, Lcom/vk/sdk/api/methods/VKApiMessages;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Lcom/vk/sdk/api/VKParser;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method protected getMethodsGroup()Ljava/lang/String;
    .locals 1

    const-string v0, "messages"

    return-object v0
.end method
