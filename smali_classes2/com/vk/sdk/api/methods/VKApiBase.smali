.class public abstract Lcom/vk/sdk/api/methods/VKApiBase;
.super Ljava/lang/Object;
.source "VKApiBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getMethodsGroup()Ljava/lang/String;
.end method

.method protected prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 5

    new-instance v0, Lcom/vk/sdk/api/VKRequest;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/vk/sdk/api/methods/VKApiBase;->getMethodsGroup()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "%s.%s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/vk/sdk/api/VKRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Lcom/vk/sdk/api/VKParser;)Lcom/vk/sdk/api/VKRequest;
    .locals 5

    new-instance v0, Lcom/vk/sdk/api/VKRequest;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/vk/sdk/api/methods/VKApiBase;->getMethodsGroup()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "%s.%s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/vk/sdk/api/VKRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)V

    invoke-virtual {v0, p3}, Lcom/vk/sdk/api/VKRequest;->setResponseParser(Lcom/vk/sdk/api/VKParser;)V

    return-object v0
.end method

.method protected prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)Lcom/vk/sdk/api/VKRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vk/sdk/api/VKParameters;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/vk/sdk/api/model/VKApiModel;",
            ">;)",
            "Lcom/vk/sdk/api/VKRequest;"
        }
    .end annotation

    new-instance v0, Lcom/vk/sdk/api/VKRequest;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/vk/sdk/api/methods/VKApiBase;->getMethodsGroup()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "%s.%s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lcom/vk/sdk/api/VKRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)V

    return-object v0
.end method
