.class final Lcom/vk/sdk/api/httpClient/VKHttpClient$2;
.super Ljava/lang/Object;
.source "VKHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/api/httpClient/VKHttpClient;->enqueueOperation(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$operation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;


# direct methods
.method constructor <init>(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/httpClient/VKHttpClient$2;->val$operation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKHttpClient$2;->val$operation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    invoke-static {}, Lcom/vk/sdk/api/httpClient/VKHttpClient;->access$000()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->start(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
