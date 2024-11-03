.class final Lcom/beetalk/sdk/networking/OkHttpClientManager$customClient$2;
.super Lkotlin/jvm/internal/Lambda;
.source "OkHttpClientManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/networking/OkHttpClientManager;
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


# static fields
.field public static final INSTANCE:Lcom/beetalk/sdk/networking/OkHttpClientManager$customClient$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/networking/OkHttpClientManager$customClient$2;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/OkHttpClientManager$customClient$2;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager$customClient$2;->INSTANCE:Lcom/beetalk/sdk/networking/OkHttpClientManager$customClient$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/OkHttpClientManager$customClient$2;->invoke()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lokhttp3/OkHttpClient;
    .locals 3

    sget-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager;->INSTANCE:Lcom/beetalk/sdk/networking/OkHttpClientManager;

    sget-object v1, Lcom/beetalk/sdk/networking/OkHttpClientManager;->INSTANCE:Lcom/beetalk/sdk/networking/OkHttpClientManager;

    invoke-static {v1}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->access$getDefaultClient(Lcom/beetalk/sdk/networking/OkHttpClientManager;)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lokhttp3/Interceptor;

    invoke-static {v0, v1, v2}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->access$buildClient(Lcom/beetalk/sdk/networking/OkHttpClientManager;Lokhttp3/OkHttpClient$Builder;[Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
