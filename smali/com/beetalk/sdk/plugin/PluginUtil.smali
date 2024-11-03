.class public Lcom/beetalk/sdk/plugin/PluginUtil;
.super Ljava/lang/Object;
.source "PluginUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFriendGroups(Lorg/json/JSONObject;)Ljava/util/Vector;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Vector<",
            "Lcom/beetalk/sdk/data/DataModel$FriendGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :try_start_0
    const-string v1, "friends_groups"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    new-instance v3, Lcom/beetalk/sdk/data/DataModel$FriendGroup;

    invoke-direct {v3}, Lcom/beetalk/sdk/data/DataModel$FriendGroup;-><init>()V

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "platform"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/beetalk/sdk/data/DataModel$FriendGroup;->platform:I

    const-string v5, "friends"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string/jumbo v6, "uids"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v5, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    :goto_1
    if-nez v4, :cond_1

    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    :goto_2
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8, v6}, Ljava/util/Vector;-><init>(I)V

    iput-object v8, v3, Lcom/beetalk/sdk/data/DataModel$FriendGroup;->ids:Ljava/util/Vector;

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8, v6}, Ljava/util/Vector;-><init>(I)V

    iput-object v8, v3, Lcom/beetalk/sdk/data/DataModel$FriendGroup;->idInfoList:Ljava/util/Vector;

    if-eqz v5, :cond_3

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_3

    new-instance v9, Lcom/beetalk/sdk/data/DataModel$FriendIdInfo;

    invoke-direct {v9}, Lcom/beetalk/sdk/data/DataModel$FriendIdInfo;-><init>()V

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/beetalk/sdk/data/DataModel$FriendIdInfo;->openId:Ljava/lang/String;

    if-ge v8, v7, :cond_2

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/beetalk/sdk/data/DataModel$FriendIdInfo;->uid:J

    :cond_2
    iget-object v10, v3, Lcom/beetalk/sdk/data/DataModel$FriendGroup;->ids:Ljava/util/Vector;

    iget-object v11, v9, Lcom/beetalk/sdk/data/DataModel$FriendIdInfo;->openId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v10, v3, Lcom/beetalk/sdk/data/DataModel$FriendGroup;->idInfoList:Ljava/util/Vector;

    invoke-virtual {v10, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseGroupUserInfoList(Lorg/json/JSONObject;)Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Vector<",
            "Lcom/beetalk/sdk/data/DataModel$GroupUserInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :try_start_0
    const-string v1, "friends"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/beetalk/sdk/data/DataModel$GroupUserInfo;

    invoke-direct {v2}, Lcom/beetalk/sdk/data/DataModel$GroupUserInfo;-><init>()V

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "open_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/beetalk/sdk/data/DataModel$GroupUserInfo;->openID:Ljava/lang/String;

    const-string v4, "platform"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/beetalk/sdk/data/DataModel$GroupUserInfo;->platform:I

    const-string v4, "gender"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/beetalk/sdk/data/DataModel$GroupUserInfo;->gender:I

    const-string v4, "nickname"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/beetalk/sdk/data/DataModel$GroupUserInfo;->nickName:Ljava/lang/String;

    const-string v4, "icon"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/beetalk/sdk/data/DataModel$GroupUserInfo;->iconURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0
.end method
