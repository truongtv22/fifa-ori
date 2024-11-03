.class public final Lcom/vk/sdk/api/model/VKList$ReflectParser;
.super Ljava/lang/Object;
.source "VKList.java"

# interfaces
.implements Lcom/vk/sdk/api/model/VKList$Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/model/VKList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReflectParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/vk/sdk/api/model/VKApiModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vk/sdk/api/model/VKList$Parser<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TD;>;"
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
            "+TD;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKList$ReflectParser;->clazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public parseObject(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList$ReflectParser;->clazz:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lorg/json/JSONObject;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKApiModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList$ReflectParser;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKApiModel;

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/model/VKApiModel;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseObject(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKList$ReflectParser;->parseObject(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;

    move-result-object p1

    return-object p1
.end method
