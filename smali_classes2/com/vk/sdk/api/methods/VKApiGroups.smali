.class public Lcom/vk/sdk/api/methods/VKApiGroups;
.super Lcom/vk/sdk/api/methods/VKApiBase;
.source "VKApiGroups.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/methods/VKApiBase;-><init>()V

    return-void
.end method


# virtual methods
.method public banUser(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "banUser"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiGroups;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 3

    const-string v0, "extended"

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/VKParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "get"

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/VKParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-class v0, Lcom/vk/sdk/api/model/VKApiCommunityArray;

    invoke-virtual {p0, v2, p1, v0}, Lcom/vk/sdk/api/methods/VKApiGroups;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, v2, p1}, Lcom/vk/sdk/api/methods/VKApiGroups;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getBanned(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 2

    const-string v0, "getBanned"

    const-class v1, Lcom/vk/sdk/api/model/VKUsersArray;

    invoke-virtual {p0, v0, p1, v1}, Lcom/vk/sdk/api/methods/VKApiGroups;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getById(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 2

    const-string v0, "getById"

    const-class v1, Lcom/vk/sdk/api/model/VKApiCommunityArray;

    invoke-virtual {p0, v0, p1, v1}, Lcom/vk/sdk/api/methods/VKApiGroups;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getInvites(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 2

    const-string v0, "getInvites"

    const-class v1, Lcom/vk/sdk/api/model/VKApiCommunityArray;

    invoke-virtual {p0, v0, p1, v1}, Lcom/vk/sdk/api/methods/VKApiGroups;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getMembers(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "getMembers"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiGroups;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method protected getMethodsGroup()Ljava/lang/String;
    .locals 1

    const-string v0, "groups"

    return-object v0
.end method

.method public isMember(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "isMember"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiGroups;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public join(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "join"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiGroups;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public leave(I)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/methods/VKApiGroups$1;

    invoke-direct {v0, p0, p1}, Lcom/vk/sdk/api/methods/VKApiGroups$1;-><init>(Lcom/vk/sdk/api/methods/VKApiGroups;I)V

    const-string p1, "leave"

    invoke-virtual {p0, p1, v0}, Lcom/vk/sdk/api/methods/VKApiGroups;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public leave(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "leave"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiGroups;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public search(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 2

    const-string v0, "search"

    const-class v1, Lcom/vk/sdk/api/model/VKApiCommunityArray;

    invoke-virtual {p0, v0, p1, v1}, Lcom/vk/sdk/api/methods/VKApiGroups;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public unbanUser(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "unbanUser"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiGroups;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method
