.class public Lcom/vk/sdk/api/methods/VKApiFriends;
.super Lcom/vk/sdk/api/methods/VKApiBase;
.source "VKApiFriends.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/methods/VKApiBase;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "add"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiFriends;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public addList(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "addList"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiFriends;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public areFriends(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "areFriends"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiFriends;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public delete(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "delete"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiFriends;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public deleteAllRequests(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "deleteAllRequests"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiFriends;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public deleteList(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "deleteList"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiFriends;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public edit(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "edit"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiFriends;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public editList(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "editList"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiFriends;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 2

    const-string v0, "fields"

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/VKParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get"

    if-eqz v0, :cond_0

    const-class v0, Lcom/vk/sdk/api/model/VKUsersArray;

    invoke-virtual {p0, v1, p1, v0}, Lcom/vk/sdk/api/methods/VKApiFriends;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/vk/sdk/api/methods/VKApiFriends;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getAppUsers(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "getAppUsers"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiFriends;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getByPhones(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 2

    const-string v0, "getByPhones"

    const-class v1, Lcom/vk/sdk/api/model/VKUsersArray;

    invoke-virtual {p0, v0, p1, v1}, Lcom/vk/sdk/api/methods/VKApiFriends;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getLists(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "getLists"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiFriends;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method protected getMethodsGroup()Ljava/lang/String;
    .locals 1

    const-string v0, "friends"

    return-object v0
.end method

.method public getMutual(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "getMutual"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiFriends;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getOnline(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "getOnline"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiFriends;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getRecent(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "getRecent"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiFriends;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getRequests(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "getRequests"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiFriends;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getSuggestions(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "getSuggestions"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiFriends;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method
