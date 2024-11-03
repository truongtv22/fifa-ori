.class public Lcom/vk/sdk/api/methods/VKApiUsers;
.super Lcom/vk/sdk/api/methods/VKApiBase;
.source "VKApiUsers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/methods/VKApiBase;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vk/sdk/api/methods/VKApiUsers;->get(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 2

    new-instance v0, Lcom/vk/sdk/api/methods/VKApiUsers$1;

    invoke-direct {v0, p0}, Lcom/vk/sdk/api/methods/VKApiUsers$1;-><init>(Lcom/vk/sdk/api/methods/VKApiUsers;)V

    const-string v1, "get"

    invoke-virtual {p0, v1, p1, v0}, Lcom/vk/sdk/api/methods/VKApiUsers;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Lcom/vk/sdk/api/VKParser;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getFollowers()Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vk/sdk/api/methods/VKApiUsers;->getFollowers(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFollowers(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "getFollowers"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiUsers;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method protected getMethodsGroup()Ljava/lang/String;
    .locals 1

    const-string v0, "users"

    return-object v0
.end method

.method public getSubscriptions()Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vk/sdk/api/methods/VKApiUsers;->getSubscriptions(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptions(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "getSubscriptions"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiUsers;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public isAppUser()Lcom/vk/sdk/api/VKRequest;
    .locals 2

    const-string v0, "isAppUser"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vk/sdk/api/methods/VKApiUsers;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method public isAppUser(I)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/methods/VKApiUsers$2;

    invoke-direct {v0, p0, p1}, Lcom/vk/sdk/api/methods/VKApiUsers$2;-><init>(Lcom/vk/sdk/api/methods/VKApiUsers;I)V

    const-string p1, "isAppUser"

    invoke-virtual {p0, p1, v0}, Lcom/vk/sdk/api/methods/VKApiUsers;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public report(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "report"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiUsers;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public search(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 2

    const-string v0, "search"

    const-class v1, Lcom/vk/sdk/api/model/VKUsersArray;

    invoke-virtual {p0, v0, p1, v1}, Lcom/vk/sdk/api/methods/VKApiUsers;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method
