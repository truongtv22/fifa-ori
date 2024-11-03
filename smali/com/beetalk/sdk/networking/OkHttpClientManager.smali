.class public final Lcom/beetalk/sdk/networking/OkHttpClientManager;
.super Ljava/lang/Object;
.source "OkHttpClientManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOkHttpClientManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpClientManager.kt\ncom/beetalk/sdk/networking/OkHttpClientManager\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,179:1\n13543#2,2:180\n73#3,2:182\n1#4:184\n*S KotlinDebug\n*F\n+ 1 OkHttpClientManager.kt\ncom/beetalk/sdk/networking/OkHttpClientManager\n*L\n59#1:180,2\n104#1:182,2\n104#1:184\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010\u0013\u001a\u00020\u0007H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J)\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u00182\u0012\u0010\u0019\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001b0\u001a\"\u00020\u001bH\u0002\u00a2\u0006\u0002\u0010\u001cJ&\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u00122\u0006\u0010\u001f\u001a\u00020\u0007H\u0003\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008 \u0010\u0015J\u0018\u0010!\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u00072\u0008\u0008\u0002\u0010\"\u001a\u00020\u001eJ&\u0010!\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u001e2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00080$H\u0002J \u0010%\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u00072\u0008\u0008\u0002\u0010\"\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020\'J \u0010%\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\u00072\u0008\u0008\u0002\u0010\"\u001a\u00020\u001eJ \u0010)\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\u00072\u0008\u0008\u0002\u0010\"\u001a\u00020\u001eJ\u0008\u0010*\u001a\u00020+H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\r\u001a\u0004\u0008\u000f\u0010\u000b\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006,"
    }
    d2 = {
        "Lcom/beetalk/sdk/networking/OkHttpClientManager;",
        "",
        "()V",
        "backupHostFinder",
        "Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;",
        "clientInstances",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "Lokhttp3/OkHttpClient;",
        "customClient",
        "getCustomClient",
        "()Lokhttp3/OkHttpClient;",
        "customClient$delegate",
        "Lkotlin/Lazy;",
        "defaultClient",
        "getDefaultClient",
        "defaultClient$delegate",
        "autoSwitchHost",
        "Lkotlin/Result;",
        "url",
        "autoSwitchHost-IoAF18A",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "buildClient",
        "builder",
        "Lokhttp3/OkHttpClient$Builder;",
        "interceptors",
        "",
        "Lokhttp3/Interceptor;",
        "(Lokhttp3/OkHttpClient$Builder;[Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient;",
        "checkHostConnectivity",
        "",
        "host",
        "checkHostConnectivity-IoAF18A",
        "getClient",
        "cache",
        "clientProvider",
        "Lkotlin/Function0;",
        "getSignatureClient",
        "signatureProvider",
        "Lcom/beetalk/sdk/networking/interceptor/SignatureProvider;",
        "signatureKey",
        "getSortSignatureClient",
        "reset",
        "",
        "ChimbleGarena-GarenaMSDK_android-arm64-clang-opt"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/beetalk/sdk/networking/OkHttpClientManager;

.field private static final backupHostFinder:Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;

.field private static final clientInstances:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private static final customClient$delegate:Lkotlin/Lazy;

.field private static final defaultClient$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$ObCSH08yZPfKtYtFHJ-ZMSM5_Oo(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->buildClient$lambda-3$lambda-1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qdIdx9dGIOLIEoH4GA2O4Y9Yyfg(Ljava/lang/String;Lokhttp3/Request;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getSortSignatureClient$lambda-6(Ljava/lang/String;Lokhttp3/Request;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yMnhDJxuDH0fg7z1R0vNWrbS6hA(Ljava/lang/String;Lokhttp3/Request;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getSignatureClient$lambda-5(Ljava/lang/String;Lokhttp3/Request;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/networking/OkHttpClientManager;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/OkHttpClientManager;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager;->INSTANCE:Lcom/beetalk/sdk/networking/OkHttpClientManager;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager;->clientInstances:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager$defaultClient$2;->INSTANCE:Lcom/beetalk/sdk/networking/OkHttpClientManager$defaultClient$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager;->defaultClient$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager$customClient$2;->INSTANCE:Lcom/beetalk/sdk/networking/OkHttpClientManager$customClient$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager;->customClient$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager;->backupHostFinder:Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final varargs synthetic access$buildClient(Lcom/beetalk/sdk/networking/OkHttpClientManager;Lokhttp3/OkHttpClient$Builder;[Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->buildClient(Lokhttp3/OkHttpClient$Builder;[Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCustomClient(Lcom/beetalk/sdk/networking/OkHttpClientManager;)Lokhttp3/OkHttpClient;
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getCustomClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDefaultClient(Lcom/beetalk/sdk/networking/OkHttpClientManager;)Lokhttp3/OkHttpClient;
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getDefaultClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method private final varargs buildClient(Lokhttp3/OkHttpClient$Builder;[Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient;
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    new-instance v0, Lcom/beetalk/sdk/networking/interceptor/UserAgentInterceptor;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/interceptor/UserAgentInterceptor;-><init>()V

    check-cast v0, Lokhttp3/Interceptor;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    new-instance v0, Lcom/beetalk/sdk/networking/interceptor/CookiesInterceptor;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/interceptor/CookiesInterceptor;-><init>()V

    check-cast v0, Lokhttp3/Interceptor;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/beetalk/sdk/networking/interceptor/BackupHostInterceptor;

    sget-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager;->backupHostFinder:Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;

    invoke-direct {p2, v0}, Lcom/beetalk/sdk/networking/interceptor/BackupHostInterceptor;-><init>(Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;)V

    check-cast p2, Lokhttp3/Interceptor;

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    new-instance p2, Lokhttp3/logging/HttpLoggingInterceptor;

    new-instance v0, Lcom/beetalk/sdk/networking/OkHttpClientManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/OkHttpClientManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p2, v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    sget-boolean v0, Lcom/beetalk/sdk/SDKConstants;->NO_LOG:Z

    if-nez v0, :cond_1

    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    goto :goto_1

    :cond_1
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    :goto_1
    invoke-virtual {p2, v0}, Lokhttp3/logging/HttpLoggingInterceptor;->level(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V

    check-cast p2, Lokhttp3/Interceptor;

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    new-instance p2, Lcom/beetalk/sdk/networking/OkHttpClientManager$buildClient$1$4;

    invoke-direct {p2}, Lcom/beetalk/sdk/networking/OkHttpClientManager$buildClient$1$4;-><init>()V

    check-cast p2, Lokhttp3/CookieJar;

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method

.method private static final buildClient$lambda-3$lambda-1(Ljava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OkHttp:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final checkHostConnectivity-IoAF18A(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const-string v0, "Cannot access this domain: "

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    invoke-interface {v1, p1}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final getClient(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)Lokhttp3/OkHttpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lokhttp3/OkHttpClient;",
            ">;)",
            "Lokhttp3/OkHttpClient;"
        }
    .end annotation

    if-eqz p2, :cond_2

    sget-object p2, Lcom/beetalk/sdk/networking/OkHttpClientManager;->clientInstances:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p2, Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lokhttp3/OkHttpClient;

    invoke-interface {p2, p1, p3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    move-object v0, p1

    :cond_1
    :goto_0
    const-string/jumbo p1, "{\n            clientInst\u2026entProvider() }\n        }"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lokhttp3/OkHttpClient;

    goto :goto_1

    :cond_2
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lokhttp3/OkHttpClient;

    :goto_1
    return-object v0
.end method

.method public static synthetic getClient$default(Lcom/beetalk/sdk/networking/OkHttpClientManager;Ljava/lang/String;ZILjava/lang/Object;)Lokhttp3/OkHttpClient;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getClient(Ljava/lang/String;Z)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method private final getCustomClient()Lokhttp3/OkHttpClient;
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager;->customClient$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private final getDefaultClient()Lokhttp3/OkHttpClient;
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager;->defaultClient$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static synthetic getSignatureClient$default(Lcom/beetalk/sdk/networking/OkHttpClientManager;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lokhttp3/OkHttpClient;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getSignatureClient(Ljava/lang/String;Ljava/lang/String;Z)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getSignatureClient$default(Lcom/beetalk/sdk/networking/OkHttpClientManager;Ljava/lang/String;ZLcom/beetalk/sdk/networking/interceptor/SignatureProvider;ILjava/lang/Object;)Lokhttp3/OkHttpClient;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getSignatureClient(Ljava/lang/String;ZLcom/beetalk/sdk/networking/interceptor/SignatureProvider;)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method private static final getSignatureClient$lambda-5(Ljava/lang/String;Lokhttp3/Request;)Ljava/lang/String;
    .locals 1

    const-string v0, "$signatureKey"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/beetalk/sdk/networking/OkHttpExtsKt;->parametersToString(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Security;->HMAC256Digest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "HMAC256Digest(signatureK\u2026 it.parametersToString())"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic getSortSignatureClient$default(Lcom/beetalk/sdk/networking/OkHttpClientManager;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lokhttp3/OkHttpClient;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getSortSignatureClient(Ljava/lang/String;Ljava/lang/String;Z)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method private static final getSortSignatureClient$lambda-6(Ljava/lang/String;Lokhttp3/Request;)Ljava/lang/String;
    .locals 3

    const-string v0, "$signatureKey"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/beetalk/sdk/networking/OkHttpExtsKt;->parametersToSortedString$default(Lokhttp3/Request;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Security;->HMAC256Digest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "HMAC256Digest(signatureK\u2026rametersToSortedString())"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final reset()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager;->clientInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method


# virtual methods
.method public final autoSwitchHost-IoAF18A(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v0, p1}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Parse url failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/beetalk/sdk/networking/OkHttpClientManager;->INSTANCE:Lcom/beetalk/sdk/networking/OkHttpClientManager;

    invoke-direct {v2, v1}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->checkHostConnectivity-IoAF18A(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/beetalk/sdk/networking/OkHttpClientManager;->backupHostFinder:Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;

    invoke-virtual {p1, v1}, Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;->findBackupHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Backup host not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final getClient(Ljava/lang/String;Z)Lokhttp3/OkHttpClient;
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager$getClient$2;->INSTANCE:Lcom/beetalk/sdk/networking/OkHttpClientManager$getClient$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, p2, v0}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getClient(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method

.method public final getSignatureClient(Ljava/lang/String;Ljava/lang/String;Z)Lokhttp3/OkHttpClient;
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signatureKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/beetalk/sdk/networking/OkHttpClientManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/beetalk/sdk/networking/OkHttpClientManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getSignatureClient(Ljava/lang/String;ZLcom/beetalk/sdk/networking/interceptor/SignatureProvider;)Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method

.method public final getSignatureClient(Ljava/lang/String;ZLcom/beetalk/sdk/networking/interceptor/SignatureProvider;)Lokhttp3/OkHttpClient;
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signatureProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/beetalk/sdk/networking/OkHttpClientManager$getSignatureClient$2;

    invoke-direct {v0, p3}, Lcom/beetalk/sdk/networking/OkHttpClientManager$getSignatureClient$2;-><init>(Lcom/beetalk/sdk/networking/interceptor/SignatureProvider;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, p2, v0}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getClient(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method

.method public final getSortSignatureClient(Ljava/lang/String;Ljava/lang/String;Z)Lokhttp3/OkHttpClient;
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signatureKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/beetalk/sdk/networking/OkHttpClientManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/beetalk/sdk/networking/OkHttpClientManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getSignatureClient(Ljava/lang/String;ZLcom/beetalk/sdk/networking/interceptor/SignatureProvider;)Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method
