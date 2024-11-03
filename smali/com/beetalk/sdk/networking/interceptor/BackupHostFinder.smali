.class public final Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;
.super Ljava/lang/Object;
.source "BackupHostFinder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder$BackupHostBuilder;,
        Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder$DefaultBackupHostBuilder;,
        Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder$SimpleBackupHostBuilder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001:\u0003\t\n\u000bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\u0005R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;",
        "",
        "()V",
        "backupHostMap",
        "",
        "",
        "Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder$BackupHostBuilder;",
        "findBackupHostName",
        "host",
        "BackupHostBuilder",
        "DefaultBackupHostBuilder",
        "SimpleBackupHostBuilder",
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


# instance fields
.field private final backupHostMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder$BackupHostBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Pair;

    new-instance v1, Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder$DefaultBackupHostBuilder;

    const-string v2, "connect.gopapi.io"

    invoke-direct {v1, v2}, Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder$DefaultBackupHostBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "connect.garena.com"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder$DefaultBackupHostBuilder;

    const-string v2, "msdk.gopapi.io"

    invoke-direct {v1, v2}, Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder$DefaultBackupHostBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "msdk.garena.com"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder$SimpleBackupHostBuilder;

    const-string v2, "shop.gopapi.io"

    invoke-direct {v1, v2}, Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder$SimpleBackupHostBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "shop.garena.com"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;->backupHostMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final findBackupHostName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;->backupHostMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder$BackupHostBuilder;

    invoke-interface {v1}, Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder$BackupHostBuilder;->build()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    :goto_0
    if-eqz v2, :cond_0

    :cond_2
    return-object v2
.end method
