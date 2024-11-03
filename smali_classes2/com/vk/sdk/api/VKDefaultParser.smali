.class public Lcom/vk/sdk/api/VKDefaultParser;
.super Lcom/vk/sdk/api/VKParser;
.source "VKDefaultParser.java"


# instance fields
.field private final mModelClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/vk/sdk/api/model/VKApiModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/vk/sdk/api/model/VKApiModel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/vk/sdk/api/VKParser;-><init>()V

    iput-object p1, p0, Lcom/vk/sdk/api/VKDefaultParser;->mModelClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public createModel(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/vk/sdk/api/VKDefaultParser;->mModelClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKApiModel;

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/model/VKApiModel;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
