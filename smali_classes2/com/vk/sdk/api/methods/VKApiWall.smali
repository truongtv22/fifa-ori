.class public Lcom/vk/sdk/api/methods/VKApiWall;
.super Lcom/vk/sdk/api/methods/VKApiBase;
.source "VKApiWall.java"


# static fields
.field public static final EXTENDED:Ljava/lang/String; = "extended"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/methods/VKApiBase;-><init>()V

    return-void
.end method


# virtual methods
.method public addComment(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "addComment"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiWall;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public delete(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "delete"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiWall;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public deleteComment(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "deleteComment"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiWall;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public edit(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "edit"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiWall;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public editComment(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "editComment"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiWall;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

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

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-class v0, Lcom/vk/sdk/api/model/VKPostArray;

    invoke-virtual {p0, v2, p1, v0}, Lcom/vk/sdk/api/methods/VKApiWall;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, v2, p1}, Lcom/vk/sdk/api/methods/VKApiWall;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getById(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 2

    const-string v0, "getById"

    const-class v1, Lcom/vk/sdk/api/model/VKPostArray;

    invoke-virtual {p0, v0, p1, v1}, Lcom/vk/sdk/api/methods/VKApiWall;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getComments(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 2

    const-string v0, "getComments"

    const-class v1, Lcom/vk/sdk/api/model/VKCommentArray;

    invoke-virtual {p0, v0, p1, v1}, Lcom/vk/sdk/api/methods/VKApiWall;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method protected getMethodsGroup()Ljava/lang/String;
    .locals 1

    const-string v0, "wall"

    return-object v0
.end method

.method public getReposts(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "getReposts"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiWall;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public post(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 2

    const-string v0, "post"

    const-class v1, Lcom/vk/sdk/api/model/VKWallPostResult;

    invoke-virtual {p0, v0, p1, v1}, Lcom/vk/sdk/api/methods/VKApiWall;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public reportComment(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "reportComment"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiWall;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public reportPost(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "reportPost"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiWall;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public repost(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "repost"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiWall;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public restore(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "restore"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiWall;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public restoreComment(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "restoreComment"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiWall;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public savePost(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    const-string v0, "savePost"

    invoke-virtual {p0, v0, p1}, Lcom/vk/sdk/api/methods/VKApiWall;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method
