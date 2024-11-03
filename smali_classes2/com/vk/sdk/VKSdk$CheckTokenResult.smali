.class Lcom/vk/sdk/VKSdk$CheckTokenResult;
.super Ljava/lang/Object;
.source "VKSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/VKSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckTokenResult"
.end annotation


# instance fields
.field public error:Lcom/vk/sdk/api/VKError;

.field public oldToken:Lcom/vk/sdk/VKAccessToken;

.field public token:Lcom/vk/sdk/VKAccessToken;


# direct methods
.method public constructor <init>(Lcom/vk/sdk/VKAccessToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/sdk/VKSdk$CheckTokenResult;->token:Lcom/vk/sdk/VKAccessToken;

    return-void
.end method

.method public constructor <init>(Lcom/vk/sdk/VKAccessToken;Lcom/vk/sdk/VKAccessToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vk/sdk/VKSdk$CheckTokenResult;->token:Lcom/vk/sdk/VKAccessToken;

    iput-object p1, p0, Lcom/vk/sdk/VKSdk$CheckTokenResult;->oldToken:Lcom/vk/sdk/VKAccessToken;

    return-void
.end method

.method public constructor <init>(Lcom/vk/sdk/api/VKError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/sdk/VKSdk$CheckTokenResult;->error:Lcom/vk/sdk/api/VKError;

    return-void
.end method
