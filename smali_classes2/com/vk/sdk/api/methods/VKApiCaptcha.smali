.class public Lcom/vk/sdk/api/methods/VKApiCaptcha;
.super Lcom/vk/sdk/api/methods/VKApiBase;
.source "VKApiCaptcha.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/methods/VKApiBase;-><init>()V

    return-void
.end method


# virtual methods
.method public force()Lcom/vk/sdk/api/VKRequest;
    .locals 2

    const-string v0, "force"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vk/sdk/api/methods/VKApiCaptcha;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getMethodsGroup()Ljava/lang/String;
    .locals 1

    const-string v0, "captcha"

    return-object v0
.end method
