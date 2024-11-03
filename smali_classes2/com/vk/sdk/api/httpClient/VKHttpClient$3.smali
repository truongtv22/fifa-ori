.class final Lcom/vk/sdk/api/httpClient/VKHttpClient$3;
.super Ljava/lang/Object;
.source "VKHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/api/httpClient/VKHttpClient;->cancelHttpOperation(Lcom/vk/sdk/api/httpClient/VKHttpOperation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$operation:Lcom/vk/sdk/api/httpClient/VKHttpOperation;


# direct methods
.method constructor <init>(Lcom/vk/sdk/api/httpClient/VKHttpOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/httpClient/VKHttpClient$3;->val$operation:Lcom/vk/sdk/api/httpClient/VKHttpOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKHttpClient$3;->val$operation:Lcom/vk/sdk/api/httpClient/VKHttpOperation;

    invoke-virtual {v0}, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->getUriRequest()Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;->abort()V

    return-void
.end method
