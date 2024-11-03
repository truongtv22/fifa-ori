.class final Lcom/beetalk/sdk/networking/OkHttpClientManager$getSignatureClient$2;
.super Lkotlin/jvm/internal/Lambda;
.source "OkHttpClientManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/networking/OkHttpClientManager;->getSignatureClient(Ljava/lang/String;ZLcom/beetalk/sdk/networking/interceptor/SignatureProvider;)Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lokhttp3/OkHttpClient;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $signatureProvider:Lcom/beetalk/sdk/networking/interceptor/SignatureProvider;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/networking/interceptor/SignatureProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/networking/OkHttpClientManager$getSignatureClient$2;->$signatureProvider:Lcom/beetalk/sdk/networking/interceptor/SignatureProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/OkHttpClientManager$getSignatureClient$2;->invoke()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lokhttp3/OkHttpClient;
    .locals 3

    sget-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager;->INSTANCE:Lcom/beetalk/sdk/networking/OkHttpClientManager;

    invoke-static {v0}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->access$getCustomClient(Lcom/beetalk/sdk/networking/OkHttpClientManager;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/networking/interceptor/AuthorizationInterceptor;

    iget-object v2, p0, Lcom/beetalk/sdk/networking/OkHttpClientManager$getSignatureClient$2;->$signatureProvider:Lcom/beetalk/sdk/networking/interceptor/SignatureProvider;

    invoke-direct {v1, v2}, Lcom/beetalk/sdk/networking/interceptor/AuthorizationInterceptor;-><init>(Lcom/beetalk/sdk/networking/interceptor/SignatureProvider;)V

    check-cast v1, Lokhttp3/Interceptor;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
