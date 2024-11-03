.class Lcom/vk/sdk/api/model/VKAttachments$1;
.super Ljava/lang/Object;
.source "VKAttachments.java"

# interfaces
.implements Lcom/vk/sdk/api/model/VKList$Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/model/VKAttachments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vk/sdk/api/model/VKList$Parser<",
        "Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/sdk/api/model/VKAttachments;


# direct methods
.method constructor <init>(Lcom/vk/sdk/api/model/VKAttachments;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKAttachments$1;->this$0:Lcom/vk/sdk/api/model/VKAttachments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseObject(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "photo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/vk/sdk/api/model/VKApiPhoto;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiPhoto;-><init>()V

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/model/VKApiPhoto;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPhoto;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/vk/sdk/api/model/VKApiVideo;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiVideo;-><init>()V

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/model/VKApiVideo;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiVideo;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v1, "audio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/vk/sdk/api/model/VKApiAudio;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiAudio;-><init>()V

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/model/VKApiAudio;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiAudio;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v1, "doc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/vk/sdk/api/model/VKApiDocument;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiDocument;-><init>()V

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/model/VKApiDocument;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiDocument;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v1, "wall"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/vk/sdk/api/model/VKApiPost;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiPost;-><init>()V

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/model/VKApiPost;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPost;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v1, "posted_photo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Lcom/vk/sdk/api/model/VKApiPostedPhoto;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiPostedPhoto;-><init>()V

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/model/VKApiPostedPhoto;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPostedPhoto;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v1, "link"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v0, Lcom/vk/sdk/api/model/VKApiLink;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiLink;-><init>()V

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/model/VKApiLink;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiLink;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v1, "note"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lcom/vk/sdk/api/model/VKApiNote;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiNote;-><init>()V

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/model/VKApiNote;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiNote;

    move-result-object p1

    return-object p1

    :cond_7
    const-string v1, "app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v0, Lcom/vk/sdk/api/model/VKApiApplicationContent;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiApplicationContent;-><init>()V

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/model/VKApiApplicationContent;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiApplicationContent;

    move-result-object p1

    return-object p1

    :cond_8
    const-string v1, "poll"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v0, Lcom/vk/sdk/api/model/VKApiPoll;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiPoll;-><init>()V

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/model/VKApiPoll;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPoll;

    move-result-object p1

    return-object p1

    :cond_9
    const-string v1, "page"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v0, Lcom/vk/sdk/api/model/VKApiWikiPage;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiWikiPage;-><init>()V

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/model/VKApiWikiPage;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiWikiPage;

    move-result-object p1

    return-object p1

    :cond_a
    const-string v1, "album"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;-><init>()V

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPhotoAlbum;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic parseObject(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKAttachments$1;->parseObject(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;

    move-result-object p1

    return-object p1
.end method
