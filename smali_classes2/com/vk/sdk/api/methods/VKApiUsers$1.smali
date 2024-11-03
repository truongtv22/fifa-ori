.class Lcom/vk/sdk/api/methods/VKApiUsers$1;
.super Lcom/vk/sdk/api/VKParser;
.source "VKApiUsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/api/methods/VKApiUsers;->get(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/sdk/api/methods/VKApiUsers;


# direct methods
.method constructor <init>(Lcom/vk/sdk/api/methods/VKApiUsers;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/methods/VKApiUsers$1;->this$0:Lcom/vk/sdk/api/methods/VKApiUsers;

    invoke-direct {p0}, Lcom/vk/sdk/api/VKParser;-><init>()V

    return-void
.end method


# virtual methods
.method public createModel(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/vk/sdk/api/model/VKList;

    const-class v1, Lcom/vk/sdk/api/model/VKApiUserFull;

    invoke-direct {v0, p1, v1}, Lcom/vk/sdk/api/model/VKList;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    return-object v0
.end method
