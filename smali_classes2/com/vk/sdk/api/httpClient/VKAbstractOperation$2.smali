.class synthetic Lcom/vk/sdk/api/httpClient/VKAbstractOperation$2;
.super Ljava/lang/Object;
.source "VKAbstractOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/httpClient/VKAbstractOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$vk$sdk$api$httpClient$VKAbstractOperation$VKOperationState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->values()[Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$2;->$SwitchMap$com$vk$sdk$api$httpClient$VKAbstractOperation$VKOperationState:[I

    :try_start_0
    sget-object v1, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->Paused:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    invoke-virtual {v1}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$2;->$SwitchMap$com$vk$sdk$api$httpClient$VKAbstractOperation$VKOperationState:[I

    sget-object v1, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->Executing:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    invoke-virtual {v1}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$2;->$SwitchMap$com$vk$sdk$api$httpClient$VKAbstractOperation$VKOperationState:[I

    sget-object v1, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->Canceled:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    invoke-virtual {v1}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$2;->$SwitchMap$com$vk$sdk$api$httpClient$VKAbstractOperation$VKOperationState:[I

    sget-object v1, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->Finished:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    invoke-virtual {v1}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$2;->$SwitchMap$com$vk$sdk$api$httpClient$VKAbstractOperation$VKOperationState:[I

    sget-object v1, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->Ready:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    invoke-virtual {v1}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
