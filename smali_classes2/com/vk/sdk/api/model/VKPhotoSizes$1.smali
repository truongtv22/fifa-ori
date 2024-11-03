.class Lcom/vk/sdk/api/model/VKPhotoSizes$1;
.super Ljava/lang/Object;
.source "VKPhotoSizes.java"

# interfaces
.implements Lcom/vk/sdk/api/model/VKList$Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/model/VKPhotoSizes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vk/sdk/api/model/VKList$Parser<",
        "Lcom/vk/sdk/api/model/VKApiPhotoSize;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/sdk/api/model/VKPhotoSizes;


# direct methods
.method constructor <init>(Lcom/vk/sdk/api/model/VKPhotoSizes;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKPhotoSizes$1;->this$0:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseObject(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPhotoSize;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKPhotoSizes$1;->this$0:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-static {v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;->access$000(Lcom/vk/sdk/api/model/VKPhotoSizes;)I

    move-result v0

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKPhotoSizes$1;->this$0:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-static {v1}, Lcom/vk/sdk/api/model/VKPhotoSizes;->access$100(Lcom/vk/sdk/api/model/VKPhotoSizes;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->parse(Lorg/json/JSONObject;II)Lcom/vk/sdk/api/model/VKApiPhotoSize;

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

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKPhotoSizes$1;->parseObject(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPhotoSize;

    move-result-object p1

    return-object p1
.end method
