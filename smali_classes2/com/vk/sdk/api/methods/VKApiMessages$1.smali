.class Lcom/vk/sdk/api/methods/VKApiMessages$1;
.super Lcom/vk/sdk/api/VKParser;
.source "VKApiMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/api/methods/VKApiMessages;->get(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/sdk/api/methods/VKApiMessages;


# direct methods
.method constructor <init>(Lcom/vk/sdk/api/methods/VKApiMessages;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/methods/VKApiMessages$1;->this$0:Lcom/vk/sdk/api/methods/VKApiMessages;

    invoke-direct {p0}, Lcom/vk/sdk/api/VKParser;-><init>()V

    return-void
.end method


# virtual methods
.method public createModel(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKApiGetMessagesResponse;

    invoke-direct {v0, p1}, Lcom/vk/sdk/api/model/VKApiGetMessagesResponse;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method
