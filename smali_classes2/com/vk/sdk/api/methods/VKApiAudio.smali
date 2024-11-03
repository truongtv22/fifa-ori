.class public Lcom/vk/sdk/api/methods/VKApiAudio;
.super Lcom/vk/sdk/api/methods/VKApiBase;
.source "VKApiAudio.java"


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

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiAudio;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public addAlbum(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "addAlbum"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiAudio;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public delete(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "delete"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiAudio;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public deleteAlbum(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "deleteAlbum"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiAudio;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public edit(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "edit"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiAudio;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public editAlbum(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "editAlbum"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiAudio;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public get()Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vk/sdk/api/methods/VKApiAudio;->get(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 2

    const-string v0, "get"

    const-class v1, Lcom/vk/sdk/api/model/VkAudioArray;

    invoke-virtual {p0, v0, p1, v1}, Lcom/vk/sdk/api/methods/VKApiAudio;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getAlbums()Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vk/sdk/api/methods/VKApiAudio;->getAlbums(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method public getAlbums(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "getAlbums"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiAudio;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getBroadcastList()Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vk/sdk/api/methods/VKApiAudio;->getBroadcastList(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastList(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "getBroadcastList"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiAudio;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getById(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "getById"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiAudio;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getCount(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "getCount"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiAudio;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getLyrics(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "getLyrics"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiAudio;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method protected getMethodsGroup()Ljava/lang/String;
    .locals 1

    const-string v0, "audio"

    return-object v0
.end method

.method public getPopular()Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vk/sdk/api/methods/VKApiAudio;->getPopular(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPopular(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 2

    const-string v0, "getPopular"

    const-class v1, Lcom/vk/sdk/api/model/VkAudioArray;

    invoke-virtual {p0, v0, p1, v1}, Lcom/vk/sdk/api/methods/VKApiAudio;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getRecommendations()Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vk/sdk/api/methods/VKApiAudio;->getRecommendations(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendations(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 2

    const-string v0, "getRecommendations"

    const-class v1, Lcom/vk/sdk/api/model/VkAudioArray;

    invoke-virtual {p0, v0, p1, v1}, Lcom/vk/sdk/api/methods/VKApiAudio;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getUploadServer()Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vk/sdk/api/methods/VKApiAudio;->getUploadServer(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method public getUploadServer(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "getUploadServer"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiAudio;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public moveToAlbum(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "moveToAlbum"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiAudio;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public reorder(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "reorder"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiAudio;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public restore(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "restore"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiAudio;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public save(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "save"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiAudio;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public search(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 2

    const-string v0, "search"

    const-class v1, Lcom/vk/sdk/api/model/VkAudioArray;

    invoke-virtual {p0, v0, p1, v1}, Lcom/vk/sdk/api/methods/VKApiAudio;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public setBroadcast(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "setBroadcast"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiAudio;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method
